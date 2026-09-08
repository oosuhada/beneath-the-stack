#pragma once

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <memory>
#include <new>
#include <stdexcept>

namespace bts {

constexpr std::size_t align_up(std::size_t value, std::size_t alignment) {
  return (value + alignment - 1) & ~(alignment - 1);
}

struct AllocatorStats {
  std::size_t capacity_bytes = 0;
  std::size_t live_requested_bytes = 0;
  std::size_t live_reserved_bytes = 0;
  std::size_t peak_live_reserved_bytes = 0;
  std::size_t free_payload_bytes = 0;
  std::size_t largest_free_block_bytes = 0;
  std::size_t internal_fragmentation_bytes = 0;
  std::size_t external_fragmentation_bytes = 0;
  std::size_t block_count = 0;
  std::size_t allocations = 0;
  std::size_t frees = 0;
  std::size_t reused_allocations = 0;
  std::size_t failed_allocations = 0;
};

class BumpAllocator {
 public:
  static constexpr std::size_t kAlignment = alignof(std::max_align_t);

  explicit BumpAllocator(std::size_t capacity_bytes)
      : units_((capacity_bytes + sizeof(std::max_align_t) - 1) / sizeof(std::max_align_t)),
        storage_(std::make_unique<std::max_align_t[]>(std::max<std::size_t>(1, units_))),
        capacity_bytes_(std::max<std::size_t>(1, units_) * sizeof(std::max_align_t)) {}

  void* allocate(std::size_t requested_bytes) {
    if (requested_bytes == 0) {
      requested_bytes = 1;
    }
    const std::size_t start = align_up(offset_bytes_, kAlignment);
    const std::size_t reserved = align_up(requested_bytes, kAlignment);
    if (start > capacity_bytes_ || reserved > capacity_bytes_ - start) {
      ++failed_allocations_;
      return nullptr;
    }
    offset_bytes_ = start + reserved;
    live_requested_bytes_ += requested_bytes;
    peak_reserved_bytes_ = std::max(peak_reserved_bytes_, offset_bytes_);
    ++allocations_;
    return reinterpret_cast<std::byte*>(storage_.get()) + start;
  }

  void deallocate(void*) {
    // A bump allocator intentionally cannot reclaim individual allocations.
  }

  void reset() {
    offset_bytes_ = 0;
    live_requested_bytes_ = 0;
  }

  AllocatorStats stats() const {
    AllocatorStats result;
    result.capacity_bytes = capacity_bytes_;
    result.live_requested_bytes = live_requested_bytes_;
    result.live_reserved_bytes = offset_bytes_;
    result.peak_live_reserved_bytes = peak_reserved_bytes_;
    result.free_payload_bytes = capacity_bytes_ - offset_bytes_;
    result.largest_free_block_bytes = result.free_payload_bytes;
    result.internal_fragmentation_bytes =
        offset_bytes_ > live_requested_bytes_ ? offset_bytes_ - live_requested_bytes_ : 0;
    result.allocations = allocations_;
    result.failed_allocations = failed_allocations_;
    return result;
  }

 private:
  std::size_t units_;
  std::unique_ptr<std::max_align_t[]> storage_;
  std::size_t capacity_bytes_ = 0;
  std::size_t offset_bytes_ = 0;
  std::size_t live_requested_bytes_ = 0;
  std::size_t peak_reserved_bytes_ = 0;
  std::size_t allocations_ = 0;
  std::size_t failed_allocations_ = 0;
};

class FreeListAllocator {
 public:
  static constexpr std::size_t kAlignment = alignof(std::max_align_t);

  explicit FreeListAllocator(std::size_t capacity_bytes, bool coalescing = true)
      : units_((capacity_bytes + sizeof(std::max_align_t) - 1) / sizeof(std::max_align_t)),
        storage_(std::make_unique<std::max_align_t[]>(std::max<std::size_t>(2, units_))),
        capacity_bytes_(std::max<std::size_t>(2, units_) * sizeof(std::max_align_t)),
        coalescing_(coalescing) {
    if (capacity_bytes_ <= header_bytes() + kAlignment) {
      throw std::invalid_argument("allocator arena is too small");
    }
    head_ = ::new (data()) BlockHeader{};
    head_->size = capacity_bytes_ - header_bytes();
    head_->free = true;
  }

  FreeListAllocator(const FreeListAllocator&) = delete;
  FreeListAllocator& operator=(const FreeListAllocator&) = delete;

  void* allocate(std::size_t requested_bytes) {
    if (requested_bytes == 0) {
      requested_bytes = 1;
    }
    const std::size_t needed = align_up(requested_bytes, kAlignment);
    BlockHeader* block = head_;
    while (block != nullptr && (!block->free || block->size < needed)) {
      block = block->next;
    }
    if (block == nullptr) {
      ++failed_allocations_;
      return nullptr;
    }

    const bool reused = block->ever_used;
    split_if_useful(block, needed);
    block->free = false;
    block->ever_used = true;
    block->requested = requested_bytes;
    live_requested_bytes_ += requested_bytes;
    live_reserved_bytes_ += block->size;
    peak_live_reserved_bytes_ = std::max(peak_live_reserved_bytes_, live_reserved_bytes_);
    ++allocations_;
    if (reused) {
      ++reused_allocations_;
    }
    return payload(block);
  }

  void deallocate(void* pointer) {
    if (pointer == nullptr) {
      return;
    }
    if (!owns(pointer)) {
      throw std::invalid_argument("pointer does not belong to allocator arena");
    }
    auto* block =
        reinterpret_cast<BlockHeader*>(reinterpret_cast<std::byte*>(pointer) - header_bytes());
    if (block->free) {
      throw std::invalid_argument("double free detected by toy allocator");
    }
    live_requested_bytes_ -= block->requested;
    live_reserved_bytes_ -= block->size;
    block->requested = 0;
    block->free = true;
    ++frees_;
    if (coalescing_) {
      coalesce(block);
    }
  }

  bool owns(const void* pointer) const {
    const auto* byte = reinterpret_cast<const std::byte*>(pointer);
    return byte >= data() + header_bytes() && byte < data() + capacity_bytes_;
  }

  AllocatorStats stats() const {
    AllocatorStats result;
    result.capacity_bytes = capacity_bytes_;
    result.live_requested_bytes = live_requested_bytes_;
    result.live_reserved_bytes = live_reserved_bytes_;
    result.peak_live_reserved_bytes = peak_live_reserved_bytes_;
    result.internal_fragmentation_bytes = live_reserved_bytes_ > live_requested_bytes_
                                              ? live_reserved_bytes_ - live_requested_bytes_
                                              : 0;
    result.allocations = allocations_;
    result.frees = frees_;
    result.reused_allocations = reused_allocations_;
    result.failed_allocations = failed_allocations_;

    const BlockHeader* block = head_;
    while (block != nullptr) {
      ++result.block_count;
      if (block->free) {
        result.free_payload_bytes += block->size;
        result.largest_free_block_bytes = std::max(result.largest_free_block_bytes, block->size);
      }
      block = block->next;
    }
    result.external_fragmentation_bytes =
        result.free_payload_bytes - result.largest_free_block_bytes;
    return result;
  }

  static constexpr std::size_t metadata_bytes() { return header_bytes(); }

 private:
  struct BlockHeader {
    std::size_t size = 0;
    std::size_t requested = 0;
    BlockHeader* prev = nullptr;
    BlockHeader* next = nullptr;
    bool free = false;
    bool ever_used = false;
  };

  static constexpr std::size_t header_bytes() { return align_up(sizeof(BlockHeader), kAlignment); }

  std::byte* data() { return reinterpret_cast<std::byte*>(storage_.get()); }
  const std::byte* data() const { return reinterpret_cast<const std::byte*>(storage_.get()); }

  static void* payload(BlockHeader* block) {
    return reinterpret_cast<std::byte*>(block) + header_bytes();
  }

  void split_if_useful(BlockHeader* block, std::size_t needed) {
    if (block->size < needed + header_bytes() + kAlignment) {
      return;
    }
    const std::size_t original = block->size;
    auto* right_address = reinterpret_cast<std::byte*>(payload(block)) + needed;
    auto* right = ::new (right_address) BlockHeader{};
    right->size = original - needed - header_bytes();
    right->prev = block;
    right->next = block->next;
    right->free = true;
    if (right->next != nullptr) {
      right->next->prev = right;
    }
    block->next = right;
    block->size = needed;
  }

  static void merge_with_next(BlockHeader* block) {
    BlockHeader* right = block->next;
    if (right == nullptr || !right->free) {
      return;
    }
    block->size += header_bytes() + right->size;
    block->next = right->next;
    if (block->next != nullptr) {
      block->next->prev = block;
    }
  }

  static void coalesce(BlockHeader* block) {
    merge_with_next(block);
    if (block->prev != nullptr && block->prev->free) {
      block = block->prev;
      merge_with_next(block);
    }
  }

  std::size_t units_;
  std::unique_ptr<std::max_align_t[]> storage_;
  std::size_t capacity_bytes_ = 0;
  bool coalescing_ = true;
  BlockHeader* head_ = nullptr;
  std::size_t live_requested_bytes_ = 0;
  std::size_t live_reserved_bytes_ = 0;
  std::size_t peak_live_reserved_bytes_ = 0;
  std::size_t allocations_ = 0;
  std::size_t frees_ = 0;
  std::size_t reused_allocations_ = 0;
  std::size_t failed_allocations_ = 0;
};

}  // namespace bts

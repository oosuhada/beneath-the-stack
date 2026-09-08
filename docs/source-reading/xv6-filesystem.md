# xv6 source reading: file descriptors, paths, inodes and blocks

## Question

How does a path become bytes, and why does `write()` success not automatically mean the data is
durably committed to storage?

## My initial model

I treated filesystem operations as path-based. xv6 makes the split clearer: paths resolve through
directory entries to inodes; file descriptors point to open-file objects; open-file objects carry an
offset and a reference to either a pipe, device or inode.

## Relevant source

- `kernel/proc.h:101-102`: each process has `ofile[NOFILE]` and `cwd`.
- `kernel/file.h:1-15`: `struct file` stores `type`, `ref`, `readable`, `writable`, `pipe`, `ip` and
  `off`.
- `kernel/sysfile.c:329-390`: `sys_open()` resolves a path to an inode, allocates a `struct file`,
  then installs it into the process fd table.
- `kernel/fs.c:591-615`: `dirlookup()` scans directory entries and returns an inode.
- `kernel/fs.c:692-734`: `namex()` walks path elements from root or current directory.
- `kernel/fs.c:510-533`: `readi()` maps file offsets to blocks and copies data out.
- `kernel/fs.c:544-565`: `writei()` maps offsets to blocks and logs changed buffers.
- `kernel/file.c:135-176`: `filewrite()` wraps inode writes in log transactions and updates the
  open-file offset.

## Actual control flow

```text
path string
  -> namex()
  -> dirlookup() per path component
  -> inode
  -> open file object with offset/refcount
  -> process fd table slot
  -> readi/writei maps offset to data blocks
```

## My experiment

`labs/toy_filesystem/main.cpp` implements only the learning slice:

```text
path -> directory entry -> inode-like metadata -> fixed-size data blocks
```

It also shows that two directory entries can point to the same inode-like object via a hard-link
fixture. The real xv6 inode layer is much richer, but this toy model is enough to explain why path,
inode and open-file offset are distinct.

`labs/os_boundary/main.cpp` adds a host experiment for fd identity:

- inherited descriptor: parent reads `ab`, child reads `cd` because they share the open-file offset;
- independent reopen into descriptor number 3: parent reads `ab`, child reads `ab` because descriptor
  number equality does not imply open-file object equality.

The same lab compares `write+close` and `write+fsync+close` to keep durability boundaries explicit.

## What differed from my expectation

The toy filesystem initially held a reference into `std::vector<Inode>` and then pushed a new inode.
That invalidated the reference and caused a segmentation fault in `mastery_tests`. The fix was to
avoid keeping a mutable reference across vector growth. This became a useful miniature version of a
real systems lesson: metadata ownership/lifetime matters.

## What remains unclear

The toy filesystem has no free-block map, permissions, journaling recovery, rename ordering,
directory fsync policy or crash simulation. It is a model of lookup and identity, not a filesystem.

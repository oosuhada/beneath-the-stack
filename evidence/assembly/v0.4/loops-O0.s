	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 0
	.globl	_sum_contiguous                 ; -- Begin function sum_contiguous
	.p2align	2
_sum_contiguous:                        ; @sum_contiguous
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	xzr, [sp, #8]
	str	xzr, [sp]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp]
	ldr	w8, [x8, x9, lsl #2]
	mov	x9, x8
	ldr	x8, [sp, #8]
	add	x8, x8, x9
	str	x8, [sp, #8]
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]
	add	x8, x8, #1
	str	x8, [sp]
	b	LBB0_1
LBB0_4:
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_sum_stride                     ; -- Begin function sum_stride
	.p2align	2
_sum_stride:                            ; @sum_stride
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	xzr, [sp, #16]
	str	xzr, [sp, #8]
	b	LBB1_1
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB1_4
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #8]
	ldr	w8, [x8, x9, lsl #2]
	mov	x9, x8
	ldr	x8, [sp, #16]
	add	x8, x8, x9
	str	x8, [sp, #16]
	b	LBB1_3
LBB1_3:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldr	x9, [sp, #24]
	ldr	x8, [sp, #8]
	add	x8, x8, x9
	str	x8, [sp, #8]
	b	LBB1_1
LBB1_4:
	ldr	x0, [sp, #16]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_atomic_increment               ; -- Begin function atomic_increment
	.p2align	2
_atomic_increment:                      ; @atomic_increment
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	xzr, [sp, #8]
	b	LBB2_1
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB2_4
	b	LBB2_2
LBB2_2:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldur	x0, [x29, #-8]
	mov	x1, #1                          ; =0x1
	mov	w2, #0                          ; =0x0
	bl	__ZNSt3__113__atomic_baseIyLb1EE9fetch_addB8ne180100EyNS_12memory_orderE
	b	LBB2_3
LBB2_3:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #1
	str	x8, [sp, #8]
	b	LBB2_1
LBB2_4:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__atomic_baseIyLb1EE9fetch_addB8ne180100EyNS_12memory_orderE ; -- Begin function _ZNSt3__113__atomic_baseIyLb1EE9fetch_addB8ne180100EyNS_12memory_orderE
	.globl	__ZNSt3__113__atomic_baseIyLb1EE9fetch_addB8ne180100EyNS_12memory_orderE
	.weak_definition	__ZNSt3__113__atomic_baseIyLb1EE9fetch_addB8ne180100EyNS_12memory_orderE
	.p2align	2
__ZNSt3__113__atomic_baseIyLb1EE9fetch_addB8ne180100EyNS_12memory_orderE: ; @_ZNSt3__113__atomic_baseIyLb1EE9fetch_addB8ne180100EyNS_12memory_orderE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	w2, [sp, #12]
	bl	__ZNSt3__122__cxx_atomic_fetch_addB8ne180100IyEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mutex_increment                ; -- Begin function mutex_increment
	.p2align	2
_mutex_increment:                       ; @mutex_increment
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	xzr, [sp, #16]
	b	LBB4_1
LBB4_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB4_4
	b	LBB4_2
LBB4_2:                                 ;   in Loop: Header=BB4_1 Depth=1
	ldur	x1, [x29, #-16]
	add	x0, sp, #8
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__110lock_guardINS_5mutexEEC1B8ne180100ERS1_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x9, [x29, #-8]
	ldr	x8, [x9]
	add	x8, x8, #1
	str	x8, [x9]
	bl	__ZNSt3__110lock_guardINS_5mutexEED1B8ne180100Ev
	b	LBB4_3
LBB4_3:                                 ;   in Loop: Header=BB4_1 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	LBB4_1
LBB4_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110lock_guardINS_5mutexEEC1B8ne180100ERS1_ ; -- Begin function _ZNSt3__110lock_guardINS_5mutexEEC1B8ne180100ERS1_
	.globl	__ZNSt3__110lock_guardINS_5mutexEEC1B8ne180100ERS1_
	.weak_def_can_be_hidden	__ZNSt3__110lock_guardINS_5mutexEEC1B8ne180100ERS1_
	.p2align	2
__ZNSt3__110lock_guardINS_5mutexEEC1B8ne180100ERS1_: ; @_ZNSt3__110lock_guardINS_5mutexEEC1B8ne180100ERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__110lock_guardINS_5mutexEEC2B8ne180100ERS1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110lock_guardINS_5mutexEED1B8ne180100Ev ; -- Begin function _ZNSt3__110lock_guardINS_5mutexEED1B8ne180100Ev
	.globl	__ZNSt3__110lock_guardINS_5mutexEED1B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__110lock_guardINS_5mutexEED1B8ne180100Ev
	.p2align	2
__ZNSt3__110lock_guardINS_5mutexEED1B8ne180100Ev: ; @_ZNSt3__110lock_guardINS_5mutexEED1B8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__110lock_guardINS_5mutexEED2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__cxx_atomic_fetch_addB8ne180100IyEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE ; -- Begin function _ZNSt3__122__cxx_atomic_fetch_addB8ne180100IyEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE
	.globl	__ZNSt3__122__cxx_atomic_fetch_addB8ne180100IyEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE
	.weak_definition	__ZNSt3__122__cxx_atomic_fetch_addB8ne180100IyEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE
	.p2align	2
__ZNSt3__122__cxx_atomic_fetch_addB8ne180100IyEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE: ; @_ZNSt3__122__cxx_atomic_fetch_addB8ne180100IyEET_PNS_22__cxx_atomic_base_implIS1_EES1_NS_12memory_orderE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	str	x0, [sp, #56]
	str	x1, [sp, #48]
	str	w2, [sp, #44]
	ldr	x8, [sp, #56]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	w8, [sp, #44]
	ldr	x9, [sp, #48]
	str	x9, [sp, #32]
	subs	w8, w8, #1
	mov	w8, w8
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	subs	x8, x8, #4
	cset	w8, hi
	tbnz	w8, #0, LBB7_2
; %bb.1:
	ldr	x11, [sp, #16]                  ; 8-byte Folded Reload
	adrp	x10, lJTI7_0@PAGE
	add	x10, x10, lJTI7_0@PAGEOFF
Ltmp3:
	adr	x8, Ltmp3
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB7_2:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #32]
	ldadd	x8, x8, [x9]
	str	x8, [sp, #24]
	b	LBB7_7
LBB7_3:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #32]
	ldadda	x8, x8, [x9]
	str	x8, [sp, #24]
	b	LBB7_7
LBB7_4:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #32]
	ldaddl	x8, x8, [x9]
	str	x8, [sp, #24]
	b	LBB7_7
LBB7_5:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #32]
	ldaddal	x8, x8, [x9]
	str	x8, [sp, #24]
	b	LBB7_7
LBB7_6:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #32]
	ldaddal	x8, x8, [x9]
	str	x8, [sp, #24]
	b	LBB7_7
LBB7_7:
	ldr	x0, [sp, #24]
	add	sp, sp, #64
	ret
	.cfi_endproc
	.p2align	2
lJTI7_0:
	.long	LBB7_3-Ltmp3
	.long	LBB7_3-Ltmp3
	.long	LBB7_4-Ltmp3
	.long	LBB7_5-Ltmp3
	.long	LBB7_6-Ltmp3
                                        ; -- End function
	.private_extern	__ZNSt3__110lock_guardINS_5mutexEEC2B8ne180100ERS1_ ; -- Begin function _ZNSt3__110lock_guardINS_5mutexEEC2B8ne180100ERS1_
	.globl	__ZNSt3__110lock_guardINS_5mutexEEC2B8ne180100ERS1_
	.weak_def_can_be_hidden	__ZNSt3__110lock_guardINS_5mutexEEC2B8ne180100ERS1_
	.p2align	2
__ZNSt3__110lock_guardINS_5mutexEEC2B8ne180100ERS1_: ; @_ZNSt3__110lock_guardINS_5mutexEEC2B8ne180100ERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	str	x9, [x8]
	ldr	x0, [x8]
	bl	__ZNSt3__15mutex4lockEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110lock_guardINS_5mutexEED2B8ne180100Ev ; -- Begin function _ZNSt3__110lock_guardINS_5mutexEED2B8ne180100Ev
	.globl	__ZNSt3__110lock_guardINS_5mutexEED2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__110lock_guardINS_5mutexEED2B8ne180100Ev
	.p2align	2
__ZNSt3__110lock_guardINS_5mutexEED2B8ne180100Ev: ; @_ZNSt3__110lock_guardINS_5mutexEED2B8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNSt3__15mutex6unlockEv
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols

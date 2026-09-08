	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 0
	.globl	_sum_contiguous                 ; -- Begin function sum_contiguous
	.p2align	2
_sum_contiguous:                        ; @sum_contiguous
	.cfi_startproc
; %bb.0:
	cbz	x1, LBB0_3
; %bb.1:
	cmp	x1, #16
	b.hs	LBB0_4
; %bb.2:
	mov	x9, #0                          ; =0x0
	mov	x8, #0                          ; =0x0
	b	LBB0_7
LBB0_3:
	mov	x8, #0                          ; =0x0
	mov	x0, x8
	ret
LBB0_4:
	movi.2d	v0, #0000000000000000
	and	x9, x1, #0xfffffffffffffff0
	movi.2d	v1, #0000000000000000
	add	x8, x0, #32
	mov	x10, x9
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v7, #0000000000000000
	movi.2d	v6, #0000000000000000
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldp	q16, q17, [x8, #-32]
	uaddw2.2d	v1, v1, v16
	uaddw.2d	v0, v0, v16
	ldp	q16, q18, [x8], #64
	uaddw2.2d	v4, v4, v17
	uaddw.2d	v3, v3, v17
	uaddw2.2d	v2, v2, v16
	uaddw.2d	v5, v5, v16
	uaddw2.2d	v6, v6, v18
	uaddw.2d	v7, v7, v18
	subs	x10, x10, #16
	b.ne	LBB0_5
; %bb.6:
	add.2d	v0, v3, v0
	add.2d	v1, v4, v1
	add.2d	v3, v7, v5
	add.2d	v0, v3, v0
	add.2d	v2, v6, v2
	add.2d	v1, v2, v1
	add.2d	v0, v0, v1
	addp.2d	d0, v0
	fmov	x8, d0
	cmp	x9, x1
	b.eq	LBB0_9
LBB0_7:
	sub	x10, x1, x9
	add	x9, x0, x9, lsl #2
LBB0_8:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w11, [x9], #4
	add	x8, x8, x11
	subs	x10, x10, #1
	b.ne	LBB0_8
LBB0_9:
	mov	x0, x8
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_sum_stride                     ; -- Begin function sum_stride
	.p2align	2
_sum_stride:                            ; @sum_stride
	.cfi_startproc
; %bb.0:
	cbz	x1, LBB1_4
; %bb.1:
	mov	x9, #0                          ; =0x0
	mov	x8, #0                          ; =0x0
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w10, [x0, x9, lsl #2]
	add	x8, x8, x10
	add	x9, x9, x2
	cmp	x9, x1
	b.lo	LBB1_2
; %bb.3:
	mov	x0, x8
	ret
LBB1_4:
	mov	x8, #0                          ; =0x0
	mov	x0, x8
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_atomic_increment               ; -- Begin function atomic_increment
	.p2align	2
_atomic_increment:                      ; @atomic_increment
	.cfi_startproc
; %bb.0:
	cbz	x1, LBB2_3
; %bb.1:
	mov	w8, #1                          ; =0x1
LBB2_2:                                 ; =>This Inner Loop Header: Depth=1
	ldadd	x8, x9, [x0]
	subs	x1, x1, #1
	b.ne	LBB2_2
LBB2_3:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mutex_increment                ; -- Begin function mutex_increment
	.p2align	2
_mutex_increment:                       ; @mutex_increment
	.cfi_startproc
; %bb.0:
	cbz	x2, LBB3_4
; %bb.1:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x2
	mov	x20, x1
	mov	x21, x0
LBB3_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	x0, x20
	bl	__ZNSt3__15mutex4lockEv
	ldr	x8, [x21]
	add	x8, x8, #1
	str	x8, [x21]
	mov	x0, x20
	bl	__ZNSt3__15mutex6unlockEv
	subs	x19, x19, #1
	b.ne	LBB3_2
; %bb.3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
LBB3_4:
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols

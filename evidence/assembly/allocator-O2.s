	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 0
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	stp	d9, d8, [sp, #-112]!            ; 16-byte Folded Spill
	stp	x28, x27, [sp, #16]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	sub	sp, sp, #880
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	mov	x19, x1
	mov	x20, x0
	mov	w8, #12                         ; =0xc
	sturb	w8, [x29, #-201]
	mov	w8, #28521                      ; =0x6f69
	movk	w8, #29550, lsl #16
	stur	w8, [x29, #-216]
Lloh0:
	adrp	x8, l_.str@PAGE
Lloh1:
	add	x8, x8, l_.str@PAGEOFF
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-224]
	sturb	wzr, [x29, #-212]
Ltmp0:
	sub	x2, x29, #224
	mov	w3, #10000                      ; =0x2710
	bl	__ZN3bts13size_argumentEiPPcRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEm
Ltmp1:
; %bb.1:
	mov	x25, x0
	ldursb	w8, [x29, #-201]
	tbz	w8, #31, LBB0_3
; %bb.2:
	ldur	x0, [x29, #-224]
	bl	__ZdlPv
LBB0_3:
	mov	w8, #8                          ; =0x8
	sturb	w8, [x29, #-201]
	mov	x8, #11565                      ; =0x2d2d
	movk	x8, #24951, lsl #16
	movk	x8, #28018, lsl #32
	movk	x8, #28789, lsl #48
	stur	x8, [x29, #-224]
	sturb	wzr, [x29, #-216]
Ltmp3:
	sub	x2, x29, #224
	mov	x0, x20
	mov	x1, x19
	mov	w3, #2                          ; =0x2
	bl	__ZN3bts13size_argumentEiPPcRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEm
Ltmp4:
; %bb.4:
	mov	x21, x0
	ldursb	w8, [x29, #-201]
	tbz	w8, #31, LBB0_6
; %bb.5:
	ldur	x0, [x29, #-224]
	bl	__ZdlPv
LBB0_6:
	mov	w8, #13                         ; =0xd
Lloh3:
	adrp	x9, l_.str.2@PAGE
Lloh4:
	add	x9, x9, l_.str.2@PAGEOFF
	sturb	w8, [x29, #-201]
	ldr	x8, [x9]
	stur	x8, [x29, #-224]
	ldur	x8, [x9, #5]
	stur	x8, [x29, #-219]
	sturb	wzr, [x29, #-211]
Ltmp6:
	sub	x2, x29, #224
	mov	x0, x20
	mov	x1, x19
	mov	w3, #8                          ; =0x8
	bl	__ZN3bts13size_argumentEiPPcRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEm
Ltmp7:
; %bb.7:
	stp	x21, x0, [sp, #72]              ; 16-byte Folded Spill
	ldursb	w8, [x29, #-201]
	tbz	w8, #31, LBB0_9
; %bb.8:
	ldur	x0, [x29, #-224]
	bl	__ZdlPv
LBB0_9:
	str	xzr, [sp, #720]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [sp, #688]
	stp	q0, q0, [sp, #656]
	stp	q0, q0, [sp, #624]
	str	xzr, [sp, #608]
	stp	q0, q0, [sp, #576]
	stp	q0, q0, [sp, #544]
	stp	q0, q0, [sp, #512]
	add	x1, sp, #624
	mov	w0, #0                          ; =0x0
	bl	__ZN12_GLOBAL__N_119fragmentation_probeEbRN3bts14AllocatorStatsE
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
	add	x1, sp, #512
	mov	w0, #1                          ; =0x1
	bl	__ZN12_GLOBAL__N_119fragmentation_probeEbRN3bts14AllocatorStatsE
	str	w0, [sp, #40]                   ; 4-byte Folded Spill
	mov	w0, #1024                       ; =0x400
	bl	__Znam
	mov	x24, x0
	mov	w1, #1024                       ; =0x400
	bl	_bzero
	mov	x26, #0                         ; =0x0
	mov	w20, #0                         ; =0x0
	mov	x19, #0                         ; =0x0
	stp	xzr, xzr, [x29, #-224]
	stur	xzr, [x29, #-208]
	str	x25, [sp, #88]                  ; 8-byte Folded Spill
	b	LBB0_12
LBB0_10:                                ;   in Loop: Header=BB0_12 Depth=1
	str	x23, [x26], #8
	mov	x28, x26
LBB0_11:                                ;   in Loop: Header=BB0_12 Depth=1
	stur	x28, [x29, #-216]
	add	w20, w20, #1
	mov	x26, x28
	cmp	w20, #6
	b.eq	LBB0_34
LBB0_12:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_32 Depth 2
                                        ;     Child Loop BB0_21 Depth 2
	add	x8, x19, #7
	and	x8, x8, #0xfffffffffffffff8
	add	x9, x8, #128
	add	x10, x24, x8
	cmp	x8, #896
	csel	x19, x19, x9, hi
	csel	x23, xzr, x10, hi
	ldur	x8, [x29, #-208]
	cmp	x26, x8
	b.lo	LBB0_10
; %bb.13:                               ;   in Loop: Header=BB0_12 Depth=1
	ldur	x25, [x29, #-224]
	sub	x21, x26, x25
	asr	x22, x21, #3
	add	x9, x22, #1
	lsr	x10, x9, #61
	cbnz	x10, LBB0_196
; %bb.14:                               ;   in Loop: Header=BB0_12 Depth=1
	sub	x8, x8, x25
	asr	x10, x8, #2
	cmp	x10, x9
	csel	x9, x10, x9, hi
	mov	x10, #9223372036854775800       ; =0x7ffffffffffffff8
	cmp	x8, x10
	mov	x8, #2305843009213693951        ; =0x1fffffffffffffff
	csel	x27, x9, x8, lo
	cbz	x27, LBB0_17
; %bb.15:                               ;   in Loop: Header=BB0_12 Depth=1
	lsr	x8, x27, #61
	cbnz	x8, LBB0_199
; %bb.16:                               ;   in Loop: Header=BB0_12 Depth=1
	lsl	x0, x27, #3
Ltmp9:
	bl	__Znwm
Ltmp10:
	b	LBB0_18
LBB0_17:                                ;   in Loop: Header=BB0_12 Depth=1
	mov	x0, #0                          ; =0x0
LBB0_18:                                ;   in Loop: Header=BB0_12 Depth=1
	add	x8, x0, x22, lsl #3
	mov	x28, x8
	str	x23, [x28], #8
	subs	x9, x26, x25
	b.eq	LBB0_23
; %bb.19:                               ;   in Loop: Header=BB0_12 Depth=1
	sub	x9, x9, #8
	cmp	x9, #360
	b.hs	LBB0_25
; %bb.20:                               ;   in Loop: Header=BB0_12 Depth=1
	mov	x9, x26
LBB0_21:                                ;   Parent Loop BB0_12 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x10, [x9, #-8]!
	str	x10, [x8, #-8]!
	cmp	x9, x25
	b.ne	LBB0_21
LBB0_22:                                ;   in Loop: Header=BB0_12 Depth=1
	ldur	x26, [x29, #-224]
LBB0_23:                                ;   in Loop: Header=BB0_12 Depth=1
	add	x9, x0, x27, lsl #3
	stur	x8, [x29, #-224]
	stur	x9, [x29, #-208]
	ldr	x25, [sp, #88]                  ; 8-byte Folded Reload
	cbz	x26, LBB0_11
; %bb.24:                               ;   in Loop: Header=BB0_12 Depth=1
	mov	x0, x26
	bl	__ZdlPv
	b	LBB0_11
LBB0_25:                                ;   in Loop: Header=BB0_12 Depth=1
	sub	x10, x26, #8
	sub	x11, x10, x25
	and	x11, x11, #0xfffffffffffffff8
	add	x12, x0, x21
	sub	x12, x12, #8
	sub	x13, x12, x11
	cmp	x13, x12
	b.hi	LBB0_30
; %bb.26:                               ;   in Loop: Header=BB0_12 Depth=1
	sub	x11, x10, x11
	cmp	x11, x10
	b.hi	LBB0_29
; %bb.27:                               ;   in Loop: Header=BB0_12 Depth=1
	sub	x10, x26, x0
	sub	x10, x10, x21
	cmp	x10, #64
	b.hs	LBB0_31
; %bb.28:                               ;   in Loop: Header=BB0_12 Depth=1
	mov	x9, x26
	b	LBB0_21
LBB0_29:                                ;   in Loop: Header=BB0_12 Depth=1
	mov	x9, x26
	b	LBB0_21
LBB0_30:                                ;   in Loop: Header=BB0_12 Depth=1
	mov	x9, x26
	b	LBB0_21
LBB0_31:                                ;   in Loop: Header=BB0_12 Depth=1
	lsr	x9, x9, #3
	add	x10, x9, #1
	and	x11, x10, #0x3ffffffffffffff8
	lsl	x12, x11, #3
	sub	x9, x26, x12
	sub	x8, x8, x12
	sub	x12, x26, #32
	add	x13, x0, x22, lsl #3
	sub	x13, x13, #32
	mov	x14, x11
LBB0_32:                                ;   Parent Loop BB0_12 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q1, q0, [x12]
	ldp	q3, q2, [x12, #-32]
	stp	q1, q0, [x13]
	stp	q3, q2, [x13, #-32]
	sub	x12, x12, #64
	sub	x13, x13, #64
	sub	x14, x14, #8
	cbnz	x14, LBB0_32
; %bb.33:                               ;   in Loop: Header=BB0_12 Depth=1
	cmp	x10, x11
	b.ne	LBB0_21
	b	LBB0_22
LBB0_34:
	ldur	x0, [x29, #-224]
	cbz	x0, LBB0_36
; %bb.35:
	bl	__ZdlPv
LBB0_36:
	mov	x0, x24
	bl	__ZdaPv
	add	x8, sp, #400
	mov	w0, #0                          ; =0x0
	mov	x1, x25
	bl	__ZN12_GLOBAL__N_114mixed_workloadEbmy
	add	x8, sp, #288
	mov	w0, #1                          ; =0x1
	mov	x1, x25
	bl	__ZN12_GLOBAL__N_114mixed_workloadEbmy
	mov	w0, #25                         ; =0x19
	bl	__Znwm
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
Lloh5:
	adrp	x8, l_.str.3@PAGE
Lloh6:
	add	x8, x8, l_.str.3@PAGEOFF
	ldr	q0, [x8]
	str	q0, [x0]
	ldur	x8, [x8, #15]
	stur	x8, [x0, #15]
	strb	wzr, [x0, #23]
	ldr	x21, [sp, #80]                  ; 8-byte Folded Reload
	cbz	x21, LBB0_202
; %bb.37:
	ldr	x20, [sp, #72]                  ; 8-byte Folded Reload
	cbz	x20, LBB0_40
LBB0_38:                                ; =>This Inner Loop Header: Depth=1
Ltmp17:
	sub	x8, x29, #224
	mov	w0, #0                          ; =0x0
	mov	x1, x25
	bl	__ZN12_GLOBAL__N_114mixed_workloadEbmy
Ltmp18:
; %bb.39:                               ;   in Loop: Header=BB0_38 Depth=1
	subs	x20, x20, #1
	b.ne	LBB0_38
LBB0_40:
	stp	xzr, xzr, [sp, #96]
	lsr	x8, x21, #61
	str	xzr, [sp, #112]
	cbnz	x8, LBB0_204
; %bb.41:
	lsl	x0, x21, #3
Ltmp20:
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	bl	__Znwm
Ltmp21:
; %bb.42:
	mov	x22, #0                         ; =0x0
	add	x8, x19, #7
	and	x8, x8, #0xfffffffffffffff8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	add	x8, x0, x21, lsl #3
	stp	x0, x0, [sp, #96]
	str	x8, [sp, #112]
	cmp	x21, #1
	csinc	x20, x21, xzr, hi
	mov	x23, #145685290680320           ; =0x848000000000
	movk	x23, #16686, lsl #48
	mov	x28, #2305843009213693951       ; =0x1fffffffffffffff
	b	LBB0_45
LBB0_43:                                ;   in Loop: Header=BB0_45 Depth=1
	str	d8, [x19], #8
	mov	x24, x19
LBB0_44:                                ;   in Loop: Header=BB0_45 Depth=1
	str	x24, [sp, #104]
	add	x22, x22, #1
	cmp	x22, x20
	b.eq	LBB0_62
LBB0_45:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_56 Depth 2
                                        ;     Child Loop BB0_58 Depth 2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x26, x0
Ltmp22:
	sub	x8, x29, #224
	mov	w0, #0                          ; =0x0
	mov	x1, x25
	bl	__ZN12_GLOBAL__N_114mixed_workloadEbmy
Ltmp23:
; %bb.46:                               ;   in Loop: Header=BB0_45 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x26
	scvtf	d0, x8
	fmov	d1, x23
	fdiv	d8, d0, d1
	ldp	x19, x8, [sp, #104]
	cmp	x19, x8
	b.lo	LBB0_43
; %bb.47:                               ;   in Loop: Header=BB0_45 Depth=1
	ldr	x26, [sp, #96]
	sub	x27, x19, x26
	asr	x21, x27, #3
	add	x9, x21, #1
	lsr	x10, x9, #61
	cbnz	x10, LBB0_197
; %bb.48:                               ;   in Loop: Header=BB0_45 Depth=1
	sub	x8, x8, x26
	asr	x10, x8, #2
	cmp	x10, x9
	csel	x9, x10, x9, hi
	mov	x10, #9223372036854775800       ; =0x7ffffffffffffff8
	cmp	x8, x10
	csel	x25, x9, x28, lo
	cbz	x25, LBB0_51
; %bb.49:                               ;   in Loop: Header=BB0_45 Depth=1
	lsr	x8, x25, #61
	cbnz	x8, LBB0_200
; %bb.50:                               ;   in Loop: Header=BB0_45 Depth=1
	lsl	x0, x25, #3
Ltmp25:
	bl	__Znwm
Ltmp26:
	b	LBB0_52
LBB0_51:                                ;   in Loop: Header=BB0_45 Depth=1
	mov	x0, #0                          ; =0x0
LBB0_52:                                ;   in Loop: Header=BB0_45 Depth=1
	add	x8, x0, x21, lsl #3
	mov	x24, x8
	str	d8, [x24], #8
	subs	x9, x19, x26
	b.eq	LBB0_59
; %bb.53:                               ;   in Loop: Header=BB0_45 Depth=1
	sub	x9, x9, #8
	cmp	x9, #88
	b.lo	LBB0_58
; %bb.54:                               ;   in Loop: Header=BB0_45 Depth=1
	add	x10, x0, x27
	sub	x10, x19, x10
	cmp	x10, #64
	b.lo	LBB0_58
; %bb.55:                               ;   in Loop: Header=BB0_45 Depth=1
	lsr	x9, x9, #3
	add	x9, x9, #1
	and	x10, x9, #0x3ffffffffffffff8
	lsl	x12, x10, #3
	sub	x11, x19, x12
	sub	x8, x8, x12
	sub	x12, x19, #32
	add	x13, x0, x21, lsl #3
	sub	x13, x13, #32
	mov	x14, x10
LBB0_56:                                ;   Parent Loop BB0_45 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q1, q0, [x12]
	ldp	q3, q2, [x12, #-32]
	stp	q1, q0, [x13]
	stp	q3, q2, [x13, #-32]
	sub	x12, x12, #64
	sub	x13, x13, #64
	sub	x14, x14, #8
	cbnz	x14, LBB0_56
; %bb.57:                               ;   in Loop: Header=BB0_45 Depth=1
	mov	x19, x11
	cmp	x9, x10
	b.eq	LBB0_59
LBB0_58:                                ;   Parent Loop BB0_45 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	d0, [x19, #-8]!
	str	d0, [x8, #-8]!
	cmp	x19, x26
	b.ne	LBB0_58
LBB0_59:                                ;   in Loop: Header=BB0_45 Depth=1
	add	x9, x0, x25, lsl #3
	str	x8, [sp, #96]
	str	x9, [sp, #112]
	cbz	x26, LBB0_61
; %bb.60:                               ;   in Loop: Header=BB0_45 Depth=1
	mov	x0, x26
	bl	__ZdlPv
LBB0_61:                                ;   in Loop: Header=BB0_45 Depth=1
	ldr	x25, [sp, #88]                  ; 8-byte Folded Reload
	b	LBB0_44
LBB0_62:
	ldr	x8, [sp, #96]
	cmp	x8, x24
	b.eq	LBB0_70
; %bb.63:
	sub	x11, x24, x8
	sub	x10, x11, #8
	lsr	x9, x10, #3
	movi	d0, #0000000000000000
	mov	x12, x8
	cmp	x10, #24
	b.lo	LBB0_67
; %bb.64:
	add	x13, x9, #1
	and	x14, x13, #0x3ffffffffffffffc
	add	x12, x8, x14, lsl #3
	add	x15, x8, #16
	mov	x16, x14
LBB0_65:                                ; =>This Inner Loop Header: Depth=1
	ldp	d1, d2, [x15, #-16]
	ldp	d3, d4, [x15], #32
	fadd	d0, d0, d1
	fadd	d0, d0, d2
	fadd	d0, d0, d3
	fadd	d0, d0, d4
	subs	x16, x16, #4
	b.ne	LBB0_65
; %bb.66:
	cmp	x13, x14
	b.eq	LBB0_68
LBB0_67:                                ; =>This Inner Loop Header: Depth=1
	ldr	d1, [x12], #8
	fadd	d0, d0, d1
	cmp	x12, x24
	b.ne	LBB0_67
LBB0_68:
	asr	x11, x11, #3
	ucvtf	d1, x11
	fdiv	d4, d0, d1
	movi	d8, #0000000000000000
	cmp	x10, #24
	str	q4, [sp, #16]                   ; 16-byte Folded Spill
	b.hs	LBB0_71
; %bb.69:
	mov	x9, x8
	b	LBB0_74
LBB0_70:
	movi	d8, #0000000000000000
	mov	x8, #9221120237041090560        ; =0x7ff8000000000000
	fmov	d0, x8
	str	q0, [sp, #16]                   ; 16-byte Folded Spill
	b	LBB0_75
LBB0_71:
	add	x10, x9, #1
	and	x11, x10, #0x3ffffffffffffffc
	add	x9, x8, x11, lsl #3
	dup.2d	v0, v4[0]
	mov	x12, x11
LBB0_72:                                ; =>This Inner Loop Header: Depth=1
	ldr	d1, [x8]
	ldr	d2, [x8, #24]
	fsub	d1, d1, d4
	fsub	d2, d2, d4
	fmul	d1, d1, d1
	ldur	q3, [x8, #8]
	fsub.2d	v3, v3, v0
	fmul.2d	v3, v3, v3
	fmul	d2, d2, d2
	fadd	d1, d8, d1
	fadd	d1, d1, d3
	mov	d3, v3[1]
	fadd	d1, d1, d3
	fadd	d8, d1, d2
	add	x8, x8, #32
	subs	x12, x12, #4
	b.ne	LBB0_72
; %bb.73:
	cmp	x10, x11
	b.eq	LBB0_75
LBB0_74:                                ; =>This Inner Loop Header: Depth=1
	ldr	d0, [x9], #8
	fsub	d0, d0, d4
	fmadd	d8, d0, d0, d8
	cmp	x9, x24
	b.ne	LBB0_74
LBB0_75:
	str	xzr, [sp, #272]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [sp, #240]
	stp	q0, q0, [sp, #208]
	str	q0, [sp, #192]
Ltmp33:
	add	x0, sp, #192
	ldr	x24, [sp, #64]                  ; 8-byte Folded Reload
	mov	x1, x24
	mov	w2, #23                         ; =0x17
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm
Ltmp34:
	ldp	x22, x23, [sp, #72]             ; 16-byte Folded Reload
; %bb.76:
	ldp	x27, x8, [sp, #96]
	stp	x22, x23, [sp, #216]
	stp	xzr, xzr, [x29, #-216]
	stur	xzr, [x29, #-224]
	subs	x28, x8, x27
	asr	x21, x28, #3
	ucvtf	d0, x21
	fdiv	d0, d8, d0
	fsqrt	d0, d0
	ldr	q1, [sp, #16]                   ; 16-byte Folded Reload
	stp	d1, d0, [sp, #232]
	b.eq	LBB0_205
; %bb.77:
	tbnz	x28, #63, LBB0_207
; %bb.78:
Ltmp36:
	mov	x0, x28
	bl	__Znwm
Ltmp37:
; %bb.79:
	mov	x26, x0
	add	x19, x0, x21, lsl #3
	stur	x0, [x29, #-224]
	stur	x19, [x29, #-208]
	mov	x1, x27
	mov	x2, x28
	bl	_memcpy
	stur	x19, [x29, #-216]
Ltmp38:
	sub	x2, x29, #248
	mov	x0, x26
	mov	x1, x19
	bl	__ZNSt3__16__sortIRNS_6__lessIddEEPdEEvT0_S5_T_
Ltmp39:
; %bb.80:
	sub	x8, x21, #1
	ucvtf	d0, x8
	fmov	d1, #0.50000000
	fmul	d0, d0, d1
	fcvtmu	x8, d0
	fcvtpu	x9, d0
	cmp	x8, x9
	b.ne	LBB0_82
; %bb.81:
	ldr	d0, [x26, x8, lsl #3]
	b	LBB0_83
LBB0_82:
	ucvtf	d1, x8
	fsub	d0, d0, d1
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x26, x9, lsl #3]
	fsub	d2, d2, d1
	fmadd	d0, d2, d0, d1
LBB0_83:
	str	d0, [sp, #248]
	stur	x26, [x29, #-216]
	mov	x0, x26
	bl	__ZdlPv
	stp	xzr, xzr, [x29, #-248]
	stur	xzr, [x29, #-232]
	ldp	x27, x8, [sp, #96]
	subs	x28, x8, x27
	b.eq	LBB0_208
; %bb.84:
	tbnz	x28, #63, LBB0_210
; %bb.85:
Ltmp40:
	mov	x0, x28
	bl	__Znwm
Ltmp41:
; %bb.86:
	mov	x26, x0
	asr	x21, x28, #3
	add	x19, x0, x21, lsl #3
	stur	x0, [x29, #-248]
	stur	x19, [x29, #-232]
	mov	x1, x27
	mov	x2, x28
	bl	_memcpy
Ltmp42:
	sub	x2, x29, #105
	mov	x0, x26
	mov	x1, x19
	bl	__ZNSt3__16__sortIRNS_6__lessIddEEPdEEvT0_S5_T_
Ltmp43:
; %bb.87:
	sub	x8, x21, #1
	ucvtf	d0, x8
	mov	x8, #7378697629483820646        ; =0x6666666666666666
	movk	x8, #16366, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	fcvtmu	x8, d0
	fcvtpu	x9, d0
	cmp	x8, x9
	b.ne	LBB0_89
; %bb.88:
	ldr	d0, [x26, x8, lsl #3]
	b	LBB0_90
LBB0_89:
	ucvtf	d1, x8
	fsub	d0, d0, d1
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x26, x9, lsl #3]
	fsub	d2, d2, d1
	fmadd	d0, d2, d0, d1
LBB0_90:
	str	d0, [sp, #256]
	mov	x0, x26
	bl	__ZdlPv
	ldp	x0, x8, [sp, #96]
	mov	x9, x0
	ldr	d0, [x9], #8
	cmp	x0, x8
	b.eq	LBB0_96
; %bb.91:
	cmp	x9, x8
	b.eq	LBB0_96
; %bb.92:
	mov	x12, x9
	mov	x10, x0
	mov	x11, x9
LBB0_93:                                ; =>This Inner Loop Header: Depth=1
	ldr	d1, [x11], #8
	fcmp	d1, d0
	fcsel	d0, d1, d0, mi
	csel	x10, x12, x10, mi
	mov	x12, x11
	cmp	x11, x8
	b.ne	LBB0_93
; %bb.94:
	ldr	d0, [x10]
	str	d0, [sp, #264]
	ldr	d0, [x0]
	mov	x10, x0
	mov	x11, x9
LBB0_95:                                ; =>This Inner Loop Header: Depth=1
	ldr	d1, [x11], #8
	fcmp	d0, d1
	fcsel	d0, d1, d0, mi
	csel	x10, x9, x10, mi
	mov	x9, x11
	cmp	x11, x8
	b.ne	LBB0_95
	b	LBB0_97
LBB0_96:
	str	d0, [sp, #264]
	mov	x10, x0
LBB0_97:
	ldr	d0, [x10]
	str	d0, [sp, #272]
	str	x0, [sp, #104]
	bl	__ZdlPv
	mov	x0, x24
	bl	__ZdlPv
Ltmp45:
	mov	w0, #32                         ; =0x20
	bl	__Znwm
Ltmp46:
; %bb.98:
	mov	x21, x0
Lloh7:
	adrp	x8, l_.str.4@PAGE
Lloh8:
	add	x8, x8, l_.str.4@PAGEOFF
	ldr	q0, [x8]
	str	q0, [x0]
	ldur	q0, [x8, #9]
	stur	q0, [x0, #9]
	strb	wzr, [x0, #25]
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	cbz	x22, LBB0_102
; %bb.99:
	mov	x19, x22
LBB0_100:                               ; =>This Inner Loop Header: Depth=1
Ltmp48:
	sub	x8, x29, #224
	mov	w0, #1                          ; =0x1
	mov	x1, x25
	bl	__ZN12_GLOBAL__N_114mixed_workloadEbmy
Ltmp49:
; %bb.101:                              ;   in Loop: Header=BB0_100 Depth=1
	subs	x19, x19, #1
	b.ne	LBB0_100
LBB0_102:
Ltmp51:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	bl	__Znwm
Ltmp52:
; %bb.103:
	mov	x27, x0
	mov	x19, #0                         ; =0x0
	add	x23, x0, x23, lsl #3
	stp	x0, x0, [x29, #-248]
	stur	x23, [x29, #-232]
	mov	x21, #145685290680320           ; =0x848000000000
	movk	x21, #16686, lsl #48
	mov	x24, x0
	b	LBB0_106
LBB0_104:                               ;   in Loop: Header=BB0_106 Depth=1
	str	d8, [x24], #8
LBB0_105:                               ;   in Loop: Header=BB0_106 Depth=1
	stur	x24, [x29, #-240]
	add	x19, x19, #1
	cmp	x19, x20
	b.eq	LBB0_129
LBB0_106:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_127 Depth 2
                                        ;     Child Loop BB0_116 Depth 2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x26, x0
Ltmp54:
	sub	x8, x29, #224
	mov	w0, #1                          ; =0x1
	mov	x1, x25
	bl	__ZN12_GLOBAL__N_114mixed_workloadEbmy
Ltmp55:
; %bb.107:                              ;   in Loop: Header=BB0_106 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	sub	x8, x0, x26
	scvtf	d0, x8
	fmov	d1, x21
	fdiv	d8, d0, d1
	cmp	x24, x23
	b.lo	LBB0_104
; %bb.108:                              ;   in Loop: Header=BB0_106 Depth=1
	sub	x28, x24, x27
	asr	x21, x28, #3
	add	x8, x21, #1
	lsr	x9, x8, #61
	cbnz	x9, LBB0_198
; %bb.109:                              ;   in Loop: Header=BB0_106 Depth=1
	sub	x9, x23, x27
	asr	x10, x9, #2
	cmp	x10, x8
	csel	x8, x10, x8, hi
	mov	x10, #9223372036854775800       ; =0x7ffffffffffffff8
	cmp	x9, x10
	mov	x9, #2305843009213693951        ; =0x1fffffffffffffff
	csel	x26, x8, x9, lo
	cbz	x26, LBB0_112
; %bb.110:                              ;   in Loop: Header=BB0_106 Depth=1
	lsr	x8, x26, #61
	cbnz	x8, LBB0_201
; %bb.111:                              ;   in Loop: Header=BB0_106 Depth=1
	lsl	x0, x26, #3
Ltmp57:
	bl	__Znwm
Ltmp58:
	b	LBB0_113
LBB0_112:                               ;   in Loop: Header=BB0_106 Depth=1
	mov	x0, #0                          ; =0x0
LBB0_113:                               ;   in Loop: Header=BB0_106 Depth=1
	add	x25, x0, x21, lsl #3
	mov	x22, x25
	str	d8, [x22], #8
	subs	x8, x24, x27
	b.eq	LBB0_117
; %bb.114:                              ;   in Loop: Header=BB0_106 Depth=1
	sub	x8, x8, #8
	cmp	x8, #360
	b.hs	LBB0_120
; %bb.115:                              ;   in Loop: Header=BB0_106 Depth=1
	mov	x8, x24
LBB0_116:                               ;   Parent Loop BB0_106 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	d0, [x8, #-8]!
	str	d0, [x25, #-8]!
	cmp	x8, x27
	b.ne	LBB0_116
LBB0_117:                               ;   in Loop: Header=BB0_106 Depth=1
	add	x23, x0, x26, lsl #3
	stur	x25, [x29, #-248]
	stur	x23, [x29, #-232]
	cbz	x27, LBB0_119
; %bb.118:                              ;   in Loop: Header=BB0_106 Depth=1
	mov	x0, x27
	bl	__ZdlPv
LBB0_119:                               ;   in Loop: Header=BB0_106 Depth=1
	mov	x27, x25
	mov	x24, x22
	ldr	x25, [sp, #88]                  ; 8-byte Folded Reload
	mov	x21, #145685290680320           ; =0x848000000000
	movk	x21, #16686, lsl #48
	b	LBB0_105
LBB0_120:                               ;   in Loop: Header=BB0_106 Depth=1
	sub	x9, x24, #8
	sub	x10, x9, x27
	and	x10, x10, #0xfffffffffffffff8
	add	x11, x0, x28
	sub	x11, x11, #8
	sub	x12, x11, x10
	cmp	x12, x11
	b.hi	LBB0_125
; %bb.121:                              ;   in Loop: Header=BB0_106 Depth=1
	sub	x10, x9, x10
	cmp	x10, x9
	b.hi	LBB0_124
; %bb.122:                              ;   in Loop: Header=BB0_106 Depth=1
	sub	x9, x24, x0
	sub	x9, x9, x28
	cmp	x9, #64
	b.hs	LBB0_126
; %bb.123:                              ;   in Loop: Header=BB0_106 Depth=1
	mov	x8, x24
	b	LBB0_116
LBB0_124:                               ;   in Loop: Header=BB0_106 Depth=1
	mov	x8, x24
	b	LBB0_116
LBB0_125:                               ;   in Loop: Header=BB0_106 Depth=1
	mov	x8, x24
	b	LBB0_116
LBB0_126:                               ;   in Loop: Header=BB0_106 Depth=1
	lsr	x8, x8, #3
	add	x9, x8, #1
	and	x10, x9, #0x3ffffffffffffff8
	lsl	x11, x10, #3
	sub	x8, x24, x11
	sub	x25, x25, x11
	sub	x11, x24, #32
	add	x12, x0, x21, lsl #3
	sub	x12, x12, #32
	mov	x13, x10
LBB0_127:                               ;   Parent Loop BB0_106 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q1, q0, [x11]
	ldp	q3, q2, [x11, #-32]
	stp	q1, q0, [x12]
	stp	q3, q2, [x12, #-32]
	sub	x11, x11, #64
	sub	x12, x12, #64
	sub	x13, x13, #8
	cbnz	x13, LBB0_127
; %bb.128:                              ;   in Loop: Header=BB0_106 Depth=1
	cmp	x9, x10
	b.ne	LBB0_116
	b	LBB0_117
LBB0_129:
	ldur	x25, [x29, #-248]
	cmp	x25, x24
	b.eq	LBB0_140
; %bb.130:
	sub	x10, x24, x25
	sub	x9, x10, #8
	lsr	x8, x9, #3
	movi	d0, #0000000000000000
	mov	x11, x25
	cmp	x9, #24
	ldr	x21, [sp, #64]                  ; 8-byte Folded Reload
	b.lo	LBB0_134
; %bb.131:
	add	x12, x8, #1
	and	x13, x12, #0x3ffffffffffffffc
	add	x11, x25, x13, lsl #3
	add	x14, x25, #16
	mov	x15, x13
LBB0_132:                               ; =>This Inner Loop Header: Depth=1
	ldp	d1, d2, [x14, #-16]
	ldp	d3, d4, [x14], #32
	fadd	d0, d0, d1
	fadd	d0, d0, d2
	fadd	d0, d0, d3
	fadd	d0, d0, d4
	subs	x15, x15, #4
	b.ne	LBB0_132
; %bb.133:
	cmp	x12, x13
	b.eq	LBB0_135
LBB0_134:                               ; =>This Inner Loop Header: Depth=1
	ldr	d1, [x11], #8
	fadd	d0, d0, d1
	cmp	x11, x24
	b.ne	LBB0_134
LBB0_135:
	asr	x10, x10, #3
	ucvtf	d1, x10
	fdiv	d4, d0, d1
	movi	d8, #0000000000000000
	mov	x10, x25
	cmp	x9, #24
	str	q4, [sp, #48]                   ; 16-byte Folded Spill
	b.lo	LBB0_139
; %bb.136:
	add	x8, x8, #1
	and	x9, x8, #0x3ffffffffffffffc
	add	x10, x25, x9, lsl #3
	dup.2d	v0, v4[0]
	mov	x11, x9
	mov	x12, x25
LBB0_137:                               ; =>This Inner Loop Header: Depth=1
	ldr	d1, [x12]
	ldr	d2, [x12, #24]
	fsub	d1, d1, d4
	fsub	d2, d2, d4
	fmul	d1, d1, d1
	ldur	q3, [x12, #8]
	fsub.2d	v3, v3, v0
	fmul.2d	v3, v3, v3
	fmul	d2, d2, d2
	fadd	d1, d8, d1
	fadd	d1, d1, d3
	mov	d3, v3[1]
	fadd	d1, d1, d3
	fadd	d8, d1, d2
	add	x12, x12, #32
	subs	x11, x11, #4
	b.ne	LBB0_137
; %bb.138:
	cmp	x8, x9
	b.eq	LBB0_141
LBB0_139:                               ; =>This Inner Loop Header: Depth=1
	ldr	d0, [x10], #8
	fsub	d0, d0, d4
	fmadd	d8, d0, d0, d8
	cmp	x10, x24
	b.ne	LBB0_139
	b	LBB0_141
LBB0_140:
	movi	d8, #0000000000000000
	mov	x8, #9221120237041090560        ; =0x7ff8000000000000
	fmov	d0, x8
	str	q0, [sp, #48]                   ; 16-byte Folded Spill
	ldr	x21, [sp, #64]                  ; 8-byte Folded Reload
LBB0_141:
	str	xzr, [sp, #176]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [sp, #144]
	stp	q0, q0, [sp, #112]
	str	q0, [sp, #96]
Ltmp65:
	add	x0, sp, #96
	mov	x1, x21
	mov	w2, #25                         ; =0x19
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm
Ltmp66:
; %bb.142:
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	stp	x9, x8, [sp, #120]
	stp	xzr, xzr, [x29, #-216]
	stur	xzr, [x29, #-224]
	subs	x22, x24, x25
	asr	x20, x22, #3
	ucvtf	d0, x20
	fdiv	d0, d8, d0
	fsqrt	d0, d0
	ldr	q1, [sp, #48]                   ; 16-byte Folded Reload
	stp	d1, d0, [sp, #136]
	b.eq	LBB0_211
; %bb.143:
	tbnz	x22, #63, LBB0_213
; %bb.144:
Ltmp68:
	mov	x0, x22
	bl	__Znwm
Ltmp69:
; %bb.145:
	mov	x23, x0
	add	x19, x0, x20, lsl #3
	stur	x0, [x29, #-224]
	stur	x19, [x29, #-208]
	mov	x1, x25
	mov	x2, x22
	bl	_memcpy
	stur	x19, [x29, #-216]
Ltmp70:
	sub	x2, x29, #105
	mov	x0, x23
	mov	x1, x19
	bl	__ZNSt3__16__sortIRNS_6__lessIddEEPdEEvT0_S5_T_
Ltmp71:
; %bb.146:
	sub	x8, x20, #1
	ucvtf	d8, x8
	fmov	d0, #0.50000000
	fmul	d0, d8, d0
	fcvtmu	x8, d0
	fcvtpu	x9, d0
	cmp	x8, x9
	b.ne	LBB0_148
; %bb.147:
	ldr	d0, [x23, x8, lsl #3]
	b	LBB0_149
LBB0_148:
	ucvtf	d1, x8
	fsub	d0, d0, d1
	ldr	d1, [x23, x8, lsl #3]
	ldr	d2, [x23, x9, lsl #3]
	fsub	d2, d2, d1
	fmadd	d0, d2, d0, d1
LBB0_149:
	str	d0, [sp, #152]
	stur	x23, [x29, #-216]
	mov	x0, x23
	bl	__ZdlPv
Ltmp72:
	mov	x0, x22
	bl	__Znwm
Ltmp73:
; %bb.150:
	mov	x23, x0
	add	x19, x0, x20, lsl #3
	mov	x1, x25
	mov	x2, x22
	bl	_memcpy
Ltmp75:
	sub	x2, x29, #105
	mov	x0, x23
	mov	x1, x19
	bl	__ZNSt3__16__sortIRNS_6__lessIddEEPdEEvT0_S5_T_
Ltmp76:
; %bb.151:
	mov	x8, #7378697629483820646        ; =0x6666666666666666
	movk	x8, #16366, lsl #48
	fmov	d0, x8
	fmul	d0, d8, d0
	fcvtmu	x8, d0
	fcvtpu	x9, d0
	cmp	x8, x9
	b.ne	LBB0_153
; %bb.152:
	ldr	d0, [x23, x8, lsl #3]
	b	LBB0_154
LBB0_153:
	ucvtf	d1, x8
	fsub	d0, d0, d1
	ldr	d1, [x23, x8, lsl #3]
	ldr	d2, [x23, x9, lsl #3]
	fsub	d2, d2, d1
	fmadd	d0, d2, d0, d1
LBB0_154:
	str	d0, [sp, #160]
	mov	x0, x23
	bl	__ZdlPv
	mov	x8, x25
	ldr	d0, [x8], #8
	cmp	x8, x24
	b.eq	LBB0_159
; %bb.155:
	mov	x11, x8
	mov	x9, x25
	mov	x10, x8
	ldr	x23, [sp, #8]                   ; 8-byte Folded Reload
LBB0_156:                               ; =>This Inner Loop Header: Depth=1
	ldr	d1, [x10], #8
	fcmp	d1, d0
	fcsel	d0, d1, d0, mi
	csel	x9, x11, x9, mi
	mov	x11, x10
	cmp	x10, x24
	b.ne	LBB0_156
; %bb.157:
	ldr	d0, [x9]
	str	d0, [sp, #168]
	ldr	d0, [x25]
	mov	x9, x25
	mov	x10, x8
LBB0_158:                               ; =>This Inner Loop Header: Depth=1
	ldr	d1, [x10], #8
	fcmp	d0, d1
	fcsel	d0, d1, d0, mi
	csel	x9, x8, x9, mi
	mov	x8, x10
	cmp	x10, x24
	b.ne	LBB0_158
	b	LBB0_160
LBB0_159:
	str	d0, [sp, #168]
	mov	x9, x25
	ldr	x23, [sp, #8]                   ; 8-byte Folded Reload
LBB0_160:
	ldr	d0, [x9]
	str	d0, [sp, #176]
	mov	x0, x25
	bl	__ZdlPv
	mov	x0, x21
	bl	__ZdlPv
Ltmp78:
Lloh9:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh10:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh11:
	adrp	x1, l_.str.5@PAGE
Lloh12:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #26                         ; =0x1a
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp79:
	ldp	w22, w21, [sp, #40]             ; 8-byte Folded Reload
; %bb.161:
Ltmp80:
	mov	w1, #4660                       ; =0x1234
	movk	w1, #24301, lsl #16
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
Ltmp81:
; %bb.162:
Ltmp82:
Lloh13:
	adrp	x1, l_.str.6@PAGE
Lloh14:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #14                         ; =0xe
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp83:
; %bb.163:
Ltmp84:
	ldr	x1, [sp, #88]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp85:
; %bb.164:
Ltmp86:
Lloh15:
	adrp	x1, l_.str.7@PAGE
Lloh16:
	add	x1, x1, l_.str.7@PAGEOFF
	mov	w2, #19                         ; =0x13
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp87:
; %bb.165:
Ltmp88:
	mov	w1, #8                          ; =0x8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp89:
; %bb.166:
Ltmp90:
Lloh17:
	adrp	x1, l_.str.8@PAGE
Lloh18:
	add	x1, x1, l_.str.8@PAGEOFF
	mov	w2, #28                         ; =0x1c
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp91:
; %bb.167:
Ltmp92:
	mov	w1, #40                         ; =0x28
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp93:
; %bb.168:
Ltmp94:
Lloh19:
	adrp	x1, l_.str.9@PAGE
Lloh20:
	add	x1, x1, l_.str.9@PAGEOFF
	mov	w2, #50                         ; =0x32
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp95:
; %bb.169:
Lloh21:
	adrp	x19, l_.str.10@PAGE
Lloh22:
	add	x19, x19, l_.str.10@PAGEOFF
Lloh23:
	adrp	x20, l_.str.11@PAGE
Lloh24:
	add	x20, x20, l_.str.11@PAGEOFF
	cmp	x23, #625
	csel	x1, x20, x19, lo
	mov	w8, #4                          ; =0x4
	cinc	x2, x8, lo
Ltmp96:
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp97:
; %bb.170:
Ltmp98:
Lloh25:
	adrp	x1, l_.str.12@PAGE
Lloh26:
	add	x1, x1, l_.str.12@PAGEOFF
	mov	w2, #39                         ; =0x27
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp99:
; %bb.171:
	cmp	w21, #0
	csel	x1, x19, x20, ne
	mov	w8, #4                          ; =0x4
	cinc	x2, x8, eq
Ltmp100:
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp101:
; %bb.172:
Ltmp102:
Lloh27:
	adrp	x1, l_.str.13@PAGE
Lloh28:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #36                         ; =0x24
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp103:
; %bb.173:
	cmp	w22, #0
	csel	x1, x19, x20, ne
	mov	w8, #4                          ; =0x4
	cinc	x2, x8, eq
Ltmp104:
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp105:
; %bb.174:
Ltmp106:
Lloh29:
	adrp	x1, l_.str.14@PAGE
Lloh30:
	add	x1, x1, l_.str.14@PAGEOFF
	mov	w2, #39                         ; =0x27
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp107:
; %bb.175:
Ltmp108:
	add	x0, sp, #624
	bl	__ZN12_GLOBAL__N_121write_allocator_statsERKN3bts14AllocatorStatsE
Ltmp109:
; %bb.176:
Ltmp110:
Lloh31:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh32:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh33:
	adrp	x1, l_.str.15@PAGE
Lloh34:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp111:
; %bb.177:
Ltmp112:
	add	x0, sp, #512
	bl	__ZN12_GLOBAL__N_121write_allocator_statsERKN3bts14AllocatorStatsE
Ltmp113:
; %bb.178:
Ltmp114:
Lloh35:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh36:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh37:
	adrp	x1, l_.str.16@PAGE
Lloh38:
	add	x1, x1, l_.str.16@PAGEOFF
	mov	w2, #40                         ; =0x28
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp115:
; %bb.179:
	ldr	x1, [sp, #504]
Ltmp116:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp117:
; %bb.180:
Ltmp118:
Lloh39:
	adrp	x1, l_.str.17@PAGE
Lloh40:
	add	x1, x1, l_.str.17@PAGEOFF
	mov	w2, #9                          ; =0x9
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp119:
; %bb.181:
Ltmp120:
	add	x0, sp, #400
	bl	__ZN12_GLOBAL__N_121write_allocator_statsERKN3bts14AllocatorStatsE
Ltmp121:
; %bb.182:
Ltmp122:
Lloh41:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh42:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh43:
	adrp	x1, l_.str.18@PAGE
Lloh44:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	w2, #29                         ; =0x1d
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp123:
; %bb.183:
	ldr	x1, [sp, #392]
Ltmp124:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp125:
; %bb.184:
Ltmp126:
Lloh45:
	adrp	x1, l_.str.17@PAGE
Lloh46:
	add	x1, x1, l_.str.17@PAGEOFF
	mov	w2, #9                          ; =0x9
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp127:
; %bb.185:
Ltmp128:
	add	x0, sp, #288
	bl	__ZN12_GLOBAL__N_121write_allocator_statsERKN3bts14AllocatorStatsE
Ltmp129:
; %bb.186:
Ltmp130:
Lloh47:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh48:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh49:
	adrp	x1, l_.str.19@PAGE
Lloh50:
	add	x1, x1, l_.str.19@PAGEOFF
	mov	w2, #30                         ; =0x1e
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp131:
; %bb.187:
Ltmp132:
Lloh51:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh52:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #192
	bl	__ZN3bts16write_stats_jsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_14BenchmarkStatsE
Ltmp133:
; %bb.188:
Ltmp134:
Lloh53:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh54:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh55:
	adrp	x1, l_.str.15@PAGE
Lloh56:
	add	x1, x1, l_.str.15@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp135:
; %bb.189:
Ltmp136:
Lloh57:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh58:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #96
	bl	__ZN3bts16write_stats_jsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_14BenchmarkStatsE
Ltmp137:
; %bb.190:
Ltmp138:
Lloh59:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh60:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh61:
	adrp	x1, l_.str.20@PAGE
Lloh62:
	add	x1, x1, l_.str.20@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp139:
; %bb.191:
	ldrsb	w8, [sp, #119]
	tbnz	w8, #31, LBB0_194
; %bb.192:
	ldrsb	w8, [sp, #215]
	tbnz	w8, #31, LBB0_195
LBB0_193:
	cmp	x23, #625
	csinc	w8, w21, wzr, hs
	eor	w9, w22, #0x1
	orr	w0, w8, w9
	add	sp, sp, #880
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #112              ; 16-byte Folded Reload
	ret
LBB0_194:
	ldr	x0, [sp, #96]
	bl	__ZdlPv
	ldrsb	w8, [sp, #215]
	tbz	w8, #31, LBB0_193
LBB0_195:
	ldr	x0, [sp, #192]
	bl	__ZdlPv
	b	LBB0_193
LBB0_196:
Ltmp14:
	sub	x0, x29, #224
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
Ltmp15:
	b	LBB0_214
LBB0_197:
Ltmp30:
	add	x0, sp, #96
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
Ltmp31:
	b	LBB0_214
LBB0_198:
Ltmp62:
	sub	x0, x29, #248
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
Ltmp63:
	b	LBB0_214
LBB0_199:
Ltmp12:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
Ltmp13:
	b	LBB0_214
LBB0_200:
Ltmp28:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
Ltmp29:
	b	LBB0_214
LBB0_201:
Ltmp60:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
Ltmp61:
	b	LBB0_214
LBB0_202:
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x20, x0
Ltmp171:
Lloh63:
	adrp	x1, l_.str.56@PAGE
Lloh64:
	add	x1, x1, l_.str.56@PAGEOFF
	bl	__ZNSt11logic_errorC2EPKc
Ltmp172:
; %bb.203:
Lloh65:
	adrp	x8, __ZTVSt16invalid_argument@GOTPAGE
Lloh66:
	ldr	x8, [x8, __ZTVSt16invalid_argument@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x20]
Ltmp174:
Lloh67:
	adrp	x1, __ZTISt16invalid_argument@GOTPAGE
Lloh68:
	ldr	x1, [x1, __ZTISt16invalid_argument@GOTPAGEOFF]
Lloh69:
	adrp	x2, __ZNSt16invalid_argumentD1Ev@GOTPAGE
Lloh70:
	ldr	x2, [x2, __ZNSt16invalid_argumentD1Ev@GOTPAGEOFF]
	mov	x0, x20
	bl	___cxa_throw
Ltmp175:
	b	LBB0_214
LBB0_204:
Ltmp168:
	add	x0, sp, #96
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
Ltmp169:
	b	LBB0_214
LBB0_205:
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x20, x0
Ltmp162:
Lloh71:
	adrp	x1, l_.str.57@PAGE
Lloh72:
	add	x1, x1, l_.str.57@PAGEOFF
	bl	__ZNSt11logic_errorC2EPKc
Ltmp163:
; %bb.206:
Lloh73:
	adrp	x8, __ZTVSt16invalid_argument@GOTPAGE
Lloh74:
	ldr	x8, [x8, __ZTVSt16invalid_argument@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x20]
Ltmp165:
	mov	x26, #0                         ; =0x0
Lloh75:
	adrp	x1, __ZTISt16invalid_argument@GOTPAGE
Lloh76:
	ldr	x1, [x1, __ZTISt16invalid_argument@GOTPAGEOFF]
Lloh77:
	adrp	x2, __ZNSt16invalid_argumentD1Ev@GOTPAGE
Lloh78:
	ldr	x2, [x2, __ZNSt16invalid_argumentD1Ev@GOTPAGEOFF]
	mov	x0, x20
	bl	___cxa_throw
Ltmp166:
	b	LBB0_214
LBB0_207:
Ltmp159:
	sub	x0, x29, #224
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
Ltmp160:
	b	LBB0_214
LBB0_208:
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x20, x0
Ltmp153:
Lloh79:
	adrp	x1, l_.str.57@PAGE
Lloh80:
	add	x1, x1, l_.str.57@PAGEOFF
	bl	__ZNSt11logic_errorC2EPKc
Ltmp154:
; %bb.209:
Lloh81:
	adrp	x8, __ZTVSt16invalid_argument@GOTPAGE
Lloh82:
	ldr	x8, [x8, __ZTVSt16invalid_argument@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x20]
Ltmp156:
Lloh83:
	adrp	x1, __ZTISt16invalid_argument@GOTPAGE
Lloh84:
	ldr	x1, [x1, __ZTISt16invalid_argument@GOTPAGEOFF]
Lloh85:
	adrp	x2, __ZNSt16invalid_argumentD1Ev@GOTPAGE
Lloh86:
	ldr	x2, [x2, __ZNSt16invalid_argumentD1Ev@GOTPAGEOFF]
	mov	x0, x20
	bl	___cxa_throw
Ltmp157:
	b	LBB0_214
LBB0_210:
Ltmp150:
	sub	x0, x29, #248
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
Ltmp151:
	b	LBB0_214
LBB0_211:
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x20, x0
Ltmp144:
Lloh87:
	adrp	x1, l_.str.57@PAGE
Lloh88:
	add	x1, x1, l_.str.57@PAGEOFF
	bl	__ZNSt11logic_errorC2EPKc
Ltmp145:
; %bb.212:
Lloh89:
	adrp	x8, __ZTVSt16invalid_argument@GOTPAGE
Lloh90:
	ldr	x8, [x8, __ZTVSt16invalid_argument@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x20]
Ltmp147:
	mov	x23, #0                         ; =0x0
Lloh91:
	adrp	x1, __ZTISt16invalid_argument@GOTPAGE
Lloh92:
	ldr	x1, [x1, __ZTISt16invalid_argument@GOTPAGEOFF]
Lloh93:
	adrp	x2, __ZNSt16invalid_argumentD1Ev@GOTPAGE
Lloh94:
	ldr	x2, [x2, __ZNSt16invalid_argumentD1Ev@GOTPAGEOFF]
	mov	x0, x20
	bl	___cxa_throw
Ltmp148:
	b	LBB0_214
LBB0_213:
Ltmp141:
	sub	x0, x29, #224
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
Ltmp142:
LBB0_214:
	brk	#0x1
LBB0_215:
Ltmp146:
	mov	x19, x0
	mov	x0, x20
	bl	___cxa_free_exception
	mov	x23, #0                         ; =0x0
	b	LBB0_234
LBB0_216:
Ltmp158:
	mov	x19, x0
	b	LBB0_251
LBB0_217:
Ltmp155:
	mov	x19, x0
	mov	x0, x20
	bl	___cxa_free_exception
	b	LBB0_251
LBB0_218:
Ltmp164:
	mov	x19, x0
	mov	x0, x20
	bl	___cxa_free_exception
	mov	x26, #0                         ; =0x0
	b	LBB0_238
LBB0_219:
Ltmp176:
	b	LBB0_260
LBB0_220:
Ltmp173:
	mov	x19, x0
	mov	x0, x20
	bl	___cxa_free_exception
	b	LBB0_280
LBB0_221:
Ltmp77:
	mov	x19, x0
	b	LBB0_236
LBB0_222:
Ltmp74:
	mov	x19, x0
	b	LBB0_244
LBB0_223:
Ltmp67:
	mov	x19, x0
	b	LBB0_244
LBB0_224:
Ltmp53:
	b	LBB0_258
LBB0_225:
Ltmp47:
	mov	x19, x0
	b	LBB0_274
LBB0_226:
Ltmp44:
	mov	x19, x0
	stur	x26, [x29, #-240]
	b	LBB0_240
LBB0_227:
Ltmp35:
	mov	x19, x0
	b	LBB0_251
LBB0_228:
Ltmp8:
	b	LBB0_231
LBB0_229:
Ltmp5:
	b	LBB0_231
LBB0_230:
Ltmp2:
LBB0_231:
	mov	x19, x0
	ldursb	w8, [x29, #-201]
	tbz	w8, #31, LBB0_282
; %bb.232:
	ldur	x0, [x29, #-224]
	b	LBB0_281
LBB0_233:
Ltmp149:
	mov	x19, x0
LBB0_234:
	cbz	x23, LBB0_244
; %bb.235:
	stur	x23, [x29, #-216]
LBB0_236:
	mov	x0, x23
	b	LBB0_243
LBB0_237:
Ltmp167:
	mov	x19, x0
LBB0_238:
	cbz	x26, LBB0_251
; %bb.239:
	stur	x26, [x29, #-216]
LBB0_240:
	mov	x0, x26
	b	LBB0_250
LBB0_241:
Ltmp143:
	mov	x19, x0
	ldur	x0, [x29, #-224]
	cbz	x0, LBB0_244
; %bb.242:
	stur	x0, [x29, #-216]
LBB0_243:
	bl	__ZdlPv
LBB0_244:
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB0_270
; %bb.245:
	ldr	x0, [sp, #96]
	bl	__ZdlPv
	b	LBB0_270
LBB0_246:
Ltmp152:
	mov	x19, x0
	ldur	x0, [x29, #-248]
	cbz	x0, LBB0_251
; %bb.247:
	stur	x0, [x29, #-240]
	b	LBB0_250
LBB0_248:
Ltmp161:
	mov	x19, x0
	ldur	x0, [x29, #-224]
	cbz	x0, LBB0_251
; %bb.249:
	stur	x0, [x29, #-216]
LBB0_250:
	bl	__ZdlPv
LBB0_251:
	ldrsb	w8, [sp, #215]
	tbz	w8, #31, LBB0_278
; %bb.252:
	ldr	x0, [sp, #192]
	bl	__ZdlPv
	b	LBB0_278
LBB0_253:
Ltmp170:
	b	LBB0_277
LBB0_254:
Ltmp59:
	b	LBB0_269
LBB0_255:
Ltmp27:
	b	LBB0_277
LBB0_256:
Ltmp11:
	mov	x19, x0
	cbnz	x25, LBB0_264
	b	LBB0_265
LBB0_257:
Ltmp50:
LBB0_258:
	mov	x19, x0
	b	LBB0_272
LBB0_259:
Ltmp19:
LBB0_260:
	mov	x19, x0
	b	LBB0_280
LBB0_261:
Ltmp64:
	b	LBB0_269
LBB0_262:
Ltmp32:
	b	LBB0_277
LBB0_263:
Ltmp16:
	mov	x19, x0
	ldur	x25, [x29, #-224]
	cbz	x25, LBB0_265
LBB0_264:
	stur	x25, [x29, #-216]
	mov	x0, x25
	bl	__ZdlPv
LBB0_265:
	mov	x0, x24
	bl	__ZdaPv
	mov	x0, x19
	bl	__Unwind_Resume
LBB0_266:
Ltmp140:
	mov	x19, x0
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB0_274
; %bb.267:
	ldr	x0, [sp, #96]
	b	LBB0_273
LBB0_268:
Ltmp56:
LBB0_269:
	mov	x19, x0
LBB0_270:
	ldur	x0, [x29, #-248]
	cbz	x0, LBB0_272
; %bb.271:
	stur	x0, [x29, #-240]
	bl	__ZdlPv
LBB0_272:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
LBB0_273:
	bl	__ZdlPv
LBB0_274:
	ldrsb	w8, [sp, #215]
	tbz	w8, #31, LBB0_282
; %bb.275:
	ldr	x0, [sp, #192]
	b	LBB0_281
LBB0_276:
Ltmp24:
LBB0_277:
	mov	x19, x0
LBB0_278:
	ldr	x0, [sp, #96]
	cbz	x0, LBB0_280
; %bb.279:
	str	x0, [sp, #104]
	bl	__ZdlPv
LBB0_280:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
LBB0_281:
	bl	__ZdlPv
LBB0_282:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAddLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGot	Lloh9, Lloh10
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpAdd	Lloh29, Lloh30
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpLdrGot	Lloh31, Lloh32
	.loh AdrpAdd	Lloh37, Lloh38
	.loh AdrpLdrGot	Lloh35, Lloh36
	.loh AdrpAdd	Lloh39, Lloh40
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpLdrGot	Lloh41, Lloh42
	.loh AdrpAdd	Lloh45, Lloh46
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpLdrGot	Lloh47, Lloh48
	.loh AdrpLdrGot	Lloh51, Lloh52
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpLdrGot	Lloh53, Lloh54
	.loh AdrpLdrGot	Lloh57, Lloh58
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpLdrGot	Lloh59, Lloh60
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpLdrGot	Lloh69, Lloh70
	.loh AdrpLdrGot	Lloh67, Lloh68
	.loh AdrpLdrGot	Lloh65, Lloh66
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpLdrGot	Lloh77, Lloh78
	.loh AdrpLdrGot	Lloh75, Lloh76
	.loh AdrpLdrGot	Lloh73, Lloh74
	.loh AdrpAdd	Lloh79, Lloh80
	.loh AdrpLdrGot	Lloh85, Lloh86
	.loh AdrpLdrGot	Lloh83, Lloh84
	.loh AdrpLdrGot	Lloh81, Lloh82
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpLdrGot	Lloh93, Lloh94
	.loh AdrpLdrGot	Lloh91, Lloh92
	.loh AdrpLdrGot	Lloh89, Lloh90
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table0:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 1 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ;     jumps to Ltmp5
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp7-Ltmp6                    ;   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin0             ;     jumps to Ltmp8
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp7-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp9-Ltmp7                    ;   Call between Ltmp7 and Ltmp9
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin0             ; >> Call Site 5 <<
	.uleb128 Ltmp10-Ltmp9                   ;   Call between Ltmp9 and Ltmp10
	.uleb128 Ltmp11-Lfunc_begin0            ;     jumps to Ltmp11
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp10-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp17-Ltmp10                  ;   Call between Ltmp10 and Ltmp17
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp17-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp18-Ltmp17                  ;   Call between Ltmp17 and Ltmp18
	.uleb128 Ltmp19-Lfunc_begin0            ;     jumps to Ltmp19
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp20-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp21-Ltmp20                  ;   Call between Ltmp20 and Ltmp21
	.uleb128 Ltmp170-Lfunc_begin0           ;     jumps to Ltmp170
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp23-Ltmp22                  ;   Call between Ltmp22 and Ltmp23
	.uleb128 Ltmp24-Lfunc_begin0            ;     jumps to Ltmp24
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp26-Ltmp25                  ;   Call between Ltmp25 and Ltmp26
	.uleb128 Ltmp27-Lfunc_begin0            ;     jumps to Ltmp27
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp33-Lfunc_begin0            ; >> Call Site 11 <<
	.uleb128 Ltmp34-Ltmp33                  ;   Call between Ltmp33 and Ltmp34
	.uleb128 Ltmp35-Lfunc_begin0            ;     jumps to Ltmp35
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp36-Lfunc_begin0            ; >> Call Site 12 <<
	.uleb128 Ltmp37-Ltmp36                  ;   Call between Ltmp36 and Ltmp37
	.uleb128 Ltmp161-Lfunc_begin0           ;     jumps to Ltmp161
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin0            ; >> Call Site 13 <<
	.uleb128 Ltmp38-Ltmp37                  ;   Call between Ltmp37 and Ltmp38
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp38-Lfunc_begin0            ; >> Call Site 14 <<
	.uleb128 Ltmp39-Ltmp38                  ;   Call between Ltmp38 and Ltmp39
	.uleb128 Ltmp167-Lfunc_begin0           ;     jumps to Ltmp167
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin0            ; >> Call Site 15 <<
	.uleb128 Ltmp41-Ltmp40                  ;   Call between Ltmp40 and Ltmp41
	.uleb128 Ltmp152-Lfunc_begin0           ;     jumps to Ltmp152
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin0            ; >> Call Site 16 <<
	.uleb128 Ltmp42-Ltmp41                  ;   Call between Ltmp41 and Ltmp42
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp42-Lfunc_begin0            ; >> Call Site 17 <<
	.uleb128 Ltmp43-Ltmp42                  ;   Call between Ltmp42 and Ltmp43
	.uleb128 Ltmp44-Lfunc_begin0            ;     jumps to Ltmp44
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp45-Lfunc_begin0            ; >> Call Site 18 <<
	.uleb128 Ltmp46-Ltmp45                  ;   Call between Ltmp45 and Ltmp46
	.uleb128 Ltmp47-Lfunc_begin0            ;     jumps to Ltmp47
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp48-Lfunc_begin0            ; >> Call Site 19 <<
	.uleb128 Ltmp49-Ltmp48                  ;   Call between Ltmp48 and Ltmp49
	.uleb128 Ltmp50-Lfunc_begin0            ;     jumps to Ltmp50
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp51-Lfunc_begin0            ; >> Call Site 20 <<
	.uleb128 Ltmp52-Ltmp51                  ;   Call between Ltmp51 and Ltmp52
	.uleb128 Ltmp53-Lfunc_begin0            ;     jumps to Ltmp53
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp54-Lfunc_begin0            ; >> Call Site 21 <<
	.uleb128 Ltmp55-Ltmp54                  ;   Call between Ltmp54 and Ltmp55
	.uleb128 Ltmp56-Lfunc_begin0            ;     jumps to Ltmp56
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp57-Lfunc_begin0            ; >> Call Site 22 <<
	.uleb128 Ltmp58-Ltmp57                  ;   Call between Ltmp57 and Ltmp58
	.uleb128 Ltmp59-Lfunc_begin0            ;     jumps to Ltmp59
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp65-Lfunc_begin0            ; >> Call Site 23 <<
	.uleb128 Ltmp66-Ltmp65                  ;   Call between Ltmp65 and Ltmp66
	.uleb128 Ltmp67-Lfunc_begin0            ;     jumps to Ltmp67
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp68-Lfunc_begin0            ; >> Call Site 24 <<
	.uleb128 Ltmp69-Ltmp68                  ;   Call between Ltmp68 and Ltmp69
	.uleb128 Ltmp143-Lfunc_begin0           ;     jumps to Ltmp143
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp69-Lfunc_begin0            ; >> Call Site 25 <<
	.uleb128 Ltmp70-Ltmp69                  ;   Call between Ltmp69 and Ltmp70
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp70-Lfunc_begin0            ; >> Call Site 26 <<
	.uleb128 Ltmp71-Ltmp70                  ;   Call between Ltmp70 and Ltmp71
	.uleb128 Ltmp149-Lfunc_begin0           ;     jumps to Ltmp149
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp72-Lfunc_begin0            ; >> Call Site 27 <<
	.uleb128 Ltmp73-Ltmp72                  ;   Call between Ltmp72 and Ltmp73
	.uleb128 Ltmp74-Lfunc_begin0            ;     jumps to Ltmp74
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp73-Lfunc_begin0            ; >> Call Site 28 <<
	.uleb128 Ltmp75-Ltmp73                  ;   Call between Ltmp73 and Ltmp75
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp75-Lfunc_begin0            ; >> Call Site 29 <<
	.uleb128 Ltmp76-Ltmp75                  ;   Call between Ltmp75 and Ltmp76
	.uleb128 Ltmp77-Lfunc_begin0            ;     jumps to Ltmp77
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp78-Lfunc_begin0            ; >> Call Site 30 <<
	.uleb128 Ltmp139-Ltmp78                 ;   Call between Ltmp78 and Ltmp139
	.uleb128 Ltmp140-Lfunc_begin0           ;     jumps to Ltmp140
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp14-Lfunc_begin0            ; >> Call Site 31 <<
	.uleb128 Ltmp15-Ltmp14                  ;   Call between Ltmp14 and Ltmp15
	.uleb128 Ltmp16-Lfunc_begin0            ;     jumps to Ltmp16
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin0            ; >> Call Site 32 <<
	.uleb128 Ltmp31-Ltmp30                  ;   Call between Ltmp30 and Ltmp31
	.uleb128 Ltmp32-Lfunc_begin0            ;     jumps to Ltmp32
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp62-Lfunc_begin0            ; >> Call Site 33 <<
	.uleb128 Ltmp63-Ltmp62                  ;   Call between Ltmp62 and Ltmp63
	.uleb128 Ltmp64-Lfunc_begin0            ;     jumps to Ltmp64
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin0            ; >> Call Site 34 <<
	.uleb128 Ltmp13-Ltmp12                  ;   Call between Ltmp12 and Ltmp13
	.uleb128 Ltmp16-Lfunc_begin0            ;     jumps to Ltmp16
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin0            ; >> Call Site 35 <<
	.uleb128 Ltmp29-Ltmp28                  ;   Call between Ltmp28 and Ltmp29
	.uleb128 Ltmp32-Lfunc_begin0            ;     jumps to Ltmp32
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp60-Lfunc_begin0            ; >> Call Site 36 <<
	.uleb128 Ltmp61-Ltmp60                  ;   Call between Ltmp60 and Ltmp61
	.uleb128 Ltmp64-Lfunc_begin0            ;     jumps to Ltmp64
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp61-Lfunc_begin0            ; >> Call Site 37 <<
	.uleb128 Ltmp171-Ltmp61                 ;   Call between Ltmp61 and Ltmp171
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp171-Lfunc_begin0           ; >> Call Site 38 <<
	.uleb128 Ltmp172-Ltmp171                ;   Call between Ltmp171 and Ltmp172
	.uleb128 Ltmp173-Lfunc_begin0           ;     jumps to Ltmp173
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp174-Lfunc_begin0           ; >> Call Site 39 <<
	.uleb128 Ltmp175-Ltmp174                ;   Call between Ltmp174 and Ltmp175
	.uleb128 Ltmp176-Lfunc_begin0           ;     jumps to Ltmp176
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp168-Lfunc_begin0           ; >> Call Site 40 <<
	.uleb128 Ltmp169-Ltmp168                ;   Call between Ltmp168 and Ltmp169
	.uleb128 Ltmp170-Lfunc_begin0           ;     jumps to Ltmp170
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp169-Lfunc_begin0           ; >> Call Site 41 <<
	.uleb128 Ltmp162-Ltmp169                ;   Call between Ltmp169 and Ltmp162
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp162-Lfunc_begin0           ; >> Call Site 42 <<
	.uleb128 Ltmp163-Ltmp162                ;   Call between Ltmp162 and Ltmp163
	.uleb128 Ltmp164-Lfunc_begin0           ;     jumps to Ltmp164
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp165-Lfunc_begin0           ; >> Call Site 43 <<
	.uleb128 Ltmp166-Ltmp165                ;   Call between Ltmp165 and Ltmp166
	.uleb128 Ltmp167-Lfunc_begin0           ;     jumps to Ltmp167
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp159-Lfunc_begin0           ; >> Call Site 44 <<
	.uleb128 Ltmp160-Ltmp159                ;   Call between Ltmp159 and Ltmp160
	.uleb128 Ltmp161-Lfunc_begin0           ;     jumps to Ltmp161
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp160-Lfunc_begin0           ; >> Call Site 45 <<
	.uleb128 Ltmp153-Ltmp160                ;   Call between Ltmp160 and Ltmp153
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp153-Lfunc_begin0           ; >> Call Site 46 <<
	.uleb128 Ltmp154-Ltmp153                ;   Call between Ltmp153 and Ltmp154
	.uleb128 Ltmp155-Lfunc_begin0           ;     jumps to Ltmp155
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp156-Lfunc_begin0           ; >> Call Site 47 <<
	.uleb128 Ltmp157-Ltmp156                ;   Call between Ltmp156 and Ltmp157
	.uleb128 Ltmp158-Lfunc_begin0           ;     jumps to Ltmp158
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp150-Lfunc_begin0           ; >> Call Site 48 <<
	.uleb128 Ltmp151-Ltmp150                ;   Call between Ltmp150 and Ltmp151
	.uleb128 Ltmp152-Lfunc_begin0           ;     jumps to Ltmp152
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp151-Lfunc_begin0           ; >> Call Site 49 <<
	.uleb128 Ltmp144-Ltmp151                ;   Call between Ltmp151 and Ltmp144
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp144-Lfunc_begin0           ; >> Call Site 50 <<
	.uleb128 Ltmp145-Ltmp144                ;   Call between Ltmp144 and Ltmp145
	.uleb128 Ltmp146-Lfunc_begin0           ;     jumps to Ltmp146
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp147-Lfunc_begin0           ; >> Call Site 51 <<
	.uleb128 Ltmp148-Ltmp147                ;   Call between Ltmp147 and Ltmp148
	.uleb128 Ltmp149-Lfunc_begin0           ;     jumps to Ltmp149
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp141-Lfunc_begin0           ; >> Call Site 52 <<
	.uleb128 Ltmp142-Ltmp141                ;   Call between Ltmp141 and Ltmp142
	.uleb128 Ltmp143-Lfunc_begin0           ;     jumps to Ltmp143
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp142-Lfunc_begin0           ; >> Call Site 53 <<
	.uleb128 Lfunc_end0-Ltmp142             ;   Call between Ltmp142 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN3bts13size_argumentEiPPcRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEm ; -- Begin function _ZN3bts13size_argumentEiPPcRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEm
	.weak_def_can_be_hidden	__ZN3bts13size_argumentEiPPcRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEm
	.p2align	2
__ZN3bts13size_argumentEiPPcRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEm: ; @_ZN3bts13size_argumentEiPPcRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEm
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x20, x3
	cmp	w0, #3
	b.lt	LBB1_14
; %bb.1:
	mov	x19, x2
	ldrb	w8, [x2, #23]
	sxtb	w9, w8
	cmp	w9, #0
	ldp	x10, x9, [x2]
	csel	x21, x9, x8, lt
	csel	x22, x10, x2, lt
	sub	w8, w0, #1
	add	x24, x1, #16
	sub	x25, x8, #1
	b	LBB1_3
LBB1_2:                                 ;   in Loop: Header=BB1_3 Depth=1
	add	x24, x24, #8
	subs	x25, x25, #1
	b.eq	LBB1_14
LBB1_3:                                 ; =>This Inner Loop Header: Depth=1
	ldur	x23, [x24, #-8]
	mov	x0, x23
	bl	_strlen
	cmp	x21, x0
	b.ne	LBB1_2
; %bb.4:                                ;   in Loop: Header=BB1_3 Depth=1
	mov	x0, x22
	mov	x1, x23
	mov	x2, x21
	bl	_memcmp
	cbnz	w0, LBB1_2
; %bb.5:
	ldr	x21, [x24]
	mov	x0, x21
	bl	_strlen
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x0, x8
	b.hs	LBB1_15
; %bb.6:
	mov	x20, x0
	cmp	x0, #23
	b.hs	LBB1_8
; %bb.7:
	strb	w20, [sp, #31]
	add	x22, sp, #8
	cbnz	x20, LBB1_10
	b	LBB1_11
LBB1_8:
	and	x8, x20, #0xfffffffffffffff8
	add	x8, x8, #8
	orr	x9, x20, #0x7
	cmp	x9, #23
	csel	x8, x8, x9, eq
	add	x23, x8, #1
Ltmp177:
	mov	x0, x23
	bl	__Znwm
Ltmp178:
; %bb.9:
	mov	x22, x0
	orr	x8, x23, #0x8000000000000000
	stp	x20, x8, [sp, #16]
	str	x0, [sp, #8]
LBB1_10:
	mov	x0, x22
	mov	x1, x21
	mov	x2, x20
	bl	_memmove
LBB1_11:
	strb	wzr, [x22, x20]
Ltmp179:
	add	x0, sp, #8
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__16stoullERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
Ltmp180:
; %bb.12:
	mov	x20, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB1_14
; %bb.13:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB1_14:
	mov	x0, x20
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB1_15:
Ltmp182:
	add	x0, sp, #8
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
Ltmp183:
	b	LBB1_23
LBB1_16:
Ltmp181:
	mov	x20, x1
	mov	x21, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB1_19
; %bb.17:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	b	LBB1_19
LBB1_18:
Ltmp184:
	mov	x20, x1
	mov	x21, x0
LBB1_19:
	cmp	w20, #1
	b.ne	LBB1_30
; %bb.20:
	mov	x0, x21
	bl	___cxa_begin_catch
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x20, x0
Ltmp185:
Lloh95:
	adrp	x0, l_.str.21@PAGE
Lloh96:
	add	x0, x0, l_.str.21@PAGEOFF
	add	x8, sp, #8
	mov	x1, x19
	bl	__ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_
Ltmp186:
; %bb.21:
	mov	w19, #1                         ; =0x1
Ltmp188:
	add	x1, sp, #8
	mov	x0, x20
	bl	__ZNSt11logic_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
Ltmp189:
; %bb.22:
Lloh97:
	adrp	x8, __ZTVSt16invalid_argument@GOTPAGE
Lloh98:
	ldr	x8, [x8, __ZTVSt16invalid_argument@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x20]
Ltmp190:
	mov	w19, #0                         ; =0x0
Lloh99:
	adrp	x1, __ZTISt16invalid_argument@GOTPAGE
Lloh100:
	ldr	x1, [x1, __ZTISt16invalid_argument@GOTPAGEOFF]
Lloh101:
	adrp	x2, __ZNSt16invalid_argumentD1Ev@GOTPAGE
Lloh102:
	ldr	x2, [x2, __ZNSt16invalid_argumentD1Ev@GOTPAGEOFF]
	mov	x0, x20
	bl	___cxa_throw
Ltmp191:
LBB1_23:
	brk	#0x1
LBB1_24:
Ltmp192:
	mov	x21, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB1_26
; %bb.25:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	tbnz	w19, #0, LBB1_28
	b	LBB1_29
LBB1_26:
	cbnz	w19, LBB1_28
	b	LBB1_29
LBB1_27:
Ltmp187:
	mov	x21, x0
LBB1_28:
	mov	x0, x20
	bl	___cxa_free_exception
LBB1_29:
Ltmp193:
	bl	___cxa_end_catch
Ltmp194:
LBB1_30:
	mov	x0, x21
	bl	__Unwind_Resume
LBB1_31:
Ltmp195:
	bl	___clang_call_terminate
	.loh AdrpAdd	Lloh95, Lloh96
	.loh AdrpLdrGot	Lloh101, Lloh102
	.loh AdrpLdrGot	Lloh99, Lloh100
	.loh AdrpLdrGot	Lloh97, Lloh98
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table1:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp177-Lfunc_begin1           ; >> Call Site 1 <<
	.uleb128 Ltmp178-Ltmp177                ;   Call between Ltmp177 and Ltmp178
	.uleb128 Ltmp184-Lfunc_begin1           ;     jumps to Ltmp184
	.byte	5                               ;   On action: 3
	.uleb128 Ltmp178-Lfunc_begin1           ; >> Call Site 2 <<
	.uleb128 Ltmp179-Ltmp178                ;   Call between Ltmp178 and Ltmp179
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp179-Lfunc_begin1           ; >> Call Site 3 <<
	.uleb128 Ltmp180-Ltmp179                ;   Call between Ltmp179 and Ltmp180
	.uleb128 Ltmp181-Lfunc_begin1           ;     jumps to Ltmp181
	.byte	5                               ;   On action: 3
	.uleb128 Ltmp182-Lfunc_begin1           ; >> Call Site 4 <<
	.uleb128 Ltmp183-Ltmp182                ;   Call between Ltmp182 and Ltmp183
	.uleb128 Ltmp184-Lfunc_begin1           ;     jumps to Ltmp184
	.byte	5                               ;   On action: 3
	.uleb128 Ltmp183-Lfunc_begin1           ; >> Call Site 5 <<
	.uleb128 Ltmp185-Ltmp183                ;   Call between Ltmp183 and Ltmp185
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp185-Lfunc_begin1           ; >> Call Site 6 <<
	.uleb128 Ltmp186-Ltmp185                ;   Call between Ltmp185 and Ltmp186
	.uleb128 Ltmp187-Lfunc_begin1           ;     jumps to Ltmp187
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp188-Lfunc_begin1           ; >> Call Site 7 <<
	.uleb128 Ltmp191-Ltmp188                ;   Call between Ltmp188 and Ltmp191
	.uleb128 Ltmp192-Lfunc_begin1           ;     jumps to Ltmp192
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp191-Lfunc_begin1           ; >> Call Site 8 <<
	.uleb128 Ltmp193-Ltmp191                ;   Call between Ltmp191 and Ltmp193
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp193-Lfunc_begin1           ; >> Call Site 9 <<
	.uleb128 Ltmp194-Ltmp193                ;   Call between Ltmp193 and Ltmp194
	.uleb128 Ltmp195-Lfunc_begin1           ;     jumps to Ltmp195
	.byte	7                               ;   On action: 4
	.uleb128 Ltmp194-Lfunc_begin1           ; >> Call Site 10 <<
	.uleb128 Lfunc_end1-Ltmp194             ;   Call between Ltmp194 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.byte	0                               ; >> Action Record 1 <<
                                        ;   Cleanup
	.byte	0                               ;   No further actions
	.byte	0                               ; >> Action Record 2 <<
                                        ;   Cleanup
	.byte	125                             ;   Continue to action 1
	.byte	1                               ; >> Action Record 3 <<
                                        ;   Catch TypeInfo 1
	.byte	125                             ;   Continue to action 2
	.byte	2                               ; >> Action Record 4 <<
                                        ;   Catch TypeInfo 2
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 2
Ltmp325:                                ; TypeInfo 1
	.long	__ZTISt9exception@GOT-Ltmp325
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZN12_GLOBAL__N_119fragmentation_probeEbRN3bts14AllocatorStatsE
__ZN12_GLOBAL__N_119fragmentation_probeEbRN3bts14AllocatorStatsE: ; @_ZN12_GLOBAL__N_119fragmentation_probeEbRN3bts14AllocatorStatsE
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #144
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x20, x1
	mov	x2, x0
	mov	x0, sp
	mov	w1, #1280                       ; =0x500
	bl	__ZN3bts17FreeListAllocatorC2Emb
	ldr	x8, [sp, #32]
	cbz	x8, LBB2_12
; %bb.1:
	mov	x9, x8
	b	LBB2_3
LBB2_2:                                 ;   in Loop: Header=BB2_3 Depth=1
	ldr	x9, [x9, #24]
	cbz	x9, LBB2_12
LBB2_3:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w10, [x9, #32]
	cbz	w10, LBB2_2
; %bb.4:                                ;   in Loop: Header=BB2_3 Depth=1
	ldr	x10, [x9]
	cmp	x10, #239
	b.ls	LBB2_2
; %bb.5:
	ldrb	w8, [x9, #33]
	cmp	x10, #288
	b.lo	LBB2_9
; %bb.6:
	add	x11, x9, #280
	sub	x10, x10, #280
	strh	wzr, [x9, #312]
	stp	x10, xzr, [x9, #280]
	ldr	x10, [x9, #24]
	stp	x9, x10, [x9, #296]
	mov	w12, #1                         ; =0x1
	strb	w12, [x9, #312]
	cbz	x10, LBB2_8
; %bb.7:
	str	x11, [x10, #16]
LBB2_8:
	str	x11, [x9, #24]
	mov	w10, #240                       ; =0xf0
	str	x10, [x9]
LBB2_9:
	mov	w11, #256                       ; =0x100
	strh	w11, [x9, #32]
	mov	w11, #240                       ; =0xf0
	str	x11, [x9, #8]
	ldp	x11, x12, [sp, #40]
	add	x11, x11, #240
	ldp	x13, x14, [sp, #56]
	add	x10, x12, x10
	cmp	x13, x10
	stp	x11, x10, [sp, #40]
	csel	x10, x13, x10, hi
	add	x11, x14, #1
	stp	x10, x11, [sp, #56]
	cbz	w8, LBB2_11
; %bb.10:
	ldr	x8, [sp, #80]
	add	x8, x8, #1
	str	x8, [sp, #80]
LBB2_11:
	add	x19, x9, #40
	ldr	x8, [sp, #32]
	cbnz	x8, LBB2_13
	b	LBB2_24
LBB2_12:
	mov	x19, #0                         ; =0x0
	ldr	x9, [sp, #88]
	add	x9, x9, #1
	str	x9, [sp, #88]
	cbz	x8, LBB2_24
LBB2_13:
	mov	x9, x8
	b	LBB2_15
LBB2_14:                                ;   in Loop: Header=BB2_15 Depth=1
	ldr	x9, [x9, #24]
	cbz	x9, LBB2_24
LBB2_15:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w10, [x9, #32]
	cbz	w10, LBB2_14
; %bb.16:                               ;   in Loop: Header=BB2_15 Depth=1
	ldr	x10, [x9]
	cmp	x10, #239
	b.ls	LBB2_14
; %bb.17:
	ldrb	w8, [x9, #33]
	cmp	x10, #288
	b.lo	LBB2_21
; %bb.18:
	add	x11, x9, #280
	sub	x10, x10, #280
	strh	wzr, [x9, #312]
	stp	x10, xzr, [x9, #280]
	ldr	x10, [x9, #24]
	stp	x9, x10, [x9, #296]
	mov	w12, #1                         ; =0x1
	strb	w12, [x9, #312]
	cbz	x10, LBB2_20
; %bb.19:
	str	x11, [x10, #16]
LBB2_20:
	str	x11, [x9, #24]
	mov	w10, #240                       ; =0xf0
	str	x10, [x9]
LBB2_21:
	mov	w11, #256                       ; =0x100
	strh	w11, [x9, #32]
	mov	w11, #240                       ; =0xf0
	str	x11, [x9, #8]
	ldp	x11, x12, [sp, #40]
	add	x11, x11, #240
	ldp	x13, x14, [sp, #56]
	add	x10, x12, x10
	cmp	x13, x10
	stp	x11, x10, [sp, #40]
	csel	x10, x13, x10, hi
	add	x11, x14, #1
	stp	x10, x11, [sp, #56]
	cbz	w8, LBB2_23
; %bb.22:
	ldr	x8, [sp, #80]
	add	x8, x8, #1
	str	x8, [sp, #80]
LBB2_23:
	add	x1, x9, #40
	ldr	x8, [sp, #32]
	cbnz	x8, LBB2_25
	b	LBB2_36
LBB2_24:
	mov	x1, #0                          ; =0x0
	ldr	x9, [sp, #88]
	add	x9, x9, #1
	str	x9, [sp, #88]
	cbz	x8, LBB2_36
LBB2_25:
	mov	x9, x8
	b	LBB2_27
LBB2_26:                                ;   in Loop: Header=BB2_27 Depth=1
	ldr	x9, [x9, #24]
	cbz	x9, LBB2_36
LBB2_27:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w10, [x9, #32]
	cbz	w10, LBB2_26
; %bb.28:                               ;   in Loop: Header=BB2_27 Depth=1
	ldr	x10, [x9]
	cmp	x10, #239
	b.ls	LBB2_26
; %bb.29:
	ldrb	w8, [x9, #33]
	cmp	x10, #288
	b.lo	LBB2_33
; %bb.30:
	add	x11, x9, #280
	sub	x10, x10, #280
	strh	wzr, [x9, #312]
	stp	x10, xzr, [x9, #280]
	ldr	x10, [x9, #24]
	stp	x9, x10, [x9, #296]
	mov	w12, #1                         ; =0x1
	strb	w12, [x9, #312]
	cbz	x10, LBB2_32
; %bb.31:
	str	x11, [x10, #16]
LBB2_32:
	str	x11, [x9, #24]
	mov	w10, #240                       ; =0xf0
	str	x10, [x9]
LBB2_33:
	mov	w11, #256                       ; =0x100
	strh	w11, [x9, #32]
	mov	w11, #240                       ; =0xf0
	str	x11, [x9, #8]
	ldp	x11, x12, [sp, #40]
	add	x11, x11, #240
	ldp	x13, x14, [sp, #56]
	add	x10, x12, x10
	cmp	x13, x10
	stp	x11, x10, [sp, #40]
	csel	x10, x13, x10, hi
	add	x11, x14, #1
	stp	x10, x11, [sp, #56]
	cbz	w8, LBB2_35
; %bb.34:
	ldr	x8, [sp, #80]
	add	x8, x8, #1
	str	x8, [sp, #80]
LBB2_35:
	add	x22, x9, #40
	ldr	x8, [sp, #32]
	cbnz	x8, LBB2_39
	b	LBB2_37
LBB2_36:
	mov	x22, #0                         ; =0x0
	ldr	x9, [sp, #88]
	add	x9, x9, #1
	str	x9, [sp, #88]
	cbnz	x8, LBB2_39
LBB2_37:
	mov	x21, #0                         ; =0x0
	ldr	x8, [sp, #88]
	add	x8, x8, #1
	str	x8, [sp, #88]
	cbnz	x19, LBB2_48
	b	LBB2_78
LBB2_38:                                ;   in Loop: Header=BB2_39 Depth=1
	ldr	x8, [x8, #24]
	cbz	x8, LBB2_37
LBB2_39:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w9, [x8, #32]
	cbz	w9, LBB2_38
; %bb.40:                               ;   in Loop: Header=BB2_39 Depth=1
	ldr	x10, [x8]
	cmp	x10, #239
	b.ls	LBB2_38
; %bb.41:
	ldrb	w9, [x8, #33]
	cmp	x10, #288
	b.lo	LBB2_45
; %bb.42:
	add	x11, x8, #280
	sub	x10, x10, #280
	strh	wzr, [x8, #312]
	stp	x10, xzr, [x8, #280]
	ldr	x10, [x8, #24]
	stp	x8, x10, [x8, #296]
	mov	w12, #1                         ; =0x1
	strb	w12, [x8, #312]
	cbz	x10, LBB2_44
; %bb.43:
	str	x11, [x10, #16]
LBB2_44:
	str	x11, [x8, #24]
	mov	w10, #240                       ; =0xf0
	str	x10, [x8]
LBB2_45:
	mov	w11, #256                       ; =0x100
	strh	w11, [x8, #32]
	mov	w11, #240                       ; =0xf0
	str	x11, [x8, #8]
	ldp	x11, x12, [sp, #40]
	add	x11, x11, #240
	ldp	x13, x14, [sp, #56]
	add	x10, x12, x10
	cmp	x13, x10
	stp	x11, x10, [sp, #40]
	csel	x10, x13, x10, hi
	add	x11, x14, #1
	stp	x10, x11, [sp, #56]
	cbz	w9, LBB2_47
; %bb.46:
	ldr	x9, [sp, #80]
	add	x9, x9, #1
	str	x9, [sp, #80]
LBB2_47:
	add	x21, x8, #40
	cbz	x19, LBB2_78
LBB2_48:
	cbz	x1, LBB2_78
; %bb.49:
	cbz	x22, LBB2_78
; %bb.50:
	cbz	x21, LBB2_78
; %bb.51:
Ltmp196:
	mov	x0, sp
	bl	__ZN3bts17FreeListAllocator10deallocateEPv
Ltmp197:
; %bb.52:
Ltmp198:
	mov	x0, sp
	mov	x1, x22
	bl	__ZN3bts17FreeListAllocator10deallocateEPv
Ltmp199:
; %bb.53:
	ldr	x10, [sp, #40]
	ldp	q1, q0, [sp, #48]
	fmov	x11, d1
	subs	x8, x11, x10
	csel	x13, xzr, x8, lo
	ldp	x9, x12, [sp, #80]
	ldr	x14, [sp, #16]
	ldr	x8, [sp, #32]
	cbz	x8, LBB2_59
; %bb.54:
	mov	x15, #0                         ; =0x0
	mov	x17, #0                         ; =0x0
	mov	x16, #0                         ; =0x0
	mov	x0, x8
	b	LBB2_56
LBB2_55:                                ;   in Loop: Header=BB2_56 Depth=1
	ldr	x0, [x0, #24]
	add	x16, x16, #1
	cbz	x0, LBB2_58
LBB2_56:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w1, [x0, #32]
	cbz	w1, LBB2_55
; %bb.57:                               ;   in Loop: Header=BB2_56 Depth=1
	ldr	x1, [x0]
	add	x17, x1, x17
	cmp	x15, x1
	csel	x15, x15, x1, hi
	b	LBB2_55
LBB2_58:
	sub	x0, x17, x15
	b	LBB2_60
LBB2_59:
	mov	x16, #0                         ; =0x0
	mov	x15, #0                         ; =0x0
	mov	x17, #0                         ; =0x0
	mov	x0, #0                          ; =0x0
LBB2_60:
	stp	x14, x10, [x20]
	str	q1, [x20, #16]
	stp	x17, x15, [x20, #32]
	stp	x13, x0, [x20, #48]
	str	x16, [x20, #64]
	stur	q0, [x20, #72]
	stp	x9, x12, [x20, #88]
	cbnz	x8, LBB2_63
LBB2_61:
	mov	w20, #0                         ; =0x0
	add	x8, x12, #1
	str	x8, [sp, #88]
	b	LBB2_73
LBB2_62:                                ;   in Loop: Header=BB2_63 Depth=1
	ldr	x8, [x8, #24]
	cbz	x8, LBB2_61
LBB2_63:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w13, [x8, #32]
	cbz	w13, LBB2_62
; %bb.64:                               ;   in Loop: Header=BB2_63 Depth=1
	ldr	x13, [x8]
	cmp	x13, #399
	b.ls	LBB2_62
; %bb.65:
	ldrb	w12, [x8, #33]
	cmp	x13, #448
	b.lo	LBB2_69
; %bb.66:
	add	x14, x8, #440
	sub	x13, x13, #440
	strh	wzr, [x8, #472]
	stp	x13, xzr, [x8, #440]
	ldr	x13, [x8, #24]
	stp	x8, x13, [x8, #456]
	mov	w15, #1                         ; =0x1
	strb	w15, [x8, #472]
	cbz	x13, LBB2_68
; %bb.67:
	str	x14, [x13, #16]
LBB2_68:
	str	x14, [x8, #24]
	mov	w13, #400                       ; =0x190
	str	x13, [x8]
LBB2_69:
	mov	w14, #256                       ; =0x100
	strh	w14, [x8, #32]
	mov	w14, #400                       ; =0x190
	str	x14, [x8, #8]
	add	x10, x10, #400
	ldr	x14, [sp, #56]
	add	x11, x13, x11
	cmp	x14, x11
	stp	x10, x11, [sp, #40]
	csel	x10, x14, x11, hi
	fmov	x11, d0
	add	x11, x11, #1
	stp	x10, x11, [sp, #56]
	cbz	w12, LBB2_71
; %bb.70:
	add	x9, x9, #1
	str	x9, [sp, #80]
LBB2_71:
	add	x1, x8, #40
Ltmp200:
	mov	x0, sp
	bl	__ZN3bts17FreeListAllocator10deallocateEPv
Ltmp201:
; %bb.72:
	mov	w20, #1                         ; =0x1
LBB2_73:
Ltmp202:
	mov	x0, sp
	mov	x1, x19
	bl	__ZN3bts17FreeListAllocator10deallocateEPv
Ltmp203:
; %bb.74:
Ltmp204:
	mov	x0, sp
	mov	x1, x21
	bl	__ZN3bts17FreeListAllocator10deallocateEPv
Ltmp205:
; %bb.75:
	ldr	x0, [sp, #8]
	str	xzr, [sp, #8]
	cbz	x0, LBB2_77
; %bb.76:
	bl	__ZdaPv
LBB2_77:
	mov	x0, x20
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB2_78:
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x20, x0
Ltmp207:
Lloh103:
	adrp	x1, l_.str.23@PAGE
Lloh104:
	add	x1, x1, l_.str.23@PAGEOFF
	bl	__ZNSt13runtime_errorC1EPKc
Ltmp208:
; %bb.79:
Ltmp210:
Lloh105:
	adrp	x1, __ZTISt13runtime_error@GOTPAGE
Lloh106:
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]
Lloh107:
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE
Lloh108:
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]
	mov	x0, x20
	bl	___cxa_throw
Ltmp211:
; %bb.80:
	brk	#0x1
LBB2_81:
Ltmp209:
	mov	x19, x0
	mov	x0, x20
	bl	___cxa_free_exception
	b	LBB2_85
LBB2_82:
Ltmp206:
	b	LBB2_84
LBB2_83:
Ltmp212:
LBB2_84:
	mov	x19, x0
LBB2_85:
	ldr	x0, [sp, #8]
	str	xzr, [sp, #8]
	cbz	x0, LBB2_87
; %bb.86:
	bl	__ZdaPv
LBB2_87:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh103, Lloh104
	.loh AdrpLdrGot	Lloh107, Lloh108
	.loh AdrpLdrGot	Lloh105, Lloh106
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table2:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp196-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp196
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp196-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp199-Ltmp196                ;   Call between Ltmp196 and Ltmp199
	.uleb128 Ltmp212-Lfunc_begin2           ;     jumps to Ltmp212
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp200-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Ltmp205-Ltmp200                ;   Call between Ltmp200 and Ltmp205
	.uleb128 Ltmp206-Lfunc_begin2           ;     jumps to Ltmp206
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp205-Lfunc_begin2           ; >> Call Site 4 <<
	.uleb128 Ltmp207-Ltmp205                ;   Call between Ltmp205 and Ltmp207
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp207-Lfunc_begin2           ; >> Call Site 5 <<
	.uleb128 Ltmp208-Ltmp207                ;   Call between Ltmp207 and Ltmp208
	.uleb128 Ltmp209-Lfunc_begin2           ;     jumps to Ltmp209
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp210-Lfunc_begin2           ; >> Call Site 6 <<
	.uleb128 Ltmp211-Ltmp210                ;   Call between Ltmp210 and Ltmp211
	.uleb128 Ltmp212-Lfunc_begin2           ;     jumps to Ltmp212
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp211-Lfunc_begin2           ; >> Call Site 7 <<
	.uleb128 Lfunc_end2-Ltmp211             ;   Call between Ltmp211 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZN12_GLOBAL__N_114mixed_workloadEbmy
__ZN12_GLOBAL__N_114mixed_workloadEbmy: ; @_ZN12_GLOBAL__N_114mixed_workloadEbmy
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #224
	stp	x28, x27, [sp, #128]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #144]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #160]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #176]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #192]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #208]            ; 16-byte Folded Spill
	add	x29, sp, #208
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x25, x1
	mov	x2, x0
	mov	x19, x8
	add	x0, sp, #32
	mov	w1, #1048576                    ; =0x100000
	bl	__ZN3bts17FreeListAllocatorC2Emb
	stp	xzr, xzr, [sp, #8]
	str	xzr, [sp, #24]
	mov	x8, #4611686018427387902        ; =0x3ffffffffffffffe
	cmp	x25, x8
	b.hs	LBB3_61
; %bb.1:
	lsr	x8, x25, #1
	add	x20, x8, #1
	lsl	x0, x20, #3
Ltmp213:
	bl	__Znwm
Ltmp214:
; %bb.2:
	mov	x21, x0
	add	x8, x0, x20, lsl #3
	stp	x0, x0, [sp, #8]
	str	x8, [sp, #24]
	cbz	x25, LBB3_48
; %bb.3:
	mov	x23, #0                         ; =0x0
	mov	x22, #0                         ; =0x0
	mov	w26, #4660                      ; =0x1234
	movk	w26, #24301, lsl #16
	mov	x27, #62915                     ; =0xf5c3
	movk	x27, #23592, lsl #16
	movk	x27, #49807, lsl #32
	movk	x27, #10485, lsl #48
	mov	w28, #100                       ; =0x64
	mov	x24, x21
	str	x25, [sp]                       ; 8-byte Folded Spill
	b	LBB3_6
LBB3_4:                                 ;   in Loop: Header=BB3_6 Depth=1
	ldr	x8, [sp, #120]
	add	x8, x8, #1
	str	x8, [sp, #120]
LBB3_5:                                 ;   in Loop: Header=BB3_6 Depth=1
	ldr	x24, [sp, #8]
	sub	x8, x21, x24
	asr	x8, x8, #3
	cmp	x22, x8
	csel	x22, x22, x8, hi
	add	x23, x23, #1
	cmp	x23, x25
	b.eq	LBB3_47
LBB3_6:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_13 Depth 2
                                        ;     Child Loop BB3_43 Depth 2
                                        ;     Child Loop BB3_33 Depth 2
	eor	x8, x26, x26, lsl #13
	eor	x8, x8, x8, lsr #7
	eor	x8, x8, x8, lsl #17
	eor	x9, x8, x8, lsl #13
	eor	x9, x9, x9, lsr #7
	eor	x26, x9, x9, lsl #17
	cmp	x24, x21
	b.eq	LBB3_10
; %bb.7:                                ;   in Loop: Header=BB3_6 Depth=1
	lsr	x9, x8, #2
	umulh	x9, x9, x27
	lsr	x9, x9, #2
	msub	x8, x9, x28, x8
	cmp	x8, #44
	b.hi	LBB3_10
; %bb.8:                                ;   in Loop: Header=BB3_6 Depth=1
	sub	x8, x21, x24
	asr	x8, x8, #3
	udiv	x9, x26, x8
	msub	x20, x9, x8, x26
	ldr	x1, [x24, x20, lsl #3]
Ltmp223:
	add	x0, sp, #32
	bl	__ZN3bts17FreeListAllocator10deallocateEPv
Ltmp224:
; %bb.9:                                ;   in Loop: Header=BB3_6 Depth=1
	ldp	x9, x8, [sp, #8]
	ldur	x8, [x8, #-8]
	str	x8, [x9, x20, lsl #3]
	ldr	x8, [sp, #16]
	sub	x21, x8, #8
	str	x21, [sp, #16]
	b	LBB3_5
LBB3_10:                                ;   in Loop: Header=BB3_6 Depth=1
	ldr	x8, [sp, #64]
	cbz	x8, LBB3_4
; %bb.11:                               ;   in Loop: Header=BB3_6 Depth=1
	mov	x9, #50797                      ; =0xc66d
	movk	x9, #18423, lsl #16
	movk	x9, #9738, lsl #32
	movk	x9, #4211, lsl #48
	umulh	x9, x26, x9
	lsr	x9, x9, #4
	mov	w10, #249                       ; =0xf9
	msub	x10, x9, x10, x26
	add	x9, x10, #8
	add	w10, w10, #15
	and	x10, x10, #0x1f8
	b	LBB3_13
LBB3_12:                                ;   in Loop: Header=BB3_13 Depth=2
	ldr	x8, [x8, #24]
	cbz	x8, LBB3_4
LBB3_13:                                ;   Parent Loop BB3_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrb	w11, [x8, #32]
	cbz	w11, LBB3_12
; %bb.14:                               ;   in Loop: Header=BB3_13 Depth=2
	ldr	x12, [x8]
	subs	x13, x12, x10
	b.lo	LBB3_12
; %bb.15:                               ;   in Loop: Header=BB3_6 Depth=1
	ldrb	w11, [x8, #33]
	add	x14, x10, #48
	cmp	x12, x14
	b.hs	LBB3_17
; %bb.16:                               ;   in Loop: Header=BB3_6 Depth=1
	mov	x10, x12
	b	LBB3_20
LBB3_17:                                ;   in Loop: Header=BB3_6 Depth=1
	add	x12, x8, x10
	sub	x13, x13, #40
	str	x13, [x12, #40]!
	strh	wzr, [x12, #32]
	stp	xzr, x8, [x12, #8]
	ldr	x13, [x8, #24]
	str	x13, [x12, #24]
	mov	w14, #1                         ; =0x1
	strb	w14, [x12, #32]
	cbz	x13, LBB3_19
; %bb.18:                               ;   in Loop: Header=BB3_6 Depth=1
	str	x12, [x13, #16]
LBB3_19:                                ;   in Loop: Header=BB3_6 Depth=1
	str	x12, [x8, #24]
	str	x10, [x8]
LBB3_20:                                ;   in Loop: Header=BB3_6 Depth=1
	mov	w12, #256                       ; =0x100
	strh	w12, [x8, #32]
	str	x9, [x8, #8]
	ldp	x12, x13, [sp, #72]
	add	x9, x12, x9
	ldp	x12, x14, [sp, #88]
	add	x10, x13, x10
	cmp	x12, x10
	stp	x9, x10, [sp, #72]
	csel	x9, x12, x10, hi
	add	x10, x14, #1
	stp	x9, x10, [sp, #88]
	cbz	w11, LBB3_22
; %bb.21:                               ;   in Loop: Header=BB3_6 Depth=1
	ldr	x9, [sp, #112]
	add	x9, x9, #1
	str	x9, [sp, #112]
LBB3_22:                                ;   in Loop: Header=BB3_6 Depth=1
	add	x20, x8, #40
	ldr	x8, [sp, #24]
	cmp	x21, x8
	b.hs	LBB3_24
; %bb.23:                               ;   in Loop: Header=BB3_6 Depth=1
	str	x20, [x21], #8
	mov	x24, x21
	b	LBB3_38
LBB3_24:                                ;   in Loop: Header=BB3_6 Depth=1
	ldr	x28, [sp, #8]
	sub	x27, x21, x28
	asr	x25, x27, #3
	add	x9, x25, #1
	lsr	x10, x9, #61
	cbnz	x10, LBB3_60
; %bb.25:                               ;   in Loop: Header=BB3_6 Depth=1
	sub	x8, x8, x28
	asr	x10, x8, #2
	cmp	x10, x9
	csel	x9, x10, x9, hi
	mov	x10, #9223372036854775800       ; =0x7ffffffffffffff8
	cmp	x8, x10
	mov	x8, #2305843009213693951        ; =0x1fffffffffffffff
	csel	x15, x9, x8, lo
	cbz	x15, LBB3_29
; %bb.26:                               ;   in Loop: Header=BB3_6 Depth=1
	lsr	x8, x15, #61
	cbnz	x8, LBB3_62
; %bb.27:                               ;   in Loop: Header=BB3_6 Depth=1
	mov	x24, x15
	lsl	x0, x15, #3
Ltmp215:
	bl	__Znwm
Ltmp216:
; %bb.28:                               ;   in Loop: Header=BB3_6 Depth=1
	mov	x15, x24
	b	LBB3_30
LBB3_29:                                ;   in Loop: Header=BB3_6 Depth=1
	mov	x0, #0                          ; =0x0
LBB3_30:                                ;   in Loop: Header=BB3_6 Depth=1
	add	x8, x0, x25, lsl #3
	mov	x24, x8
	str	x20, [x24], #8
	subs	x9, x21, x28
	b.eq	LBB3_35
; %bb.31:                               ;   in Loop: Header=BB3_6 Depth=1
	sub	x9, x9, #8
	cmp	x9, #360
	b.hs	LBB3_39
LBB3_32:                                ;   in Loop: Header=BB3_6 Depth=1
	mov	x9, x21
	ldr	x25, [sp]                       ; 8-byte Folded Reload
	mov	x27, #62915                     ; =0xf5c3
	movk	x27, #23592, lsl #16
	movk	x27, #49807, lsl #32
	movk	x27, #10485, lsl #48
LBB3_33:                                ;   Parent Loop BB3_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x10, [x9, #-8]!
	str	x10, [x8, #-8]!
	cmp	x9, x28
	b.ne	LBB3_33
LBB3_34:                                ;   in Loop: Header=BB3_6 Depth=1
	ldr	x21, [sp, #8]
	b	LBB3_36
LBB3_35:                                ;   in Loop: Header=BB3_6 Depth=1
	ldr	x25, [sp]                       ; 8-byte Folded Reload
	mov	x27, #62915                     ; =0xf5c3
	movk	x27, #23592, lsl #16
	movk	x27, #49807, lsl #32
	movk	x27, #10485, lsl #48
LBB3_36:                                ;   in Loop: Header=BB3_6 Depth=1
	add	x9, x0, x15, lsl #3
	stp	x8, x24, [sp, #8]
	str	x9, [sp, #24]
	mov	w28, #100                       ; =0x64
	cbz	x21, LBB3_38
; %bb.37:                               ;   in Loop: Header=BB3_6 Depth=1
	mov	x0, x21
	bl	__ZdlPv
LBB3_38:                                ;   in Loop: Header=BB3_6 Depth=1
	str	x24, [sp, #16]
	mov	x21, x24
	b	LBB3_5
LBB3_39:                                ;   in Loop: Header=BB3_6 Depth=1
	sub	x10, x21, #8
	sub	x11, x10, x28
	and	x11, x11, #0xfffffffffffffff8
	add	x12, x0, x27
	sub	x12, x12, #8
	sub	x13, x12, x11
	cmp	x13, x12
	b.hi	LBB3_32
; %bb.40:                               ;   in Loop: Header=BB3_6 Depth=1
	sub	x11, x10, x11
	cmp	x11, x10
	b.hi	LBB3_32
; %bb.41:                               ;   in Loop: Header=BB3_6 Depth=1
	add	x10, x0, x27
	sub	x10, x21, x10
	cmp	x10, #64
	b.lo	LBB3_32
; %bb.42:                               ;   in Loop: Header=BB3_6 Depth=1
	lsr	x9, x9, #3
	add	x10, x9, #1
	and	x11, x10, #0x3ffffffffffffff8
	lsl	x12, x11, #3
	sub	x9, x21, x12
	sub	x8, x8, x12
	sub	x12, x21, #32
	add	x13, x0, x25, lsl #3
	sub	x13, x13, #32
	mov	x14, x11
	mov	x27, #62915                     ; =0xf5c3
	movk	x27, #23592, lsl #16
	movk	x27, #49807, lsl #32
	movk	x27, #10485, lsl #48
LBB3_43:                                ;   Parent Loop BB3_6 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q1, q0, [x12]
	ldp	q3, q2, [x12, #-32]
	stp	q1, q0, [x13]
	stp	q3, q2, [x13, #-32]
	sub	x12, x12, #64
	sub	x13, x13, #64
	sub	x14, x14, #8
	cbnz	x14, LBB3_43
; %bb.44:                               ;   in Loop: Header=BB3_6 Depth=1
	cmp	x10, x11
	ldr	x25, [sp]                       ; 8-byte Folded Reload
	b.ne	LBB3_33
	b	LBB3_34
LBB3_45:                                ;   in Loop: Header=BB3_47 Depth=1
	ldr	x1, [x24]
Ltmp226:
	add	x0, sp, #32
	bl	__ZN3bts17FreeListAllocator10deallocateEPv
Ltmp227:
; %bb.46:                               ;   in Loop: Header=BB3_47 Depth=1
	add	x24, x24, #8
LBB3_47:                                ; =>This Inner Loop Header: Depth=1
	cmp	x24, x21
	b.ne	LBB3_45
	b	LBB3_49
LBB3_48:
	mov	x22, #0                         ; =0x0
LBB3_49:
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x19, #32]
	ldp	q1, q2, [sp, #80]
	str	q1, [x19, #16]
	fmov	x9, d1
	ldp	x8, x10, [sp, #64]
	ldr	x11, [sp, #48]
	stp	x11, x10, [x19]
	subs	x9, x9, x10
	str	xzr, [x19, #64]
	csel	x9, xzr, x9, lo
	str	x9, [x19, #48]
	stur	q2, [x19, #72]
	ldr	q0, [sp, #112]
	stur	q0, [x19, #88]
	cbz	x8, LBB3_55
; %bb.50:
	mov	x9, #0                          ; =0x0
	mov	x10, #0                         ; =0x0
	mov	x11, #0                         ; =0x0
	b	LBB3_52
LBB3_51:                                ;   in Loop: Header=BB3_52 Depth=1
	ldr	x8, [x8, #24]
	add	x11, x11, #1
	cbz	x8, LBB3_54
LBB3_52:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w12, [x8, #32]
	cbz	w12, LBB3_51
; %bb.53:                               ;   in Loop: Header=BB3_52 Depth=1
	ldr	x12, [x8]
	add	x10, x12, x10
	cmp	x9, x12
	csel	x9, x9, x12, hi
	stp	x10, x9, [x19, #32]
	b	LBB3_51
LBB3_54:
	str	x11, [x19, #64]
	sub	x8, x10, x9
LBB3_55:
	str	x8, [x19, #56]
	str	x22, [x19, #104]
	ldr	x0, [sp, #8]
	cbz	x0, LBB3_57
; %bb.56:
	str	x0, [sp, #16]
	bl	__ZdlPv
LBB3_57:
	ldr	x0, [sp, #40]
	str	xzr, [sp, #40]
	cbz	x0, LBB3_59
; %bb.58:
	bl	__ZdaPv
LBB3_59:
	ldp	x29, x30, [sp, #208]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #192]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #176]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #160]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #144]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #224
	ret
LBB3_60:
Ltmp220:
	add	x0, sp, #8
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
Ltmp221:
	b	LBB3_63
LBB3_61:
Ltmp229:
	add	x0, sp, #8
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
Ltmp230:
	b	LBB3_63
LBB3_62:
Ltmp218:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
Ltmp219:
LBB3_63:
	brk	#0x1
LBB3_64:
Ltmp217:
	b	LBB3_69
LBB3_65:
Ltmp222:
	b	LBB3_69
LBB3_66:
Ltmp231:
	b	LBB3_69
LBB3_67:
Ltmp225:
	b	LBB3_69
LBB3_68:
Ltmp228:
LBB3_69:
	mov	x19, x0
	ldr	x0, [sp, #8]
	cbz	x0, LBB3_71
; %bb.70:
	str	x0, [sp, #16]
	bl	__ZdlPv
LBB3_71:
	ldr	x0, [sp, #40]
	str	xzr, [sp, #40]
	cbz	x0, LBB3_73
; %bb.72:
	bl	__ZdaPv
LBB3_73:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table3:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp213-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp213
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp213-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp214-Ltmp213                ;   Call between Ltmp213 and Ltmp214
	.uleb128 Ltmp231-Lfunc_begin3           ;     jumps to Ltmp231
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp223-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Ltmp224-Ltmp223                ;   Call between Ltmp223 and Ltmp224
	.uleb128 Ltmp225-Lfunc_begin3           ;     jumps to Ltmp225
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp215-Lfunc_begin3           ; >> Call Site 4 <<
	.uleb128 Ltmp216-Ltmp215                ;   Call between Ltmp215 and Ltmp216
	.uleb128 Ltmp217-Lfunc_begin3           ;     jumps to Ltmp217
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp226-Lfunc_begin3           ; >> Call Site 5 <<
	.uleb128 Ltmp227-Ltmp226                ;   Call between Ltmp226 and Ltmp227
	.uleb128 Ltmp228-Lfunc_begin3           ;     jumps to Ltmp228
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp220-Lfunc_begin3           ; >> Call Site 6 <<
	.uleb128 Ltmp221-Ltmp220                ;   Call between Ltmp220 and Ltmp221
	.uleb128 Ltmp222-Lfunc_begin3           ;     jumps to Ltmp222
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp229-Lfunc_begin3           ; >> Call Site 7 <<
	.uleb128 Ltmp230-Ltmp229                ;   Call between Ltmp229 and Ltmp230
	.uleb128 Ltmp231-Lfunc_begin3           ;     jumps to Ltmp231
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp218-Lfunc_begin3           ; >> Call Site 8 <<
	.uleb128 Ltmp219-Ltmp218                ;   Call between Ltmp218 and Ltmp219
	.uleb128 Ltmp222-Lfunc_begin3           ;     jumps to Ltmp222
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp219-Lfunc_begin3           ; >> Call Site 9 <<
	.uleb128 Lfunc_end3-Ltmp219             ;   Call between Ltmp219 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZN12_GLOBAL__N_121write_allocator_statsERKN3bts14AllocatorStatsE
__ZN12_GLOBAL__N_121write_allocator_statsERKN3bts14AllocatorStatsE: ; @_ZN12_GLOBAL__N_121write_allocator_statsERKN3bts14AllocatorStatsE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
Lloh109:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh110:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh111:
	adrp	x1, l_.str.28@PAGE
Lloh112:
	add	x1, x1, l_.str.28@PAGEOFF
	mov	w2, #18                         ; =0x12
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [x19]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Lloh113:
	adrp	x1, l_.str.29@PAGE
Lloh114:
	add	x1, x1, l_.str.29@PAGEOFF
	mov	w2, #24                         ; =0x18
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [x19, #8]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Lloh115:
	adrp	x1, l_.str.30@PAGE
Lloh116:
	add	x1, x1, l_.str.30@PAGEOFF
	mov	w2, #23                         ; =0x17
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [x19, #16]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Lloh117:
	adrp	x1, l_.str.31@PAGE
Lloh118:
	add	x1, x1, l_.str.31@PAGEOFF
	mov	w2, #28                         ; =0x1c
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [x19, #24]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Lloh119:
	adrp	x1, l_.str.32@PAGE
Lloh120:
	add	x1, x1, l_.str.32@PAGEOFF
	mov	w2, #22                         ; =0x16
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [x19, #32]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Lloh121:
	adrp	x1, l_.str.33@PAGE
Lloh122:
	add	x1, x1, l_.str.33@PAGEOFF
	mov	w2, #28                         ; =0x1c
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [x19, #40]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Lloh123:
	adrp	x1, l_.str.34@PAGE
Lloh124:
	add	x1, x1, l_.str.34@PAGEOFF
	mov	w2, #32                         ; =0x20
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [x19, #48]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Lloh125:
	adrp	x1, l_.str.35@PAGE
Lloh126:
	add	x1, x1, l_.str.35@PAGEOFF
	mov	w2, #32                         ; =0x20
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [x19, #56]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Lloh127:
	adrp	x1, l_.str.36@PAGE
Lloh128:
	add	x1, x1, l_.str.36@PAGEOFF
	mov	w2, #15                         ; =0xf
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [x19, #64]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Lloh129:
	adrp	x1, l_.str.37@PAGE
Lloh130:
	add	x1, x1, l_.str.37@PAGEOFF
	mov	w2, #15                         ; =0xf
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [x19, #72]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Lloh131:
	adrp	x1, l_.str.38@PAGE
Lloh132:
	add	x1, x1, l_.str.38@PAGEOFF
	mov	w2, #9                          ; =0x9
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [x19, #80]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Lloh133:
	adrp	x1, l_.str.39@PAGE
Lloh134:
	add	x1, x1, l_.str.39@PAGEOFF
	mov	w2, #22                         ; =0x16
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [x19, #88]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Lloh135:
	adrp	x1, l_.str.40@PAGE
Lloh136:
	add	x1, x1, l_.str.40@PAGEOFF
	mov	w2, #22                         ; =0x16
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x1, [x19, #96]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	mov	w8, #125                        ; =0x7d
	strb	w8, [sp, #15]
	add	x1, sp, #15
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.loh AdrpAdd	Lloh135, Lloh136
	.loh AdrpAdd	Lloh133, Lloh134
	.loh AdrpAdd	Lloh131, Lloh132
	.loh AdrpAdd	Lloh129, Lloh130
	.loh AdrpAdd	Lloh127, Lloh128
	.loh AdrpAdd	Lloh125, Lloh126
	.loh AdrpAdd	Lloh123, Lloh124
	.loh AdrpAdd	Lloh121, Lloh122
	.loh AdrpAdd	Lloh119, Lloh120
	.loh AdrpAdd	Lloh117, Lloh118
	.loh AdrpAdd	Lloh115, Lloh116
	.loh AdrpAdd	Lloh113, Lloh114
	.loh AdrpAdd	Lloh111, Lloh112
	.loh AdrpLdrGot	Lloh109, Lloh110
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts16write_stats_jsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_14BenchmarkStatsE ; -- Begin function _ZN3bts16write_stats_jsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_14BenchmarkStatsE
	.weak_def_can_be_hidden	__ZN3bts16write_stats_jsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_14BenchmarkStatsE
	.p2align	2
__ZN3bts16write_stats_jsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_14BenchmarkStatsE: ; @_ZN3bts16write_stats_jsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_14BenchmarkStatsE
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #80
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x1
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	and	w10, w10, #0xfffffeff
	orr	w10, w10, #0x4
	str	w10, [x9, #8]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #6                          ; =0x6
	str	x9, [x8, #16]
Lloh137:
	adrp	x1, l_.str.41@PAGE
Lloh138:
	add	x1, x1, l_.str.41@PAGEOFF
	mov	w2, #9                          ; =0x9
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x20, x0
	ldrb	w8, [x19, #23]
	sxtb	w9, w8
	ldp	x10, x11, [x19]
	cmp	w9, #0
	csel	x0, x10, x19, lt
	csel	x1, x11, x8, lt
	add	x21, sp, #8
	add	x8, sp, #8
	bl	__ZN3bts11json_escapeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE
	ldrb	w8, [sp, #31]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #8]
	cmp	w9, #0
	csel	x1, x10, x21, lt
	csel	x2, x11, x8, lt
Ltmp232:
	mov	x0, x20
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp233:
; %bb.1:
Ltmp234:
Lloh139:
	adrp	x1, l_.str.42@PAGE
Lloh140:
	add	x1, x1, l_.str.42@PAGEOFF
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp235:
; %bb.2:
	ldr	x1, [x19, #24]
Ltmp236:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp237:
; %bb.3:
Ltmp238:
Lloh141:
	adrp	x1, l_.str.43@PAGE
Lloh142:
	add	x1, x1, l_.str.43@PAGEOFF
	mov	w2, #15                         ; =0xf
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp239:
; %bb.4:
	ldr	x1, [x19, #32]
Ltmp240:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp241:
; %bb.5:
Ltmp242:
Lloh143:
	adrp	x1, l_.str.44@PAGE
Lloh144:
	add	x1, x1, l_.str.44@PAGEOFF
	mov	w2, #11                         ; =0xb
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp243:
; %bb.6:
	ldr	d0, [x19, #40]
Ltmp244:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp245:
; %bb.7:
Ltmp246:
Lloh145:
	adrp	x1, l_.str.45@PAGE
Lloh146:
	add	x1, x1, l_.str.45@PAGEOFF
	mov	w2, #13                         ; =0xd
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp247:
; %bb.8:
	ldr	d0, [x19, #48]
Ltmp248:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp249:
; %bb.9:
Ltmp250:
Lloh147:
	adrp	x1, l_.str.46@PAGE
Lloh148:
	add	x1, x1, l_.str.46@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp251:
; %bb.10:
	ldr	d0, [x19, #56]
Ltmp252:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp253:
; %bb.11:
Ltmp254:
Lloh149:
	adrp	x1, l_.str.47@PAGE
Lloh150:
	add	x1, x1, l_.str.47@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp255:
; %bb.12:
	ldr	d0, [x19, #64]
Ltmp256:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp257:
; %bb.13:
Ltmp258:
Lloh151:
	adrp	x1, l_.str.48@PAGE
Lloh152:
	add	x1, x1, l_.str.48@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp259:
; %bb.14:
	ldr	d0, [x19, #72]
Ltmp260:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp261:
; %bb.15:
Ltmp262:
Lloh153:
	adrp	x1, l_.str.49@PAGE
Lloh154:
	add	x1, x1, l_.str.49@PAGEOFF
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp263:
; %bb.16:
	ldr	d0, [x19, #80]
Ltmp264:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp265:
; %bb.17:
Ltmp266:
Lloh155:
	adrp	x1, l_.str.50@PAGE
Lloh156:
	add	x1, x1, l_.str.50@PAGEOFF
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp267:
; %bb.18:
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB5_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB5_20:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB5_21:
Ltmp268:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB5_23
; %bb.22:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB5_23:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh137, Lloh138
	.loh AdrpAdd	Lloh139, Lloh140
	.loh AdrpAdd	Lloh141, Lloh142
	.loh AdrpAdd	Lloh143, Lloh144
	.loh AdrpAdd	Lloh145, Lloh146
	.loh AdrpAdd	Lloh147, Lloh148
	.loh AdrpAdd	Lloh149, Lloh150
	.loh AdrpAdd	Lloh151, Lloh152
	.loh AdrpAdd	Lloh153, Lloh154
	.loh AdrpAdd	Lloh155, Lloh156
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table5:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp232-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp232
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp232-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp267-Ltmp232                ;   Call between Ltmp232 and Ltmp267
	.uleb128 Ltmp268-Lfunc_begin4           ;     jumps to Ltmp268
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp267-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp267             ;   Call between Ltmp267 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
	.weak_def_can_be_hidden	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh157:
	adrp	x0, l_.str.22@PAGE
Lloh158:
	add	x0, x0, l_.str.22@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.loh AdrpAdd	Lloh157, Lloh158
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB8ne180100EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ne180100EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ne180100EPKc: ; @_ZNSt3__120__throw_length_errorB8ne180100EPKc
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp269:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne180100EPKc
Ltmp270:
; %bb.1:
Lloh159:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh160:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh161:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh162:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB8_2:
Ltmp271:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh161, Lloh162
	.loh AdrpLdrGot	Lloh159, Lloh160
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table8:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp269-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp269
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp269-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp270-Ltmp269                ;   Call between Ltmp269 and Ltmp270
	.uleb128 Ltmp271-Lfunc_begin5           ;     jumps to Ltmp271
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp270-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp270             ;   Call between Ltmp270 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B8ne180100EPKc ; -- Begin function _ZNSt12length_errorC1B8ne180100EPKc
	.globl	__ZNSt12length_errorC1B8ne180100EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B8ne180100EPKc
	.p2align	2
__ZNSt12length_errorC1B8ne180100EPKc:   ; @_ZNSt12length_errorC1B8ne180100EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh163:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh164:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh163, Lloh164
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB8ne180100v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB8ne180100v
	.globl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
	.weak_def_can_be_hidden	__ZSt28__throw_bad_array_new_lengthB8ne180100v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB8ne180100v: ; @_ZSt28__throw_bad_array_new_lengthB8ne180100v
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w0, #8                          ; =0x8
	bl	___cxa_allocate_exception
	bl	__ZNSt20bad_array_new_lengthC1Ev
Lloh165:
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
Lloh166:
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
Lloh167:
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
Lloh168:
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.loh AdrpLdrGot	Lloh167, Lloh168
	.loh AdrpLdrGot	Lloh165, Lloh166
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts17FreeListAllocator10deallocateEPv ; -- Begin function _ZN3bts17FreeListAllocator10deallocateEPv
	.weak_def_can_be_hidden	__ZN3bts17FreeListAllocator10deallocateEPv
	.p2align	2
__ZN3bts17FreeListAllocator10deallocateEPv: ; @_ZN3bts17FreeListAllocator10deallocateEPv
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	cbz	x1, LBB11_15
; %bb.1:
	ldr	x8, [x0, #8]
	add	x9, x8, #40
	cmp	x9, x1
	b.hi	LBB11_16
; %bb.2:
	ldr	x9, [x0, #16]
	add	x8, x8, x9
	cmp	x8, x1
	b.ls	LBB11_16
; %bb.3:
	ldurb	w8, [x1, #-8]
	cbnz	w8, LBB11_17
; %bb.4:
	ldp	x8, x9, [x1, #-40]
	ldp	x10, x11, [x0, #40]
	sub	x9, x10, x9
	sub	x10, x11, x8
	stp	x9, x10, [x0, #40]
	stur	xzr, [x1, #-32]
	mov	w9, #1                          ; =0x1
	sturb	w9, [x1, #-8]
	ldr	x9, [x0, #72]
	add	x9, x9, #1
	str	x9, [x0, #72]
	ldrb	w9, [x0, #24]
	cbz	w9, LBB11_15
; %bb.5:
	ldur	x9, [x1, #-16]
	cbz	x9, LBB11_9
; %bb.6:
	ldrb	w10, [x9, #32]
	cbz	w10, LBB11_9
; %bb.7:
	ldr	x10, [x9]
	add	x8, x8, x10
	add	x8, x8, #40
	stur	x8, [x1, #-40]
	ldr	x8, [x9, #24]
	stur	x8, [x1, #-16]
	cbz	x8, LBB11_9
; %bb.8:
	sub	x9, x1, #40
	str	x9, [x8, #16]
LBB11_9:
	ldur	x8, [x1, #-24]
	cbz	x8, LBB11_15
; %bb.10:
	ldrb	w9, [x8, #32]
	cbz	w9, LBB11_15
; %bb.11:
	ldr	x9, [x8, #24]
	cbz	x9, LBB11_15
; %bb.12:
	ldrb	w10, [x9, #32]
	cbz	w10, LBB11_15
; %bb.13:
	ldr	x10, [x9]
	ldr	x11, [x8]
	add	x10, x10, x11
	add	x10, x10, #40
	str	x10, [x8]
	ldr	x9, [x9, #24]
	str	x9, [x8, #24]
	cbz	x9, LBB11_15
; %bb.14:
	str	x8, [x9, #16]
LBB11_15:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB11_16:
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp275:
Lloh169:
	adrp	x1, l_.str.25@PAGE
Lloh170:
	add	x1, x1, l_.str.25@PAGEOFF
	bl	__ZNSt16invalid_argumentC1B8ne180100EPKc
Ltmp276:
	b	LBB11_18
LBB11_17:
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp272:
Lloh171:
	adrp	x1, l_.str.26@PAGE
Lloh172:
	add	x1, x1, l_.str.26@PAGEOFF
	bl	__ZNSt16invalid_argumentC1B8ne180100EPKc
Ltmp273:
LBB11_18:
Lloh173:
	adrp	x1, __ZTISt16invalid_argument@GOTPAGE
Lloh174:
	ldr	x1, [x1, __ZTISt16invalid_argument@GOTPAGEOFF]
Lloh175:
	adrp	x2, __ZNSt16invalid_argumentD1Ev@GOTPAGE
Lloh176:
	ldr	x2, [x2, __ZNSt16invalid_argumentD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB11_19:
Ltmp274:
	b	LBB11_21
LBB11_20:
Ltmp277:
LBB11_21:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh169, Lloh170
	.loh AdrpAdd	Lloh171, Lloh172
	.loh AdrpLdrGot	Lloh175, Lloh176
	.loh AdrpLdrGot	Lloh173, Lloh174
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table11:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp275-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp275
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp275-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp276-Ltmp275                ;   Call between Ltmp275 and Ltmp276
	.uleb128 Ltmp277-Lfunc_begin6           ;     jumps to Ltmp277
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp276-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Ltmp272-Ltmp276                ;   Call between Ltmp276 and Ltmp272
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp272-Lfunc_begin6           ; >> Call Site 4 <<
	.uleb128 Ltmp273-Ltmp272                ;   Call between Ltmp272 and Ltmp273
	.uleb128 Ltmp274-Lfunc_begin6           ;     jumps to Ltmp274
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp273-Lfunc_begin6           ; >> Call Site 5 <<
	.uleb128 Lfunc_end6-Ltmp273             ;   Call between Ltmp273 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN3bts17FreeListAllocatorC2Emb ; -- Begin function _ZN3bts17FreeListAllocatorC2Emb
	.weak_def_can_be_hidden	__ZN3bts17FreeListAllocatorC2Emb
	.p2align	2
__ZN3bts17FreeListAllocatorC2Emb:       ; @_ZN3bts17FreeListAllocatorC2Emb
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
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
	mov	x22, x2
	mov	x19, x0
	add	x8, x1, #7
	lsr	x9, x8, #3
	str	x9, [x0]
	and	x9, x8, #0xfffffffffffffff8
	mov	w10, #16                        ; =0x10
	cmp	x8, #23
	csel	x20, x9, x10, hi
	mov	x0, x20
	bl	__Znam
	mov	x21, x0
	mov	x1, x20
	bl	_bzero
	stp	x21, x20, [x19, #8]
	strb	w22, [x19, #24]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x19, #32]
	stp	q0, q0, [x19, #64]
	cmp	x20, #48
	b.ls	LBB12_2
; %bb.1:
	strh	wzr, [x21, #32]
	stp	xzr, xzr, [x21, #16]
	str	x21, [x19, #32]
	sub	x8, x20, #40
	stp	x8, xzr, [x21]
	mov	w8, #1                          ; =0x1
	strb	w8, [x21, #32]
	mov	x0, x19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB12_2:
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x21, x0
Ltmp278:
Lloh177:
	adrp	x1, l_.str.24@PAGE
Lloh178:
	add	x1, x1, l_.str.24@PAGEOFF
	bl	__ZNSt11logic_errorC2EPKc
Ltmp279:
; %bb.3:
Lloh179:
	adrp	x8, __ZTVSt16invalid_argument@GOTPAGE
Lloh180:
	ldr	x8, [x8, __ZTVSt16invalid_argument@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x21]
Ltmp281:
Lloh181:
	adrp	x1, __ZTISt16invalid_argument@GOTPAGE
Lloh182:
	ldr	x1, [x1, __ZTISt16invalid_argument@GOTPAGEOFF]
Lloh183:
	adrp	x2, __ZNSt16invalid_argumentD1Ev@GOTPAGE
Lloh184:
	ldr	x2, [x2, __ZNSt16invalid_argumentD1Ev@GOTPAGEOFF]
	mov	x0, x21
	bl	___cxa_throw
Ltmp282:
; %bb.4:
	brk	#0x1
LBB12_5:
Ltmp283:
	mov	x20, x0
	b	LBB12_7
LBB12_6:
Ltmp280:
	mov	x20, x0
	mov	x0, x21
	bl	___cxa_free_exception
LBB12_7:
	ldr	x0, [x19, #8]
	str	xzr, [x19, #8]
	cbz	x0, LBB12_9
; %bb.8:
	bl	__ZdaPv
LBB12_9:
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh177, Lloh178
	.loh AdrpLdrGot	Lloh183, Lloh184
	.loh AdrpLdrGot	Lloh181, Lloh182
	.loh AdrpLdrGot	Lloh179, Lloh180
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table12:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ; >> Call Site 1 <<
	.uleb128 Ltmp278-Lfunc_begin7           ;   Call between Lfunc_begin7 and Ltmp278
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp278-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp279-Ltmp278                ;   Call between Ltmp278 and Ltmp279
	.uleb128 Ltmp280-Lfunc_begin7           ;     jumps to Ltmp280
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp281-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Ltmp282-Ltmp281                ;   Call between Ltmp281 and Ltmp282
	.uleb128 Ltmp283-Lfunc_begin7           ;     jumps to Ltmp283
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp282-Lfunc_begin7           ; >> Call Site 4 <<
	.uleb128 Lfunc_end7-Ltmp282             ;   Call between Ltmp282 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt16invalid_argumentC1B8ne180100EPKc ; -- Begin function _ZNSt16invalid_argumentC1B8ne180100EPKc
	.globl	__ZNSt16invalid_argumentC1B8ne180100EPKc
	.weak_def_can_be_hidden	__ZNSt16invalid_argumentC1B8ne180100EPKc
	.p2align	2
__ZNSt16invalid_argumentC1B8ne180100EPKc: ; @_ZNSt16invalid_argumentC1B8ne180100EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh185:
	adrp	x8, __ZTVSt16invalid_argument@GOTPAGE
Lloh186:
	ldr	x8, [x8, __ZTVSt16invalid_argument@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh185, Lloh186
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
	.globl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
	.weak_def_can_be_hidden	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev: ; @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh187:
	adrp	x0, l_.str.27@PAGE
Lloh188:
	add	x0, x0, l_.str.27@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.loh AdrpAdd	Lloh187, Lloh188
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp284:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp285:
; %bb.1:
	ldrb	w8, [sp, #8]
	cbz	w8, LBB15_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x22, x19, x8
	ldr	x23, [x22, #40]
	ldr	w25, [x22, #8]
	ldr	w24, [x22, #144]
	cmn	w24, #1
	b.ne	LBB15_7
; %bb.3:
Ltmp287:
	add	x8, sp, #24
	mov	x0, x22
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp288:
; %bb.4:
Ltmp289:
Lloh189:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh190:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp290:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp291:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp292:
; %bb.6:
	mov	x24, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	str	w24, [x22, #144]
LBB15_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w25, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp294:
	sxtb	w5, w24
	mov	x0, x23
	mov	x1, x20
	mov	x4, x22
	bl	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp295:
; %bb.8:
	cbnz	x0, LBB15_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
	orr	w1, w8, w9
Ltmp297:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp298:
LBB15_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB15_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB15_12:
Ltmp299:
	b	LBB15_15
LBB15_13:
Ltmp293:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB15_16
LBB15_14:
Ltmp296:
LBB15_15:
	mov	x20, x0
LBB15_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB15_18
LBB15_17:
Ltmp286:
	mov	x20, x0
LBB15_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp300:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp301:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB15_11
LBB15_20:
Ltmp302:
	mov	x19, x0
Ltmp303:
	bl	___cxa_end_catch
Ltmp304:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB15_22:
Ltmp305:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh189, Lloh190
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table15:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Ltmp284-Lfunc_begin8           ; >> Call Site 1 <<
	.uleb128 Ltmp285-Ltmp284                ;   Call between Ltmp284 and Ltmp285
	.uleb128 Ltmp286-Lfunc_begin8           ;     jumps to Ltmp286
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp287-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp288-Ltmp287                ;   Call between Ltmp287 and Ltmp288
	.uleb128 Ltmp296-Lfunc_begin8           ;     jumps to Ltmp296
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp289-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Ltmp292-Ltmp289                ;   Call between Ltmp289 and Ltmp292
	.uleb128 Ltmp293-Lfunc_begin8           ;     jumps to Ltmp293
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp294-Lfunc_begin8           ; >> Call Site 4 <<
	.uleb128 Ltmp295-Ltmp294                ;   Call between Ltmp294 and Ltmp295
	.uleb128 Ltmp296-Lfunc_begin8           ;     jumps to Ltmp296
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp297-Lfunc_begin8           ; >> Call Site 5 <<
	.uleb128 Ltmp298-Ltmp297                ;   Call between Ltmp297 and Ltmp298
	.uleb128 Ltmp299-Lfunc_begin8           ;     jumps to Ltmp299
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp298-Lfunc_begin8           ; >> Call Site 6 <<
	.uleb128 Ltmp300-Ltmp298                ;   Call between Ltmp298 and Ltmp300
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp300-Lfunc_begin8           ; >> Call Site 7 <<
	.uleb128 Ltmp301-Ltmp300                ;   Call between Ltmp300 and Ltmp301
	.uleb128 Ltmp302-Lfunc_begin8           ;     jumps to Ltmp302
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp301-Lfunc_begin8           ; >> Call Site 8 <<
	.uleb128 Ltmp303-Ltmp301                ;   Call between Ltmp301 and Ltmp303
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp303-Lfunc_begin8           ; >> Call Site 9 <<
	.uleb128 Ltmp304-Ltmp303                ;   Call between Ltmp303 and Ltmp304
	.uleb128 Ltmp305-Lfunc_begin8           ;     jumps to Ltmp305
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp304-Lfunc_begin8           ; >> Call Site 10 <<
	.uleb128 Lfunc_end8-Ltmp304             ;   Call between Ltmp304 and Lfunc_end8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end8:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	cbz	x0, LBB16_16
; %bb.1:
	mov	x24, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	ldr	x8, [x4, #24]
	sub	x9, x3, x1
	subs	x8, x8, x9
	csel	x23, x8, xzr, gt
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB16_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB16_15
LBB16_3:
	cmp	x23, #1
	b.lt	LBB16_12
; %bb.4:
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x23, x8
	b.hs	LBB16_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB16_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB16_8
LBB16_7:
	and	x8, x23, #0xfffffffffffffff8
	add	x8, x8, #8
	orr	x9, x23, #0x7
	cmp	x9, #23
	csel	x8, x8, x9, eq
	add	x26, x8, #1
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB16_8:
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_memset
	strb	wzr, [x25, x23]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp306:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp307:
; %bb.9:
	mov	x24, x0
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB16_11
; %bb.10:
	cmp	x24, x23
	b.ne	LBB16_15
	b	LBB16_12
LBB16_11:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB16_15
LBB16_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB16_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB16_15
LBB16_14:
	str	xzr, [x20, #24]
	b	LBB16_16
LBB16_15:
	mov	x19, #0                         ; =0x0
LBB16_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB16_17:
	add	x0, sp, #8
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
LBB16_18:
Ltmp308:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB16_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB16_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table16:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Lfunc_begin9-Lfunc_begin9      ; >> Call Site 1 <<
	.uleb128 Ltmp306-Lfunc_begin9           ;   Call between Lfunc_begin9 and Ltmp306
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp306-Lfunc_begin9           ; >> Call Site 2 <<
	.uleb128 Ltmp307-Ltmp306                ;   Call between Ltmp306 and Ltmp307
	.uleb128 Ltmp308-Lfunc_begin9           ;     jumps to Ltmp308
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp307-Lfunc_begin9           ; >> Call Site 3 <<
	.uleb128 Lfunc_end9-Ltmp307             ;   Call between Ltmp307 and Lfunc_end9
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end9:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN3bts11json_escapeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE ; -- Begin function _ZN3bts11json_escapeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE
	.weak_def_can_be_hidden	__ZN3bts11json_escapeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE
	.p2align	2
__ZN3bts11json_escapeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE: ; @_ZN3bts11json_escapeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	sub	sp, sp, #384
	stp	x28, x27, [sp, #288]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #304]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #320]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #336]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #352]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #368]            ; 16-byte Folded Spill
	add	x29, sp, #368
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x22, x1
	mov	x23, x0
	mov	x21, x8
	add	x8, sp, #8
	add	x26, x8, #112
Lloh191:
	adrp	x25, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh192:
	ldr	x25, [x25, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x19, x25, #64
	add	x20, x8, #8
Lloh193:
	adrp	x27, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh194:
	ldr	x27, [x27, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldp	x9, x10, [x27, #8]
	str	x19, [sp, #120]
	str	x9, [sp, #8]
	ldur	x9, [x9, #-24]
	str	x10, [x8, x9]
	ldr	x9, [sp, #8]
	ldur	x9, [x9, #-24]
	add	x24, x8, x9
Ltmp309:
	mov	x0, x24
	mov	x1, x20
	bl	__ZNSt3__18ios_base4initEPv
Ltmp310:
; %bb.1:
	str	xzr, [x24, #136]
	mov	w8, #-1                         ; =0xffffffff
	str	w8, [x24, #144]
	add	x8, x25, #24
	str	x8, [sp, #8]
	str	x19, [sp, #120]
Ltmp312:
	mov	x0, x20
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
Ltmp313:
; %bb.2:
Lloh195:
	adrp	x19, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh196:
	ldr	x19, [x19, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x19, #16
	str	x8, [sp, #16]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [sp, #80]
	mov	w8, #16                         ; =0x10
	str	w8, [sp, #112]
	cbz	x22, LBB17_17
; %bb.3:
	str	x26, [sp]                       ; 8-byte Folded Spill
Lloh197:
	adrp	x24, l_.str.52@PAGE
Lloh198:
	add	x24, x24, l_.str.52@PAGEOFF
Lloh199:
	adrp	x27, l_.str.51@PAGE
Lloh200:
	add	x27, x27, l_.str.51@PAGEOFF
Lloh201:
	adrp	x28, lJTI17_0@PAGE
Lloh202:
	add	x28, x28, lJTI17_0@PAGEOFF
Lloh203:
	adrp	x19, l_.str.55@PAGE
Lloh204:
	add	x19, x19, l_.str.55@PAGEOFF
Lloh205:
	adrp	x26, l_.str.53@PAGE
Lloh206:
	add	x26, x26, l_.str.53@PAGEOFF
Lloh207:
	adrp	x25, l_.str.54@PAGE
Lloh208:
	add	x25, x25, l_.str.54@PAGEOFF
	b	LBB17_7
LBB17_4:                                ;   in Loop: Header=BB17_7 Depth=1
	mov	x1, x26
LBB17_5:                                ;   in Loop: Header=BB17_7 Depth=1
Ltmp315:
	add	x0, sp, #8
	mov	w2, #2                          ; =0x2
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp316:
LBB17_6:                                ;   in Loop: Header=BB17_7 Depth=1
	add	x23, x23, #1
	subs	x22, x22, #1
	b.eq	LBB17_14
LBB17_7:                                ; =>This Inner Loop Header: Depth=1
	ldrsb	w8, [x23]
	sub	w9, w8, #9
	cmp	w9, #25
	b.hi	LBB17_10
; %bb.8:                                ;   in Loop: Header=BB17_7 Depth=1
	adr	x10, LBB17_4
	ldrb	w11, [x28, x9]
	add	x10, x10, x11, lsl #2
	mov	x1, x24
	br	x10
LBB17_9:                                ;   in Loop: Header=BB17_7 Depth=1
	mov	x1, x19
	b	LBB17_5
LBB17_10:                               ;   in Loop: Header=BB17_7 Depth=1
	cmp	w8, #92
	b.ne	LBB17_12
; %bb.11:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x1, x27
	b	LBB17_5
LBB17_12:                               ;   in Loop: Header=BB17_7 Depth=1
	and	w8, w8, #0xff
	sturb	w8, [x29, #-89]
Ltmp317:
	add	x0, sp, #8
	sub	x1, x29, #89
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp318:
	b	LBB17_6
LBB17_13:                               ;   in Loop: Header=BB17_7 Depth=1
	mov	x1, x25
	b	LBB17_5
LBB17_14:
	ldr	w8, [sp, #112]
	ldr	x26, [sp]                       ; 8-byte Folded Reload
Lloh209:
	adrp	x27, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh210:
	ldr	x27, [x27, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
Lloh211:
	adrp	x19, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh212:
	ldr	x19, [x19, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	tbnz	w8, #4, LBB17_17
; %bb.15:
	tbnz	w8, #3, LBB17_29
; %bb.16:
	mov	x22, #0                         ; =0x0
	strb	wzr, [x21, #23]
	b	LBB17_26
LBB17_17:
	ldr	x8, [sp, #104]
	ldr	x9, [sp, #64]
	cmp	x8, x9
	b.hs	LBB17_19
; %bb.18:
	str	x9, [sp, #104]
	mov	x8, x9
LBB17_19:
	add	x9, sp, #8
	add	x9, x9, #48
LBB17_20:
	ldr	x23, [x9]
	mov	x9, #9223372036854775800        ; =0x7ffffffffffffff8
	sub	x22, x8, x23
	cmp	x22, x9
	b.hs	LBB17_30
; %bb.21:
	cmp	x22, #23
	b.hs	LBB17_23
; %bb.22:
	strb	w22, [x21, #23]
	cbnz	x22, LBB17_25
	b	LBB17_26
LBB17_23:
	and	x8, x22, #0xfffffffffffffff8
	add	x8, x8, #8
	orr	x9, x22, #0x7
	cmp	x9, #23
	csel	x8, x8, x9, eq
	add	x24, x8, #1
Ltmp320:
	mov	x0, x24
	bl	__Znwm
Ltmp321:
; %bb.24:
	orr	x8, x24, #0x8000000000000000
	stp	x22, x8, [x21, #8]
	str	x0, [x21]
	mov	x21, x0
LBB17_25:
	mov	x0, x21
	mov	x1, x23
	mov	x2, x22
	bl	_memmove
LBB17_26:
	strb	wzr, [x21, x22]
	ldr	x8, [x27]
	str	x8, [sp, #8]
	ldr	x9, [x27, #24]
	ldur	x8, [x8, #-24]
	add	x10, sp, #8
	str	x9, [x10, x8]
	add	x8, x19, #16
	str	x8, [sp, #16]
	ldrsb	w8, [sp, #103]
	tbz	w8, #31, LBB17_28
; %bb.27:
	ldr	x0, [sp, #80]
	bl	__ZdlPv
LBB17_28:
	mov	x0, x20
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	add	x1, x27, #8
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	mov	x0, x26
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldp	x29, x30, [sp, #368]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #352]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #336]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #320]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #304]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #288]            ; 16-byte Folded Reload
	add	sp, sp, #384
	ret
LBB17_29:
	add	x8, sp, #8
	add	x9, x8, #24
	ldr	x8, [sp, #48]
	b	LBB17_20
LBB17_30:
Ltmp322:
	mov	x0, x21
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
Ltmp323:
; %bb.31:
	brk	#0x1
LBB17_32:
Ltmp314:
	mov	x20, x0
	add	x1, x27, #8
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	b	LBB17_34
LBB17_33:
Ltmp311:
	mov	x20, x0
LBB17_34:
	mov	x0, x26
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x20
	bl	__Unwind_Resume
LBB17_35:
Ltmp324:
	b	LBB17_37
LBB17_36:
Ltmp319:
LBB17_37:
	mov	x20, x0
	add	x0, sp, #8
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh193, Lloh194
	.loh AdrpLdrGot	Lloh191, Lloh192
	.loh AdrpLdrGot	Lloh195, Lloh196
	.loh AdrpAdd	Lloh207, Lloh208
	.loh AdrpAdd	Lloh205, Lloh206
	.loh AdrpAdd	Lloh203, Lloh204
	.loh AdrpAdd	Lloh201, Lloh202
	.loh AdrpAdd	Lloh199, Lloh200
	.loh AdrpAdd	Lloh197, Lloh198
	.loh AdrpLdrGot	Lloh211, Lloh212
	.loh AdrpLdrGot	Lloh209, Lloh210
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__const
lJTI17_0:
	.byte	(LBB17_9-LBB17_4)>>2
	.byte	(LBB17_4-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_13-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_12-LBB17_4)>>2
	.byte	(LBB17_5-LBB17_4)>>2
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table17:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Ltmp309-Lfunc_begin10          ; >> Call Site 1 <<
	.uleb128 Ltmp310-Ltmp309                ;   Call between Ltmp309 and Ltmp310
	.uleb128 Ltmp311-Lfunc_begin10          ;     jumps to Ltmp311
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp312-Lfunc_begin10          ; >> Call Site 2 <<
	.uleb128 Ltmp313-Ltmp312                ;   Call between Ltmp312 and Ltmp313
	.uleb128 Ltmp314-Lfunc_begin10          ;     jumps to Ltmp314
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp315-Lfunc_begin10          ; >> Call Site 3 <<
	.uleb128 Ltmp318-Ltmp315                ;   Call between Ltmp315 and Ltmp318
	.uleb128 Ltmp319-Lfunc_begin10          ;     jumps to Ltmp319
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp320-Lfunc_begin10          ; >> Call Site 4 <<
	.uleb128 Ltmp321-Ltmp320                ;   Call between Ltmp320 and Ltmp321
	.uleb128 Ltmp324-Lfunc_begin10          ;     jumps to Ltmp324
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp321-Lfunc_begin10          ; >> Call Site 5 <<
	.uleb128 Ltmp322-Ltmp321                ;   Call between Ltmp321 and Ltmp322
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp322-Lfunc_begin10          ; >> Call Site 6 <<
	.uleb128 Ltmp323-Ltmp322                ;   Call between Ltmp322 and Ltmp323
	.uleb128 Ltmp324-Lfunc_begin10          ;     jumps to Ltmp324
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp323-Lfunc_begin10          ; >> Call Site 7 <<
	.uleb128 Lfunc_end10-Ltmp323            ;   Call between Ltmp323 and Lfunc_end10
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end10:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ; -- Begin function _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	2
__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ; @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
; %bb.0:
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
	mov	x19, x0
Lloh213:
	adrp	x21, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh214:
	ldr	x21, [x21, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	ldr	x8, [x21]
	str	x8, [x0]
	ldr	x9, [x21, #24]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
Lloh215:
	adrp	x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
Lloh216:
	ldr	x8, [x8, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	mov	x20, x0
	str	x8, [x20, #8]!
	ldrsb	w8, [x20, #87]
	tbz	w8, #31, LBB18_2
; %bb.1:
	ldr	x0, [x19, #72]
	bl	__ZdlPv
LBB18_2:
	mov	x0, x20
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	add	x1, x21, #8
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #112
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh215, Lloh216
	.loh AdrpLdrGot	Lloh213, Lloh214
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
	.weak_def_can_be_hidden	__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh217:
	adrp	x0, l_.str.27@PAGE
Lloh218:
	add	x0, x0, l_.str.27@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.loh AdrpAdd	Lloh217, Lloh218
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x20, x2
	mov	x21, x1
	mov	x19, x0
	cmp	x2, #22
	b.hi	LBB20_3
; %bb.1:
	strb	w20, [x19, #23]
	mov	x22, x19
	cbz	x20, LBB20_5
; %bb.2:
	mov	x0, x19
	mov	x1, x21
	mov	x2, x20
	bl	_memmove
	mov	x22, x19
	b	LBB20_5
LBB20_3:
	mov	x8, #9                          ; =0x9
	movk	x8, #32768, lsl #48
	mov	x9, #30                         ; =0x1e
	movk	x9, #32768, lsl #48
	add	x8, x20, x8
	cmp	x8, x9
	b.ls	LBB20_6
; %bb.4:
	mov	w8, #44                         ; =0x2c
	cmp	x20, #44
	csel	x8, x20, x8, hi
	orr	x8, x8, #0x7
	add	x23, x8, #1
	mov	x0, x23
	bl	__Znwm
	mov	x22, x0
	mov	x1, x21
	mov	x2, x20
	bl	_memcpy
	orr	x8, x23, #0x8000000000000000
	stp	x20, x8, [x19, #8]
	str	x22, [x19]
LBB20_5:
	strb	wzr, [x22, x20]
	mov	x0, x19
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
LBB20_6:
	mov	x0, x19
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"--operations"

l_.str.2:                               ; @.str.2
	.asciz	"--repetitions"

l_.str.3:                               ; @.str.3
	.asciz	"free-list-no-coalescing"

l_.str.4:                               ; @.str.4
	.asciz	"free-list-with-coalescing"

l_.str.5:                               ; @.str.5
	.asciz	"{\"lab\":\"allocator\",\"seed\":"

l_.str.6:                               ; @.str.6
	.asciz	",\"operations\":"

l_.str.7:                               ; @.str.7
	.asciz	",\"alignment_bytes\":"

l_.str.8:                               ; @.str.8
	.asciz	",\"metadata_bytes_per_block\":"

l_.str.9:                               ; @.str.9
	.asciz	",\"intentional_failures\":{\"bump_cannot_reuse_free\":"

l_.str.10:                              ; @.str.10
	.asciz	"true"

l_.str.11:                              ; @.str.11
	.asciz	"false"

l_.str.12:                              ; @.str.12
	.asciz	",\"large_allocation_without_coalescing\":"

l_.str.13:                              ; @.str.13
	.asciz	",\"large_allocation_with_coalescing\":"

l_.str.14:                              ; @.str.14
	.asciz	"},\"fragmentation_probe\":{\"no_coalesce\":"

l_.str.15:                              ; @.str.15
	.asciz	",\"coalesced\":"

l_.str.16:                              ; @.str.16
	.asciz	"},\"mixed\":{\"no_coalesce\":{\"peak_active\":"

l_.str.17:                              ; @.str.17
	.asciz	",\"stats\":"

l_.str.18:                              ; @.str.18
	.asciz	"},\"coalesced\":{\"peak_active\":"

l_.str.19:                              ; @.str.19
	.asciz	"}},\"benchmark\":{\"no_coalesce\":"

l_.str.20:                              ; @.str.20
	.asciz	"}}\n"

l_.str.21:                              ; @.str.21
	.asciz	"invalid numeric value for "

l_.str.22:                              ; @.str.22
	.asciz	"basic_string"

l_.str.23:                              ; @.str.23
	.asciz	"fragmentation probe setup did not fit arena"

l_.str.24:                              ; @.str.24
	.asciz	"allocator arena is too small"

l_.str.25:                              ; @.str.25
	.asciz	"pointer does not belong to allocator arena"

l_.str.26:                              ; @.str.26
	.asciz	"double free detected by toy allocator"

l_.str.27:                              ; @.str.27
	.asciz	"vector"

l_.str.28:                              ; @.str.28
	.asciz	"{\"capacity_bytes\":"

l_.str.29:                              ; @.str.29
	.asciz	",\"live_requested_bytes\":"

l_.str.30:                              ; @.str.30
	.asciz	",\"live_reserved_bytes\":"

l_.str.31:                              ; @.str.31
	.asciz	",\"peak_live_reserved_bytes\":"

l_.str.32:                              ; @.str.32
	.asciz	",\"free_payload_bytes\":"

l_.str.33:                              ; @.str.33
	.asciz	",\"largest_free_block_bytes\":"

l_.str.34:                              ; @.str.34
	.asciz	",\"internal_fragmentation_bytes\":"

l_.str.35:                              ; @.str.35
	.asciz	",\"external_fragmentation_bytes\":"

l_.str.36:                              ; @.str.36
	.asciz	",\"block_count\":"

l_.str.37:                              ; @.str.37
	.asciz	",\"allocations\":"

l_.str.38:                              ; @.str.38
	.asciz	",\"frees\":"

l_.str.39:                              ; @.str.39
	.asciz	",\"reused_allocations\":"

l_.str.40:                              ; @.str.40
	.asciz	",\"failed_allocations\":"

l_.str.41:                              ; @.str.41
	.asciz	"{\"name\":\""

l_.str.42:                              ; @.str.42
	.asciz	"\",\"warmup\":"

l_.str.43:                              ; @.str.43
	.asciz	",\"repetitions\":"

l_.str.44:                              ; @.str.44
	.asciz	",\"mean_ms\":"

l_.str.45:                              ; @.str.45
	.asciz	",\"stddev_ms\":"

l_.str.46:                              ; @.str.46
	.asciz	",\"p50_ms\":"

l_.str.47:                              ; @.str.47
	.asciz	",\"p95_ms\":"

l_.str.48:                              ; @.str.48
	.asciz	",\"min_ms\":"

l_.str.49:                              ; @.str.49
	.asciz	",\"max_ms\":"

l_.str.50:                              ; @.str.50
	.asciz	"}"

l_.str.51:                              ; @.str.51
	.asciz	"\\\\"

l_.str.52:                              ; @.str.52
	.asciz	"\\\""

l_.str.53:                              ; @.str.53
	.asciz	"\\n"

l_.str.54:                              ; @.str.54
	.asciz	"\\r"

l_.str.55:                              ; @.str.55
	.asciz	"\\t"

l_.str.56:                              ; @.str.56
	.asciz	"benchmark repetitions must be greater than zero"

l_.str.57:                              ; @.str.57
	.asciz	"percentile requires at least one sample"

.subsections_via_symbols

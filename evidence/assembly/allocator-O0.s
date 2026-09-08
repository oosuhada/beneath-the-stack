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
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #1152
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	mov	x8, #4660                       ; =0x1234
	movk	x8, #24301, lsl #16
	str	x8, [sp, #272]                  ; 8-byte Folded Spill
	stur	wzr, [x29, #-20]
	stur	w0, [x29, #-24]
	stur	x1, [x29, #-32]
	ldur	w8, [x29, #-24]
	str	w8, [sp, #284]                  ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	str	x8, [sp, #288]                  ; 8-byte Folded Spill
	sub	x0, x29, #64
	str	x0, [sp, #296]                  ; 8-byte Folded Spill
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100ILi0EEEPKc
	ldr	w0, [sp, #284]                  ; 4-byte Folded Reload
	ldr	x1, [sp, #288]                  ; 8-byte Folded Reload
	ldr	x2, [sp, #296]                  ; 8-byte Folded Reload
Ltmp0:
	mov	x3, #10000                      ; =0x2710
	bl	__ZN3bts13size_argumentEiPPcRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEm
	str	x0, [sp, #304]                  ; 8-byte Folded Spill
Ltmp1:
	b	LBB0_1
LBB0_1:
	sub	x0, x29, #64
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	x8, [sp, #304]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-40]
	ldur	w8, [x29, #-24]
	str	w8, [sp, #244]                  ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	str	x8, [sp, #248]                  ; 8-byte Folded Spill
	sub	x0, x29, #112
	str	x0, [sp, #256]                  ; 8-byte Folded Spill
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100ILi0EEEPKc
	ldr	w0, [sp, #244]                  ; 4-byte Folded Reload
	ldr	x1, [sp, #248]                  ; 8-byte Folded Reload
	ldr	x2, [sp, #256]                  ; 8-byte Folded Reload
Ltmp3:
	mov	x3, #2                          ; =0x2
	bl	__ZN3bts13size_argumentEiPPcRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEm
	str	x0, [sp, #264]                  ; 8-byte Folded Spill
Ltmp4:
	b	LBB0_2
LBB0_2:
	sub	x0, x29, #112
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	x8, [sp, #264]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-88]
	ldur	w8, [x29, #-24]
	str	w8, [sp, #212]                  ; 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	str	x8, [sp, #216]                  ; 8-byte Folded Spill
	sub	x0, x29, #144
	str	x0, [sp, #224]                  ; 8-byte Folded Spill
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100ILi0EEEPKc
	ldr	w0, [sp, #212]                  ; 4-byte Folded Reload
	ldr	x1, [sp, #216]                  ; 8-byte Folded Reload
	ldr	x2, [sp, #224]                  ; 8-byte Folded Reload
Ltmp6:
	mov	x3, #8                          ; =0x8
	bl	__ZN3bts13size_argumentEiPPcRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEm
	str	x0, [sp, #232]                  ; 8-byte Folded Spill
Ltmp7:
	b	LBB0_3
LBB0_3:
	sub	x0, x29, #144
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	x9, [sp, #232]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #272]                  ; 8-byte Folded Reload
	stur	x9, [x29, #-120]
	stur	x8, [x29, #-152]
	sub	x0, x29, #256
	str	x0, [sp, #160]                  ; 8-byte Folded Spill
	bl	__ZN3bts14AllocatorStatsC1Ev
	add	x0, sp, #808
	str	x0, [sp, #168]                  ; 8-byte Folded Spill
	bl	__ZN3bts14AllocatorStatsC1Ev
	ldr	x1, [sp, #160]                  ; 8-byte Folded Reload
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #180]                  ; 4-byte Folded Spill
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #176]                  ; 4-byte Folded Spill
	and	w0, w8, #0x1
	bl	__ZN12_GLOBAL__N_119fragmentation_probeEbRN3bts14AllocatorStatsE
	ldr	x1, [sp, #168]                  ; 8-byte Folded Reload
	ldr	w8, [sp, #180]                  ; 4-byte Folded Reload
	and	w9, w0, w8
	strb	w9, [sp, #807]
	and	w0, w8, #0x1
	bl	__ZN12_GLOBAL__N_119fragmentation_probeEbRN3bts14AllocatorStatsE
	ldr	w8, [sp, #180]                  ; 4-byte Folded Reload
	and	w8, w0, w8
	strb	w8, [sp, #806]
	bl	__ZN12_GLOBAL__N_118bump_reuse_failureEv
	ldr	w9, [sp, #176]                  ; 4-byte Folded Reload
	ldr	w8, [sp, #180]                  ; 4-byte Folded Reload
	ldr	x2, [sp, #272]                  ; 8-byte Folded Reload
	and	w8, w0, w8
	strb	w8, [sp, #805]
	sub	x8, x29, #40
	str	x8, [sp, #192]                  ; 8-byte Folded Spill
	ldur	x1, [x29, #-40]
	add	x8, sp, #688
	and	w0, w9, #0x1
	bl	__ZN12_GLOBAL__N_114mixed_workloadEbmy
	ldr	w9, [sp, #180]                  ; 4-byte Folded Reload
	ldr	x2, [sp, #272]                  ; 8-byte Folded Reload
	ldur	x1, [x29, #-40]
	add	x8, sp, #576
	and	w0, w9, #0x1
	bl	__ZN12_GLOBAL__N_114mixed_workloadEbmy
	add	x0, sp, #568
	str	x0, [sp, #200]                  ; 8-byte Folded Spill
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__16atomicImEC1B8ne180100Em
	add	x0, sp, #456
	str	x0, [sp, #184]                  ; 8-byte Folded Spill
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100ILi0EEEPKc
	ldr	x0, [sp, #184]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #192]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #200]                  ; 8-byte Folded Reload
	ldur	x1, [x29, #-88]
	ldur	x2, [x29, #-120]
	add	x3, sp, #440
	str	x9, [sp, #440]
	str	x8, [sp, #448]
Ltmp9:
	add	x8, sp, #480
	bl	__ZN3bts9benchmarkIZ4mainE3$_0EENS_14BenchmarkStatsERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEmmOT_
Ltmp10:
	b	LBB0_4
LBB0_4:
	add	x0, sp, #456
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp12:
	add	x0, sp, #328
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100ILi0EEEPKc
Ltmp13:
	b	LBB0_5
LBB0_5:
	ldur	x1, [x29, #-88]
	ldur	x2, [x29, #-120]
	add	x3, sp, #312
	sub	x8, x29, #40
	str	x8, [sp, #312]
	add	x8, sp, #568
	str	x8, [sp, #320]
Ltmp15:
	add	x8, sp, #352
	add	x0, sp, #328
	bl	__ZN3bts9benchmarkIZ4mainE3$_1EENS_14BenchmarkStatsERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEmmOT_
Ltmp16:
	b	LBB0_6
LBB0_6:
	add	x0, sp, #328
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp18:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #152]                  ; 8-byte Folded Spill
Ltmp19:
	b	LBB0_7
LBB0_7:
Ltmp20:
	ldr	x1, [sp, #272]                  ; 8-byte Folded Reload
	ldr	x0, [sp, #152]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy
	str	x0, [sp, #144]                  ; 8-byte Folded Spill
Ltmp21:
	b	LBB0_8
LBB0_8:
Ltmp22:
	ldr	x0, [sp, #144]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.6@PAGE
	add	x1, x1, l_.str.6@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #136]                  ; 8-byte Folded Spill
Ltmp23:
	b	LBB0_9
LBB0_9:
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	ldur	x1, [x29, #-40]
Ltmp24:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	str	x0, [sp, #128]                  ; 8-byte Folded Spill
Ltmp25:
	b	LBB0_10
LBB0_10:
Ltmp26:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
Ltmp27:
	b	LBB0_11
LBB0_11:
Ltmp28:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	mov	x1, #8                          ; =0x8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
Ltmp29:
	b	LBB0_12
LBB0_12:
Ltmp30:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
Ltmp31:
	b	LBB0_13
LBB0_13:
Ltmp32:
	bl	__ZN3bts17FreeListAllocator14metadata_bytesEv
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
Ltmp33:
	b	LBB0_14
LBB0_14:
Ltmp34:
	ldr	x1, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
Ltmp35:
	b	LBB0_15
LBB0_15:
Ltmp36:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
Ltmp37:
	b	LBB0_16
LBB0_16:
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	ldrb	w10, [sp, #805]
	adrp	x9, l_.str.11@PAGE
	add	x9, x9, l_.str.11@PAGEOFF
	adrp	x8, l_.str.10@PAGE
	add	x8, x8, l_.str.10@PAGEOFF
	and	w10, w10, #0x1
	ands	w10, w10, #0x1
	csel	x1, x8, x9, ne
Ltmp38:
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
Ltmp39:
	b	LBB0_17
LBB0_17:
Ltmp40:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
Ltmp41:
	b	LBB0_18
LBB0_18:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	ldrb	w10, [sp, #807]
	adrp	x9, l_.str.11@PAGE
	add	x9, x9, l_.str.11@PAGEOFF
	adrp	x8, l_.str.10@PAGE
	add	x8, x8, l_.str.10@PAGEOFF
	and	w10, w10, #0x1
	ands	w10, w10, #0x1
	csel	x1, x8, x9, ne
Ltmp42:
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
Ltmp43:
	b	LBB0_19
LBB0_19:
Ltmp44:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
Ltmp45:
	b	LBB0_20
LBB0_20:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldrb	w10, [sp, #806]
	adrp	x9, l_.str.11@PAGE
	add	x9, x9, l_.str.11@PAGEOFF
	adrp	x8, l_.str.10@PAGE
	add	x8, x8, l_.str.10@PAGEOFF
	and	w10, w10, #0x1
	ands	w10, w10, #0x1
	csel	x1, x8, x9, ne
Ltmp46:
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp47:
	b	LBB0_21
LBB0_21:
Ltmp48:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp49:
	b	LBB0_22
LBB0_22:
Ltmp50:
	sub	x0, x29, #256
	bl	__ZN12_GLOBAL__N_121write_allocator_statsERKN3bts14AllocatorStatsE
Ltmp51:
	b	LBB0_23
LBB0_23:
Ltmp52:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.15@PAGE
	add	x1, x1, l_.str.15@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp53:
	b	LBB0_24
LBB0_24:
Ltmp54:
	add	x0, sp, #808
	bl	__ZN12_GLOBAL__N_121write_allocator_statsERKN3bts14AllocatorStatsE
Ltmp55:
	b	LBB0_25
LBB0_25:
Ltmp56:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.16@PAGE
	add	x1, x1, l_.str.16@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp57:
	b	LBB0_26
LBB0_26:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #792]
Ltmp58:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp59:
	b	LBB0_27
LBB0_27:
Ltmp60:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.17@PAGE
	add	x1, x1, l_.str.17@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp61:
	b	LBB0_28
LBB0_28:
Ltmp62:
	add	x0, sp, #688
	bl	__ZN12_GLOBAL__N_121write_allocator_statsERKN3bts14AllocatorStatsE
Ltmp63:
	b	LBB0_29
LBB0_29:
Ltmp64:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp65:
	b	LBB0_30
LBB0_30:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #680]
Ltmp66:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp67:
	b	LBB0_31
LBB0_31:
Ltmp68:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, l_.str.17@PAGE
	add	x1, x1, l_.str.17@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp69:
	b	LBB0_32
LBB0_32:
Ltmp70:
	add	x0, sp, #576
	bl	__ZN12_GLOBAL__N_121write_allocator_statsERKN3bts14AllocatorStatsE
Ltmp71:
	b	LBB0_33
LBB0_33:
Ltmp72:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.19@PAGE
	add	x1, x1, l_.str.19@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp73:
	b	LBB0_34
LBB0_34:
Ltmp74:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #480
	bl	__ZN3bts16write_stats_jsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_14BenchmarkStatsE
Ltmp75:
	b	LBB0_35
LBB0_35:
Ltmp76:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.15@PAGE
	add	x1, x1, l_.str.15@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp77:
	b	LBB0_36
LBB0_36:
Ltmp78:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	add	x1, sp, #352
	bl	__ZN3bts16write_stats_jsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_14BenchmarkStatsE
Ltmp79:
	b	LBB0_37
LBB0_37:
Ltmp80:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.20@PAGE
	add	x1, x1, l_.str.20@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp81:
	b	LBB0_38
LBB0_38:
	ldrb	w8, [sp, #805]
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbz	w8, #0, LBB0_41
	b	LBB0_39
LBB0_39:
	ldrb	w8, [sp, #807]
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB0_41
	b	LBB0_40
LBB0_40:
	ldrb	w8, [sp, #806]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB0_41
LBB0_41:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	and	w8, w8, #0x1
	ands	w8, w8, #0x1
	cset	w8, eq
	stur	w8, [x29, #-20]
	add	x0, sp, #352
	bl	__ZN3bts14BenchmarkStatsD1Ev
	add	x0, sp, #480
	bl	__ZN3bts14BenchmarkStatsD1Ev
	ldur	w0, [x29, #-20]
	add	sp, sp, #1152
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB0_42:
Ltmp2:
	stur	x0, [x29, #-72]
	mov	x8, x1
	stur	w8, [x29, #-76]
	sub	x0, x29, #64
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_50
LBB0_43:
Ltmp5:
	stur	x0, [x29, #-72]
	mov	x8, x1
	stur	w8, [x29, #-76]
	sub	x0, x29, #112
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_50
LBB0_44:
Ltmp8:
	stur	x0, [x29, #-72]
	mov	x8, x1
	stur	w8, [x29, #-76]
	sub	x0, x29, #144
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_50
LBB0_45:
Ltmp11:
	stur	x0, [x29, #-72]
	mov	x8, x1
	stur	w8, [x29, #-76]
	add	x0, sp, #456
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_50
LBB0_46:
Ltmp14:
	stur	x0, [x29, #-72]
	mov	x8, x1
	stur	w8, [x29, #-76]
	b	LBB0_49
LBB0_47:
Ltmp17:
	stur	x0, [x29, #-72]
	mov	x8, x1
	stur	w8, [x29, #-76]
	add	x0, sp, #328
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB0_49
LBB0_48:
Ltmp82:
	stur	x0, [x29, #-72]
	mov	x8, x1
	stur	w8, [x29, #-76]
	add	x0, sp, #352
	bl	__ZN3bts14BenchmarkStatsD1Ev
	b	LBB0_49
LBB0_49:
	add	x0, sp, #480
	bl	__ZN3bts14BenchmarkStatsD1Ev
	b	LBB0_50
LBB0_50:
	ldur	x0, [x29, #-72]
	bl	__Unwind_Resume
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
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp1-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp3-Ltmp1                    ;   Call between Ltmp1 and Ltmp3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ;     jumps to Ltmp5
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0             ; >> Call Site 5 <<
	.uleb128 Ltmp6-Ltmp4                    ;   Call between Ltmp4 and Ltmp6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 6 <<
	.uleb128 Ltmp7-Ltmp6                    ;   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin0             ;     jumps to Ltmp8
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp7-Lfunc_begin0             ; >> Call Site 7 <<
	.uleb128 Ltmp9-Ltmp7                    ;   Call between Ltmp7 and Ltmp9
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin0             ; >> Call Site 8 <<
	.uleb128 Ltmp10-Ltmp9                   ;   Call between Ltmp9 and Ltmp10
	.uleb128 Ltmp11-Lfunc_begin0            ;     jumps to Ltmp11
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp13-Ltmp12                  ;   Call between Ltmp12 and Ltmp13
	.uleb128 Ltmp14-Lfunc_begin0            ;     jumps to Ltmp14
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp15-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp16-Ltmp15                  ;   Call between Ltmp15 and Ltmp16
	.uleb128 Ltmp17-Lfunc_begin0            ;     jumps to Ltmp17
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin0            ; >> Call Site 11 <<
	.uleb128 Ltmp81-Ltmp18                  ;   Call between Ltmp18 and Ltmp81
	.uleb128 Ltmp82-Lfunc_begin0            ;     jumps to Ltmp82
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp81-Lfunc_begin0            ; >> Call Site 12 <<
	.uleb128 Lfunc_end0-Ltmp81              ;   Call between Ltmp81 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN3bts13size_argumentEiPPcRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEm ; -- Begin function _ZN3bts13size_argumentEiPPcRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEm
	.weak_definition	__ZN3bts13size_argumentEiPPcRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEm
	.p2align	2
__ZN3bts13size_argumentEiPPcRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEm: ; @_ZN3bts13size_argumentEiPPcRKNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEm
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-12]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	mov	w8, #1                          ; =0x1
	stur	w8, [x29, #-44]
	b	LBB1_1
LBB1_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB1_20
	b	LBB1_2
LBB1_2:                                 ;   in Loop: Header=BB1_1 Depth=1
	ldur	x0, [x29, #-32]
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-44]
	ldr	x1, [x8, x9, lsl #3]
	bl	__ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_
	tbz	w0, #0, LBB1_18
	b	LBB1_3
LBB1_3:
	ldur	x8, [x29, #-24]
	ldur	w9, [x29, #-44]
	add	w9, w9, #1
	ldr	x1, [x8, w9, sxtw #3]
Ltmp83:
	add	x0, sp, #72
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100ILi0EEEPKc
Ltmp84:
	b	LBB1_4
LBB1_4:
Ltmp86:
	add	x0, sp, #72
	mov	x1, #0                          ; =0x0
	mov	w2, #10                         ; =0xa
	bl	__ZNSt3__16stoullERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp87:
	b	LBB1_5
LBB1_5:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB1_21
LBB1_6:
Ltmp85:
	str	x0, [sp, #64]
	mov	x8, x1
	str	w8, [sp, #60]
	b	LBB1_8
LBB1_7:
Ltmp88:
	str	x0, [sp, #64]
	mov	x8, x1
	str	w8, [sp, #60]
	add	x0, sp, #72
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB1_8
LBB1_8:
	ldr	w8, [sp, #60]
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB1_22
	b	LBB1_9
LBB1_9:
	ldr	x0, [sp, #64]
	bl	___cxa_begin_catch
	str	x0, [sp, #48]
	mov	w8, #1                          ; =0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #23]
	mov	x0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x1, [x29, #-32]
Ltmp89:
	add	x8, sp, #24
	adrp	x0, l_.str.21@PAGE
	add	x0, x0, l_.str.21@PAGEOFF
	bl	__ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_
Ltmp90:
	b	LBB1_10
LBB1_10:
Ltmp92:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	x1, sp, #24
	bl	__ZNSt16invalid_argumentC1B8ne180100ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
Ltmp93:
	b	LBB1_11
LBB1_11:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w8, #0                          ; =0x0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #23]
Ltmp94:
	adrp	x1, __ZTISt16invalid_argument@GOTPAGE
	ldr	x1, [x1, __ZTISt16invalid_argument@GOTPAGEOFF]
	adrp	x2, __ZNSt16invalid_argumentD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt16invalid_argumentD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
Ltmp95:
	b	LBB1_24
LBB1_12:
Ltmp91:
	str	x0, [sp, #64]
	mov	x8, x1
	str	w8, [sp, #60]
	b	LBB1_14
LBB1_13:
Ltmp96:
	str	x0, [sp, #64]
	mov	x8, x1
	str	w8, [sp, #60]
	add	x0, sp, #24
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB1_14
LBB1_14:
	ldrb	w8, [sp, #23]
	tbz	w8, #0, LBB1_16
	b	LBB1_15
LBB1_15:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	___cxa_free_exception
	b	LBB1_16
LBB1_16:
Ltmp97:
	bl	___cxa_end_catch
Ltmp98:
	b	LBB1_17
LBB1_17:
	b	LBB1_22
LBB1_18:                                ;   in Loop: Header=BB1_1 Depth=1
	b	LBB1_19
LBB1_19:                                ;   in Loop: Header=BB1_1 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	LBB1_1
LBB1_20:
	ldur	x8, [x29, #-40]
	stur	x8, [x29, #-8]
	b	LBB1_21
LBB1_21:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB1_22:
	ldr	x0, [sp, #64]
	bl	__Unwind_Resume
LBB1_23:
Ltmp99:
	bl	___clang_call_terminate
LBB1_24:
	brk	#0x1
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
	.uleb128 Ltmp83-Lfunc_begin1            ; >> Call Site 1 <<
	.uleb128 Ltmp84-Ltmp83                  ;   Call between Ltmp83 and Ltmp84
	.uleb128 Ltmp85-Lfunc_begin1            ;     jumps to Ltmp85
	.byte	7                               ;   On action: 4
	.uleb128 Ltmp86-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp87-Ltmp86                  ;   Call between Ltmp86 and Ltmp87
	.uleb128 Ltmp88-Lfunc_begin1            ;     jumps to Ltmp88
	.byte	5                               ;   On action: 3
	.uleb128 Ltmp87-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Ltmp89-Ltmp87                  ;   Call between Ltmp87 and Ltmp89
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp89-Lfunc_begin1            ; >> Call Site 4 <<
	.uleb128 Ltmp90-Ltmp89                  ;   Call between Ltmp89 and Ltmp90
	.uleb128 Ltmp91-Lfunc_begin1            ;     jumps to Ltmp91
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp92-Lfunc_begin1            ; >> Call Site 5 <<
	.uleb128 Ltmp95-Ltmp92                  ;   Call between Ltmp92 and Ltmp95
	.uleb128 Ltmp96-Lfunc_begin1            ;     jumps to Ltmp96
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp95-Lfunc_begin1            ; >> Call Site 6 <<
	.uleb128 Ltmp97-Ltmp95                  ;   Call between Ltmp95 and Ltmp97
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp97-Lfunc_begin1            ; >> Call Site 7 <<
	.uleb128 Ltmp98-Ltmp97                  ;   Call between Ltmp97 and Ltmp98
	.uleb128 Ltmp99-Lfunc_begin1            ;     jumps to Ltmp99
	.byte	9                               ;   On action: 5
	.uleb128 Ltmp98-Lfunc_begin1            ; >> Call Site 8 <<
	.uleb128 Lfunc_end1-Ltmp98              ;   Call between Ltmp98 and Lfunc_end1
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
	.byte	1                               ; >> Action Record 4 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.byte	2                               ; >> Action Record 5 <<
                                        ;   Catch TypeInfo 2
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 2
Ltmp100:                                ; TypeInfo 1
	.long	__ZTISt9exception@GOT-Ltmp100
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100ILi0EEEPKc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100ILi0EEEPKc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100ILi0EEEPKc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100ILi0EEEPKc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100ILi0EEEPKc
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
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts14AllocatorStatsC1Ev    ; -- Begin function _ZN3bts14AllocatorStatsC1Ev
	.weak_def_can_be_hidden	__ZN3bts14AllocatorStatsC1Ev
	.p2align	2
__ZN3bts14AllocatorStatsC1Ev:           ; @_ZN3bts14AllocatorStatsC1Ev
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
	bl	__ZN3bts14AllocatorStatsC2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZN12_GLOBAL__N_119fragmentation_probeEbRN3bts14AllocatorStatsE
__ZN12_GLOBAL__N_119fragmentation_probeEbRN3bts14AllocatorStatsE: ; @_ZN12_GLOBAL__N_119fragmentation_probeEbRN3bts14AllocatorStatsE
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #384
	stp	x28, x27, [sp, #352]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #368]            ; 16-byte Folded Spill
	add	x29, sp, #368
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	sub	x8, x29, #160
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	mov	w9, #1                          ; =0x1
	and	w9, w0, w9
	sturb	w9, [x29, #-17]
	str	x1, [x8, #128]
	ldurb	w8, [x29, #-17]
	sub	x0, x29, #128
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	mov	x1, #1280                       ; =0x500
	and	w2, w8, #0x1
	bl	__ZN3bts17FreeListAllocatorC1Emb
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
Ltmp101:
	mov	x1, #240                        ; =0xf0
	bl	__ZN3bts17FreeListAllocator8allocateEm
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
Ltmp102:
	b	LBB4_1
LBB4_1:
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	str	x8, [x9, #24]
Ltmp103:
	sub	x0, x29, #128
	mov	x1, #240                        ; =0xf0
	bl	__ZN3bts17FreeListAllocator8allocateEm
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp104:
	b	LBB4_2
LBB4_2:
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	str	x8, [x9]
Ltmp105:
	sub	x0, x29, #128
	mov	x1, #240                        ; =0xf0
	bl	__ZN3bts17FreeListAllocator8allocateEm
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp106:
	b	LBB4_3
LBB4_3:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-168]
Ltmp107:
	sub	x0, x29, #128
	mov	x1, #240                        ; =0xf0
	bl	__ZN3bts17FreeListAllocator8allocateEm
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp108:
	b	LBB4_4
LBB4_4:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	stur	x9, [x29, #-176]
	ldr	x8, [x8, #24]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB4_8
	b	LBB4_5
LBB4_5:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB4_8
	b	LBB4_6
LBB4_6:
	ldur	x8, [x29, #-168]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB4_8
	b	LBB4_7
LBB4_7:
	ldur	x8, [x29, #-176]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB4_12
	b	LBB4_8
LBB4_8:
	mov	x0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp123:
	adrp	x1, l_.str.22@PAGE
	add	x1, x1, l_.str.22@PAGEOFF
	bl	__ZNSt13runtime_errorC1EPKc
Ltmp124:
	b	LBB4_9
LBB4_9:
Ltmp126:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, __ZTISt13runtime_error@GOTPAGE
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
Ltmp127:
	b	LBB4_24
LBB4_10:
Ltmp128:
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	str	x0, [x9, #16]
	mov	x8, x1
	str	w8, [x9, #12]
	b	LBB4_22
LBB4_11:
Ltmp125:
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x9, #16]
	mov	x8, x1
	str	w8, [x9, #12]
	bl	___cxa_free_exception
	b	LBB4_22
LBB4_12:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x1, [x8]
Ltmp109:
	sub	x0, x29, #128
	bl	__ZN3bts17FreeListAllocator10deallocateEPv
Ltmp110:
	b	LBB4_13
LBB4_13:
	ldur	x1, [x29, #-168]
Ltmp111:
	sub	x0, x29, #128
	bl	__ZN3bts17FreeListAllocator10deallocateEPv
Ltmp112:
	b	LBB4_14
LBB4_14:
Ltmp113:
	add	x8, sp, #88
	sub	x0, x29, #128
	bl	__ZNK3bts17FreeListAllocator5statsEv
Ltmp114:
	b	LBB4_15
LBB4_15:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x0, [x8, #128]
	add	x1, sp, #88
	mov	x2, #104                        ; =0x68
	bl	_memcpy
Ltmp115:
	sub	x0, x29, #128
	mov	x1, #400                        ; =0x190
	bl	__ZN3bts17FreeListAllocator8allocateEm
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp116:
	b	LBB4_16
LBB4_16:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #80]
	ldr	x8, [sp, #80]
	subs	x8, x8, #0
	cset	w8, ne
	mov	w9, #1                          ; =0x1
	and	w8, w8, w9
	strb	w8, [sp, #79]
	ldr	x8, [sp, #80]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB4_19
	b	LBB4_17
LBB4_17:
	ldr	x1, [sp, #80]
Ltmp117:
	sub	x0, x29, #128
	bl	__ZN3bts17FreeListAllocator10deallocateEPv
Ltmp118:
	b	LBB4_18
LBB4_18:
	b	LBB4_19
LBB4_19:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #24]
Ltmp119:
	sub	x0, x29, #128
	bl	__ZN3bts17FreeListAllocator10deallocateEPv
Ltmp120:
	b	LBB4_20
LBB4_20:
	ldur	x1, [x29, #-176]
Ltmp121:
	sub	x0, x29, #128
	bl	__ZN3bts17FreeListAllocator10deallocateEPv
Ltmp122:
	b	LBB4_21
LBB4_21:
	ldrb	w8, [sp, #79]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	sub	x0, x29, #128
	bl	__ZN3bts17FreeListAllocatorD1Ev
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #368]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #352]            ; 16-byte Folded Reload
	add	sp, sp, #384
	ret
LBB4_22:
	sub	x0, x29, #128
	bl	__ZN3bts17FreeListAllocatorD1Ev
	b	LBB4_23
LBB4_23:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x0, [x8, #16]
	bl	__Unwind_Resume
LBB4_24:
	brk	#0x1
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table4:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp101-Lfunc_begin2           ;   Call between Lfunc_begin2 and Ltmp101
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp101-Lfunc_begin2           ; >> Call Site 2 <<
	.uleb128 Ltmp108-Ltmp101                ;   Call between Ltmp101 and Ltmp108
	.uleb128 Ltmp128-Lfunc_begin2           ;     jumps to Ltmp128
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp108-Lfunc_begin2           ; >> Call Site 3 <<
	.uleb128 Ltmp123-Ltmp108                ;   Call between Ltmp108 and Ltmp123
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp123-Lfunc_begin2           ; >> Call Site 4 <<
	.uleb128 Ltmp124-Ltmp123                ;   Call between Ltmp123 and Ltmp124
	.uleb128 Ltmp125-Lfunc_begin2           ;     jumps to Ltmp125
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp126-Lfunc_begin2           ; >> Call Site 5 <<
	.uleb128 Ltmp127-Ltmp126                ;   Call between Ltmp126 and Ltmp127
	.uleb128 Ltmp128-Lfunc_begin2           ;     jumps to Ltmp128
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp127-Lfunc_begin2           ; >> Call Site 6 <<
	.uleb128 Ltmp109-Ltmp127                ;   Call between Ltmp127 and Ltmp109
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp109-Lfunc_begin2           ; >> Call Site 7 <<
	.uleb128 Ltmp114-Ltmp109                ;   Call between Ltmp109 and Ltmp114
	.uleb128 Ltmp128-Lfunc_begin2           ;     jumps to Ltmp128
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp114-Lfunc_begin2           ; >> Call Site 8 <<
	.uleb128 Ltmp115-Ltmp114                ;   Call between Ltmp114 and Ltmp115
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp115-Lfunc_begin2           ; >> Call Site 9 <<
	.uleb128 Ltmp122-Ltmp115                ;   Call between Ltmp115 and Ltmp122
	.uleb128 Ltmp128-Lfunc_begin2           ;     jumps to Ltmp128
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp122-Lfunc_begin2           ; >> Call Site 10 <<
	.uleb128 Lfunc_end2-Ltmp122             ;   Call between Ltmp122 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZN12_GLOBAL__N_118bump_reuse_failureEv
__ZN12_GLOBAL__N_118bump_reuse_failureEv: ; @_ZN12_GLOBAL__N_118bump_reuse_failureEv
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	add	x29, sp, #176
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x0, x29, #64
	mov	x1, #1024                       ; =0x400
	bl	__ZN3bts13BumpAllocatorC1Em
	add	x0, sp, #88
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC1B8ne180100Ev
	str	wzr, [sp, #84]
	b	LBB5_1
LBB5_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #84]
	subs	w8, w8, #6
	cset	w8, ge
	tbnz	w8, #0, LBB5_7
	b	LBB5_2
LBB5_2:                                 ;   in Loop: Header=BB5_1 Depth=1
Ltmp133:
	sub	x0, x29, #64
	mov	x1, #128                        ; =0x80
	bl	__ZN3bts13BumpAllocator8allocateEm
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp134:
	b	LBB5_3
LBB5_3:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, sp, #72
	str	x8, [sp, #72]
Ltmp135:
	add	x0, sp, #88
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne180100EOS1_
Ltmp136:
	b	LBB5_4
LBB5_4:                                 ;   in Loop: Header=BB5_1 Depth=1
	b	LBB5_5
LBB5_5:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	w8, [sp, #84]
	add	w8, w8, #1
	str	w8, [sp, #84]
	b	LBB5_1
LBB5_6:
Ltmp137:
	str	x0, [sp, #64]
	mov	x8, x1
	str	w8, [sp, #60]
	add	x0, sp, #88
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEED1B8ne180100Ev
	sub	x0, x29, #64
	bl	__ZN3bts13BumpAllocatorD1Ev
	b	LBB5_14
LBB5_7:
	add	x8, sp, #88
	str	x8, [sp, #48]
	ldr	x0, [sp, #48]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE5beginB8ne180100Ev
	str	x0, [sp, #40]
	ldr	x0, [sp, #48]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE3endB8ne180100Ev
	str	x0, [sp, #32]
	b	LBB5_8
LBB5_8:                                 ; =>This Inner Loop Header: Depth=1
	add	x0, sp, #40
	add	x1, sp, #32
	bl	__ZNSt3__1neB8ne180100IPPvEEbRKNS_11__wrap_iterIT_EES7_
	tbz	w0, #0, LBB5_12
	b	LBB5_9
LBB5_9:                                 ;   in Loop: Header=BB5_8 Depth=1
	add	x0, sp, #40
	bl	__ZNKSt3__111__wrap_iterIPPvEdeB8ne180100Ev
	ldr	x8, [x0]
	str	x8, [sp, #24]
	ldr	x1, [sp, #24]
Ltmp131:
	sub	x0, x29, #64
	bl	__ZN3bts13BumpAllocator10deallocateEPv
Ltmp132:
	b	LBB5_10
LBB5_10:                                ;   in Loop: Header=BB5_8 Depth=1
	b	LBB5_11
LBB5_11:                                ;   in Loop: Header=BB5_8 Depth=1
	add	x0, sp, #40
	bl	__ZNSt3__111__wrap_iterIPPvEppB8ne180100Ev
	b	LBB5_8
LBB5_12:
Ltmp129:
	sub	x0, x29, #64
	mov	x1, #400                        ; =0x190
	bl	__ZN3bts13BumpAllocator8allocateEm
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp130:
	b	LBB5_13
LBB5_13:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, #0
	cset	w8, eq
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	add	x0, sp, #88
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEED1B8ne180100Ev
	sub	x0, x29, #64
	bl	__ZN3bts13BumpAllocatorD1Ev
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	add	sp, sp, #192
	ret
LBB5_14:
	ldr	x0, [sp, #64]
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table5:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp133-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp133
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp133-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp130-Ltmp133                ;   Call between Ltmp133 and Ltmp130
	.uleb128 Ltmp137-Lfunc_begin3           ;     jumps to Ltmp137
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp130-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp130             ;   Call between Ltmp130 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZN12_GLOBAL__N_114mixed_workloadEbmy
__ZN12_GLOBAL__N_114mixed_workloadEbmy: ; @_ZN12_GLOBAL__N_114mixed_workloadEbmy
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #368
	stp	x28, x27, [sp, #336]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #352]            ; 16-byte Folded Spill
	add	x29, sp, #352
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	mov	w8, #1                          ; =0x1
	and	w8, w0, w8
	sturb	w8, [x29, #-17]
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-40]
	ldurb	w8, [x29, #-17]
	sub	x0, x29, #136
	mov	x1, #1048576                    ; =0x100000
	and	w2, w8, #0x1
	bl	__ZN3bts17FreeListAllocatorC1Emb
	sub	x0, x29, #160
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC1B8ne180100Ev
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	mov	x9, #2                          ; =0x2
	udiv	x8, x8, x9
	add	x1, x8, #1
Ltmp138:
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7reserveEm
Ltmp139:
	b	LBB6_1
LBB6_1:
	str	xzr, [sp, #168]
	ldur	x8, [x29, #-40]
	str	x8, [sp, #160]
	str	xzr, [sp, #152]
	b	LBB6_2
LBB6_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #152]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB6_20
	b	LBB6_3
LBB6_3:                                 ;   in Loop: Header=BB6_2 Depth=1
Ltmp144:
	add	x0, sp, #160
	bl	__ZN12_GLOBAL__N_18xorshiftERy
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
Ltmp145:
	b	LBB6_4
LBB6_4:                                 ;   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	str	x8, [sp, #144]
	sub	x0, x29, #160
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE5emptyB8ne180100Ev
	tbnz	w0, #0, LBB6_11
	b	LBB6_5
LBB6_5:                                 ;   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #144]
	mov	x10, #100                       ; =0x64
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	subs	x8, x8, #45
	cset	w8, hs
	tbnz	w8, #0, LBB6_11
	b	LBB6_6
LBB6_6:                                 ;   in Loop: Header=BB6_2 Depth=1
Ltmp146:
	add	x0, sp, #160
	bl	__ZN12_GLOBAL__N_18xorshiftERy
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
Ltmp147:
	b	LBB6_7
LBB6_7:                                 ;   in Loop: Header=BB6_2 Depth=1
	sub	x0, x29, #160
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeB8ne180100Ev
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	mov	x10, x0
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp, #136]
	ldr	x1, [sp, #136]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEixB8ne180100Em
	ldr	x1, [x0]
Ltmp148:
	sub	x0, x29, #136
	bl	__ZN3bts17FreeListAllocator10deallocateEPv
Ltmp149:
	b	LBB6_8
LBB6_8:                                 ;   in Loop: Header=BB6_2 Depth=1
	sub	x0, x29, #160
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE4backB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldr	x1, [sp, #136]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEixB8ne180100Em
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	str	x8, [x9]
Ltmp150:
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE8pop_backEv
Ltmp151:
	b	LBB6_9
LBB6_9:                                 ;   in Loop: Header=BB6_2 Depth=1
	b	LBB6_17
LBB6_10:
Ltmp160:
	stur	x0, [x29, #-168]
	mov	x8, x1
	stur	w8, [x29, #-172]
	sub	x0, x29, #160
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEED1B8ne180100Ev
	sub	x0, x29, #136
	bl	__ZN3bts17FreeListAllocatorD1Ev
	b	LBB6_27
LBB6_11:                                ;   in Loop: Header=BB6_2 Depth=1
Ltmp152:
	add	x0, sp, #160
	bl	__ZN12_GLOBAL__N_18xorshiftERy
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp153:
	b	LBB6_12
LBB6_12:                                ;   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x10, #249                       ; =0xf9
	udiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	add	x8, x8, #8
	str	x8, [sp, #128]
	ldr	x1, [sp, #128]
Ltmp154:
	sub	x0, x29, #136
	bl	__ZN3bts17FreeListAllocator8allocateEm
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp155:
	b	LBB6_13
LBB6_13:                                ;   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #120]
	ldr	x8, [sp, #120]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB6_16
	b	LBB6_14
LBB6_14:                                ;   in Loop: Header=BB6_2 Depth=1
Ltmp156:
	sub	x0, x29, #160
	add	x1, sp, #120
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne180100ERKS1_
Ltmp157:
	b	LBB6_15
LBB6_15:                                ;   in Loop: Header=BB6_2 Depth=1
	b	LBB6_16
LBB6_16:                                ;   in Loop: Header=BB6_2 Depth=1
	b	LBB6_17
LBB6_17:                                ;   in Loop: Header=BB6_2 Depth=1
	sub	x0, x29, #160
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeB8ne180100Ev
	add	x1, sp, #112
	str	x0, [sp, #112]
Ltmp158:
	add	x0, sp, #168
	bl	__ZNSt3__13maxB8ne180100ImEERKT_S3_S3_
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp159:
	b	LBB6_18
LBB6_18:                                ;   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp, #168]
	b	LBB6_19
LBB6_19:                                ;   in Loop: Header=BB6_2 Depth=1
	ldr	x8, [sp, #152]
	add	x8, x8, #1
	str	x8, [sp, #152]
	b	LBB6_2
LBB6_20:
	sub	x8, x29, #160
	str	x8, [sp, #104]
	ldr	x0, [sp, #104]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE5beginB8ne180100Ev
	str	x0, [sp, #96]
	ldr	x0, [sp, #104]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE3endB8ne180100Ev
	str	x0, [sp, #88]
	b	LBB6_21
LBB6_21:                                ; =>This Inner Loop Header: Depth=1
	add	x0, sp, #96
	add	x1, sp, #88
	bl	__ZNSt3__1neB8ne180100IPPvEEbRKNS_11__wrap_iterIT_EES7_
	tbz	w0, #0, LBB6_25
	b	LBB6_22
LBB6_22:                                ;   in Loop: Header=BB6_21 Depth=1
	add	x0, sp, #96
	bl	__ZNKSt3__111__wrap_iterIPPvEdeB8ne180100Ev
	ldr	x8, [x0]
	str	x8, [sp, #80]
	ldr	x1, [sp, #80]
Ltmp142:
	sub	x0, x29, #136
	bl	__ZN3bts17FreeListAllocator10deallocateEPv
Ltmp143:
	b	LBB6_23
LBB6_23:                                ;   in Loop: Header=BB6_21 Depth=1
	b	LBB6_24
LBB6_24:                                ;   in Loop: Header=BB6_21 Depth=1
	add	x0, sp, #96
	bl	__ZNSt3__111__wrap_iterIPPvEppB8ne180100Ev
	b	LBB6_21
LBB6_25:
Ltmp140:
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	sub	x0, x29, #136
	bl	__ZNK3bts17FreeListAllocator5statsEv
Ltmp141:
	b	LBB6_26
LBB6_26:
	ldr	x9, [sp, #64]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #168]
	str	x8, [x9, #104]
	sub	x0, x29, #160
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEED1B8ne180100Ev
	sub	x0, x29, #136
	bl	__ZN3bts17FreeListAllocatorD1Ev
	ldp	x29, x30, [sp, #352]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #336]            ; 16-byte Folded Reload
	add	sp, sp, #368
	ret
LBB6_27:
	ldur	x0, [x29, #-168]
	bl	__Unwind_Resume
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table6:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp138-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp138
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp138-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp141-Ltmp138                ;   Call between Ltmp138 and Ltmp141
	.uleb128 Ltmp160-Lfunc_begin4           ;     jumps to Ltmp160
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp141-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp141             ;   Call between Ltmp141 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16atomicImEC1B8ne180100Em ; -- Begin function _ZNSt3__16atomicImEC1B8ne180100Em
	.globl	__ZNSt3__16atomicImEC1B8ne180100Em
	.weak_def_can_be_hidden	__ZNSt3__16atomicImEC1B8ne180100Em
	.p2align	2
__ZNSt3__16atomicImEC1B8ne180100Em:     ; @_ZNSt3__16atomicImEC1B8ne180100Em
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
	bl	__ZNSt3__16atomicImEC2B8ne180100Em
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function _ZN3bts9benchmarkIZ4mainE3$_0EENS_14BenchmarkStatsERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEmmOT_
lCPI8_0:
	.quad	0x3fee666666666666              ; double 0.94999999999999996
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN3bts9benchmarkIZ4mainE3$_0EENS_14BenchmarkStatsERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEmmOT_: ; @"_ZN3bts9benchmarkIZ4mainE3$_0EENS_14BenchmarkStatsERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEmmOT_"
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #480
	stp	x28, x27, [sp, #448]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #464]            ; 16-byte Folded Spill
	add	x29, sp, #464
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	stur	x8, [x29, #-24]
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-40]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-56]
	ldur	x8, [x29, #-48]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB8_4
	b	LBB8_1
LBB8_1:
	mov	x0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
Ltmp193:
	adrp	x1, l_.str.55@PAGE
	add	x1, x1, l_.str.55@PAGEOFF
	bl	__ZNSt16invalid_argumentC1B8ne180100EPKc
Ltmp194:
	b	LBB8_2
LBB8_2:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	adrp	x1, __ZTISt16invalid_argument@GOTPAGE
	ldr	x1, [x1, __ZTISt16invalid_argument@GOTPAGEOFF]
	adrp	x2, __ZNSt16invalid_argumentD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt16invalid_argumentD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB8_3:
Ltmp195:
	mov	x8, x0
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	___cxa_free_exception
	b	LBB8_39
LBB8_4:
	stur	xzr, [x29, #-80]
	b	LBB8_5
LBB8_5:                                 ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-80]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB8_8
	b	LBB8_6
LBB8_6:                                 ;   in Loop: Header=BB8_5 Depth=1
	ldur	x0, [x29, #-56]
	bl	__ZNSt3__16invokeB8ne180100IRZ4mainE3$_0JEEENS_13invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_
	b	LBB8_7
LBB8_7:                                 ;   in Loop: Header=BB8_5 Depth=1
	ldur	x8, [x29, #-80]
	add	x8, x8, #1
	stur	x8, [x29, #-80]
	b	LBB8_5
LBB8_8:
	sub	x0, x29, #104
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1B8ne180100Ev
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	ldur	x1, [x29, #-48]
Ltmp161:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE7reserveEm
Ltmp162:
	b	LBB8_9
LBB8_9:
	stur	xzr, [x29, #-112]
	b	LBB8_10
LBB8_10:                                ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-112]
	ldur	x9, [x29, #-48]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB8_19
	b	LBB8_11
LBB8_11:                                ;   in Loop: Header=BB8_10 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	stur	x0, [x29, #-120]
	ldur	x0, [x29, #-56]
Ltmp182:
	bl	__ZNSt3__16invokeB8ne180100IRZ4mainE3$_0JEEENS_13invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_
Ltmp183:
	b	LBB8_12
LBB8_12:                                ;   in Loop: Header=BB8_10 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x8, x0
	sub	x0, x29, #128
	stur	x8, [x29, #-128]
Ltmp184:
	sub	x1, x29, #120
	bl	__ZNSt3__16chronomiB8ne180100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
Ltmp185:
	b	LBB8_13
LBB8_13:                                ;   in Loop: Header=BB8_10 Depth=1
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	sub	x1, x29, #152
	stur	x8, [x29, #-152]
Ltmp186:
	sub	x0, x29, #144
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B8ne180100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
Ltmp187:
	b	LBB8_14
LBB8_14:                                ;   in Loop: Header=BB8_10 Depth=1
Ltmp188:
	sub	x0, x29, #144
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB8ne180100Ev
	str	d0, [sp, #96]                   ; 8-byte Folded Spill
Ltmp189:
	b	LBB8_15
LBB8_15:                                ;   in Loop: Header=BB8_10 Depth=1
	ldr	d0, [sp, #96]                   ; 8-byte Folded Reload
	sub	x1, x29, #136
	stur	d0, [x29, #-136]
Ltmp190:
	sub	x0, x29, #104
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backB8ne180100ERKd
Ltmp191:
	b	LBB8_16
LBB8_16:                                ;   in Loop: Header=BB8_10 Depth=1
	b	LBB8_17
LBB8_17:                                ;   in Loop: Header=BB8_10 Depth=1
	ldur	x8, [x29, #-112]
	add	x8, x8, #1
	stur	x8, [x29, #-112]
	b	LBB8_10
LBB8_18:
Ltmp192:
	stur	x0, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB8_38
LBB8_19:
	sub	x0, x29, #104
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-168]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB8ne180100Ev
	stur	x0, [x29, #-176]
	ldur	x0, [x29, #-168]
	ldur	x1, [x29, #-176]
Ltmp163:
	movi	d0, #0000000000000000
	bl	__ZNSt3__110accumulateB8ne180100INS_11__wrap_iterIPdEEdEET0_T_S5_S4_
	str	d0, [sp, #88]                   ; 8-byte Folded Spill
Ltmp164:
	b	LBB8_20
LBB8_20:
	sub	x0, x29, #104
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB8ne180100Ev
	ldr	d0, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	ucvtf	d1, x0
	fdiv	d0, d0, d1
	stur	d0, [x29, #-160]
	movi	d0, #0000000000000000
	stur	d0, [x29, #-184]
	stur	x8, [x29, #-192]
	ldur	x0, [x29, #-192]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB8ne180100Ev
	stur	x0, [x29, #-200]
	ldur	x0, [x29, #-192]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB8ne180100Ev
	stur	x0, [x29, #-208]
	b	LBB8_21
LBB8_21:                                ; =>This Inner Loop Header: Depth=1
	sub	x0, x29, #200
	sub	x1, x29, #208
	bl	__ZNSt3__1neB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_
	tbz	w0, #0, LBB8_24
	b	LBB8_22
LBB8_22:                                ;   in Loop: Header=BB8_21 Depth=1
	sub	x0, x29, #200
	bl	__ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev
	ldr	d0, [x0]
	stur	d0, [x29, #-216]
	ldur	d0, [x29, #-216]
	ldur	d1, [x29, #-160]
	fsub	d0, d0, d1
	stur	d0, [x29, #-224]
	ldur	d0, [x29, #-224]
	ldur	d1, [x29, #-224]
	ldur	d2, [x29, #-184]
	fmadd	d0, d0, d1, d2
	stur	d0, [x29, #-184]
	b	LBB8_23
LBB8_23:                                ;   in Loop: Header=BB8_21 Depth=1
	sub	x0, x29, #200
	bl	__ZNSt3__111__wrap_iterIPdEppB8ne180100Ev
	b	LBB8_21
LBB8_24:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	mov	w8, #0                          ; =0x0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-225]
	bl	__ZN3bts14BenchmarkStatsC1Ev
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	ldur	x1, [x29, #-32]
Ltmp165:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
Ltmp166:
	b	LBB8_25
LBB8_25:
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldur	x9, [x29, #-40]
	str	x9, [x8, #24]
	ldur	x9, [x29, #-48]
	str	x9, [x8, #32]
	ldur	d0, [x29, #-160]
	str	d0, [x8, #40]
	ldur	d0, [x29, #-184]
	str	d0, [sp, #56]                   ; 8-byte Folded Spill
	sub	x0, x29, #104
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB8ne180100Ev
	ldr	d0, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x1, [sp, #64]                   ; 8-byte Folded Reload
	ucvtf	d1, x0
	fdiv	d0, d0, d1
	fsqrt	d0, d0
	str	d0, [x8, #48]
Ltmp167:
	add	x0, sp, #208
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_
Ltmp168:
	b	LBB8_26
LBB8_26:
Ltmp169:
	add	x0, sp, #208
	fmov	d0, #0.50000000
	bl	__ZN3bts10percentileENSt3__16vectorIdNS0_9allocatorIdEEEEd
	str	d0, [sp, #48]                   ; 8-byte Folded Spill
Ltmp170:
	b	LBB8_27
LBB8_27:
	ldr	d0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	str	d0, [x8, #56]
	add	x0, sp, #208
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev
Ltmp172:
	add	x0, sp, #184
	sub	x1, x29, #104
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_
Ltmp173:
	b	LBB8_28
LBB8_28:
Ltmp174:
	add	x0, sp, #184
	adrp	x8, lCPI8_0@PAGE
	ldr	d0, [x8, lCPI8_0@PAGEOFF]
	bl	__ZN3bts10percentileENSt3__16vectorIdNS0_9allocatorIdEEEEd
	str	d0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp175:
	b	LBB8_29
LBB8_29:
	ldr	d0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	str	d0, [x8, #64]
	add	x0, sp, #184
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev
	sub	x0, x29, #104
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #168]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB8ne180100Ev
	str	x0, [sp, #160]
	ldr	x0, [sp, #168]
	ldr	x1, [sp, #160]
Ltmp177:
	bl	__ZNSt3__111min_elementB8ne180100INS_11__wrap_iterIPdEEEET_S4_S4_
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp178:
	b	LBB8_30
LBB8_30:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	add	x0, sp, #176
	str	x8, [sp, #176]
	bl	__ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	d0, [x0]
	str	d0, [x8, #72]
	sub	x0, x29, #104
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #144]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB8ne180100Ev
	str	x0, [sp, #136]
	ldr	x0, [sp, #144]
	ldr	x1, [sp, #136]
Ltmp179:
	bl	__ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPdEEEET_S4_S4_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp180:
	b	LBB8_31
LBB8_31:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, sp, #152
	str	x8, [sp, #152]
	bl	__ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	d0, [x0]
	str	d0, [x8, #80]
	mov	w8, #1                          ; =0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-225]
	ldurb	w8, [x29, #-225]
	tbnz	w8, #0, LBB8_36
	b	LBB8_35
LBB8_32:
Ltmp181:
	stur	x0, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB8_37
LBB8_33:
Ltmp171:
	stur	x0, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	add	x0, sp, #208
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev
	b	LBB8_37
LBB8_34:
Ltmp176:
	stur	x0, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	add	x0, sp, #184
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev
	b	LBB8_37
LBB8_35:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	bl	__ZN3bts14BenchmarkStatsD1Ev
	b	LBB8_36
LBB8_36:
	sub	x0, x29, #104
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev
	ldp	x29, x30, [sp, #464]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #448]            ; 16-byte Folded Reload
	add	sp, sp, #480
	ret
LBB8_37:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	bl	__ZN3bts14BenchmarkStatsD1Ev
	b	LBB8_38
LBB8_38:
	sub	x0, x29, #104
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev
	b	LBB8_39
LBB8_39:
	ldur	x0, [x29, #-64]
	bl	__Unwind_Resume
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
	.uleb128 Ltmp193-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp193
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp193-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp194-Ltmp193                ;   Call between Ltmp193 and Ltmp194
	.uleb128 Ltmp195-Lfunc_begin5           ;     jumps to Ltmp195
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp194-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Ltmp161-Ltmp194                ;   Call between Ltmp194 and Ltmp161
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp161-Lfunc_begin5           ; >> Call Site 4 <<
	.uleb128 Ltmp164-Ltmp161                ;   Call between Ltmp161 and Ltmp164
	.uleb128 Ltmp192-Lfunc_begin5           ;     jumps to Ltmp192
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp165-Lfunc_begin5           ; >> Call Site 5 <<
	.uleb128 Ltmp168-Ltmp165                ;   Call between Ltmp165 and Ltmp168
	.uleb128 Ltmp181-Lfunc_begin5           ;     jumps to Ltmp181
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp169-Lfunc_begin5           ; >> Call Site 6 <<
	.uleb128 Ltmp170-Ltmp169                ;   Call between Ltmp169 and Ltmp170
	.uleb128 Ltmp171-Lfunc_begin5           ;     jumps to Ltmp171
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp172-Lfunc_begin5           ; >> Call Site 7 <<
	.uleb128 Ltmp173-Ltmp172                ;   Call between Ltmp172 and Ltmp173
	.uleb128 Ltmp181-Lfunc_begin5           ;     jumps to Ltmp181
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp174-Lfunc_begin5           ; >> Call Site 8 <<
	.uleb128 Ltmp175-Ltmp174                ;   Call between Ltmp174 and Ltmp175
	.uleb128 Ltmp176-Lfunc_begin5           ;     jumps to Ltmp176
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp177-Lfunc_begin5           ; >> Call Site 9 <<
	.uleb128 Ltmp180-Ltmp177                ;   Call between Ltmp177 and Ltmp180
	.uleb128 Ltmp181-Lfunc_begin5           ;     jumps to Ltmp181
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp180-Lfunc_begin5           ; >> Call Site 10 <<
	.uleb128 Lfunc_end5-Ltmp180             ;   Call between Ltmp180 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function _ZN3bts9benchmarkIZ4mainE3$_1EENS_14BenchmarkStatsERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEmmOT_
lCPI9_0:
	.quad	0x3fee666666666666              ; double 0.94999999999999996
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
__ZN3bts9benchmarkIZ4mainE3$_1EENS_14BenchmarkStatsERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEmmOT_: ; @"_ZN3bts9benchmarkIZ4mainE3$_1EENS_14BenchmarkStatsERKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEmmOT_"
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #464
	stp	x28, x27, [sp, #432]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #448]            ; 16-byte Folded Spill
	add	x29, sp, #448
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	str	x8, [sp, #112]                  ; 8-byte Folded Spill
	stur	x8, [x29, #-24]
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-40]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-56]
	ldur	x8, [x29, #-48]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB9_4
	b	LBB9_1
LBB9_1:
	mov	x0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
Ltmp224:
	adrp	x1, l_.str.55@PAGE
	add	x1, x1, l_.str.55@PAGEOFF
	bl	__ZNSt16invalid_argumentC1B8ne180100EPKc
Ltmp225:
	b	LBB9_2
LBB9_2:
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	adrp	x1, __ZTISt16invalid_argument@GOTPAGE
	ldr	x1, [x1, __ZTISt16invalid_argument@GOTPAGEOFF]
	adrp	x2, __ZNSt16invalid_argumentD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt16invalid_argumentD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB9_3:
Ltmp226:
	mov	x8, x0
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	bl	___cxa_free_exception
	b	LBB9_37
LBB9_4:
	stur	xzr, [x29, #-80]
	b	LBB9_5
LBB9_5:                                 ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-80]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB9_8
	b	LBB9_6
LBB9_6:                                 ;   in Loop: Header=BB9_5 Depth=1
	ldur	x0, [x29, #-56]
	bl	__ZNSt3__16invokeB8ne180100IRZ4mainE3$_1JEEENS_13invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_
	b	LBB9_7
LBB9_7:                                 ;   in Loop: Header=BB9_5 Depth=1
	ldur	x8, [x29, #-80]
	add	x8, x8, #1
	stur	x8, [x29, #-80]
	b	LBB9_5
LBB9_8:
	sub	x0, x29, #104
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1B8ne180100Ev
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-48]
Ltmp196:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE7reserveEm
Ltmp197:
	b	LBB9_9
LBB9_9:
	stur	xzr, [x29, #-112]
	b	LBB9_10
LBB9_10:                                ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-112]
	ldur	x9, [x29, #-48]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB9_18
	b	LBB9_11
LBB9_11:                                ;   in Loop: Header=BB9_10 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	stur	x0, [x29, #-120]
	ldur	x0, [x29, #-56]
Ltmp215:
	bl	__ZNSt3__16invokeB8ne180100IRZ4mainE3$_1JEEENS_13invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_
Ltmp216:
	b	LBB9_12
LBB9_12:                                ;   in Loop: Header=BB9_10 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x8, x0
	sub	x0, x29, #128
	stur	x8, [x29, #-128]
Ltmp217:
	sub	x1, x29, #120
	bl	__ZNSt3__16chronomiB8ne180100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
Ltmp218:
	b	LBB9_13
LBB9_13:                                ;   in Loop: Header=BB9_10 Depth=1
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	sub	x1, x29, #152
	stur	x8, [x29, #-152]
Ltmp219:
	sub	x0, x29, #144
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B8ne180100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
Ltmp220:
	b	LBB9_14
LBB9_14:                                ;   in Loop: Header=BB9_10 Depth=1
	sub	x0, x29, #144
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB8ne180100Ev
	sub	x1, x29, #136
	stur	d0, [x29, #-136]
Ltmp221:
	sub	x0, x29, #104
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backB8ne180100ERKd
Ltmp222:
	b	LBB9_15
LBB9_15:                                ;   in Loop: Header=BB9_10 Depth=1
	b	LBB9_16
LBB9_16:                                ;   in Loop: Header=BB9_10 Depth=1
	ldur	x8, [x29, #-112]
	add	x8, x8, #1
	stur	x8, [x29, #-112]
	b	LBB9_10
LBB9_17:
Ltmp223:
	stur	x0, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB9_36
LBB9_18:
	sub	x0, x29, #104
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-168]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB8ne180100Ev
	stur	x0, [x29, #-176]
	ldur	x0, [x29, #-168]
	ldur	x1, [x29, #-176]
	movi	d0, #0000000000000000
	str	d0, [sp, #72]                   ; 8-byte Folded Spill
	bl	__ZNSt3__110accumulateB8ne180100INS_11__wrap_iterIPdEEdEET0_T_S5_S4_
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	str	d0, [sp, #64]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB8ne180100Ev
	ldr	d1, [sp, #64]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	ucvtf	d2, x0
	fdiv	d1, d1, d2
	stur	d1, [x29, #-160]
	stur	d0, [x29, #-184]
	stur	x8, [x29, #-192]
	ldur	x0, [x29, #-192]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB8ne180100Ev
	stur	x0, [x29, #-200]
	ldur	x0, [x29, #-192]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB8ne180100Ev
	stur	x0, [x29, #-208]
	b	LBB9_19
LBB9_19:                                ; =>This Inner Loop Header: Depth=1
	sub	x0, x29, #200
	sub	x1, x29, #208
	bl	__ZNSt3__1neB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_
	tbz	w0, #0, LBB9_22
	b	LBB9_20
LBB9_20:                                ;   in Loop: Header=BB9_19 Depth=1
	sub	x0, x29, #200
	bl	__ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev
	ldr	d0, [x0]
	stur	d0, [x29, #-216]
	ldur	d0, [x29, #-216]
	ldur	d1, [x29, #-160]
	fsub	d0, d0, d1
	str	d0, [sp, #224]
	ldr	d0, [sp, #224]
	ldr	d1, [sp, #224]
	ldur	d2, [x29, #-184]
	fmadd	d0, d0, d1, d2
	stur	d0, [x29, #-184]
	b	LBB9_21
LBB9_21:                                ;   in Loop: Header=BB9_19 Depth=1
	sub	x0, x29, #200
	bl	__ZNSt3__111__wrap_iterIPdEppB8ne180100Ev
	b	LBB9_19
LBB9_22:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	mov	w8, #0                          ; =0x0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #223]
	bl	__ZN3bts14BenchmarkStatsC1Ev
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	ldur	x1, [x29, #-32]
Ltmp198:
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_
Ltmp199:
	b	LBB9_23
LBB9_23:
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	ldur	x9, [x29, #-40]
	str	x9, [x8, #24]
	ldur	x9, [x29, #-48]
	str	x9, [x8, #32]
	ldur	d0, [x29, #-160]
	str	d0, [x8, #40]
	ldur	d0, [x29, #-184]
	str	d0, [sp, #48]                   ; 8-byte Folded Spill
	sub	x0, x29, #104
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB8ne180100Ev
	ldr	d0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ucvtf	d1, x0
	fdiv	d0, d0, d1
	fsqrt	d0, d0
	str	d0, [x8, #48]
Ltmp200:
	add	x0, sp, #192
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_
Ltmp201:
	b	LBB9_24
LBB9_24:
Ltmp202:
	add	x0, sp, #192
	fmov	d0, #0.50000000
	bl	__ZN3bts10percentileENSt3__16vectorIdNS0_9allocatorIdEEEEd
	str	d0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp203:
	b	LBB9_25
LBB9_25:
	ldr	d0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	str	d0, [x8, #56]
	add	x0, sp, #192
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev
Ltmp205:
	add	x0, sp, #168
	sub	x1, x29, #104
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_
Ltmp206:
	b	LBB9_26
LBB9_26:
Ltmp207:
	add	x0, sp, #168
	adrp	x8, lCPI9_0@PAGE
	ldr	d0, [x8, lCPI9_0@PAGEOFF]
	bl	__ZN3bts10percentileENSt3__16vectorIdNS0_9allocatorIdEEEEd
	str	d0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp208:
	b	LBB9_27
LBB9_27:
	ldr	d0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	str	d0, [x8, #64]
	add	x0, sp, #168
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev
	sub	x0, x29, #104
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [sp, #152]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB8ne180100Ev
	str	x0, [sp, #144]
	ldr	x0, [sp, #152]
	ldr	x1, [sp, #144]
Ltmp210:
	bl	__ZNSt3__111min_elementB8ne180100INS_11__wrap_iterIPdEEEET_S4_S4_
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp211:
	b	LBB9_28
LBB9_28:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, sp, #160
	str	x8, [sp, #160]
	bl	__ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	ldr	d0, [x0]
	str	d0, [x8, #72]
	sub	x0, x29, #104
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #128]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB8ne180100Ev
	str	x0, [sp, #120]
	ldr	x0, [sp, #128]
	ldr	x1, [sp, #120]
Ltmp212:
	bl	__ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPdEEEET_S4_S4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp213:
	b	LBB9_29
LBB9_29:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x0, sp, #136
	str	x8, [sp, #136]
	bl	__ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	ldr	d0, [x0]
	str	d0, [x8, #80]
	mov	w8, #1                          ; =0x1
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	strb	w8, [sp, #223]
	ldrb	w8, [sp, #223]
	tbnz	w8, #0, LBB9_34
	b	LBB9_33
LBB9_30:
Ltmp214:
	stur	x0, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	b	LBB9_35
LBB9_31:
Ltmp204:
	stur	x0, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	add	x0, sp, #192
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev
	b	LBB9_35
LBB9_32:
Ltmp209:
	stur	x0, [x29, #-64]
	mov	x8, x1
	stur	w8, [x29, #-68]
	add	x0, sp, #168
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev
	b	LBB9_35
LBB9_33:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	bl	__ZN3bts14BenchmarkStatsD1Ev
	b	LBB9_34
LBB9_34:
	sub	x0, x29, #104
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev
	ldp	x29, x30, [sp, #448]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #432]            ; 16-byte Folded Reload
	add	sp, sp, #464
	ret
LBB9_35:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	bl	__ZN3bts14BenchmarkStatsD1Ev
	b	LBB9_36
LBB9_36:
	sub	x0, x29, #104
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev
	b	LBB9_37
LBB9_37:
	ldur	x0, [x29, #-64]
	bl	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table9:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp224-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp224
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp224-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp225-Ltmp224                ;   Call between Ltmp224 and Ltmp225
	.uleb128 Ltmp226-Lfunc_begin6           ;     jumps to Ltmp226
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp225-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Ltmp196-Ltmp225                ;   Call between Ltmp225 and Ltmp196
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp196-Lfunc_begin6           ; >> Call Site 4 <<
	.uleb128 Ltmp222-Ltmp196                ;   Call between Ltmp196 and Ltmp222
	.uleb128 Ltmp223-Lfunc_begin6           ;     jumps to Ltmp223
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp198-Lfunc_begin6           ; >> Call Site 5 <<
	.uleb128 Ltmp201-Ltmp198                ;   Call between Ltmp198 and Ltmp201
	.uleb128 Ltmp214-Lfunc_begin6           ;     jumps to Ltmp214
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp202-Lfunc_begin6           ; >> Call Site 6 <<
	.uleb128 Ltmp203-Ltmp202                ;   Call between Ltmp202 and Ltmp203
	.uleb128 Ltmp204-Lfunc_begin6           ;     jumps to Ltmp204
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp205-Lfunc_begin6           ; >> Call Site 7 <<
	.uleb128 Ltmp206-Ltmp205                ;   Call between Ltmp205 and Ltmp206
	.uleb128 Ltmp214-Lfunc_begin6           ;     jumps to Ltmp214
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp207-Lfunc_begin6           ; >> Call Site 8 <<
	.uleb128 Ltmp208-Ltmp207                ;   Call between Ltmp207 and Ltmp208
	.uleb128 Ltmp209-Lfunc_begin6           ;     jumps to Ltmp209
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp210-Lfunc_begin6           ; >> Call Site 9 <<
	.uleb128 Ltmp213-Ltmp210                ;   Call between Ltmp210 and Ltmp213
	.uleb128 Ltmp214-Lfunc_begin6           ;     jumps to Ltmp214
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp213-Lfunc_begin6           ; >> Call Site 10 <<
	.uleb128 Lfunc_end6-Ltmp213             ;   Call between Ltmp213 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.globl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
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
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts17FreeListAllocator14metadata_bytesEv ; -- Begin function _ZN3bts17FreeListAllocator14metadata_bytesEv
	.weak_definition	__ZN3bts17FreeListAllocator14metadata_bytesEv
	.p2align	2
__ZN3bts17FreeListAllocator14metadata_bytesEv: ; @_ZN3bts17FreeListAllocator14metadata_bytesEv
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZN3bts17FreeListAllocator12header_bytesEv
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZN12_GLOBAL__N_121write_allocator_statsERKN3bts14AllocatorStatsE
__ZN12_GLOBAL__N_121write_allocator_statsERKN3bts14AllocatorStatsE: ; @_ZN12_GLOBAL__N_121write_allocator_statsERKN3bts14AllocatorStatsE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #8]
	ldr	x1, [x8]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	adrp	x1, l_.str.28@PAGE
	add	x1, x1, l_.str.28@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #8]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	adrp	x1, l_.str.29@PAGE
	add	x1, x1, l_.str.29@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #16]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	adrp	x1, l_.str.30@PAGE
	add	x1, x1, l_.str.30@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #24]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	adrp	x1, l_.str.31@PAGE
	add	x1, x1, l_.str.31@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #32]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	adrp	x1, l_.str.32@PAGE
	add	x1, x1, l_.str.32@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #40]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	adrp	x1, l_.str.33@PAGE
	add	x1, x1, l_.str.33@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #48]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	adrp	x1, l_.str.34@PAGE
	add	x1, x1, l_.str.34@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #56]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	adrp	x1, l_.str.35@PAGE
	add	x1, x1, l_.str.35@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #64]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	adrp	x1, l_.str.36@PAGE
	add	x1, x1, l_.str.36@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #72]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	adrp	x1, l_.str.37@PAGE
	add	x1, x1, l_.str.37@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #80]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	adrp	x1, l_.str.38@PAGE
	add	x1, x1, l_.str.38@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #88]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	adrp	x1, l_.str.39@PAGE
	add	x1, x1, l_.str.39@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #96]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	mov	w1, #125                        ; =0x7d
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts16write_stats_jsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_14BenchmarkStatsE ; -- Begin function _ZN3bts16write_stats_jsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_14BenchmarkStatsE
	.weak_definition	__ZN3bts16write_stats_jsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_14BenchmarkStatsE
	.p2align	2
__ZN3bts16write_stats_jsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_14BenchmarkStatsE: ; @_ZN3bts16write_stats_jsonERNSt3__113basic_ostreamIcNS0_11char_traitsIcEEEERKNS_14BenchmarkStatsE
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #272
	stp	x28, x27, [sp, #240]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #256]            ; 16-byte Folded Spill
	add	x29, sp, #256
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	ldur	x0, [x29, #-24]
	adrp	x1, __ZNSt3__15fixedB8ne180100ERNS_8ios_baseE@PAGE
	add	x1, x1, __ZNSt3__15fixedB8ne180100ERNS_8ios_baseE@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRNS_8ios_baseES5_E
	str	x0, [sp, #128]                  ; 8-byte Folded Spill
	mov	w0, #6                          ; =0x6
	bl	__ZNSt3__112setprecisionB8ne180100Ei
	mov	x8, x0
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	sub	x1, x29, #36
	stur	w8, [x29, #-36]
	bl	__ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	ldur	x0, [x29, #-24]
	adrp	x1, l_.str.40@PAGE
	add	x1, x1, l_.str.40@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	stur	x0, [x29, #-120]                ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB8ne180100Ev
	stur	x0, [x29, #-80]
	stur	x1, [x29, #-72]
	ldur	x0, [x29, #-80]
	ldur	x1, [x29, #-72]
	sub	x8, x29, #64
	stur	x8, [x29, #-112]                ; 8-byte Folded Spill
	bl	__ZN3bts11json_escapeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE
	ldur	x0, [x29, #-120]                ; 8-byte Folded Reload
	ldur	x1, [x29, #-112]                ; 8-byte Folded Reload
Ltmp227:
	bl	__ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	stur	x0, [x29, #-104]                ; 8-byte Folded Spill
Ltmp228:
	b	LBB13_1
LBB13_1:
Ltmp229:
	ldur	x0, [x29, #-104]                ; 8-byte Folded Reload
	adrp	x1, l_.str.41@PAGE
	add	x1, x1, l_.str.41@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
Ltmp230:
	b	LBB13_2
LBB13_2:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	ldr	x1, [x8, #24]
Ltmp231:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
Ltmp232:
	b	LBB13_3
LBB13_3:
Ltmp233:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.42@PAGE
	add	x1, x1, l_.str.42@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
Ltmp234:
	b	LBB13_4
LBB13_4:
	ldr	x0, [sp, #104]                  ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	ldr	x1, [x8, #32]
Ltmp235:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
Ltmp236:
	b	LBB13_5
LBB13_5:
Ltmp237:
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.43@PAGE
	add	x1, x1, l_.str.43@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
Ltmp238:
	b	LBB13_6
LBB13_6:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	ldr	d0, [x8, #40]
Ltmp239:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
Ltmp240:
	b	LBB13_7
LBB13_7:
Ltmp241:
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.44@PAGE
	add	x1, x1, l_.str.44@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
Ltmp242:
	b	LBB13_8
LBB13_8:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	ldr	d0, [x8, #48]
Ltmp243:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
Ltmp244:
	b	LBB13_9
LBB13_9:
Ltmp245:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.45@PAGE
	add	x1, x1, l_.str.45@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
Ltmp246:
	b	LBB13_10
LBB13_10:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	ldr	d0, [x8, #56]
Ltmp247:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
Ltmp248:
	b	LBB13_11
LBB13_11:
Ltmp249:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.46@PAGE
	add	x1, x1, l_.str.46@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp250:
	b	LBB13_12
LBB13_12:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	ldr	d0, [x8, #64]
Ltmp251:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
Ltmp252:
	b	LBB13_13
LBB13_13:
Ltmp253:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.47@PAGE
	add	x1, x1, l_.str.47@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp254:
	b	LBB13_14
LBB13_14:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	ldr	d0, [x8, #72]
Ltmp255:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp256:
	b	LBB13_15
LBB13_15:
Ltmp257:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.48@PAGE
	add	x1, x1, l_.str.48@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp258:
	b	LBB13_16
LBB13_16:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]
	ldr	d0, [x8, #80]
Ltmp259:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp260:
	b	LBB13_17
LBB13_17:
Ltmp261:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, l_.str.49@PAGE
	add	x1, x1, l_.str.49@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp262:
	b	LBB13_18
LBB13_18:
	sub	x0, x29, #64
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldp	x29, x30, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #272
	ret
LBB13_19:
Ltmp263:
	stur	x0, [x29, #-88]
	mov	x8, x1
	stur	w8, [x29, #-92]
	sub	x0, x29, #64
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB13_20
LBB13_20:
	ldur	x0, [x29, #-88]
	bl	__Unwind_Resume
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table13:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ; >> Call Site 1 <<
	.uleb128 Ltmp227-Lfunc_begin7           ;   Call between Lfunc_begin7 and Ltmp227
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp227-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp262-Ltmp227                ;   Call between Ltmp227 and Ltmp262
	.uleb128 Ltmp263-Lfunc_begin7           ;     jumps to Ltmp263
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp262-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Lfunc_end7-Ltmp262             ;   Call between Ltmp262 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN3bts14BenchmarkStatsD1Ev    ; -- Begin function _ZN3bts14BenchmarkStatsD1Ev
	.weak_def_can_be_hidden	__ZN3bts14BenchmarkStatsD1Ev
	.p2align	2
__ZN3bts14BenchmarkStatsD1Ev:           ; @_ZN3bts14BenchmarkStatsD1Ev
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
	bl	__ZN3bts14BenchmarkStatsD2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_ ; -- Begin function _ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_
	.globl	__ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_
	.weak_definition	__ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_
	.p2align	2
__ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_: ; @_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEEbRKNS_12basic_stringIT_T0_T1_EEPKS6_
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB8ne180100Ev
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldur	x1, [x29, #-16]
Ltmp264:
	mov	x0, sp
	bl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100EPKc
Ltmp265:
	b	LBB15_1
LBB15_1:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp]
	ldr	x3, [sp, #8]
	bl	__ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE
	and	w0, w0, #0x1
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB15_2:
Ltmp266:
	bl	___clang_call_terminate
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
	.uleb128 Ltmp264-Lfunc_begin8           ; >> Call Site 1 <<
	.uleb128 Ltmp265-Ltmp264                ;   Call between Ltmp264 and Ltmp265
	.uleb128 Ltmp266-Lfunc_begin8           ;     jumps to Ltmp266
	.byte	1                               ;   On action: 1
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
	.private_extern	__ZNSt16invalid_argumentC1B8ne180100ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE ; -- Begin function _ZNSt16invalid_argumentC1B8ne180100ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	.globl	__ZNSt16invalid_argumentC1B8ne180100ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZNSt16invalid_argumentC1B8ne180100ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	.p2align	2
__ZNSt16invalid_argumentC1B8ne180100ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE: ; @_ZNSt16invalid_argumentC1B8ne180100ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
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
	bl	__ZNSt16invalid_argumentC2B8ne180100ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
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
	.private_extern	__ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE ; -- Begin function _ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE
	.globl	__ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE
	.weak_definition	__ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE
	.p2align	2
__ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE: ; @_ZNSt3__1eqB8ne180100IcNS_11char_traitsIcEEEEbNS_17basic_string_viewIT_T0_EENS_13type_identityIS6_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x0
	sub	x0, x29, #24
	stur	x8, [x29, #-24]
	stur	x1, [x29, #-16]
	add	x8, sp, #40
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x2, [sp, #40]
	str	x3, [sp, #48]
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w8, eq
	tbnz	w8, #0, LBB18_2
	b	LBB18_1
LBB18_1:
	mov	w8, #0                          ; =0x0
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB18_3
LBB18_2:
	ldur	q0, [sp, #40]
	str	q0, [sp, #16]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #24]
	sub	x0, x29, #24
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareES3_
	subs	w8, w0, #0
	cset	w8, eq
	and	w8, w8, #0x1
	and	w8, w8, #0x1
	sturb	w8, [x29, #-1]
	b	LBB18_3
LBB18_3:
	ldurb	w8, [x29, #-1]
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB8ne180100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB8ne180100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB8ne180100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB8ne180100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB8ne180100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEcvNS_17basic_string_viewIcS2_EEB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne180100Ev
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	sub	x0, x29, #16
	bl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100EPKcm
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100EPKc ; -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100EPKc
	.globl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100EPKc
	.weak_def_can_be_hidden	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100EPKc
	.p2align	2
__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100EPKc: ; @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100EPKc
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
	bl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB8ne180100Ev ; -- Begin function _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB8ne180100Ev
	.globl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB8ne180100Ev
	.weak_definition	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB8ne180100Ev
	.p2align	2
__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB8ne180100Ev: ; @_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareES3_ ; -- Begin function _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareES3_
	.weak_definition	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareES3_
	.p2align	2
__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareES3_: ; @_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE7compareES3_
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #16
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	sub	x9, x29, #40
	str	x9, [sp, #56]                   ; 8-byte Folded Spill
	stur	x8, [x29, #-40]
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	sub	x1, x29, #48
	stur	x8, [x29, #-48]
Ltmp268:
	bl	__ZNSt3__13minB8ne180100ImEERKT_S3_S3_
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
Ltmp269:
	b	LBB22_1
LBB22_1:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	stur	x8, [x29, #-32]
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB8ne180100Ev
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	sub	x0, x29, #16
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB8ne180100Ev
	mov	x1, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-32]
	bl	__ZNSt3__111char_traitsIcE7compareB8ne180100EPKcS3_m
	stur	w0, [x29, #-52]
	ldur	w8, [x29, #-52]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB22_6
	b	LBB22_2
LBB22_2:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB8ne180100Ev
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	sub	x0, x29, #16
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w8, ne
	tbnz	w8, #0, LBB22_4
	b	LBB22_3
LBB22_3:
	mov	w8, #0                          ; =0x0
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b	LBB22_5
LBB22_4:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	sub	x0, x29, #16
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w9, lo
	mov	w8, #1                          ; =0x1
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinv	w8, w8, wzr, eq
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b	LBB22_5
LBB22_5:
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	stur	w8, [x29, #-52]
	b	LBB22_6
LBB22_6:
	ldur	w0, [x29, #-52]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB22_7:
Ltmp270:
	bl	___clang_call_terminate
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table22:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp268-Lfunc_begin9           ; >> Call Site 1 <<
	.uleb128 Ltmp269-Ltmp268                ;   Call between Ltmp268 and Ltmp269
	.uleb128 Ltmp270-Lfunc_begin9           ;     jumps to Ltmp270
	.byte	1                               ;   On action: 1
Lcst_end9:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__13minB8ne180100ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13minB8ne180100ImEERKT_S3_S3_
	.globl	__ZNSt3__13minB8ne180100ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13minB8ne180100ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13minB8ne180100ImEERKT_S3_S3_: ; @_ZNSt3__13minB8ne180100ImEERKT_S3_S3_
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
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13minB8ne180100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE7compareB8ne180100EPKcS3_m ; -- Begin function _ZNSt3__111char_traitsIcE7compareB8ne180100EPKcS3_m
	.globl	__ZNSt3__111char_traitsIcE7compareB8ne180100EPKcS3_m
	.weak_definition	__ZNSt3__111char_traitsIcE7compareB8ne180100EPKcS3_m
	.p2align	2
__ZNSt3__111char_traitsIcE7compareB8ne180100EPKcS3_m: ; @_ZNSt3__111char_traitsIcE7compareB8ne180100EPKcS3_m
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	_memcmp
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB8ne180100Ev ; -- Begin function _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB8ne180100Ev
	.globl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB8ne180100Ev
	.weak_definition	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB8ne180100Ev
	.p2align	2
__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB8ne180100Ev: ; @_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13minB8ne180100ImNS_6__lessIvvEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13minB8ne180100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13minB8ne180100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13minB8ne180100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13minB8ne180100ImNS_6__lessIvvEEEERKT_S5_S5_T0_: ; @_ZNSt3__13minB8ne180100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessIvvEclB8ne180100ImmEEbRKT_RKT0_
	tbz	w0, #0, LBB26_2
	b	LBB26_1
LBB26_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB26_3
LBB26_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB26_3
LBB26_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16__lessIvvEclB8ne180100ImmEEbRKT_RKT0_ ; -- Begin function _ZNKSt3__16__lessIvvEclB8ne180100ImmEEbRKT_RKT0_
	.globl	__ZNKSt3__16__lessIvvEclB8ne180100ImmEEbRKT_RKT0_
	.weak_definition	__ZNKSt3__16__lessIvvEclB8ne180100ImmEEbRKT_RKT0_
	.p2align	2
__ZNKSt3__16__lessIvvEclB8ne180100ImmEEbRKT_RKT0_: ; @_ZNKSt3__16__lessIvvEclB8ne180100ImmEEbRKT_RKT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, lo
	and	w0, w8, #0x1
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev
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
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev
	bl	__ZNSt3__112__to_addressB8ne180100IKcEEPT_S3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne180100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne180100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne180100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne180100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne180100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev
	tbz	w0, #0, LBB29_2
	b	LBB29_1
LBB29_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB29_3
LBB29_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB29_3
LBB29_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100EPKcm ; -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100EPKcm
	.globl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100EPKcm
	.weak_def_can_be_hidden	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100EPKcm
	.p2align	2
__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100EPKcm: ; @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100EPKcm
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100EPKcm
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne180100IKcEEPT_S3_ ; -- Begin function _ZNSt3__112__to_addressB8ne180100IKcEEPT_S3_
	.globl	__ZNSt3__112__to_addressB8ne180100IKcEEPT_S3_
	.weak_definition	__ZNSt3__112__to_addressB8ne180100IKcEEPT_S3_
	.p2align	2
__ZNSt3__112__to_addressB8ne180100IKcEEPT_S3_: ; @_ZNSt3__112__to_addressB8ne180100IKcEEPT_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev
	tbz	w0, #0, LBB32_2
	b	LBB32_1
LBB32_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB32_3
LBB32_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB32_3
LBB32_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev
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
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	ldrb	w8, [x0, #23]
	lsr	w8, w8, #7
	ands	w8, w8, #0xff
	cset	w8, ne
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev
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
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	ldr	x0, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev
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
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	bl	__ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne180100ERS1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev ; -- Begin function _ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	.globl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	.weak_definition	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	.p2align	2
__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev: ; @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
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
	bl	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	.globl	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev: ; @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne180100ERS1_ ; -- Begin function _ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne180100ERS1_
	.globl	__ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne180100ERS1_
	.weak_definition	__ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne180100ERS1_
	.p2align	2
__ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne180100ERS1_: ; @_ZNSt3__114pointer_traitsIPKcE10pointer_toB8ne180100ERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne180100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne180100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne180100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne180100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne180100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE15__get_long_sizeB8ne180100Ev
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
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	ldr	x0, [x0, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne180100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne180100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne180100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne180100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne180100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE16__get_short_sizeB8ne180100Ev
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
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	ldrb	w8, [x0, #23]
	and	w9, w8, #0x7f
                                        ; implicit-def: $x8
	mov	x8, x9
	and	x0, x8, #0xff
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100EPKcm ; -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100EPKcm
	.globl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100EPKcm
	.weak_def_can_be_hidden	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100EPKcm
	.p2align	2
__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100EPKcm: ; @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100EPKcm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100EPKc ; -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100EPKc
	.globl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100EPKc
	.weak_def_can_be_hidden	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100EPKc
	.p2align	2
__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100EPKc: ; @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100EPKc
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
	ldur	x9, [x29, #-8]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	str	x8, [x9]
	ldr	x0, [sp, #16]
	bl	__ZNSt3__128__char_traits_length_checkedB8ne180100INS_11char_traitsIcEEEEmPKNT_9char_typeE
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__char_traits_length_checkedB8ne180100INS_11char_traitsIcEEEEmPKNT_9char_typeE ; -- Begin function _ZNSt3__128__char_traits_length_checkedB8ne180100INS_11char_traitsIcEEEEmPKNT_9char_typeE
	.globl	__ZNSt3__128__char_traits_length_checkedB8ne180100INS_11char_traitsIcEEEEmPKNT_9char_typeE
	.weak_definition	__ZNSt3__128__char_traits_length_checkedB8ne180100INS_11char_traitsIcEEEEmPKNT_9char_typeE
	.p2align	2
__ZNSt3__128__char_traits_length_checkedB8ne180100INS_11char_traitsIcEEEEmPKNT_9char_typeE: ; @_ZNSt3__128__char_traits_length_checkedB8ne180100INS_11char_traitsIcEEEEmPKNT_9char_typeE
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
	bl	__ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc ; -- Begin function _ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc
	.globl	__ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc
	.p2align	2
__ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc: ; @_ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
Ltmp277:
	bl	__ZNSt3__118__constexpr_strlenB8ne180100EPKc
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp278:
	b	LBB44_1
LBB44_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
LBB44_2:
Ltmp279:
	bl	___clang_call_terminate
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table44:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Ltmp277-Lfunc_begin10          ; >> Call Site 1 <<
	.uleb128 Ltmp278-Ltmp277                ;   Call between Ltmp277 and Ltmp278
	.uleb128 Ltmp279-Lfunc_begin10          ;     jumps to Ltmp279
	.byte	1                               ;   On action: 1
Lcst_end10:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__118__constexpr_strlenB8ne180100EPKc ; -- Begin function _ZNSt3__118__constexpr_strlenB8ne180100EPKc
	.globl	__ZNSt3__118__constexpr_strlenB8ne180100EPKc
	.weak_definition	__ZNSt3__118__constexpr_strlenB8ne180100EPKc
	.p2align	2
__ZNSt3__118__constexpr_strlenB8ne180100EPKc: ; @_ZNSt3__118__constexpr_strlenB8ne180100EPKc
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
	bl	_strlen
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt16invalid_argumentC2B8ne180100ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE ; -- Begin function _ZNSt16invalid_argumentC2B8ne180100ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	.globl	__ZNSt16invalid_argumentC2B8ne180100ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	.weak_def_can_be_hidden	__ZNSt16invalid_argumentC2B8ne180100ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	.p2align	2
__ZNSt16invalid_argumentC2B8ne180100ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE: ; @_ZNSt16invalid_argumentC2B8ne180100ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
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
	bl	__ZNSt11logic_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZTVSt16invalid_argument@GOTPAGE
	ldr	x8, [x8, __ZTVSt16invalid_argument@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc
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
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	sub	x1, x29, #17
	sub	x2, x29, #18
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__111char_traitsIcE6lengthB8ne180100EPKc
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
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
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC2B8ne180100Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIcEC2B8ne180100Ev ; -- Begin function _ZNSt3__19allocatorIcEC2B8ne180100Ev
	.globl	__ZNSt3__19allocatorIcEC2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIcEC2B8ne180100Ev
	.p2align	2
__ZNSt3__19allocatorIcEC2B8ne180100Ev:  ; @_ZNSt3__19allocatorIcEC2B8ne180100Ev
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
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts14AllocatorStatsC2Ev    ; -- Begin function _ZN3bts14AllocatorStatsC2Ev
	.weak_def_can_be_hidden	__ZN3bts14AllocatorStatsC2Ev
	.p2align	2
__ZN3bts14AllocatorStatsC2Ev:           ; @_ZN3bts14AllocatorStatsC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	str	xzr, [x0]
	str	xzr, [x0, #8]
	str	xzr, [x0, #16]
	str	xzr, [x0, #24]
	str	xzr, [x0, #32]
	str	xzr, [x0, #40]
	str	xzr, [x0, #48]
	str	xzr, [x0, #56]
	str	xzr, [x0, #64]
	str	xzr, [x0, #72]
	str	xzr, [x0, #80]
	str	xzr, [x0, #88]
	str	xzr, [x0, #96]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts17FreeListAllocatorC1Emb ; -- Begin function _ZN3bts17FreeListAllocatorC1Emb
	.weak_def_can_be_hidden	__ZN3bts17FreeListAllocatorC1Emb
	.p2align	2
__ZN3bts17FreeListAllocatorC1Emb:       ; @_ZN3bts17FreeListAllocatorC1Emb
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
	mov	w8, #1                          ; =0x1
	and	w8, w2, w8
	strb	w8, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldrb	w8, [sp, #15]
	and	w2, w8, #0x1
	bl	__ZN3bts17FreeListAllocatorC2Emb
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts17FreeListAllocator8allocateEm ; -- Begin function _ZN3bts17FreeListAllocator8allocateEm
	.weak_definition	__ZN3bts17FreeListAllocator8allocateEm
	.p2align	2
__ZN3bts17FreeListAllocator8allocateEm: ; @_ZN3bts17FreeListAllocator8allocateEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB56_2
	b	LBB56_1
LBB56_1:
	mov	x8, #1                          ; =0x1
	stur	x8, [x29, #-24]
	b	LBB56_2
LBB56_2:
	ldur	x0, [x29, #-24]
	mov	x1, #8                          ; =0x8
	bl	__ZN3bts8align_upEmm
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	stur	x0, [x29, #-32]
	ldr	x8, [x8, #32]
	str	x8, [sp, #40]
	b	LBB56_3
LBB56_3:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	subs	x8, x8, #0
	cset	w8, eq
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #20]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB56_7
	b	LBB56_4
LBB56_4:                                ;   in Loop: Header=BB56_3 Depth=1
	ldr	x8, [sp, #40]
	ldrb	w8, [x8, #32]
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #16]                   ; 4-byte Folded Spill
	tbz	w8, #0, LBB56_6
	b	LBB56_5
LBB56_5:                                ;   in Loop: Header=BB56_3 Depth=1
	ldr	x8, [sp, #40]
	ldr	x8, [x8]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	cset	w8, lo
	str	w8, [sp, #16]                   ; 4-byte Folded Spill
	b	LBB56_6
LBB56_6:                                ;   in Loop: Header=BB56_3 Depth=1
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	b	LBB56_7
LBB56_7:                                ;   in Loop: Header=BB56_3 Depth=1
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB56_9
	b	LBB56_8
LBB56_8:                                ;   in Loop: Header=BB56_3 Depth=1
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #24]
	str	x8, [sp, #40]
	b	LBB56_3
LBB56_9:
	ldr	x8, [sp, #40]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB56_11
	b	LBB56_10
LBB56_10:
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x9, #88]
	add	x8, x8, #1
	str	x8, [x9, #88]
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB56_14
LBB56_11:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #40]
	ldrb	w8, [x8, #33]
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	mov	w9, #1                          ; =0x1
	and	w8, w8, w9
	strb	w8, [sp, #39]
	ldr	x1, [sp, #40]
	ldur	x2, [x29, #-32]
	bl	__ZN3bts17FreeListAllocator15split_if_usefulEPNS0_11BlockHeaderEm
	ldr	w9, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #40]
	strb	wzr, [x10, #32]
	ldr	x10, [sp, #40]
	strb	w9, [x10, #33]
	ldur	x9, [x29, #-24]
	ldr	x10, [sp, #40]
	str	x9, [x10, #8]
	ldur	x10, [x29, #-24]
	ldr	x9, [x8, #40]
	add	x9, x9, x10
	str	x9, [x8, #40]
	ldr	x9, [sp, #40]
	ldr	x10, [x9]
	ldr	x9, [x8, #48]
	add	x9, x9, x10
	str	x9, [x8, #48]
	add	x0, x8, #56
	add	x1, x8, #48
	bl	__ZNSt3__13maxB8ne180100ImEERKT_S3_S3_
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x0]
	str	x8, [x9, #56]
	ldr	x8, [x9, #64]
	add	x8, x8, #1
	str	x8, [x9, #64]
	ldrb	w8, [sp, #39]
	tbz	w8, #0, LBB56_13
	b	LBB56_12
LBB56_12:
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x9, #80]
	add	x8, x8, #1
	str	x8, [x9, #80]
	b	LBB56_13
LBB56_13:
	ldr	x0, [sp, #40]
	bl	__ZN3bts17FreeListAllocator7payloadEPNS0_11BlockHeaderE
	stur	x0, [x29, #-8]
	b	LBB56_14
LBB56_14:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts17FreeListAllocator10deallocateEPv ; -- Begin function _ZN3bts17FreeListAllocator10deallocateEPv
	.weak_definition	__ZN3bts17FreeListAllocator10deallocateEPv
	.p2align	2
__ZN3bts17FreeListAllocator10deallocateEPv: ; @_ZN3bts17FreeListAllocator10deallocateEPv
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB57_2
	b	LBB57_1
LBB57_1:
	b	LBB57_12
LBB57_2:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	bl	__ZNK3bts17FreeListAllocator4ownsEPKv
	tbnz	w0, #0, LBB57_6
	b	LBB57_3
LBB57_3:
	mov	x0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp283:
	adrp	x1, l_.str.24@PAGE
	add	x1, x1, l_.str.24@PAGEOFF
	bl	__ZNSt16invalid_argumentC1B8ne180100EPKc
Ltmp284:
	b	LBB57_4
LBB57_4:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, __ZTISt16invalid_argument@GOTPAGE
	ldr	x1, [x1, __ZTISt16invalid_argument@GOTPAGEOFF]
	adrp	x2, __ZNSt16invalid_argumentD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt16invalid_argumentD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB57_5:
Ltmp285:
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-24]
	mov	x8, x1
	stur	w8, [x29, #-28]
	bl	___cxa_free_exception
	b	LBB57_13
LBB57_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZN3bts17FreeListAllocator12header_bytesEv
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	str	x8, [sp, #40]
	ldr	x8, [sp, #40]
	ldrb	w8, [x8, #32]
	tbz	w8, #0, LBB57_10
	b	LBB57_7
LBB57_7:
	mov	x0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp286:
	adrp	x1, l_.str.25@PAGE
	add	x1, x1, l_.str.25@PAGEOFF
	bl	__ZNSt16invalid_argumentC1B8ne180100EPKc
Ltmp287:
	b	LBB57_8
LBB57_8:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, __ZTISt16invalid_argument@GOTPAGE
	ldr	x1, [x1, __ZTISt16invalid_argument@GOTPAGEOFF]
	adrp	x2, __ZNSt16invalid_argumentD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt16invalid_argumentD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB57_9:
Ltmp288:
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-24]
	mov	x8, x1
	stur	w8, [x29, #-28]
	bl	___cxa_free_exception
	b	LBB57_13
LBB57_10:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #40]
	ldr	x10, [x9, #8]
	ldr	x9, [x8, #40]
	subs	x9, x9, x10
	str	x9, [x8, #40]
	ldr	x9, [sp, #40]
	ldr	x10, [x9]
	ldr	x9, [x8, #48]
	subs	x9, x9, x10
	str	x9, [x8, #48]
	ldr	x9, [sp, #40]
	str	xzr, [x9, #8]
	ldr	x10, [sp, #40]
	mov	w9, #1                          ; =0x1
	strb	w9, [x10, #32]
	ldr	x9, [x8, #72]
	add	x9, x9, #1
	str	x9, [x8, #72]
	ldrb	w8, [x8, #24]
	tbz	w8, #0, LBB57_12
	b	LBB57_11
LBB57_11:
	ldr	x0, [sp, #40]
	bl	__ZN3bts17FreeListAllocator8coalesceEPNS0_11BlockHeaderE
	b	LBB57_12
LBB57_12:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB57_13:
	ldur	x0, [x29, #-24]
	bl	__Unwind_Resume
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table57:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Lfunc_begin11-Lfunc_begin11    ; >> Call Site 1 <<
	.uleb128 Ltmp283-Lfunc_begin11          ;   Call between Lfunc_begin11 and Ltmp283
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp283-Lfunc_begin11          ; >> Call Site 2 <<
	.uleb128 Ltmp284-Ltmp283                ;   Call between Ltmp283 and Ltmp284
	.uleb128 Ltmp285-Lfunc_begin11          ;     jumps to Ltmp285
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp284-Lfunc_begin11          ; >> Call Site 3 <<
	.uleb128 Ltmp286-Ltmp284                ;   Call between Ltmp284 and Ltmp286
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp286-Lfunc_begin11          ; >> Call Site 4 <<
	.uleb128 Ltmp287-Ltmp286                ;   Call between Ltmp286 and Ltmp287
	.uleb128 Ltmp288-Lfunc_begin11          ;     jumps to Ltmp288
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp287-Lfunc_begin11          ; >> Call Site 5 <<
	.uleb128 Lfunc_end11-Ltmp287            ;   Call between Ltmp287 and Lfunc_end11
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end11:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNK3bts17FreeListAllocator5statsEv ; -- Begin function _ZNK3bts17FreeListAllocator5statsEv
	.weak_definition	__ZNK3bts17FreeListAllocator5statsEv
	.p2align	2
__ZNK3bts17FreeListAllocator5statsEv:   ; @_ZNK3bts17FreeListAllocator5statsEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZN3bts14AllocatorStatsC1Ev
	ldr	x10, [sp, #16]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x9, #16]
	str	x8, [x10]
	ldr	x8, [x9, #40]
	str	x8, [x10, #8]
	ldr	x8, [x9, #48]
	str	x8, [x10, #16]
	ldr	x8, [x9, #56]
	str	x8, [x10, #24]
	ldr	x8, [x9, #48]
	ldr	x9, [x9, #40]
	subs	x8, x8, x9
	cset	w8, ls
	tbnz	w8, #0, LBB58_2
	b	LBB58_1
LBB58_1:
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x9, #48]
	ldr	x9, [x9, #40]
	subs	x8, x8, x9
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB58_3
LBB58_2:
	mov	x8, #0                          ; =0x0
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB58_3
LBB58_3:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #16]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	str	x9, [x10, #48]
	ldr	x9, [x8, #64]
	str	x9, [x10, #72]
	ldr	x9, [x8, #72]
	str	x9, [x10, #80]
	ldr	x9, [x8, #80]
	str	x9, [x10, #88]
	ldr	x9, [x8, #88]
	str	x9, [x10, #96]
	ldr	x8, [x8, #32]
	stur	x8, [x29, #-16]
	b	LBB58_4
LBB58_4:                                ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB58_8
	b	LBB58_5
LBB58_5:                                ;   in Loop: Header=BB58_4 Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x9, #64]
	add	x8, x8, #1
	str	x8, [x9, #64]
	ldur	x8, [x29, #-16]
	ldrb	w8, [x8, #32]
	tbz	w8, #0, LBB58_7
	b	LBB58_6
LBB58_6:                                ;   in Loop: Header=BB58_4 Depth=1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldr	x10, [x9]
	ldr	x9, [x8, #32]
	add	x9, x9, x10
	str	x9, [x8, #32]
	add	x0, x8, #40
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__13maxB8ne180100ImEERKT_S3_S3_
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x0]
	str	x8, [x9, #40]
	b	LBB58_7
LBB58_7:                                ;   in Loop: Header=BB58_4 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	stur	x8, [x29, #-16]
	b	LBB58_4
LBB58_8:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x9, #32]
	ldr	x10, [x9, #40]
	subs	x8, x8, x10
	str	x8, [x9, #56]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts17FreeListAllocatorD1Ev ; -- Begin function _ZN3bts17FreeListAllocatorD1Ev
	.weak_def_can_be_hidden	__ZN3bts17FreeListAllocatorD1Ev
	.p2align	2
__ZN3bts17FreeListAllocatorD1Ev:        ; @_ZN3bts17FreeListAllocatorD1Ev
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
	bl	__ZN3bts17FreeListAllocatorD2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts17FreeListAllocatorC2Emb ; -- Begin function _ZN3bts17FreeListAllocatorC2Emb
	.weak_def_can_be_hidden	__ZN3bts17FreeListAllocatorC2Emb
	.p2align	2
__ZN3bts17FreeListAllocatorC2Emb:       ; @_ZN3bts17FreeListAllocatorC2Emb
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	and	w8, w2, #0x1
	sturb	w8, [x29, #-17]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	mov	x9, #8                          ; =0x8
	add	x8, x8, #8
	subs	x8, x8, #1
	udiv	x8, x8, x9
	str	x8, [x1]
	sub	x0, x29, #32
	mov	x8, #2                          ; =0x2
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	stur	x8, [x29, #-32]
	bl	__ZNSt3__13maxB8ne180100ImEERKT_S3_S3_
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [x0]
	add	x8, x8, #8
	bl	__ZNSt3__111make_uniqueB8ne180100IA_eEENS_11__unique_ifIT_E28__unique_array_unknown_boundEm
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	sub	x0, x29, #40
	stur	x8, [x29, #-40]
Ltmp289:
	bl	__ZNSt3__13maxB8ne180100ImEERKT_S3_S3_
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
Ltmp290:
	b	LBB60_1
LBB60_1:
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #64]                   ; 8-byte Folded Reload
	ldr	x9, [x9]
	lsl	x9, x9, #3
	str	x9, [x8, #16]
	ldurb	w9, [x29, #-17]
	and	w9, w9, #0x1
	strb	w9, [x8, #24]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #32]
	str	xzr, [x8, #40]
	str	xzr, [x8, #48]
	str	xzr, [x8, #56]
	str	xzr, [x8, #64]
	str	xzr, [x8, #72]
	str	xzr, [x8, #80]
	str	xzr, [x8, #88]
	ldr	x8, [x8, #16]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
Ltmp291:
	bl	__ZN3bts17FreeListAllocator12header_bytesEv
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp292:
	b	LBB60_2
LBB60_2:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	add	x9, x9, #8
	subs	x8, x8, x9
	cset	w8, hi
	tbnz	w8, #0, LBB60_7
	b	LBB60_3
LBB60_3:
	mov	x0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp297:
	adrp	x1, l_.str.23@PAGE
	add	x1, x1, l_.str.23@PAGEOFF
	bl	__ZNSt16invalid_argumentC1B8ne180100EPKc
Ltmp298:
	b	LBB60_4
LBB60_4:
Ltmp300:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, __ZTISt16invalid_argument@GOTPAGE
	ldr	x1, [x1, __ZTISt16invalid_argument@GOTPAGEOFF]
	adrp	x2, __ZNSt16invalid_argumentD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt16invalid_argumentD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
Ltmp301:
	b	LBB60_12
LBB60_5:
Ltmp302:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB60_10
LBB60_6:
Ltmp299:
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	bl	___cxa_free_exception
	b	LBB60_10
LBB60_7:
Ltmp293:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	bl	__ZN3bts17FreeListAllocator4dataEv
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp294:
	b	LBB60_8
LBB60_8:
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	str	xzr, [x9]
	str	xzr, [x9, #8]
                                        ; kill: def $x10 killed $xzr
	str	xzr, [x9, #16]
	str	xzr, [x9, #24]
	strb	wzr, [x9, #32]
	strb	wzr, [x9, #33]
	str	x9, [x8, #32]
	ldr	x8, [x8, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
Ltmp295:
	bl	__ZN3bts17FreeListAllocator12header_bytesEv
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp296:
	b	LBB60_9
LBB60_9:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x9
	ldr	x9, [x0, #32]
	str	x8, [x9]
	ldr	x9, [x0, #32]
	mov	w8, #1                          ; =0x1
	strb	w8, [x9, #32]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB60_10:
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	add	x0, x8, #8
	bl	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED1B8ne180100Ev
	b	LBB60_11
LBB60_11:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB60_12:
	brk	#0x1
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table60:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Lfunc_begin12-Lfunc_begin12    ; >> Call Site 1 <<
	.uleb128 Ltmp289-Lfunc_begin12          ;   Call between Lfunc_begin12 and Ltmp289
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp289-Lfunc_begin12          ; >> Call Site 2 <<
	.uleb128 Ltmp292-Ltmp289                ;   Call between Ltmp289 and Ltmp292
	.uleb128 Ltmp302-Lfunc_begin12          ;     jumps to Ltmp302
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp292-Lfunc_begin12          ; >> Call Site 3 <<
	.uleb128 Ltmp297-Ltmp292                ;   Call between Ltmp292 and Ltmp297
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp297-Lfunc_begin12          ; >> Call Site 4 <<
	.uleb128 Ltmp298-Ltmp297                ;   Call between Ltmp297 and Ltmp298
	.uleb128 Ltmp299-Lfunc_begin12          ;     jumps to Ltmp299
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp300-Lfunc_begin12          ; >> Call Site 5 <<
	.uleb128 Ltmp301-Ltmp300                ;   Call between Ltmp300 and Ltmp301
	.uleb128 Ltmp302-Lfunc_begin12          ;     jumps to Ltmp302
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp301-Lfunc_begin12          ; >> Call Site 6 <<
	.uleb128 Ltmp293-Ltmp301                ;   Call between Ltmp301 and Ltmp293
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp293-Lfunc_begin12          ; >> Call Site 7 <<
	.uleb128 Ltmp296-Ltmp293                ;   Call between Ltmp293 and Ltmp296
	.uleb128 Ltmp302-Lfunc_begin12          ;     jumps to Ltmp302
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp296-Lfunc_begin12          ; >> Call Site 8 <<
	.uleb128 Lfunc_end12-Ltmp296            ;   Call between Ltmp296 and Lfunc_end12
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end12:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__111make_uniqueB8ne180100IA_eEENS_11__unique_ifIT_E28__unique_array_unknown_boundEm ; -- Begin function _ZNSt3__111make_uniqueB8ne180100IA_eEENS_11__unique_ifIT_E28__unique_array_unknown_boundEm
	.globl	__ZNSt3__111make_uniqueB8ne180100IA_eEENS_11__unique_ifIT_E28__unique_array_unknown_boundEm
	.weak_definition	__ZNSt3__111make_uniqueB8ne180100IA_eEENS_11__unique_ifIT_E28__unique_array_unknown_boundEm
	.p2align	2
__ZNSt3__111make_uniqueB8ne180100IA_eEENS_11__unique_ifIT_E28__unique_array_unknown_boundEm: ; @_ZNSt3__111make_uniqueB8ne180100IA_eEENS_11__unique_ifIT_E28__unique_array_unknown_boundEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	stur	x8, [x29, #-8]
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	mov	x10, #8                         ; =0x8
	umulh	x9, x8, x10
	mul	x8, x8, x10
	subs	x9, x9, #0
	cset	w9, ne
	and	w9, w9, #0x1
	ands	w9, w9, #0x1
	csinv	x0, x8, xzr, eq
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__Znam
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	_bzero
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEEC1B8ne180100IPeLb1EvvEET_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB8ne180100ImEERKT_S3_S3_ ; -- Begin function _ZNSt3__13maxB8ne180100ImEERKT_S3_S3_
	.globl	__ZNSt3__13maxB8ne180100ImEERKT_S3_S3_
	.weak_definition	__ZNSt3__13maxB8ne180100ImEERKT_S3_S3_
	.p2align	2
__ZNSt3__13maxB8ne180100ImEERKT_S3_S3_: ; @_ZNSt3__13maxB8ne180100ImEERKT_S3_S3_
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
	ldr	x1, [sp, #16]
	bl	__ZNSt3__13maxB8ne180100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts17FreeListAllocator12header_bytesEv ; -- Begin function _ZN3bts17FreeListAllocator12header_bytesEv
	.weak_definition	__ZN3bts17FreeListAllocator12header_bytesEv
	.p2align	2
__ZN3bts17FreeListAllocator12header_bytesEv: ; @_ZN3bts17FreeListAllocator12header_bytesEv
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x0, #40                         ; =0x28
	mov	x1, #8                          ; =0x8
	bl	__ZN3bts8align_upEmm
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt16invalid_argumentC1B8ne180100EPKc ; -- Begin function _ZNSt16invalid_argumentC1B8ne180100EPKc
	.globl	__ZNSt16invalid_argumentC1B8ne180100EPKc
	.weak_def_can_be_hidden	__ZNSt16invalid_argumentC1B8ne180100EPKc
	.p2align	2
__ZNSt16invalid_argumentC1B8ne180100EPKc: ; @_ZNSt16invalid_argumentC1B8ne180100EPKc
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
	bl	__ZNSt16invalid_argumentC2B8ne180100EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts17FreeListAllocator4dataEv ; -- Begin function _ZN3bts17FreeListAllocator4dataEv
	.weak_definition	__ZN3bts17FreeListAllocator4dataEv
	.p2align	2
__ZN3bts17FreeListAllocator4dataEv:     ; @_ZN3bts17FreeListAllocator4dataEv
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
	add	x0, x8, #8
	bl	__ZNKSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEE3getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED1B8ne180100Ev ; -- Begin function _ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED1B8ne180100Ev
	.globl	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED1B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED1B8ne180100Ev
	.p2align	2
__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED1B8ne180100Ev: ; @_ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED1B8ne180100Ev
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
	bl	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEEC1B8ne180100IPeLb1EvvEET_ ; -- Begin function _ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEEC1B8ne180100IPeLb1EvvEET_
	.weak_def_can_be_hidden	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEEC1B8ne180100IPeLb1EvvEET_
	.p2align	2
__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEEC1B8ne180100IPeLb1EvvEET_: ; @_ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEEC1B8ne180100IPeLb1EvvEET_
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
	bl	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEEC2B8ne180100IPeLb1EvvEET_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEEC2B8ne180100IPeLb1EvvEET_ ; -- Begin function _ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEEC2B8ne180100IPeLb1EvvEET_
	.weak_def_can_be_hidden	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEEC2B8ne180100IPeLb1EvvEET_
	.p2align	2
__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEEC2B8ne180100IPeLb1EvvEET_: ; @_ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEEC2B8ne180100IPeLb1EvvEET_
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x1
	stur	x0, [x29, #-8]
	add	x1, sp, #16
	str	x8, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp303:
	add	x2, sp, #15
	bl	__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEEC1B8ne180100IRS1_NS_16__value_init_tagEEEOT_OT0_
Ltmp304:
	b	LBB68_1
LBB68_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB68_2:
Ltmp305:
	bl	___clang_call_terminate
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table68:
Lexception13:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Ltmp303-Lfunc_begin13          ; >> Call Site 1 <<
	.uleb128 Ltmp304-Ltmp303                ;   Call between Ltmp303 and Ltmp304
	.uleb128 Ltmp305-Lfunc_begin13          ;     jumps to Ltmp305
	.byte	1                               ;   On action: 1
Lcst_end13:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEEC1B8ne180100IRS1_NS_16__value_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEEC1B8ne180100IRS1_NS_16__value_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEEC1B8ne180100IRS1_NS_16__value_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEEC1B8ne180100IRS1_NS_16__value_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEEC1B8ne180100IRS1_NS_16__value_init_tagEEEOT_OT0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEEC2B8ne180100IRS1_NS_16__value_init_tagEEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEEC2B8ne180100IRS1_NS_16__value_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEEC2B8ne180100IRS1_NS_16__value_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEEC2B8ne180100IRS1_NS_16__value_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEEC2B8ne180100IRS1_NS_16__value_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEEC2B8ne180100IRS1_NS_16__value_init_tagEEEOT_OT0_
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
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__122__compressed_pair_elemIPeLi0ELb0EEC2B8ne180100IRS1_vEEOT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_eEELi1ELb1EEC2B8ne180100ENS_16__value_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemIPeLi0ELb0EEC2B8ne180100IRS1_vEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemIPeLi0ELb0EEC2B8ne180100IRS1_vEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemIPeLi0ELb0EEC2B8ne180100IRS1_vEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemIPeLi0ELb0EEC2B8ne180100IRS1_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemIPeLi0ELb0EEC2B8ne180100IRS1_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_eEELi1ELb1EEC2B8ne180100ENS_16__value_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_eEELi1ELb1EEC2B8ne180100ENS_16__value_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_eEELi1ELb1EEC2B8ne180100ENS_16__value_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_eEELi1ELb1EEC2B8ne180100ENS_16__value_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_eEELi1ELb1EEC2B8ne180100ENS_16__value_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_eEELi1ELb1EEC2B8ne180100ENS_16__value_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__13maxB8ne180100ImNS_6__lessIvvEEEERKT_S5_S5_T0_ ; -- Begin function _ZNSt3__13maxB8ne180100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.globl	__ZNSt3__13maxB8ne180100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.weak_definition	__ZNSt3__13maxB8ne180100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.p2align	2
__ZNSt3__13maxB8ne180100ImNS_6__lessIvvEEEERKT_S5_S5_T0_: ; @_ZNSt3__13maxB8ne180100ImNS_6__lessIvvEEEERKT_S5_S5_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	sub	x0, x29, #1
	bl	__ZNKSt3__16__lessIvvEclB8ne180100ImmEEbRKT_RKT0_
	tbz	w0, #0, LBB73_2
	b	LBB73_1
LBB73_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB73_3
LBB73_2:
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB73_3
LBB73_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts8align_upEmm            ; -- Begin function _ZN3bts8align_upEmm
	.weak_definition	__ZN3bts8align_upEmm
	.p2align	2
__ZN3bts8align_upEmm:                   ; @_ZN3bts8align_upEmm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	add	x8, x8, x9
	subs	x8, x8, #1
	ldr	x9, [sp]
	subs	x9, x9, #1
	bic	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt16invalid_argumentC2B8ne180100EPKc ; -- Begin function _ZNSt16invalid_argumentC2B8ne180100EPKc
	.globl	__ZNSt16invalid_argumentC2B8ne180100EPKc
	.weak_def_can_be_hidden	__ZNSt16invalid_argumentC2B8ne180100EPKc
	.p2align	2
__ZNSt16invalid_argumentC2B8ne180100EPKc: ; @_ZNSt16invalid_argumentC2B8ne180100EPKc
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
	bl	__ZNSt11logic_errorC2EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZTVSt16invalid_argument@GOTPAGE
	ldr	x8, [x8, __ZTVSt16invalid_argument@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEE3getB8ne180100Ev ; -- Begin function _ZNKSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEE3getB8ne180100Ev
	.globl	__ZNKSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEE3getB8ne180100Ev
	.weak_definition	__ZNKSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEE3getB8ne180100Ev
	.p2align	2
__ZNKSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEE3getB8ne180100Ev: ; @_ZNKSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEE3getB8ne180100Ev
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
	bl	__ZNKSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE5firstB8ne180100Ev
	ldr	x0, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE5firstB8ne180100Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE5firstB8ne180100Ev
	.globl	__ZNKSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE5firstB8ne180100Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE5firstB8ne180100Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE5firstB8ne180100Ev: ; @_ZNKSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE5firstB8ne180100Ev
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
	bl	__ZNKSt3__122__compressed_pair_elemIPeLi0ELb0EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemIPeLi0ELb0EE5__getB8ne180100Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemIPeLi0ELb0EE5__getB8ne180100Ev
	.globl	__ZNKSt3__122__compressed_pair_elemIPeLi0ELb0EE5__getB8ne180100Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemIPeLi0ELb0EE5__getB8ne180100Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemIPeLi0ELb0EE5__getB8ne180100Ev: ; @_ZNKSt3__122__compressed_pair_elemIPeLi0ELb0EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED2B8ne180100Ev ; -- Begin function _ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED2B8ne180100Ev
	.globl	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED2B8ne180100Ev
	.p2align	2
__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED2B8ne180100Ev: ; @_ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED2B8ne180100Ev
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
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEE5resetB8ne180100EDn
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEE5resetB8ne180100EDn ; -- Begin function _ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEE5resetB8ne180100EDn
	.globl	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEE5resetB8ne180100EDn
	.weak_definition	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEE5resetB8ne180100EDn
	.p2align	2
__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEE5resetB8ne180100EDn: ; @_ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEE5resetB8ne180100EDn
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
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE5firstB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x8]
	str	x8, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE5firstB8ne180100Ev
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	ldr	x8, [sp, #8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB80_2
	b	LBB80_1
LBB80_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE6secondB8ne180100Ev
	ldr	x1, [sp, #8]
	bl	__ZNKSt3__114default_deleteIA_eEclB8ne180100IeEENS2_20_EnableIfConvertibleIT_E4typeEPS5_
	b	LBB80_2
LBB80_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE5firstB8ne180100Ev ; -- Begin function _ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE5firstB8ne180100Ev
	.globl	__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE5firstB8ne180100Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE5firstB8ne180100Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE5firstB8ne180100Ev: ; @_ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE5firstB8ne180100Ev
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
	bl	__ZNSt3__122__compressed_pair_elemIPeLi0ELb0EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE6secondB8ne180100Ev ; -- Begin function _ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE6secondB8ne180100Ev
	.globl	__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE6secondB8ne180100Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE6secondB8ne180100Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE6secondB8ne180100Ev: ; @_ZNSt3__117__compressed_pairIPeNS_14default_deleteIA_eEEE6secondB8ne180100Ev
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
	bl	__ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_eEELi1ELb1EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNKSt3__114default_deleteIA_eEclB8ne180100IeEENS2_20_EnableIfConvertibleIT_E4typeEPS5_ ; -- Begin function _ZNKSt3__114default_deleteIA_eEclB8ne180100IeEENS2_20_EnableIfConvertibleIT_E4typeEPS5_
	.weak_definition	__ZNKSt3__114default_deleteIA_eEclB8ne180100IeEENS2_20_EnableIfConvertibleIT_E4typeEPS5_
	.p2align	2
__ZNKSt3__114default_deleteIA_eEclB8ne180100IeEENS2_20_EnableIfConvertibleIT_E4typeEPS5_: ; @_ZNKSt3__114default_deleteIA_eEclB8ne180100IeEENS2_20_EnableIfConvertibleIT_E4typeEPS5_
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
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB83_2
	b	LBB83_1
LBB83_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZdaPv
	b	LBB83_2
LBB83_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemIPeLi0ELb0EE5__getB8ne180100Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemIPeLi0ELb0EE5__getB8ne180100Ev
	.globl	__ZNSt3__122__compressed_pair_elemIPeLi0ELb0EE5__getB8ne180100Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemIPeLi0ELb0EE5__getB8ne180100Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemIPeLi0ELb0EE5__getB8ne180100Ev: ; @_ZNSt3__122__compressed_pair_elemIPeLi0ELb0EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_eEELi1ELb1EE5__getB8ne180100Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_eEELi1ELb1EE5__getB8ne180100Ev
	.globl	__ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_eEELi1ELb1EE5__getB8ne180100Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_eEELi1ELb1EE5__getB8ne180100Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_eEELi1ELb1EE5__getB8ne180100Ev: ; @_ZNSt3__122__compressed_pair_elemINS_14default_deleteIA_eEELi1ELb1EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts17FreeListAllocator15split_if_usefulEPNS0_11BlockHeaderEm ; -- Begin function _ZN3bts17FreeListAllocator15split_if_usefulEPNS0_11BlockHeaderEm
	.weak_definition	__ZN3bts17FreeListAllocator15split_if_usefulEPNS0_11BlockHeaderEm
	.p2align	2
__ZN3bts17FreeListAllocator15split_if_usefulEPNS0_11BlockHeaderEm: ; @_ZN3bts17FreeListAllocator15split_if_usefulEPNS0_11BlockHeaderEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZN3bts17FreeListAllocator12header_bytesEv
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x9, x9, x0
	add	x9, x9, #8
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB86_2
	b	LBB86_1
LBB86_1:
	b	LBB86_5
LBB86_2:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	stur	x8, [x29, #-32]
	ldur	x0, [x29, #-16]
	bl	__ZN3bts17FreeListAllocator7payloadEPNS0_11BlockHeaderE
	ldur	x8, [x29, #-24]
	add	x8, x0, x8
	str	x8, [sp, #40]
	ldr	x8, [sp, #40]
	str	xzr, [x8]
	str	xzr, [x8, #8]
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #16]
	str	xzr, [x8, #24]
	strb	wzr, [x8, #32]
	strb	wzr, [x8, #33]
	str	x8, [sp, #32]
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN3bts17FreeListAllocator12header_bytesEv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	ldr	x9, [sp, #32]
	str	x8, [x9]
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #32]
	str	x8, [x9, #16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #32]
	str	x8, [x9, #24]
	ldr	x9, [sp, #32]
	mov	w8, #1                          ; =0x1
	strb	w8, [x9, #32]
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #24]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB86_4
	b	LBB86_3
LBB86_3:
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #32]
	ldr	x9, [x9, #24]
	str	x8, [x9, #16]
	b	LBB86_4
LBB86_4:
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #24]
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	b	LBB86_5
LBB86_5:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts17FreeListAllocator7payloadEPNS0_11BlockHeaderE ; -- Begin function _ZN3bts17FreeListAllocator7payloadEPNS0_11BlockHeaderE
	.weak_definition	__ZN3bts17FreeListAllocator7payloadEPNS0_11BlockHeaderE
	.p2align	2
__ZN3bts17FreeListAllocator7payloadEPNS0_11BlockHeaderE: ; @_ZN3bts17FreeListAllocator7payloadEPNS0_11BlockHeaderE
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
	bl	__ZN3bts17FreeListAllocator12header_bytesEv
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, x0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK3bts17FreeListAllocator4ownsEPKv ; -- Begin function _ZNK3bts17FreeListAllocator4ownsEPKv
	.weak_definition	__ZNK3bts17FreeListAllocator4ownsEPKv
	.p2align	2
__ZNK3bts17FreeListAllocator4ownsEPKv:  ; @_ZNK3bts17FreeListAllocator4ownsEPKv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNK3bts17FreeListAllocator4dataEv
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZN3bts17FreeListAllocator12header_bytesEv
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x9, x0, x9
	subs	x8, x8, x9
	cset	w8, lo
	mov	w9, #0                          ; =0x0
	stur	w9, [x29, #-28]                 ; 4-byte Folded Spill
	tbnz	w8, #0, LBB88_2
	b	LBB88_1
LBB88_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x8, [x29, #-24]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNK3bts17FreeListAllocator4dataEv
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x9, [x9, #16]
	add	x9, x0, x9
	subs	x8, x8, x9
	cset	w8, lo
	stur	w8, [x29, #-28]                 ; 4-byte Folded Spill
	b	LBB88_2
LBB88_2:
	ldur	w8, [x29, #-28]                 ; 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts17FreeListAllocator8coalesceEPNS0_11BlockHeaderE ; -- Begin function _ZN3bts17FreeListAllocator8coalesceEPNS0_11BlockHeaderE
	.weak_definition	__ZN3bts17FreeListAllocator8coalesceEPNS0_11BlockHeaderE
	.p2align	2
__ZN3bts17FreeListAllocator8coalesceEPNS0_11BlockHeaderE: ; @_ZN3bts17FreeListAllocator8coalesceEPNS0_11BlockHeaderE
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
	bl	__ZN3bts17FreeListAllocator15merge_with_nextEPNS0_11BlockHeaderE
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB89_3
	b	LBB89_1
LBB89_1:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	ldrb	w8, [x8, #32]
	tbz	w8, #0, LBB89_3
	b	LBB89_2
LBB89_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZN3bts17FreeListAllocator15merge_with_nextEPNS0_11BlockHeaderE
	b	LBB89_3
LBB89_3:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK3bts17FreeListAllocator4dataEv ; -- Begin function _ZNK3bts17FreeListAllocator4dataEv
	.weak_definition	__ZNK3bts17FreeListAllocator4dataEv
	.p2align	2
__ZNK3bts17FreeListAllocator4dataEv:    ; @_ZNK3bts17FreeListAllocator4dataEv
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
	add	x0, x8, #8
	bl	__ZNKSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEE3getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts17FreeListAllocator15merge_with_nextEPNS0_11BlockHeaderE ; -- Begin function _ZN3bts17FreeListAllocator15merge_with_nextEPNS0_11BlockHeaderE
	.weak_definition	__ZN3bts17FreeListAllocator15merge_with_nextEPNS0_11BlockHeaderE
	.p2align	2
__ZN3bts17FreeListAllocator15merge_with_nextEPNS0_11BlockHeaderE: ; @_ZN3bts17FreeListAllocator15merge_with_nextEPNS0_11BlockHeaderE
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
	ldr	x8, [x8, #24]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB91_2
	b	LBB91_1
LBB91_1:
	ldr	x8, [sp]
	ldrb	w8, [x8, #32]
	tbnz	w8, #0, LBB91_3
	b	LBB91_2
LBB91_2:
	b	LBB91_5
LBB91_3:
	bl	__ZN3bts17FreeListAllocator12header_bytesEv
	ldr	x8, [sp]
	ldr	x8, [x8]
	add	x10, x0, x8
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	add	x8, x8, x10
	str	x8, [x9]
	ldr	x8, [sp]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #8]
	str	x8, [x9, #24]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB91_5
	b	LBB91_4
LBB91_4:
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #24]
	str	x8, [x9, #16]
	b	LBB91_5
LBB91_5:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts17FreeListAllocatorD2Ev ; -- Begin function _ZN3bts17FreeListAllocatorD2Ev
	.weak_def_can_be_hidden	__ZN3bts17FreeListAllocatorD2Ev
	.p2align	2
__ZN3bts17FreeListAllocatorD2Ev:        ; @_ZN3bts17FreeListAllocatorD2Ev
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
	add	x0, x8, #8
	bl	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED1B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts13BumpAllocatorC1Em     ; -- Begin function _ZN3bts13BumpAllocatorC1Em
	.weak_def_can_be_hidden	__ZN3bts13BumpAllocatorC1Em
	.p2align	2
__ZN3bts13BumpAllocatorC1Em:            ; @_ZN3bts13BumpAllocatorC1Em
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
	bl	__ZN3bts13BumpAllocatorC2Em
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC1B8ne180100Ev ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC1B8ne180100Ev
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC1B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC1B8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC1B8ne180100Ev: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC1B8ne180100Ev
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
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne180100EOS1_ ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne180100EOS1_
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne180100EOS1_
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne180100EOS1_
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne180100EOS1_: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne180100EOS1_
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
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x0, #8]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x0]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB95_2
	b	LBB95_1
LBB95_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJS1_EEEvDpOT_
	ldr	x8, [sp, #24]
	add	x8, x8, #8
	str	x8, [sp, #24]
	b	LBB95_3
LBB95_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEPS1_OT_
	str	x0, [sp, #24]
	b	LBB95_3
LBB95_3:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts13BumpAllocator8allocateEm ; -- Begin function _ZN3bts13BumpAllocator8allocateEm
	.weak_definition	__ZN3bts13BumpAllocator8allocateEm
	.p2align	2
__ZN3bts13BumpAllocator8allocateEm:     ; @_ZN3bts13BumpAllocator8allocateEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB96_2
	b	LBB96_1
LBB96_1:
	mov	x8, #1                          ; =0x1
	stur	x8, [x29, #-24]
	b	LBB96_2
LBB96_2:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8, #24]
	mov	x1, #8                          ; =0x8
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN3bts8align_upEmm
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	__ZN3bts8align_upEmm
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp, #24]
	ldr	x8, [sp, #32]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	cset	w8, hi
	tbnz	w8, #0, LBB96_4
	b	LBB96_3
LBB96_3:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [x9, #16]
	ldr	x10, [sp, #32]
	subs	x9, x9, x10
	subs	x8, x8, x9
	cset	w8, ls
	tbnz	w8, #0, LBB96_5
	b	LBB96_4
LBB96_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [x9, #56]
	add	x8, x8, #1
	str	x8, [x9, #56]
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB96_6
LBB96_5:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #32]
	ldr	x10, [sp, #24]
	add	x9, x9, x10
	str	x9, [x8, #24]
	ldur	x10, [x29, #-24]
	ldr	x9, [x8, #32]
	add	x9, x9, x10
	str	x9, [x8, #32]
	add	x0, x8, #40
	add	x1, x8, #24
	bl	__ZNSt3__13maxB8ne180100ImEERKT_S3_S3_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x0]
	str	x9, [x8, #40]
	ldr	x9, [x8, #48]
	add	x9, x9, #1
	str	x9, [x8, #48]
	add	x0, x8, #8
	bl	__ZNKSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEE3getB8ne180100Ev
	ldr	x8, [sp, #32]
	add	x8, x0, x8
	stur	x8, [x29, #-8]
	b	LBB96_6
LBB96_6:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE5beginB8ne180100Ev ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE5beginB8ne180100Ev
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE5beginB8ne180100Ev
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE5beginB8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE5beginB8ne180100Ev: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE5beginB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE11__make_iterB8ne180100EPS1_
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE3endB8ne180100Ev ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE3endB8ne180100Ev
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE3endB8ne180100Ev
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE3endB8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE3endB8ne180100Ev: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE3endB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0, #8]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE11__make_iterB8ne180100EPS1_
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1neB8ne180100IPPvEEbRKNS_11__wrap_iterIT_EES7_ ; -- Begin function _ZNSt3__1neB8ne180100IPPvEEbRKNS_11__wrap_iterIT_EES7_
	.globl	__ZNSt3__1neB8ne180100IPPvEEbRKNS_11__wrap_iterIT_EES7_
	.weak_definition	__ZNSt3__1neB8ne180100IPPvEEbRKNS_11__wrap_iterIT_EES7_
	.p2align	2
__ZNSt3__1neB8ne180100IPPvEEbRKNS_11__wrap_iterIT_EES7_: ; @_ZNSt3__1neB8ne180100IPPvEEbRKNS_11__wrap_iterIT_EES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__1eqB8ne180100IPPvEEbRKNS_11__wrap_iterIT_EES7_
	eor	w8, w0, #0x1
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__wrap_iterIPPvEdeB8ne180100Ev ; -- Begin function _ZNKSt3__111__wrap_iterIPPvEdeB8ne180100Ev
	.globl	__ZNKSt3__111__wrap_iterIPPvEdeB8ne180100Ev
	.weak_definition	__ZNKSt3__111__wrap_iterIPPvEdeB8ne180100Ev
	.p2align	2
__ZNKSt3__111__wrap_iterIPPvEdeB8ne180100Ev: ; @_ZNKSt3__111__wrap_iterIPPvEdeB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts13BumpAllocator10deallocateEPv ; -- Begin function _ZN3bts13BumpAllocator10deallocateEPv
	.weak_definition	__ZN3bts13BumpAllocator10deallocateEPv
	.p2align	2
__ZN3bts13BumpAllocator10deallocateEPv: ; @_ZN3bts13BumpAllocator10deallocateEPv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPPvEppB8ne180100Ev ; -- Begin function _ZNSt3__111__wrap_iterIPPvEppB8ne180100Ev
	.globl	__ZNSt3__111__wrap_iterIPPvEppB8ne180100Ev
	.weak_definition	__ZNSt3__111__wrap_iterIPPvEppB8ne180100Ev
	.p2align	2
__ZNSt3__111__wrap_iterIPPvEppB8ne180100Ev: ; @_ZNSt3__111__wrap_iterIPPvEppB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0]
	add	x8, x8, #8
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEED1B8ne180100Ev ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEED1B8ne180100Ev
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEED1B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEED1B8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEED1B8ne180100Ev: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEED1B8ne180100Ev
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
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEED2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts13BumpAllocatorD1Ev     ; -- Begin function _ZN3bts13BumpAllocatorD1Ev
	.weak_def_can_be_hidden	__ZN3bts13BumpAllocatorD1Ev
	.p2align	2
__ZN3bts13BumpAllocatorD1Ev:            ; @_ZN3bts13BumpAllocatorD1Ev
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
	bl	__ZN3bts13BumpAllocatorD2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts13BumpAllocatorC2Em     ; -- Begin function _ZN3bts13BumpAllocatorC2Em
	.weak_def_can_be_hidden	__ZN3bts13BumpAllocatorC2Em
	.p2align	2
__ZN3bts13BumpAllocatorC2Em:            ; @_ZN3bts13BumpAllocatorC2Em
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	mov	x10, #8                         ; =0x8
	add	x9, x8, #8
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	subs	x9, x9, #1
	udiv	x9, x9, x10
	str	x9, [x1]
	sub	x0, x29, #24
	stur	x8, [x29, #-24]
	bl	__ZNSt3__13maxB8ne180100ImEERKT_S3_S3_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x0]
	add	x8, x8, #8
	bl	__ZNSt3__111make_uniqueB8ne180100IA_eEENS_11__unique_ifIT_E28__unique_array_unknown_boundEm
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	sub	x0, x29, #32
	stur	x8, [x29, #-32]
Ltmp315:
	bl	__ZNSt3__13maxB8ne180100ImEERKT_S3_S3_
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp316:
	b	LBB105_1
LBB105_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	lsl	x8, x8, #3
	str	x8, [x0, #16]
	str	xzr, [x0, #24]
	str	xzr, [x0, #32]
	str	xzr, [x0, #40]
	str	xzr, [x0, #48]
	str	xzr, [x0, #56]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB105_2:
Ltmp317:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp, #40]
	mov	x9, x1
	str	w9, [sp, #36]
	add	x0, x8, #8
	bl	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED1B8ne180100Ev
	b	LBB105_3
LBB105_3:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table105:
Lexception14:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Lfunc_begin14-Lfunc_begin14    ; >> Call Site 1 <<
	.uleb128 Ltmp315-Lfunc_begin14          ;   Call between Lfunc_begin14 and Ltmp315
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp315-Lfunc_begin14          ; >> Call Site 2 <<
	.uleb128 Ltmp316-Ltmp315                ;   Call between Ltmp315 and Ltmp316
	.uleb128 Ltmp317-Lfunc_begin14          ;     jumps to Ltmp317
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp316-Lfunc_begin14          ; >> Call Site 3 <<
	.uleb128 Lfunc_end14-Ltmp316            ;   Call between Ltmp316 and Lfunc_end14
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end14:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC2B8ne180100Ev ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC2B8ne180100Ev
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC2B8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC2B8ne180100Ev: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEEC2B8ne180100Ev
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception15
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	add	x1, sp, #16
	str	xzr, [sp, #16]
Ltmp318:
	add	x0, x8, #16
	add	x2, sp, #15
	bl	__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEC1B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_
Ltmp319:
	b	LBB106_1
LBB106_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB106_2:
Ltmp320:
	bl	___clang_call_terminate
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table106:
Lexception15:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end15-Lcst_begin15
Lcst_begin15:
	.uleb128 Ltmp318-Lfunc_begin15          ; >> Call Site 1 <<
	.uleb128 Ltmp319-Ltmp318                ;   Call between Ltmp318 and Ltmp319
	.uleb128 Ltmp320-Lfunc_begin15          ;     jumps to Ltmp320
	.byte	1                               ;   On action: 1
Lcst_end15:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEC1B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEC1B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEC1B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEC1B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEC1B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEC2B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEC2B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEC2B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEC2B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEC2B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEEC2B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_
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
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EEC2B8ne180100IDnvEEOT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EEC2B8ne180100IDnvEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EEC2B8ne180100IDnvEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EEC2B8ne180100IDnvEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EEC2B8ne180100IDnvEEOT_: ; @_ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EEC2B8ne180100IDnvEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIPvEC2B8ne180100Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIPvEC2B8ne180100Ev ; -- Begin function _ZNSt3__19allocatorIPvEC2B8ne180100Ev
	.globl	__ZNSt3__19allocatorIPvEC2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIPvEC2B8ne180100Ev
	.p2align	2
__ZNSt3__19allocatorIPvEC2B8ne180100Ev: ; @_ZNSt3__19allocatorIPvEC2B8ne180100Ev
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
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPvEEEC2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPvEEEC2B8ne180100Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPvEEEC2B8ne180100Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPvEEEC2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPvEEEC2B8ne180100Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPvEEEC2B8ne180100Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIPvEEEC2B8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capB8ne180100Ev ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capB8ne180100Ev: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
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
	add	x0, x8, #16
	bl	__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJS1_EEEvDpOT_ ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJS1_EEEvDpOT_
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJS1_EEEvDpOT_
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJS1_EEEvDpOT_: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJS1_EEEvDpOT_
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception16
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, sp, #40
	mov	x2, #1                          ; =0x1
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne180100ERS4_m
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x0, [sp, #48]
	bl	__ZNSt3__112__to_addressB8ne180100IPvEEPT_S3_
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
Ltmp323:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructB8ne180100IS2_JS2_EvvEEvRS3_PT_DpOT0_
Ltmp324:
	b	LBB114_1
LBB114_1:
	add	x0, sp, #40
	ldr	x8, [sp, #48]
	add	x8, x8, #8
	str	x8, [sp, #48]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne180100Ev
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB114_2:
Ltmp325:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne180100Ev
	b	LBB114_3
LBB114_3:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table114:
Lexception16:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end16-Lcst_begin16
Lcst_begin16:
	.uleb128 Lfunc_begin16-Lfunc_begin16    ; >> Call Site 1 <<
	.uleb128 Ltmp323-Lfunc_begin16          ;   Call between Lfunc_begin16 and Ltmp323
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp323-Lfunc_begin16          ; >> Call Site 2 <<
	.uleb128 Ltmp324-Ltmp323                ;   Call between Ltmp323 and Ltmp324
	.uleb128 Ltmp325-Lfunc_begin16          ;     jumps to Ltmp325
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp324-Lfunc_begin16          ; >> Call Site 3 <<
	.uleb128 Lfunc_end16-Ltmp324            ;   Call between Ltmp324 and Lfunc_end16
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end16:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEPS1_OT_ ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEPS1_OT_
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEPS1_OT_
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEPS1_OT_: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21__push_back_slow_pathIS1_EEPS1_OT_
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception17
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-24]
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne180100Em
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeB8ne180100Ev
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	ldur	x3, [x29, #-24]
	add	x0, sp, #48
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC1EmmS4_
	ldur	x8, [x29, #-24]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldr	x0, [sp, #64]
	bl	__ZNSt3__112__to_addressB8ne180100IPvEEPT_S3_
	mov	x1, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
Ltmp326:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructB8ne180100IS2_JS2_EvvEEvRS3_PT_DpOT0_
Ltmp327:
	b	LBB115_1
LBB115_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #48
	ldr	x8, [sp, #64]
	add	x8, x8, #8
	str	x8, [sp, #64]
Ltmp328:
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
Ltmp329:
	b	LBB115_2
LBB115_2:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #48
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB115_3:
Ltmp330:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	add	x0, sp, #48
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED1Ev
	b	LBB115_4
LBB115_4:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table115:
Lexception17:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end17-Lcst_begin17
Lcst_begin17:
	.uleb128 Lfunc_begin17-Lfunc_begin17    ; >> Call Site 1 <<
	.uleb128 Ltmp326-Lfunc_begin17          ;   Call between Lfunc_begin17 and Ltmp326
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp326-Lfunc_begin17          ; >> Call Site 2 <<
	.uleb128 Ltmp329-Ltmp326                ;   Call between Ltmp326 and Ltmp329
	.uleb128 Ltmp330-Lfunc_begin17          ;     jumps to Ltmp330
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp329-Lfunc_begin17          ; >> Call Site 3 <<
	.uleb128 Lfunc_end17-Ltmp329            ;   Call between Ltmp329 and Lfunc_end17
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end17:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstB8ne180100Ev ; -- Begin function _ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstB8ne180100Ev
	.globl	__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstB8ne180100Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstB8ne180100Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstB8ne180100Ev: ; @_ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstB8ne180100Ev
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
	bl	__ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getB8ne180100Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getB8ne180100Ev
	.globl	__ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getB8ne180100Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getB8ne180100Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getB8ne180100Ev: ; @_ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne180100ERS4_m ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne180100ERS4_m
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne180100ERS4_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne180100ERS4_m
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne180100ERS4_m: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne180100ERS4_m
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC2B8ne180100ERS4_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructB8ne180100IS2_JS2_EvvEEvRS3_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructB8ne180100IS2_JS2_EvvEEvRS3_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructB8ne180100IS2_JS2_EvvEEvRS3_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructB8ne180100IS2_JS2_EvvEEvRS3_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructB8ne180100IS2_JS2_EvvEEvRS3_PT_DpOT0_
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
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__114__construct_atB8ne180100IPvJS1_EPS1_EEPT_S4_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
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
	add	x0, x8, #16
	bl	__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne180100IPvEEPT_S3_ ; -- Begin function _ZNSt3__112__to_addressB8ne180100IPvEEPT_S3_
	.globl	__ZNSt3__112__to_addressB8ne180100IPvEEPT_S3_
	.weak_definition	__ZNSt3__112__to_addressB8ne180100IPvEEPT_S3_
	.p2align	2
__ZNSt3__112__to_addressB8ne180100IPvEEPT_S3_: ; @_ZNSt3__112__to_addressB8ne180100IPvEEPT_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne180100Ev ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne180100Ev
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne180100Ev: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne180100Ev
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
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC2B8ne180100ERS4_m ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC2B8ne180100ERS4_m
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC2B8ne180100ERS4_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC2B8ne180100ERS4_m
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC2B8ne180100ERS4_m: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC2B8ne180100ERS4_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [x0, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	add	x8, x8, x9, lsl #3
	str	x8, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__construct_atB8ne180100IPvJS1_EPS1_EEPT_S4_DpOT0_ ; -- Begin function _ZNSt3__114__construct_atB8ne180100IPvJS1_EPS1_EEPT_S4_DpOT0_
	.globl	__ZNSt3__114__construct_atB8ne180100IPvJS1_EPS1_EEPT_S4_DpOT0_
	.weak_definition	__ZNSt3__114__construct_atB8ne180100IPvJS1_EPS1_EEPT_S4_DpOT0_
	.p2align	2
__ZNSt3__114__construct_atB8ne180100IPvJS1_EPS1_EEPT_S4_DpOT0_: ; @_ZNSt3__114__construct_atB8ne180100IPvJS1_EPS1_EEPT_S4_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__112construct_atB8ne180100IPvJS1_EPS1_EEPT_S4_DpOT0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112construct_atB8ne180100IPvJS1_EPS1_EEPT_S4_DpOT0_ ; -- Begin function _ZNSt3__112construct_atB8ne180100IPvJS1_EPS1_EEPT_S4_DpOT0_
	.globl	__ZNSt3__112construct_atB8ne180100IPvJS1_EPS1_EEPT_S4_DpOT0_
	.weak_definition	__ZNSt3__112construct_atB8ne180100IPvJS1_EPS1_EEPT_S4_DpOT0_
	.p2align	2
__ZNSt3__112construct_atB8ne180100IPvJS1_EPS1_EEPT_S4_DpOT0_: ; @_ZNSt3__112construct_atB8ne180100IPvJS1_EPS1_EEPT_S4_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondB8ne180100Ev ; -- Begin function _ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondB8ne180100Ev
	.globl	__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondB8ne180100Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondB8ne180100Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondB8ne180100Ev: ; @_ZNSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondB8ne180100Ev
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
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getB8ne180100Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getB8ne180100Ev
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getB8ne180100Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getB8ne180100Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getB8ne180100Ev: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD2B8ne180100Ev ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD2B8ne180100Ev
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD2B8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD2B8ne180100Ev: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD2B8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	ldr	x9, [x0]
	str	x8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne180100Em ; -- Begin function _ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne180100Em
	.globl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne180100Em
	.weak_definition	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne180100Em
	.p2align	2
__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne180100Em: ; @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne180100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8max_sizeEv
	str	x0, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	cset	w8, ls
	tbnz	w8, #0, LBB129_2
	b	LBB129_1
LBB129_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
LBB129_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityB8ne180100Ev
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	mov	x10, #2                         ; =0x2
	udiv	x9, x9, x10
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB129_4
	b	LBB129_3
LBB129_3:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB129_5
LBB129_4:
	ldr	x9, [sp, #24]
	mov	x8, #2                          ; =0x2
	mul	x8, x8, x9
	add	x0, sp, #16
	str	x8, [sp, #16]
	sub	x1, x29, #24
	bl	__ZNSt3__13maxB8ne180100ImEERKT_S3_S3_
	ldr	x8, [x0]
	stur	x8, [x29, #-8]
	b	LBB129_5
LBB129_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeB8ne180100Ev
	.globl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeB8ne180100Ev
	.weak_definition	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeB8ne180100Ev: ; @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC1EmmS4_ ; -- Begin function _ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC1EmmS4_
	.globl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC1EmmS4_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC1EmmS4_
	.p2align	2
__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC1EmmS4_: ; @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC1EmmS4_
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
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC2EmmS4_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_deleteB8ne180100Ev
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [x8, #8]
	sub	x0, x29, #48
	bl	__ZNSt3__116reverse_iteratorIPPvEC1B8ne180100ES2_
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [x8]
	add	x0, sp, #48
	bl	__ZNSt3__116reverse_iteratorIPPvEC1B8ne180100ES2_
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	add	x0, sp, #32
	bl	__ZNSt3__116reverse_iteratorIPPvEC1B8ne180100ES2_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-48]
	ldur	x2, [x29, #-40]
	ldr	x3, [sp, #48]
	ldr	x4, [sp, #56]
	ldr	x5, [sp, #32]
	ldr	x6, [sp, #40]
	bl	__ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPvEENS_16reverse_iteratorIPS2_EES6_S2_vEET1_RT_T0_SA_S7_
	mov	x8, x0
	sub	x0, x29, #32
	stur	x8, [x29, #-32]
	stur	x1, [x29, #-24]
	bl	__ZNKSt3__116reverse_iteratorIPPvE4baseB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	ldur	x8, [x29, #-16]
	add	x1, x8, #8
	bl	__ZNSt3__14swapB8ne180100IPPvEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #8
	add	x1, x8, #16
	bl	__ZNSt3__14swapB8ne180100IPPvEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__14swapB8ne180100IPPvEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeB8ne180100Ev
	mov	x1, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE14__annotate_newB8ne180100Em
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED1Ev ; -- Begin function _ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED1Ev
	.globl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED1Ev
	.p2align	2
__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED1Ev: ; @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED1Ev
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
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8max_sizeEv ; -- Begin function _ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8max_sizeEv
	.globl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8max_sizeEv
	.weak_definition	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8max_sizeEv
	.p2align	2
__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8max_sizeEv: ; @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8max_sizeEv
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception18
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE8max_sizeB8ne180100IS3_vvEEmRKS3_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp338:
	bl	__ZNSt3__13minB8ne180100ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp339:
	b	LBB134_1
LBB134_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB134_2:
Ltmp340:
	bl	___clang_call_terminate
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table134:
Lexception18:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end18-Lcst_begin18
Lcst_begin18:
	.uleb128 Ltmp338-Lfunc_begin18          ; >> Call Site 1 <<
	.uleb128 Ltmp339-Ltmp338                ;   Call between Ltmp338 and Ltmp339
	.uleb128 Ltmp340-Lfunc_begin18          ;     jumps to Ltmp340
	.byte	1                               ;   On action: 1
Lcst_end18:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
	.globl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
	.weak_definition	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev: ; @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	adrp	x0, l_.str.26@PAGE
	add	x0, x0, l_.str.26@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityB8ne180100Ev
	.globl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityB8ne180100Ev
	.weak_definition	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityB8ne180100Ev: ; @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityB8ne180100Ev
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
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE8max_sizeB8ne180100IS3_vvEEmRKS3_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPvEEE8max_sizeB8ne180100IS3_vvEEmRKS3_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE8max_sizeB8ne180100IS3_vvEEmRKS3_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE8max_sizeB8ne180100IS3_vvEEmRKS3_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE8max_sizeB8ne180100IS3_vvEEmRKS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	bl	__ZNSt3__114numeric_limitsImE3maxB8ne180100Ev
	mov	x8, #8                          ; =0x8
	udiv	x0, x0, x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	.globl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	.weak_definition	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev: ; @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
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
	add	x0, x8, #16
	bl	__ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114numeric_limitsIlE3maxB8ne180100Ev ; -- Begin function _ZNSt3__114numeric_limitsIlE3maxB8ne180100Ev
	.globl	__ZNSt3__114numeric_limitsIlE3maxB8ne180100Ev
	.weak_definition	__ZNSt3__114numeric_limitsIlE3maxB8ne180100Ev
	.p2align	2
__ZNSt3__114numeric_limitsIlE3maxB8ne180100Ev: ; @_ZNSt3__114numeric_limitsIlE3maxB8ne180100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne180100Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114numeric_limitsImE3maxB8ne180100Ev ; -- Begin function _ZNSt3__114numeric_limitsImE3maxB8ne180100Ev
	.globl	__ZNSt3__114numeric_limitsImE3maxB8ne180100Ev
	.weak_definition	__ZNSt3__114numeric_limitsImE3maxB8ne180100Ev
	.p2align	2
__ZNSt3__114numeric_limitsImE3maxB8ne180100Ev: ; @_ZNSt3__114numeric_limitsImE3maxB8ne180100Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne180100Ev
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne180100Ev ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne180100Ev
	.globl	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne180100Ev
	.weak_definition	__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne180100Ev
	.p2align	2
__ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne180100Ev: ; @_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ne180100Ev
	.cfi_startproc
; %bb.0:
	mov	x0, #-1                         ; =0xffffffffffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondB8ne180100Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondB8ne180100Ev
	.globl	__ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondB8ne180100Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondB8ne180100Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondB8ne180100Ev: ; @_ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE6secondB8ne180100Ev
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
	bl	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getB8ne180100Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getB8ne180100Ev
	.globl	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getB8ne180100Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getB8ne180100Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getB8ne180100Ev: ; @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIPvEELi1ELb1EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne180100Ev ; -- Begin function _ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne180100Ev
	.globl	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne180100Ev
	.weak_definition	__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne180100Ev
	.p2align	2
__ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne180100Ev: ; @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ne180100Ev
	.cfi_startproc
; %bb.0:
	mov	x0, #9223372036854775807        ; =0x7fffffffffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB8ne180100EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ne180100EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.weak_definition	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ne180100EPKc: ; @_ZNSt3__120__throw_length_errorB8ne180100EPKc
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception19
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	mov	x0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
Ltmp342:
	bl	__ZNSt12length_errorC1B8ne180100EPKc
Ltmp343:
	b	LBB145_1
LBB145_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, __ZTISt12length_error@GOTPAGE
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB145_2:
Ltmp344:
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	bl	___cxa_free_exception
	b	LBB145_3
LBB145_3:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table145:
Lexception19:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end19-Lcst_begin19
Lcst_begin19:
	.uleb128 Lfunc_begin19-Lfunc_begin19    ; >> Call Site 1 <<
	.uleb128 Ltmp342-Lfunc_begin19          ;   Call between Lfunc_begin19 and Ltmp342
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp342-Lfunc_begin19          ; >> Call Site 2 <<
	.uleb128 Ltmp343-Ltmp342                ;   Call between Ltmp342 and Ltmp343
	.uleb128 Ltmp344-Lfunc_begin19          ;     jumps to Ltmp344
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp343-Lfunc_begin19          ; >> Call Site 3 <<
	.uleb128 Lfunc_end19-Ltmp343            ;   Call between Ltmp343 and Lfunc_end19
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end19:
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
	bl	__ZNSt12length_errorC2B8ne180100EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt12length_errorC2B8ne180100EPKc ; -- Begin function _ZNSt12length_errorC2B8ne180100EPKc
	.globl	__ZNSt12length_errorC2B8ne180100EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC2B8ne180100EPKc
	.p2align	2
__ZNSt12length_errorC2B8ne180100EPKc:   ; @_ZNSt12length_errorC2B8ne180100EPKc
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
	bl	__ZNSt11logic_errorC2EPKc
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x8, __ZTVSt12length_error@GOTPAGE
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	.globl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	.weak_definition	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capB8ne180100Ev: ; @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
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
	add	x0, x8, #16
	bl	__ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstB8ne180100Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstB8ne180100Ev
	.globl	__ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstB8ne180100Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstB8ne180100Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstB8ne180100Ev: ; @_ZNKSt3__117__compressed_pairIPPvNS_9allocatorIS1_EEE5firstB8ne180100Ev
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
	bl	__ZNKSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getB8ne180100Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getB8ne180100Ev
	.globl	__ZNKSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getB8ne180100Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getB8ne180100Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getB8ne180100Ev: ; @_ZNKSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC2EmmS4_ ; -- Begin function _ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC2EmmS4_
	.globl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC2EmmS4_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC2EmmS4_
	.p2align	2
__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC2EmmS4_: ; @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC2EmmS4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	str	x3, [sp, #40]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	add	x1, sp, #32
                                        ; kill: def $x9 killed $xzr
	str	xzr, [sp, #32]
	ldr	x2, [sp, #40]
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEEC1B8ne180100IDnS5_EEOT_OT0_
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB151_2
	b	LBB151_1
LBB151_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	LBB151_3
LBB151_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x9]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-24]
	b	LBB151_3
LBB151_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldur	x9, [x29, #-32]
	add	x8, x8, x9, lsl #3
	str	x8, [x0, #16]
	str	x8, [x0, #8]
	ldr	x8, [x0]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9, lsl #3
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	x8, [x0]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEEC1B8ne180100IDnS5_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEEC1B8ne180100IDnS5_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEEC1B8ne180100IDnS5_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEEC1B8ne180100IDnS5_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEEC1B8ne180100IDnS5_EEOT_OT0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEEC2B8ne180100IDnS5_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m ; -- Begin function _ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m
	.globl	__ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m: ; @_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIPvEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIPvE8allocateB8ne180100Em
	str	x0, [sp, #16]
	ldr	x8, [sp]
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE7__allocB8ne180100Ev ; -- Begin function _ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	.globl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	.weak_definition	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	.p2align	2
__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE7__allocB8ne180100Ev: ; @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE7__allocB8ne180100Ev
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
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE6secondB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capB8ne180100Ev ; -- Begin function _ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	.globl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	.weak_definition	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	.p2align	2
__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capB8ne180100Ev: ; @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
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
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEEC2B8ne180100IDnS5_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEEC2B8ne180100IDnS5_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEEC2B8ne180100IDnS5_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEEC2B8ne180100IDnS5_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEEC2B8ne180100IDnS5_EEOT_OT0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EEC2B8ne180100IDnvEEOT_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]
	add	x0, x8, #8
	bl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EEC2B8ne180100IS4_vEEOT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EEC2B8ne180100IS4_vEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EEC2B8ne180100IS4_vEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EEC2B8ne180100IS4_vEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EEC2B8ne180100IS4_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EEC2B8ne180100IS4_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIPvE8allocateB8ne180100Em ; -- Begin function _ZNSt3__19allocatorIPvE8allocateB8ne180100Em
	.globl	__ZNSt3__19allocatorIPvE8allocateB8ne180100Em
	.weak_definition	__ZNSt3__19allocatorIPvE8allocateB8ne180100Em
	.p2align	2
__ZNSt3__19allocatorIPvE8allocateB8ne180100Em: ; @_ZNSt3__19allocatorIPvE8allocateB8ne180100Em
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
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE8max_sizeB8ne180100IS3_vvEEmRKS3_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, ls
	tbnz	w8, #0, LBB158_2
	b	LBB158_1
LBB158_1:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
LBB158_2:
	ldr	x8, [sp, #16]
	lsl	x0, x8, #3
	mov	x1, #8                          ; =0x8
	bl	__ZNSt3__117__libcpp_allocateB8ne180100Emm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZSt28__throw_bad_array_new_lengthB8ne180100v ; -- Begin function _ZSt28__throw_bad_array_new_lengthB8ne180100v
	.globl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
	.weak_definition	__ZSt28__throw_bad_array_new_lengthB8ne180100v
	.p2align	2
__ZSt28__throw_bad_array_new_lengthB8ne180100v: ; @_ZSt28__throw_bad_array_new_lengthB8ne180100v
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x0, #8                          ; =0x8
	bl	___cxa_allocate_exception
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt20bad_array_new_lengthC1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x1, __ZTISt20bad_array_new_length@GOTPAGE
	ldr	x1, [x1, __ZTISt20bad_array_new_length@GOTPAGEOFF]
	adrp	x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt20bad_array_new_lengthD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__libcpp_allocateB8ne180100Emm ; -- Begin function _ZNSt3__117__libcpp_allocateB8ne180100Emm
	.globl	__ZNSt3__117__libcpp_allocateB8ne180100Emm
	.weak_definition	__ZNSt3__117__libcpp_allocateB8ne180100Emm
	.p2align	2
__ZNSt3__117__libcpp_allocateB8ne180100Emm: ; @_ZNSt3__117__libcpp_allocateB8ne180100Emm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__124__is_overaligned_for_newB8ne180100Em
	tbz	w0, #0, LBB160_2
	b	LBB160_1
LBB160_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp]
	bl	__ZNSt3__121__libcpp_operator_newB8ne180100IJmSt11align_val_tEEEPvDpT_
	stur	x0, [x29, #-8]
	b	LBB160_3
LBB160_2:
	ldr	x0, [sp, #16]
	bl	__ZNSt3__121__libcpp_operator_newB8ne180100IJmEEEPvDpT_
	stur	x0, [x29, #-8]
	b	LBB160_3
LBB160_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__is_overaligned_for_newB8ne180100Em ; -- Begin function _ZNSt3__124__is_overaligned_for_newB8ne180100Em
	.globl	__ZNSt3__124__is_overaligned_for_newB8ne180100Em
	.weak_definition	__ZNSt3__124__is_overaligned_for_newB8ne180100Em
	.p2align	2
__ZNSt3__124__is_overaligned_for_newB8ne180100Em: ; @_ZNSt3__124__is_overaligned_for_newB8ne180100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #16
	cset	w8, hi
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__libcpp_operator_newB8ne180100IJmSt11align_val_tEEEPvDpT_ ; -- Begin function _ZNSt3__121__libcpp_operator_newB8ne180100IJmSt11align_val_tEEEPvDpT_
	.globl	__ZNSt3__121__libcpp_operator_newB8ne180100IJmSt11align_val_tEEEPvDpT_
	.weak_definition	__ZNSt3__121__libcpp_operator_newB8ne180100IJmSt11align_val_tEEEPvDpT_
	.p2align	2
__ZNSt3__121__libcpp_operator_newB8ne180100IJmSt11align_val_tEEEPvDpT_: ; @_ZNSt3__121__libcpp_operator_newB8ne180100IJmSt11align_val_tEEEPvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZnwmSt11align_val_t
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__libcpp_operator_newB8ne180100IJmEEEPvDpT_ ; -- Begin function _ZNSt3__121__libcpp_operator_newB8ne180100IJmEEEPvDpT_
	.globl	__ZNSt3__121__libcpp_operator_newB8ne180100IJmEEEPvDpT_
	.weak_definition	__ZNSt3__121__libcpp_operator_newB8ne180100IJmEEEPvDpT_
	.p2align	2
__ZNSt3__121__libcpp_operator_newB8ne180100IJmEEEPvDpT_: ; @_ZNSt3__121__libcpp_operator_newB8ne180100IJmEEEPvDpT_
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
	bl	__Znwm
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE6secondB8ne180100Ev ; -- Begin function _ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE6secondB8ne180100Ev
	.globl	__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE6secondB8ne180100Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE6secondB8ne180100Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE6secondB8ne180100Ev: ; @_ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE6secondB8ne180100Ev
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
	add	x0, x8, #8
	bl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EE5__getB8ne180100Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EE5__getB8ne180100Ev
	.globl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EE5__getB8ne180100Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EE5__getB8ne180100Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EE5__getB8ne180100Ev: ; @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIPvEELi1ELb0EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstB8ne180100Ev ; -- Begin function _ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstB8ne180100Ev
	.globl	__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstB8ne180100Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstB8ne180100Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstB8ne180100Ev: ; @_ZNSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstB8ne180100Ev
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
	bl	__ZNSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_deleteB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_deleteB8ne180100Ev
	.globl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_deleteB8ne180100Ev
	.weak_definition	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_deleteB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_deleteB8ne180100Ev: ; @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_deleteB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPvEENS_16reverse_iteratorIPS2_EES6_S2_vEET1_RT_T0_SA_S7_ ; -- Begin function _ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPvEENS_16reverse_iteratorIPS2_EES6_S2_vEET1_RT_T0_SA_S7_
	.globl	__ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPvEENS_16reverse_iteratorIPS2_EES6_S2_vEET1_RT_T0_SA_S7_
	.weak_definition	__ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPvEENS_16reverse_iteratorIPS2_EES6_S2_vEET1_RT_T0_SA_S7_
	.p2align	2
__ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPvEENS_16reverse_iteratorIPS2_EES6_S2_vEET1_RT_T0_SA_S7_: ; @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIPvEENS_16reverse_iteratorIPS2_EES6_S2_vEET1_RT_T0_SA_S7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-48]
	stur	x4, [x29, #-40]
	str	x5, [sp, #64]
	str	x6, [sp, #72]
	str	x0, [sp, #56]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-48]
	str	q0, [sp, #16]
	ldr	q0, [sp, #64]
	str	q0, [sp]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	ldr	x4, [sp]
	ldr	x5, [sp, #8]
	bl	__ZNSt3__14moveB8ne180100INS_16reverse_iteratorIPPvEES4_EET0_T_S6_S5_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPPvEC1B8ne180100ES2_ ; -- Begin function _ZNSt3__116reverse_iteratorIPPvEC1B8ne180100ES2_
	.globl	__ZNSt3__116reverse_iteratorIPPvEC1B8ne180100ES2_
	.weak_def_can_be_hidden	__ZNSt3__116reverse_iteratorIPPvEC1B8ne180100ES2_
	.p2align	2
__ZNSt3__116reverse_iteratorIPPvEC1B8ne180100ES2_: ; @_ZNSt3__116reverse_iteratorIPPvEC1B8ne180100ES2_
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
	bl	__ZNSt3__116reverse_iteratorIPPvEC2B8ne180100ES2_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116reverse_iteratorIPPvE4baseB8ne180100Ev ; -- Begin function _ZNKSt3__116reverse_iteratorIPPvE4baseB8ne180100Ev
	.globl	__ZNKSt3__116reverse_iteratorIPPvE4baseB8ne180100Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorIPPvE4baseB8ne180100Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorIPPvE4baseB8ne180100Ev: ; @_ZNKSt3__116reverse_iteratorIPPvE4baseB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB8ne180100IPPvEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_ ; -- Begin function _ZNSt3__14swapB8ne180100IPPvEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	.globl	__ZNSt3__14swapB8ne180100IPPvEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	.weak_definition	__ZNSt3__14swapB8ne180100IPPvEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	.p2align	2
__ZNSt3__14swapB8ne180100IPPvEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_: ; @_ZNSt3__14swapB8ne180100IPPvEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS4_EE5valueEvE4typeERS4_S7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE14__annotate_newB8ne180100Em ; -- Begin function _ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE14__annotate_newB8ne180100Em
	.globl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE14__annotate_newB8ne180100Em
	.weak_definition	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE14__annotate_newB8ne180100Em
	.p2align	2
__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE14__annotate_newB8ne180100Em: ; @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE14__annotate_newB8ne180100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14moveB8ne180100INS_16reverse_iteratorIPPvEES4_EET0_T_S6_S5_ ; -- Begin function _ZNSt3__14moveB8ne180100INS_16reverse_iteratorIPPvEES4_EET0_T_S6_S5_
	.globl	__ZNSt3__14moveB8ne180100INS_16reverse_iteratorIPPvEES4_EET0_T_S6_S5_
	.weak_definition	__ZNSt3__14moveB8ne180100INS_16reverse_iteratorIPPvEES4_EET0_T_S6_S5_
	.p2align	2
__ZNSt3__14moveB8ne180100INS_16reverse_iteratorIPPvEES4_EET0_T_S6_S5_: ; @_ZNSt3__14moveB8ne180100INS_16reverse_iteratorIPPvEES4_EET0_T_S6_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-64]
	stur	x5, [x29, #-56]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-48]
	str	q0, [sp, #16]
	ldur	q0, [x29, #-64]
	str	q0, [sp]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	ldr	x4, [sp]
	ldr	x5, [sp, #8]
	add	x8, sp, #48
	bl	__ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPPvEES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_
	ldr	q0, [sp, #64]
	stur	q0, [x29, #-16]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPPvEES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_ ; -- Begin function _ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPPvEES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_
	.globl	__ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPPvEES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_
	.weak_definition	__ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPPvEES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_
	.p2align	2
__ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPPvEES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_: ; @_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPPvEES5_S5_EENS_4pairIT0_T2_EES7_T1_S8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-24]
	str	x4, [sp, #48]
	str	x5, [sp, #56]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]
	ldr	q0, [sp, #48]
	str	q0, [sp]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	ldr	x4, [sp]
	ldr	x5, [sp, #8]
	bl	__ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPPvEES8_S8_EENS_4pairIT2_T4_EESA_T3_SB_
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPPvEES8_S8_EENS_4pairIT2_T4_EESA_T3_SB_ ; -- Begin function _ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPPvEES8_S8_EENS_4pairIT2_T4_EESA_T3_SB_
	.globl	__ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPPvEES8_S8_EENS_4pairIT2_T4_EESA_T3_SB_
	.weak_definition	__ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPPvEES8_S8_EENS_4pairIT2_T4_EESA_T3_SB_
	.p2align	2
__ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPPvEES8_S8_EENS_4pairIT2_T4_EESA_T3_SB_: ; @_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPPvEES8_S8_EENS_4pairIT2_T4_EESA_T3_SB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-24]
	str	x4, [sp, #48]
	str	x5, [sp, #56]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]
	ldr	q0, [sp, #48]
	str	q0, [sp]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	ldr	x4, [sp]
	ldr	x5, [sp, #8]
	bl	__ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPPvEESA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPPvEESA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_ ; -- Begin function _ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPPvEESA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_
	.globl	__ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPPvEESA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_
	.weak_definition	__ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPPvEESA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_
	.p2align	2
__ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPPvEESA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_: ; @_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPPvEESA_SA_Li0EEENS_4pairIT0_T2_EESC_T1_SD_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #368
	stp	x28, x27, [sp, #336]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #352]            ; 16-byte Folded Spill
	add	x29, sp, #352
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-64]
	stur	x5, [x29, #-56]
	ldur	q0, [x29, #-32]
	stur	q0, [x29, #-112]
	ldur	q0, [x29, #-48]
	stur	q0, [x29, #-128]
	ldur	x0, [x29, #-112]
	ldur	x1, [x29, #-104]
	ldur	x2, [x29, #-128]
	ldur	x3, [x29, #-120]
	sub	x8, x29, #96
	bl	__ZNSt3__114__unwrap_rangeB8ne180100INS_16reverse_iteratorIPPvEES4_EEDaT_T0_
	ldur	q0, [x29, #-96]
	str	q0, [sp, #160]
	ldur	q0, [x29, #-80]
	str	q0, [sp, #144]
	ldur	q0, [x29, #-64]
	str	q0, [sp, #112]
	ldr	x0, [sp, #112]
	ldr	x1, [sp, #120]
	bl	__ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPPvEENS_18__unwrap_iter_implIS4_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_
	str	x0, [sp, #128]
	str	x1, [sp, #136]
	ldr	x1, [sp, #160]
	ldr	x2, [sp, #168]
	ldr	x3, [sp, #144]
	ldr	x4, [sp, #152]
	ldr	x5, [sp, #128]
	ldr	x6, [sp, #136]
	sub	x8, x29, #160
	sub	x0, x29, #161
	bl	__ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPPvEES7_S7_EENS_4pairIT_T1_EES9_T0_SA_
	ldur	q0, [x29, #-32]
	str	q0, [sp, #80]
	ldur	q0, [x29, #-160]
	str	q0, [sp, #64]
	ldr	x0, [sp, #80]
	ldr	x1, [sp, #88]
	ldr	x2, [sp, #64]
	ldr	x3, [sp, #72]
	bl	__ZNSt3__114__rewrap_rangeB8ne180100INS_16reverse_iteratorIPPvEES4_S4_EET0_S5_T1_
	add	x8, sp, #96
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #96]
	str	x1, [sp, #104]
	ldur	q0, [x29, #-64]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-144]
	str	q0, [sp, #16]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	bl	__ZNSt3__113__rewrap_iterB8ne180100INS_16reverse_iteratorIPPvEES4_NS_18__unwrap_iter_implIS4_Lb0EEEEET_S7_T0_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x10, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x1
	add	x1, sp, #48
	str	x10, [sp, #48]
	str	x9, [sp, #56]
	bl	__ZNSt3__19make_pairB8ne180100INS_16reverse_iteratorIPPvEES4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	ldp	x29, x30, [sp, #352]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #336]            ; 16-byte Folded Reload
	add	sp, sp, #368
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__unwrap_rangeB8ne180100INS_16reverse_iteratorIPPvEES4_EEDaT_T0_ ; -- Begin function _ZNSt3__114__unwrap_rangeB8ne180100INS_16reverse_iteratorIPPvEES4_EEDaT_T0_
	.globl	__ZNSt3__114__unwrap_rangeB8ne180100INS_16reverse_iteratorIPPvEES4_EEDaT_T0_
	.weak_definition	__ZNSt3__114__unwrap_rangeB8ne180100INS_16reverse_iteratorIPPvEES4_EEDaT_T0_
	.p2align	2
__ZNSt3__114__unwrap_rangeB8ne180100INS_16reverse_iteratorIPPvEES4_EEDaT_T0_: ; @_ZNSt3__114__unwrap_rangeB8ne180100INS_16reverse_iteratorIPPvEES4_EEDaT_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	str	x2, [sp, #32]
	str	x3, [sp, #40]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #16]
	ldr	q0, [sp, #32]
	str	q0, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp]
	ldr	x3, [sp, #8]
	bl	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPPvEES4_E8__unwrapB8ne180100ES4_S4_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPPvEES7_S7_EENS_4pairIT_T1_EES9_T0_SA_ ; -- Begin function _ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPPvEES7_S7_EENS_4pairIT_T1_EES9_T0_SA_
	.weak_definition	__ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPPvEES7_S7_EENS_4pairIT_T1_EES9_T0_SA_
	.p2align	2
__ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPPvEES7_S7_EENS_4pairIT_T1_EES9_T0_SA_: ; @_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPPvEES7_S7_EENS_4pairIT_T1_EES9_T0_SA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-24]
	str	x5, [sp, #48]
	str	x6, [sp, #56]
	str	x0, [sp, #40]
	b	LBB178_1
LBB178_1:                               ; =>This Inner Loop Header: Depth=1
	sub	x0, x29, #16
	sub	x1, x29, #32
	bl	__ZNSt3__1neB8ne180100IPPvS2_EEbRKNS_16reverse_iteratorIT_EERKNS3_IT0_EE
	tbz	w0, #0, LBB178_3
	b	LBB178_2
LBB178_2:                               ;   in Loop: Header=BB178_1 Depth=1
	sub	x0, x29, #16
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ne180100IRNS_16reverse_iteratorIPPvEELi0EEEDTclsr3stdE4movedeclsr3stdE7declvalIRT_EEEEOS9_
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, sp, #48
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__116reverse_iteratorIPPvEdeB8ne180100Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x9]
	bl	__ZNSt3__116reverse_iteratorIPPvEppB8ne180100Ev
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__116reverse_iteratorIPPvEppB8ne180100Ev
	b	LBB178_1
LBB178_3:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	sub	x0, x29, #16
	add	x1, sp, #48
	bl	__ZNSt3__19make_pairB8ne180100INS_16reverse_iteratorIPPvEES4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPPvEENS_18__unwrap_iter_implIS4_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_ ; -- Begin function _ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPPvEENS_18__unwrap_iter_implIS4_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_
	.globl	__ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPPvEENS_18__unwrap_iter_implIS4_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_
	.weak_definition	__ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPPvEENS_18__unwrap_iter_implIS4_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_
	.p2align	2
__ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPPvEENS_18__unwrap_iter_implIS4_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_: ; @_ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPPvEENS_18__unwrap_iter_implIS4_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	q0, [sp, #16]
	str	q0, [sp]
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPPvEELb0EE8__unwrapB8ne180100ES4_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne180100INS_16reverse_iteratorIPPvEES4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_ ; -- Begin function _ZNSt3__19make_pairB8ne180100INS_16reverse_iteratorIPPvEES4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	.globl	__ZNSt3__19make_pairB8ne180100INS_16reverse_iteratorIPPvEES4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	.weak_definition	__ZNSt3__19make_pairB8ne180100INS_16reverse_iteratorIPPvEES4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	.p2align	2
__ZNSt3__19make_pairB8ne180100INS_16reverse_iteratorIPPvEES4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_: ; @_ZNSt3__19make_pairB8ne180100INS_16reverse_iteratorIPPvEES4_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x1, [x29, #-8]
	ldr	x2, [sp, #16]
	bl	__ZNSt3__14pairINS_16reverse_iteratorIPPvEES4_EC1B8ne180100IS4_S4_Li0EEEOT_OT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__rewrap_rangeB8ne180100INS_16reverse_iteratorIPPvEES4_S4_EET0_S5_T1_ ; -- Begin function _ZNSt3__114__rewrap_rangeB8ne180100INS_16reverse_iteratorIPPvEES4_S4_EET0_S5_T1_
	.globl	__ZNSt3__114__rewrap_rangeB8ne180100INS_16reverse_iteratorIPPvEES4_S4_EET0_S5_T1_
	.weak_definition	__ZNSt3__114__rewrap_rangeB8ne180100INS_16reverse_iteratorIPPvEES4_S4_EET0_S5_T1_
	.p2align	2
__ZNSt3__114__rewrap_rangeB8ne180100INS_16reverse_iteratorIPPvEES4_S4_EET0_S5_T1_: ; @_ZNSt3__114__rewrap_rangeB8ne180100INS_16reverse_iteratorIPPvEES4_S4_EET0_S5_T1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #40]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]
	ldr	q0, [sp, #32]
	str	q0, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp]
	ldr	x3, [sp, #8]
	bl	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPPvEES4_E8__rewrapB8ne180100ES4_S4_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__rewrap_iterB8ne180100INS_16reverse_iteratorIPPvEES4_NS_18__unwrap_iter_implIS4_Lb0EEEEET_S7_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB8ne180100INS_16reverse_iteratorIPPvEES4_NS_18__unwrap_iter_implIS4_Lb0EEEEET_S7_T0_
	.globl	__ZNSt3__113__rewrap_iterB8ne180100INS_16reverse_iteratorIPPvEES4_NS_18__unwrap_iter_implIS4_Lb0EEEEET_S7_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB8ne180100INS_16reverse_iteratorIPPvEES4_NS_18__unwrap_iter_implIS4_Lb0EEEEET_S7_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB8ne180100INS_16reverse_iteratorIPPvEES4_NS_18__unwrap_iter_implIS4_Lb0EEEEET_S7_T0_: ; @_ZNSt3__113__rewrap_iterB8ne180100INS_16reverse_iteratorIPPvEES4_NS_18__unwrap_iter_implIS4_Lb0EEEEET_S7_T0_
Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception20
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	str	x2, [sp, #48]
	str	x3, [sp, #56]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #32]
	ldr	q0, [sp, #48]
	str	q0, [sp, #16]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
Ltmp353:
	bl	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPPvEELb0EE8__rewrapB8ne180100ES4_S4_
	str	x0, [sp]                        ; 8-byte Folded Spill
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp354:
	b	LBB182_1
LBB182_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	stur	x9, [x29, #-16]
	stur	x8, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB182_2:
Ltmp355:
	bl	___clang_call_terminate
Lfunc_end20:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table182:
Lexception20:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end20-Lcst_begin20
Lcst_begin20:
	.uleb128 Ltmp353-Lfunc_begin20          ; >> Call Site 1 <<
	.uleb128 Ltmp354-Ltmp353                ;   Call between Ltmp353 and Ltmp354
	.uleb128 Ltmp355-Lfunc_begin20          ;     jumps to Ltmp355
	.byte	1                               ;   On action: 1
Lcst_end20:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPPvEES4_E8__unwrapB8ne180100ES4_S4_ ; -- Begin function _ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPPvEES4_E8__unwrapB8ne180100ES4_S4_
	.globl	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPPvEES4_E8__unwrapB8ne180100ES4_S4_
	.weak_definition	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPPvEES4_E8__unwrapB8ne180100ES4_S4_
	.p2align	2
__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPPvEES4_E8__unwrapB8ne180100ES4_S4_: ; @_ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPPvEES4_E8__unwrapB8ne180100ES4_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-24]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #48]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPPvEENS_18__unwrap_iter_implIS4_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_
	sub	x8, x29, #48
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-48]
	stur	x1, [x29, #-40]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	__ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPPvEENS_18__unwrap_iter_implIS4_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES8_
	mov	x9, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x8, x1
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	add	x2, sp, #32
	str	x9, [sp, #32]
	str	x8, [sp, #40]
	bl	__ZNSt3__14pairINS_16reverse_iteratorIPPvEES4_EC1B8ne180100IS4_S4_Li0EEEOT_OT0_
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairINS_16reverse_iteratorIPPvEES4_EC1B8ne180100IS4_S4_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairINS_16reverse_iteratorIPPvEES4_EC1B8ne180100IS4_S4_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairINS_16reverse_iteratorIPPvEES4_EC1B8ne180100IS4_S4_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairINS_16reverse_iteratorIPPvEES4_EC1B8ne180100IS4_S4_Li0EEEOT_OT0_: ; @_ZNSt3__14pairINS_16reverse_iteratorIPPvEES4_EC1B8ne180100IS4_S4_Li0EEEOT_OT0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairINS_16reverse_iteratorIPPvEES4_EC2B8ne180100IS4_S4_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairINS_16reverse_iteratorIPPvEES4_EC2B8ne180100IS4_S4_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairINS_16reverse_iteratorIPPvEES4_EC2B8ne180100IS4_S4_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairINS_16reverse_iteratorIPPvEES4_EC2B8ne180100IS4_S4_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairINS_16reverse_iteratorIPPvEES4_EC2B8ne180100IS4_S4_Li0EEEOT_OT0_: ; @_ZNSt3__14pairINS_16reverse_iteratorIPPvEES4_EC2B8ne180100IS4_S4_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	q0, [x8]
	str	q0, [x0]
	ldr	x8, [sp, #8]
	ldr	q0, [x8]
	str	q0, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1neB8ne180100IPPvS2_EEbRKNS_16reverse_iteratorIT_EERKNS3_IT0_EE ; -- Begin function _ZNSt3__1neB8ne180100IPPvS2_EEbRKNS_16reverse_iteratorIT_EERKNS3_IT0_EE
	.globl	__ZNSt3__1neB8ne180100IPPvS2_EEbRKNS_16reverse_iteratorIT_EERKNS3_IT0_EE
	.weak_definition	__ZNSt3__1neB8ne180100IPPvS2_EEbRKNS_16reverse_iteratorIT_EERKNS3_IT0_EE
	.p2align	2
__ZNSt3__1neB8ne180100IPPvS2_EEbRKNS_16reverse_iteratorIT_EERKNS3_IT0_EE: ; @_ZNSt3__1neB8ne180100IPPvS2_EEbRKNS_16reverse_iteratorIT_EERKNS3_IT0_EE
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
	bl	__ZNKSt3__116reverse_iteratorIPPvE4baseB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__116reverse_iteratorIPPvE4baseB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w8, ne
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ne180100IRNS_16reverse_iteratorIPPvEELi0EEEDTclsr3stdE4movedeclsr3stdE7declvalIRT_EEEEOS9_ ; -- Begin function _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ne180100IRNS_16reverse_iteratorIPPvEELi0EEEDTclsr3stdE4movedeclsr3stdE7declvalIRT_EEEEOS9_
	.globl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ne180100IRNS_16reverse_iteratorIPPvEELi0EEEDTclsr3stdE4movedeclsr3stdE7declvalIRT_EEEEOS9_
	.weak_definition	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ne180100IRNS_16reverse_iteratorIPPvEELi0EEEDTclsr3stdE4movedeclsr3stdE7declvalIRT_EEEEOS9_
	.p2align	2
__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ne180100IRNS_16reverse_iteratorIPPvEELi0EEEDTclsr3stdE4movedeclsr3stdE7declvalIRT_EEEEOS9_: ; @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ne180100IRNS_16reverse_iteratorIPPvEELi0EEEDTclsr3stdE4movedeclsr3stdE7declvalIRT_EEEEOS9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ne180100IRNS_16reverse_iteratorIPPvEEEEvv
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__116reverse_iteratorIPPvEdeB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116reverse_iteratorIPPvEdeB8ne180100Ev ; -- Begin function _ZNKSt3__116reverse_iteratorIPPvEdeB8ne180100Ev
	.globl	__ZNKSt3__116reverse_iteratorIPPvEdeB8ne180100Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorIPPvEdeB8ne180100Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorIPPvEdeB8ne180100Ev: ; @_ZNKSt3__116reverse_iteratorIPPvEdeB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x0, x8, #8
	str	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPPvEppB8ne180100Ev ; -- Begin function _ZNSt3__116reverse_iteratorIPPvEppB8ne180100Ev
	.globl	__ZNSt3__116reverse_iteratorIPPvEppB8ne180100Ev
	.weak_definition	__ZNSt3__116reverse_iteratorIPPvEppB8ne180100Ev
	.p2align	2
__ZNSt3__116reverse_iteratorIPPvEppB8ne180100Ev: ; @_ZNSt3__116reverse_iteratorIPPvEppB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	subs	x8, x8, #8
	str	x8, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ne180100IRNS_16reverse_iteratorIPPvEEEEvv ; -- Begin function _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ne180100IRNS_16reverse_iteratorIPPvEEEEvv
	.globl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ne180100IRNS_16reverse_iteratorIPPvEEEEvv
	.weak_definition	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ne180100IRNS_16reverse_iteratorIPPvEEEEvv
	.p2align	2
__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ne180100IRNS_16reverse_iteratorIPPvEEEEvv: ; @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ne180100IRNS_16reverse_iteratorIPPvEEEEvv
	.cfi_startproc
; %bb.0:
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPPvEELb0EE8__unwrapB8ne180100ES4_ ; -- Begin function _ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPPvEELb0EE8__unwrapB8ne180100ES4_
	.globl	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPPvEELb0EE8__unwrapB8ne180100ES4_
	.weak_definition	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPPvEELb0EE8__unwrapB8ne180100ES4_
	.p2align	2
__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPPvEELb0EE8__unwrapB8ne180100ES4_: ; @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPPvEELb0EE8__unwrapB8ne180100ES4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp]
	str	x1, [sp, #8]
	ldr	q0, [sp]
	str	q0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPPvEES4_E8__rewrapB8ne180100ES4_S4_ ; -- Begin function _ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPPvEES4_E8__rewrapB8ne180100ES4_S4_
	.globl	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPPvEES4_E8__rewrapB8ne180100ES4_S4_
	.weak_definition	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPPvEES4_E8__rewrapB8ne180100ES4_S4_
	.p2align	2
__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPPvEES4_E8__rewrapB8ne180100ES4_S4_: ; @_ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPPvEES4_E8__rewrapB8ne180100ES4_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #40]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]
	ldr	q0, [sp, #32]
	str	q0, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp]
	ldr	x3, [sp, #8]
	bl	__ZNSt3__113__rewrap_iterB8ne180100INS_16reverse_iteratorIPPvEES4_NS_18__unwrap_iter_implIS4_Lb0EEEEET_S7_T0_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPPvEELb0EE8__rewrapB8ne180100ES4_S4_ ; -- Begin function _ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPPvEELb0EE8__rewrapB8ne180100ES4_S4_
	.globl	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPPvEELb0EE8__rewrapB8ne180100ES4_S4_
	.weak_definition	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPPvEELb0EE8__rewrapB8ne180100ES4_S4_
	.p2align	2
__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPPvEELb0EE8__rewrapB8ne180100ES4_S4_: ; @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPPvEELb0EE8__rewrapB8ne180100ES4_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	x2, [sp]
	str	x3, [sp, #8]
	ldr	q0, [sp]
	str	q0, [sp, #32]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPPvEC2B8ne180100ES2_ ; -- Begin function _ZNSt3__116reverse_iteratorIPPvEC2B8ne180100ES2_
	.globl	__ZNSt3__116reverse_iteratorIPPvEC2B8ne180100ES2_
	.weak_def_can_be_hidden	__ZNSt3__116reverse_iteratorIPPvEC2B8ne180100ES2_
	.p2align	2
__ZNSt3__116reverse_iteratorIPPvEC2B8ne180100ES2_: ; @_ZNSt3__116reverse_iteratorIPPvEC2B8ne180100ES2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	ldr	x8, [sp]
	str	x8, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED2Ev ; -- Begin function _ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED2Ev
	.globl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED2Ev
	.p2align	2
__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED2Ev: ; @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED2Ev
Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception21
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-8]
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE5clearB8ne180100Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB195_3
	b	LBB195_1
LBB195_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	mov	x1, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x1, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
Ltmp362:
	bl	__ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE8capacityB8ne180100Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp363:
	b	LBB195_2
LBB195_2:
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE10deallocateB8ne180100ERS3_PS2_m
	b	LBB195_3
LBB195_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB195_4:
Ltmp364:
	bl	___clang_call_terminate
Lfunc_end21:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table195:
Lexception21:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end21-Lcst_begin21
Lcst_begin21:
	.uleb128 Ltmp362-Lfunc_begin21          ; >> Call Site 1 <<
	.uleb128 Ltmp363-Ltmp362                ;   Call between Ltmp362 and Ltmp363
	.uleb128 Ltmp364-Lfunc_begin21          ;     jumps to Ltmp364
	.byte	1                               ;   On action: 1
Lcst_end21:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase8:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE5clearB8ne180100Ev ; -- Begin function _ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE5clearB8ne180100Ev
	.globl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE5clearB8ne180100Ev
	.weak_definition	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE5clearB8ne180100Ev
	.p2align	2
__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE5clearB8ne180100Ev: ; @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE5clearB8ne180100Ev
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
	ldr	x1, [x0, #8]
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE10deallocateB8ne180100ERS3_PS2_m ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPvEEE10deallocateB8ne180100ERS3_PS2_m
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE10deallocateB8ne180100ERS3_PS2_m
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE10deallocateB8ne180100ERS3_PS2_m
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE10deallocateB8ne180100ERS3_PS2_m: ; @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE10deallocateB8ne180100ERS3_PS2_m
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIPvE10deallocateB8ne180100EPS1_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE8capacityB8ne180100Ev ; -- Begin function _ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE8capacityB8ne180100Ev
	.globl	__ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE8capacityB8ne180100Ev
	.weak_definition	__ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE8capacityB8ne180100Ev
	.p2align	2
__ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE8capacityB8ne180100Ev: ; @_ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE8capacityB8ne180100Ev
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
	bl	__ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_ ; -- Begin function _ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_
	.globl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_
	.weak_definition	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_
	.p2align	2
__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_: ; @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_
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
	ldr	x1, [sp, #16]
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_NS_17integral_constantIbLb0EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_NS_17integral_constantIbLb0EEE ; -- Begin function _ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_NS_17integral_constantIbLb0EEE
	.globl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_NS_17integral_constantIbLb0EEE
	.weak_definition	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_NS_17integral_constantIbLb0EEE
	.p2align	2
__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_NS_17integral_constantIbLb0EEE: ; @_ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_NS_17integral_constantIbLb0EEE
Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception22
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB200_1
LBB200_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB200_4
	b	LBB200_2
LBB200_2:                               ;   in Loop: Header=BB200_1 Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8, #16]
	subs	x0, x9, #8
	str	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB8ne180100IPvEEPT_S3_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp365:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE7destroyB8ne180100IS2_vvEEvRS3_PT_
Ltmp366:
	b	LBB200_3
LBB200_3:                               ;   in Loop: Header=BB200_1 Depth=1
	b	LBB200_1
LBB200_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB200_5:
Ltmp367:
	bl	___clang_call_terminate
Lfunc_end22:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table200:
Lexception22:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase9-Lttbaseref9
Lttbaseref9:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end22-Lcst_begin22
Lcst_begin22:
	.uleb128 Ltmp365-Lfunc_begin22          ; >> Call Site 1 <<
	.uleb128 Ltmp366-Ltmp365                ;   Call between Ltmp365 and Ltmp366
	.uleb128 Ltmp367-Lfunc_begin22          ;     jumps to Ltmp367
	.byte	1                               ;   On action: 1
Lcst_end22:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase9:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE7destroyB8ne180100IS2_vvEEvRS3_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPvEEE7destroyB8ne180100IS2_vvEEvRS3_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE7destroyB8ne180100IS2_vvEEvRS3_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE7destroyB8ne180100IS2_vvEEvRS3_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE7destroyB8ne180100IS2_vvEEvRS3_PT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp]
	bl	__ZNSt3__112__destroy_atB8ne180100IPvLi0EEEvPT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__destroy_atB8ne180100IPvLi0EEEvPT_ ; -- Begin function _ZNSt3__112__destroy_atB8ne180100IPvLi0EEEvPT_
	.globl	__ZNSt3__112__destroy_atB8ne180100IPvLi0EEEvPT_
	.weak_definition	__ZNSt3__112__destroy_atB8ne180100IPvLi0EEEvPT_
	.p2align	2
__ZNSt3__112__destroy_atB8ne180100IPvLi0EEEvPT_: ; @_ZNSt3__112__destroy_atB8ne180100IPvLi0EEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIPvE10deallocateB8ne180100EPS1_m ; -- Begin function _ZNSt3__19allocatorIPvE10deallocateB8ne180100EPS1_m
	.globl	__ZNSt3__19allocatorIPvE10deallocateB8ne180100EPS1_m
	.weak_definition	__ZNSt3__19allocatorIPvE10deallocateB8ne180100EPS1_m
	.p2align	2
__ZNSt3__19allocatorIPvE10deallocateB8ne180100EPS1_m: ; @_ZNSt3__19allocatorIPvE10deallocateB8ne180100EPS1_m
Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception23
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #8]
	lsl	x1, x8, #3
Ltmp369:
	mov	x2, #8                          ; =0x8
	bl	__ZNSt3__119__libcpp_deallocateB8ne180100EPvmm
Ltmp370:
	b	LBB203_1
LBB203_1:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB203_2:
Ltmp371:
	bl	___clang_call_terminate
Lfunc_end23:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table203:
Lexception23:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase10-Lttbaseref10
Lttbaseref10:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end23-Lcst_begin23
Lcst_begin23:
	.uleb128 Ltmp369-Lfunc_begin23          ; >> Call Site 1 <<
	.uleb128 Ltmp370-Ltmp369                ;   Call between Ltmp369 and Ltmp370
	.uleb128 Ltmp371-Lfunc_begin23          ;     jumps to Ltmp371
	.byte	1                               ;   On action: 1
Lcst_end23:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase10:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119__libcpp_deallocateB8ne180100EPvmm ; -- Begin function _ZNSt3__119__libcpp_deallocateB8ne180100EPvmm
	.globl	__ZNSt3__119__libcpp_deallocateB8ne180100EPvmm
	.weak_definition	__ZNSt3__119__libcpp_deallocateB8ne180100EPvmm
	.p2align	2
__ZNSt3__119__libcpp_deallocateB8ne180100EPvmm: ; @_ZNSt3__119__libcpp_deallocateB8ne180100EPvmm
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
	str	x2, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__124__is_overaligned_for_newB8ne180100Em
	tbz	w0, #0, LBB204_2
	b	LBB204_1
LBB204_1:
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp]
	bl	__ZNSt3__127__do_deallocate_handle_sizeB8ne180100IJSt11align_val_tEEEvPvmDpT_
	b	LBB204_3
LBB204_2:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__127__do_deallocate_handle_sizeB8ne180100IJEEEvPvmDpT_
	b	LBB204_3
LBB204_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__127__do_deallocate_handle_sizeB8ne180100IJSt11align_val_tEEEvPvmDpT_ ; -- Begin function _ZNSt3__127__do_deallocate_handle_sizeB8ne180100IJSt11align_val_tEEEvPvmDpT_
	.globl	__ZNSt3__127__do_deallocate_handle_sizeB8ne180100IJSt11align_val_tEEEvPvmDpT_
	.weak_definition	__ZNSt3__127__do_deallocate_handle_sizeB8ne180100IJSt11align_val_tEEEvPvmDpT_
	.p2align	2
__ZNSt3__127__do_deallocate_handle_sizeB8ne180100IJSt11align_val_tEEEvPvmDpT_: ; @_ZNSt3__127__do_deallocate_handle_sizeB8ne180100IJSt11align_val_tEEEvPvmDpT_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__124__libcpp_operator_deleteB8ne180100IJPvSt11align_val_tEEEvDpT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__127__do_deallocate_handle_sizeB8ne180100IJEEEvPvmDpT_ ; -- Begin function _ZNSt3__127__do_deallocate_handle_sizeB8ne180100IJEEEvPvmDpT_
	.globl	__ZNSt3__127__do_deallocate_handle_sizeB8ne180100IJEEEvPvmDpT_
	.weak_definition	__ZNSt3__127__do_deallocate_handle_sizeB8ne180100IJEEEvPvmDpT_
	.p2align	2
__ZNSt3__127__do_deallocate_handle_sizeB8ne180100IJEEEvPvmDpT_: ; @_ZNSt3__127__do_deallocate_handle_sizeB8ne180100IJEEEvPvmDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__124__libcpp_operator_deleteB8ne180100IJPvEEEvDpT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__libcpp_operator_deleteB8ne180100IJPvSt11align_val_tEEEvDpT_ ; -- Begin function _ZNSt3__124__libcpp_operator_deleteB8ne180100IJPvSt11align_val_tEEEvDpT_
	.globl	__ZNSt3__124__libcpp_operator_deleteB8ne180100IJPvSt11align_val_tEEEvDpT_
	.weak_definition	__ZNSt3__124__libcpp_operator_deleteB8ne180100IJPvSt11align_val_tEEEvDpT_
	.p2align	2
__ZNSt3__124__libcpp_operator_deleteB8ne180100IJPvSt11align_val_tEEEvDpT_: ; @_ZNSt3__124__libcpp_operator_deleteB8ne180100IJPvSt11align_val_tEEEvDpT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZdlPvSt11align_val_t
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__libcpp_operator_deleteB8ne180100IJPvEEEvDpT_ ; -- Begin function _ZNSt3__124__libcpp_operator_deleteB8ne180100IJPvEEEvDpT_
	.globl	__ZNSt3__124__libcpp_operator_deleteB8ne180100IJPvEEEvDpT_
	.weak_definition	__ZNSt3__124__libcpp_operator_deleteB8ne180100IJPvEEEvDpT_
	.p2align	2
__ZNSt3__124__libcpp_operator_deleteB8ne180100IJPvEEEvDpT_: ; @_ZNSt3__124__libcpp_operator_deleteB8ne180100IJPvEEEvDpT_
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
	bl	__ZdlPv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capB8ne180100Ev ; -- Begin function _ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	.globl	__ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	.weak_definition	__ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	.p2align	2
__ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capB8ne180100Ev: ; @_ZNKSt3__114__split_bufferIPvRNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
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
	add	x0, x8, #24
	bl	__ZNKSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstB8ne180100Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstB8ne180100Ev
	.globl	__ZNKSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstB8ne180100Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstB8ne180100Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstB8ne180100Ev: ; @_ZNKSt3__117__compressed_pairIPPvRNS_9allocatorIS1_EEE5firstB8ne180100Ev
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
	bl	__ZNKSt3__122__compressed_pair_elemIPPvLi0ELb0EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE11__make_iterB8ne180100EPS1_ ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE11__make_iterB8ne180100EPS1_
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE11__make_iterB8ne180100EPS1_
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE11__make_iterB8ne180100EPS1_
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE11__make_iterB8ne180100EPS1_: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE11__make_iterB8ne180100EPS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #8]
	sub	x0, x29, #8
	bl	__ZNSt3__111__wrap_iterIPPvEC1B8ne180100ES2_
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPPvEC1B8ne180100ES2_ ; -- Begin function _ZNSt3__111__wrap_iterIPPvEC1B8ne180100ES2_
	.globl	__ZNSt3__111__wrap_iterIPPvEC1B8ne180100ES2_
	.weak_def_can_be_hidden	__ZNSt3__111__wrap_iterIPPvEC1B8ne180100ES2_
	.p2align	2
__ZNSt3__111__wrap_iterIPPvEC1B8ne180100ES2_: ; @_ZNSt3__111__wrap_iterIPPvEC1B8ne180100ES2_
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
	bl	__ZNSt3__111__wrap_iterIPPvEC2B8ne180100ES2_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPPvEC2B8ne180100ES2_ ; -- Begin function _ZNSt3__111__wrap_iterIPPvEC2B8ne180100ES2_
	.globl	__ZNSt3__111__wrap_iterIPPvEC2B8ne180100ES2_
	.weak_def_can_be_hidden	__ZNSt3__111__wrap_iterIPPvEC2B8ne180100ES2_
	.p2align	2
__ZNSt3__111__wrap_iterIPPvEC2B8ne180100ES2_: ; @_ZNSt3__111__wrap_iterIPPvEC2B8ne180100ES2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1eqB8ne180100IPPvEEbRKNS_11__wrap_iterIT_EES7_ ; -- Begin function _ZNSt3__1eqB8ne180100IPPvEEbRKNS_11__wrap_iterIT_EES7_
	.globl	__ZNSt3__1eqB8ne180100IPPvEEbRKNS_11__wrap_iterIT_EES7_
	.weak_definition	__ZNSt3__1eqB8ne180100IPPvEEbRKNS_11__wrap_iterIT_EES7_
	.p2align	2
__ZNSt3__1eqB8ne180100IPPvEEbRKNS_11__wrap_iterIT_EES7_: ; @_ZNSt3__1eqB8ne180100IPPvEEbRKNS_11__wrap_iterIT_EES7_
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
	bl	__ZNKSt3__111__wrap_iterIPPvE4baseB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__111__wrap_iterIPPvE4baseB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__wrap_iterIPPvE4baseB8ne180100Ev ; -- Begin function _ZNKSt3__111__wrap_iterIPPvE4baseB8ne180100Ev
	.globl	__ZNKSt3__111__wrap_iterIPPvE4baseB8ne180100Ev
	.weak_definition	__ZNKSt3__111__wrap_iterIPPvE4baseB8ne180100Ev
	.p2align	2
__ZNKSt3__111__wrap_iterIPPvE4baseB8ne180100Ev: ; @_ZNKSt3__111__wrap_iterIPPvE4baseB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEED2B8ne180100Ev ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEED2B8ne180100Ev
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEED2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEED2B8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEED2B8ne180100Ev: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEED2B8ne180100Ev
Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception24
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp374:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorC1B8ne180100ERS4_
Ltmp375:
	b	LBB216_1
LBB216_1:
Ltmp376:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorclB8ne180100Ev
Ltmp377:
	b	LBB216_2
LBB216_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB216_3:
Ltmp378:
	bl	___clang_call_terminate
Lfunc_end24:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table216:
Lexception24:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase11-Lttbaseref11
Lttbaseref11:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end24-Lcst_begin24
Lcst_begin24:
	.uleb128 Ltmp374-Lfunc_begin24          ; >> Call Site 1 <<
	.uleb128 Ltmp377-Ltmp374                ;   Call between Ltmp374 and Ltmp377
	.uleb128 Ltmp378-Lfunc_begin24          ;     jumps to Ltmp378
	.byte	1                               ;   On action: 1
Lcst_end24:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase11:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorC1B8ne180100ERS4_ ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorC1B8ne180100ERS4_
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorC1B8ne180100ERS4_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorC1B8ne180100ERS4_
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorC1B8ne180100ERS4_: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorC1B8ne180100ERS4_
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
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorC2B8ne180100ERS4_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorclB8ne180100Ev ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorclB8ne180100Ev
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorclB8ne180100Ev
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorclB8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorclB8ne180100Ev: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorclB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB218_2
	b	LBB218_1
LBB218_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__clearB8ne180100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_deleteB8ne180100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityB8ne180100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE10deallocateB8ne180100ERS3_PS2_m
	b	LBB218_2
LBB218_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorC2B8ne180100ERS4_ ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorC2B8ne180100ERS4_
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorC2B8ne180100ERS4_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorC2B8ne180100ERS4_
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorC2B8ne180100ERS4_: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE16__destroy_vectorC2B8ne180100ERS4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__clearB8ne180100Ev ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__clearB8ne180100Ev
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__clearB8ne180100Ev
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__clearB8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__clearB8ne180100Ev: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__clearB8ne180100Ev
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
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne180100EPS1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne180100EPS1_ ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne180100EPS1_
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne180100EPS1_
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne180100EPS1_
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne180100EPS1_: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne180100EPS1_
Lfunc_begin25:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception25
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	b	LBB221_1
LBB221_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB221_4
	b	LBB221_2
LBB221_2:                               ;   in Loop: Header=BB221_1 Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #8
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB8ne180100IPvEEPT_S3_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp380:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE7destroyB8ne180100IS2_vvEEvRS3_PT_
Ltmp381:
	b	LBB221_3
LBB221_3:                               ;   in Loop: Header=BB221_1 Depth=1
	b	LBB221_1
LBB221_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB221_5:
Ltmp382:
	bl	___clang_call_terminate
Lfunc_end25:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table221:
Lexception25:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase12-Lttbaseref12
Lttbaseref12:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end25-Lcst_begin25
Lcst_begin25:
	.uleb128 Ltmp380-Lfunc_begin25          ; >> Call Site 1 <<
	.uleb128 Ltmp381-Ltmp380                ;   Call between Ltmp380 and Ltmp381
	.uleb128 Ltmp382-Lfunc_begin25          ;     jumps to Ltmp382
	.byte	1                               ;   On action: 1
Lcst_end25:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase12:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN3bts13BumpAllocatorD2Ev     ; -- Begin function _ZN3bts13BumpAllocatorD2Ev
	.weak_def_can_be_hidden	__ZN3bts13BumpAllocatorD2Ev
	.p2align	2
__ZN3bts13BumpAllocatorD2Ev:            ; @_ZN3bts13BumpAllocatorD2Ev
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
	add	x0, x8, #8
	bl	__ZNSt3__110unique_ptrIA_eNS_14default_deleteIS1_EEED1B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7reserveEm ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7reserveEm
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7reserveEm
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7reserveEm
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7reserveEm: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7reserveEm
Lfunc_begin26:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception26
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8capacityB8ne180100Ev
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, ls
	tbnz	w8, #0, LBB223_6
	b	LBB223_1
LBB223_1:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE8max_sizeEv
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, ls
	tbnz	w8, #0, LBB223_3
	b	LBB223_2
LBB223_2:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE20__throw_length_errorB8ne180100Ev
LBB223_3:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeB8ne180100Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, x0
	ldur	x3, [x29, #-24]
	add	x0, sp, #64
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC1EmmS4_
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
Ltmp383:
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
Ltmp384:
	b	LBB223_4
LBB223_4:
	add	x0, sp, #64
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED1Ev
	b	LBB223_6
LBB223_5:
Ltmp385:
	str	x0, [sp, #56]
	mov	x8, x1
	str	w8, [sp, #52]
	add	x0, sp, #64
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED1Ev
	b	LBB223_7
LBB223_6:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB223_7:
	ldr	x0, [sp, #56]
	bl	__Unwind_Resume
Lfunc_end26:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table223:
Lexception26:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end26-Lcst_begin26
Lcst_begin26:
	.uleb128 Lfunc_begin26-Lfunc_begin26    ; >> Call Site 1 <<
	.uleb128 Ltmp383-Lfunc_begin26          ;   Call between Lfunc_begin26 and Ltmp383
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp383-Lfunc_begin26          ; >> Call Site 2 <<
	.uleb128 Ltmp384-Ltmp383                ;   Call between Ltmp383 and Ltmp384
	.uleb128 Ltmp385-Lfunc_begin26          ;     jumps to Ltmp385
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp384-Lfunc_begin26          ; >> Call Site 3 <<
	.uleb128 Lfunc_end26-Ltmp384            ;   Call between Ltmp384 and Lfunc_end26
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end26:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZN12_GLOBAL__N_18xorshiftERy
__ZN12_GLOBAL__N_18xorshiftERy:         ; @_ZN12_GLOBAL__N_18xorshiftERy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x10, [x8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	eor	x8, x8, x10, lsl #13
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x10, [x8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	eor	x8, x8, x10, lsr #7
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x10, [x8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	eor	x8, x8, x10, lsl #17
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE5emptyB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE5emptyB8ne180100Ev
	.globl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE5emptyB8ne180100Ev
	.weak_definition	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE5emptyB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE5emptyB8ne180100Ev: ; @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE5emptyB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEixB8ne180100Em ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEEixB8ne180100Em
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEixB8ne180100Em
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEixB8ne180100Em
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEEixB8ne180100Em: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEEixB8ne180100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	add	x0, x8, x9, lsl #3
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE4backB8ne180100Ev ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE4backB8ne180100Ev
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE4backB8ne180100Ev
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE4backB8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE4backB8ne180100Ev: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE4backB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	subs	x0, x8, #8
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE8pop_backEv ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE8pop_backEv
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE8pop_backEv
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE8pop_backEv
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE8pop_backEv: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE8pop_backEv
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
	ldr	x8, [x0, #8]
	subs	x1, x8, #8
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne180100ERKS1_ ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne180100ERKS1_
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne180100ERKS1_
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne180100ERKS1_
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne180100ERKS1_: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9push_backB8ne180100ERKS1_
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
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x0, #8]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE9__end_capB8ne180100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x0]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB229_2
	b	LBB229_1
LBB229_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_
	ldr	x8, [sp, #24]
	add	x8, x8, #8
	str	x8, [sp, #24]
	b	LBB229_3
LBB229_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21__push_back_slow_pathIRKS1_EEPS1_OT_
	str	x0, [sp, #24]
	b	LBB229_3
LBB229_3:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_ ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE17__destruct_at_endB8ne180100EPS1_
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
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #8]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__base_destruct_at_endB8ne180100EPS1_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_shrinkB8ne180100Em
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_shrinkB8ne180100Em ; -- Begin function _ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_shrinkB8ne180100Em
	.globl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_shrinkB8ne180100Em
	.weak_definition	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_shrinkB8ne180100Em
	.p2align	2
__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_shrinkB8ne180100Em: ; @_ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE17__annotate_shrinkB8ne180100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_ ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE22__construct_one_at_endB8ne180100IJRKS1_EEEvDpOT_
Lfunc_begin27:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception27
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, sp, #40
	mov	x2, #1                          ; =0x1
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionC1B8ne180100ERS4_m
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x0, [sp, #48]
	bl	__ZNSt3__112__to_addressB8ne180100IPvEEPT_S3_
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
Ltmp391:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructB8ne180100IS2_JRKS2_EvvEEvRS3_PT_DpOT0_
Ltmp392:
	b	LBB232_1
LBB232_1:
	add	x0, sp, #40
	ldr	x8, [sp, #48]
	add	x8, x8, #8
	str	x8, [sp, #48]
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne180100Ev
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB232_2:
Ltmp393:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21_ConstructTransactionD1B8ne180100Ev
	b	LBB232_3
LBB232_3:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end27:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table232:
Lexception27:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end27-Lcst_begin27
Lcst_begin27:
	.uleb128 Lfunc_begin27-Lfunc_begin27    ; >> Call Site 1 <<
	.uleb128 Ltmp391-Lfunc_begin27          ;   Call between Lfunc_begin27 and Ltmp391
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp391-Lfunc_begin27          ; >> Call Site 2 <<
	.uleb128 Ltmp392-Ltmp391                ;   Call between Ltmp391 and Ltmp392
	.uleb128 Ltmp393-Lfunc_begin27          ;     jumps to Ltmp393
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp392-Lfunc_begin27          ; >> Call Site 3 <<
	.uleb128 Lfunc_end27-Ltmp392            ;   Call between Ltmp392 and Lfunc_end27
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end27:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21__push_back_slow_pathIRKS1_EEPS1_OT_ ; -- Begin function _ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21__push_back_slow_pathIRKS1_EEPS1_OT_
	.weak_definition	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21__push_back_slow_pathIRKS1_EEPS1_OT_
	.p2align	2
__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21__push_back_slow_pathIRKS1_EEPS1_OT_: ; @_ZNSt3__16vectorIPvNS_9allocatorIS1_EEE21__push_back_slow_pathIRKS1_EEPS1_OT_
Lfunc_begin28:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception28
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE7__allocB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-24]
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE11__recommendB8ne180100Em
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIPvNS_9allocatorIS1_EEE4sizeB8ne180100Ev
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	ldur	x3, [x29, #-24]
	add	x0, sp, #48
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEEC1EmmS4_
	ldur	x8, [x29, #-24]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldr	x0, [sp, #64]
	bl	__ZNSt3__112__to_addressB8ne180100IPvEEPT_S3_
	mov	x1, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
Ltmp394:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructB8ne180100IS2_JRKS2_EvvEEvRS3_PT_DpOT0_
Ltmp395:
	b	LBB233_1
LBB233_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #48
	ldr	x8, [sp, #64]
	add	x8, x8, #8
	str	x8, [sp, #64]
Ltmp396:
	bl	__ZNSt3__16vectorIPvNS_9allocatorIS1_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS1_RS3_EE
Ltmp397:
	b	LBB233_2
LBB233_2:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #48
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB233_3:
Ltmp398:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	add	x0, sp, #48
	bl	__ZNSt3__114__split_bufferIPvRNS_9allocatorIS1_EEED1Ev
	b	LBB233_4
LBB233_4:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
Lfunc_end28:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table233:
Lexception28:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end28-Lcst_begin28
Lcst_begin28:
	.uleb128 Lfunc_begin28-Lfunc_begin28    ; >> Call Site 1 <<
	.uleb128 Ltmp394-Lfunc_begin28          ;   Call between Lfunc_begin28 and Ltmp394
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp394-Lfunc_begin28          ; >> Call Site 2 <<
	.uleb128 Ltmp397-Ltmp394                ;   Call between Ltmp394 and Ltmp397
	.uleb128 Ltmp398-Lfunc_begin28          ;     jumps to Ltmp398
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp397-Lfunc_begin28          ; >> Call Site 3 <<
	.uleb128 Lfunc_end28-Ltmp397            ;   Call between Ltmp397 and Lfunc_end28
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end28:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructB8ne180100IS2_JRKS2_EvvEEvRS3_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructB8ne180100IS2_JRKS2_EvvEEvRS3_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructB8ne180100IS2_JRKS2_EvvEEvRS3_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructB8ne180100IS2_JRKS2_EvvEEvRS3_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIPvEEE9constructB8ne180100IS2_JRKS2_EvvEEvRS3_PT_DpOT0_
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
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__114__construct_atB8ne180100IPvJRKS1_EPS1_EEPT_S6_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__construct_atB8ne180100IPvJRKS1_EPS1_EEPT_S6_DpOT0_ ; -- Begin function _ZNSt3__114__construct_atB8ne180100IPvJRKS1_EPS1_EEPT_S6_DpOT0_
	.globl	__ZNSt3__114__construct_atB8ne180100IPvJRKS1_EPS1_EEPT_S6_DpOT0_
	.weak_definition	__ZNSt3__114__construct_atB8ne180100IPvJRKS1_EPS1_EEPT_S6_DpOT0_
	.p2align	2
__ZNSt3__114__construct_atB8ne180100IPvJRKS1_EPS1_EEPT_S6_DpOT0_: ; @_ZNSt3__114__construct_atB8ne180100IPvJRKS1_EPS1_EEPT_S6_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__112construct_atB8ne180100IPvJRKS1_EPS1_EEPT_S6_DpOT0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112construct_atB8ne180100IPvJRKS1_EPS1_EEPT_S6_DpOT0_ ; -- Begin function _ZNSt3__112construct_atB8ne180100IPvJRKS1_EPS1_EEPT_S6_DpOT0_
	.globl	__ZNSt3__112construct_atB8ne180100IPvJRKS1_EPS1_EEPT_S6_DpOT0_
	.weak_definition	__ZNSt3__112construct_atB8ne180100IPvJRKS1_EPS1_EEPT_S6_DpOT0_
	.p2align	2
__ZNSt3__112construct_atB8ne180100IPvJRKS1_EPS1_EEPT_S6_DpOT0_: ; @_ZNSt3__112construct_atB8ne180100IPvJRKS1_EPS1_EEPT_S6_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16atomicImEC2B8ne180100Em ; -- Begin function _ZNSt3__16atomicImEC2B8ne180100Em
	.globl	__ZNSt3__16atomicImEC2B8ne180100Em
	.weak_def_can_be_hidden	__ZNSt3__16atomicImEC2B8ne180100Em
	.p2align	2
__ZNSt3__16atomicImEC2B8ne180100Em:     ; @_ZNSt3__16atomicImEC2B8ne180100Em
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
	bl	__ZNSt3__113__atomic_baseImLb1EEC2B8ne180100Em
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__atomic_baseImLb1EEC2B8ne180100Em ; -- Begin function _ZNSt3__113__atomic_baseImLb1EEC2B8ne180100Em
	.globl	__ZNSt3__113__atomic_baseImLb1EEC2B8ne180100Em
	.weak_def_can_be_hidden	__ZNSt3__113__atomic_baseImLb1EEC2B8ne180100Em
	.p2align	2
__ZNSt3__113__atomic_baseImLb1EEC2B8ne180100Em: ; @_ZNSt3__113__atomic_baseImLb1EEC2B8ne180100Em
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
	bl	__ZNSt3__113__atomic_baseImLb0EEC2B8ne180100Em
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__atomic_baseImLb0EEC2B8ne180100Em ; -- Begin function _ZNSt3__113__atomic_baseImLb0EEC2B8ne180100Em
	.globl	__ZNSt3__113__atomic_baseImLb0EEC2B8ne180100Em
	.weak_def_can_be_hidden	__ZNSt3__113__atomic_baseImLb0EEC2B8ne180100Em
	.p2align	2
__ZNSt3__113__atomic_baseImLb0EEC2B8ne180100Em: ; @_ZNSt3__113__atomic_baseImLb0EEC2B8ne180100Em
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
	bl	__ZNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEC1B8ne180100Em
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEC1B8ne180100Em ; -- Begin function _ZNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEC1B8ne180100Em
	.globl	__ZNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEC1B8ne180100Em
	.weak_def_can_be_hidden	__ZNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEC1B8ne180100Em
	.p2align	2
__ZNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEC1B8ne180100Em: ; @_ZNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEC1B8ne180100Em
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
	bl	__ZNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEC2B8ne180100Em
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEC2B8ne180100Em ; -- Begin function _ZNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEC2B8ne180100Em
	.globl	__ZNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEC2B8ne180100Em
	.weak_def_can_be_hidden	__ZNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEC2B8ne180100Em
	.p2align	2
__ZNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEC2B8ne180100Em: ; @_ZNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEC2B8ne180100Em
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
	bl	__ZNSt3__122__cxx_atomic_base_implImEC2Em
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__cxx_atomic_base_implImEC2Em ; -- Begin function _ZNSt3__122__cxx_atomic_base_implImEC2Em
	.weak_def_can_be_hidden	__ZNSt3__122__cxx_atomic_base_implImEC2Em
	.p2align	2
__ZNSt3__122__cxx_atomic_base_implImEC2Em: ; @_ZNSt3__122__cxx_atomic_base_implImEC2Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c ; -- Begin function _ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.globl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.weak_definition	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.p2align	2
__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c: ; @_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x1
	str	x0, [sp, #8]
	add	x1, sp, #7
	strb	w8, [sp, #7]
	ldr	x0, [sp, #8]
	mov	x2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin29:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception29
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x1, [x29, #-8]
Ltmp401:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp402:
	b	LBB244_1
LBB244_1:
Ltmp404:
	sub	x0, x29, #40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
Ltmp405:
	b	LBB244_2
LBB244_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB244_18
	b	LBB244_3
LBB244_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE
	ldur	x8, [x29, #-16]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp406:
	bl	__ZNKSt3__18ios_base5flagsB8ne180100Ev
	str	w0, [sp, #64]                   ; 4-byte Folded Spill
Ltmp407:
	b	LBB244_4
LBB244_4:
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	mov	w9, #176                        ; =0xb0
	and	w8, w8, w9
	subs	w8, w8, #32
	cset	w8, ne
	tbnz	w8, #0, LBB244_6
	b	LBB244_5
LBB244_5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB244_7
LBB244_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB244_7
LBB244_7:
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp408:
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev
	str	w0, [sp, #44]                   ; 4-byte Folded Spill
Ltmp409:
	b	LBB244_8
LBB244_8:
	ldr	w8, [sp, #44]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #72]
Ltmp410:
	sxtb	w5, w8
	bl	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp411:
	b	LBB244_9
LBB244_9:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #64
	stur	x8, [x29, #-64]
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev
	tbz	w0, #0, LBB244_17
	b	LBB244_10
LBB244_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp412:
	mov	w1, #5                          ; =0x5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej
Ltmp413:
	b	LBB244_11
LBB244_11:
	b	LBB244_17
LBB244_12:
Ltmp403:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	b	LBB244_14
LBB244_13:
Ltmp414:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB244_14
LBB244_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp415:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp416:
	b	LBB244_15
LBB244_15:
	bl	___cxa_end_catch
	b	LBB244_16
LBB244_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB244_17:
	b	LBB244_18
LBB244_18:
	sub	x0, x29, #40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB244_16
LBB244_19:
Ltmp417:
	stur	x0, [x29, #-48]
	mov	x8, x1
	stur	w8, [x29, #-52]
Ltmp418:
	bl	___cxa_end_catch
Ltmp419:
	b	LBB244_20
LBB244_20:
	b	LBB244_21
LBB244_21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB244_22:
Ltmp420:
	bl	___clang_call_terminate
Lfunc_end29:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table244:
Lexception29:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase13-Lttbaseref13
Lttbaseref13:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end29-Lcst_begin29
Lcst_begin29:
	.uleb128 Ltmp401-Lfunc_begin29          ; >> Call Site 1 <<
	.uleb128 Ltmp402-Ltmp401                ;   Call between Ltmp401 and Ltmp402
	.uleb128 Ltmp403-Lfunc_begin29          ;     jumps to Ltmp403
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp404-Lfunc_begin29          ; >> Call Site 2 <<
	.uleb128 Ltmp413-Ltmp404                ;   Call between Ltmp404 and Ltmp413
	.uleb128 Ltmp414-Lfunc_begin29          ;     jumps to Ltmp414
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp413-Lfunc_begin29          ; >> Call Site 3 <<
	.uleb128 Ltmp415-Ltmp413                ;   Call between Ltmp413 and Ltmp415
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp415-Lfunc_begin29          ; >> Call Site 4 <<
	.uleb128 Ltmp416-Ltmp415                ;   Call between Ltmp415 and Ltmp416
	.uleb128 Ltmp417-Lfunc_begin29          ;     jumps to Ltmp417
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp416-Lfunc_begin29          ; >> Call Site 5 <<
	.uleb128 Ltmp418-Ltmp416                ;   Call between Ltmp416 and Ltmp418
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp418-Lfunc_begin29          ; >> Call Site 6 <<
	.uleb128 Ltmp419-Ltmp418                ;   Call between Ltmp418 and Ltmp419
	.uleb128 Ltmp420-Lfunc_begin29          ;     jumps to Ltmp420
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp419-Lfunc_begin29          ; >> Call Site 7 <<
	.uleb128 Lfunc_end29-Ltmp419            ;   Call between Ltmp419 and Lfunc_end29
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end29:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase13:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev ; -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev
	.globl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev
	.weak_definition	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev
	.p2align	2
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev: ; @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin30:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception30
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	sturb	w5, [x29, #-49]
	ldur	x8, [x29, #-16]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB246_2
	b	LBB246_1
LBB246_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB246_23
LBB246_2:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-48]
	bl	__ZNKSt3__18ios_base5widthB8ne180100Ev
	str	x0, [sp, #72]
	ldr	x8, [sp, #72]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	cset	w8, le
	tbnz	w8, #0, LBB246_4
	b	LBB246_3
LBB246_3:
	ldur	x9, [x29, #-64]
	ldr	x8, [sp, #72]
	subs	x8, x8, x9
	str	x8, [sp, #72]
	b	LBB246_5
LBB246_4:
	str	xzr, [sp, #72]
	b	LBB246_5
LBB246_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB246_9
	b	LBB246_6
LBB246_6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	cset	w8, eq
	tbnz	w8, #0, LBB246_8
	b	LBB246_7
LBB246_7:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB246_23
LBB246_8:
	b	LBB246_9
LBB246_9:
	ldr	x8, [sp, #72]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB246_18
	b	LBB246_10
LBB246_10:
	ldr	x1, [sp, #72]
	ldursb	w2, [x29, #-49]
	add	x0, sp, #40
	str	x0, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #72]
Ltmp422:
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp423:
	b	LBB246_11
LBB246_11:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #72]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB246_14
	b	LBB246_12
LBB246_12:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w8, #1                          ; =0x1
	str	w8, [sp, #24]
	b	LBB246_15
LBB246_13:
Ltmp424:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB246_24
LBB246_14:
	str	wzr, [sp, #24]
	b	LBB246_15
LBB246_15:
	add	x0, sp, #40
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB246_17
	b	LBB246_16
LBB246_16:
	b	LBB246_23
LBB246_17:
	b	LBB246_18
LBB246_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #64]
	ldr	x8, [sp, #64]
	subs	x8, x8, #0
	cset	w8, le
	tbnz	w8, #0, LBB246_22
	b	LBB246_19
LBB246_19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #64]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl
	ldr	x8, [sp, #64]
	subs	x8, x0, x8
	cset	w8, eq
	tbnz	w8, #0, LBB246_21
	b	LBB246_20
LBB246_20:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB246_23
LBB246_21:
	b	LBB246_22
LBB246_22:
	ldur	x0, [x29, #-48]
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__18ios_base5widthB8ne180100El
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB246_23
LBB246_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB246_24:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end30:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table246:
Lexception30:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end30-Lcst_begin30
Lcst_begin30:
	.uleb128 Lfunc_begin30-Lfunc_begin30    ; >> Call Site 1 <<
	.uleb128 Ltmp422-Lfunc_begin30          ;   Call between Lfunc_begin30 and Ltmp422
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp422-Lfunc_begin30          ; >> Call Site 2 <<
	.uleb128 Ltmp423-Ltmp422                ;   Call between Ltmp422 and Ltmp423
	.uleb128 Ltmp424-Lfunc_begin30          ;     jumps to Ltmp424
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp423-Lfunc_begin30          ; >> Call Site 3 <<
	.uleb128 Lfunc_end30-Ltmp423            ;   Call between Ltmp423 and Lfunc_end30
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end30:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B8ne180100ERNS_13basic_ostreamIcS2_EE
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
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5flagsB8ne180100Ev ; -- Begin function _ZNKSt3__18ios_base5flagsB8ne180100Ev
	.globl	__ZNKSt3__18ios_base5flagsB8ne180100Ev
	.weak_definition	__ZNKSt3__18ios_base5flagsB8ne180100Ev
	.p2align	2
__ZNKSt3__18ios_base5flagsB8ne180100Ev: ; @_ZNKSt3__18ios_base5flagsB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB8ne180100Ev
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
	bl	__ZNSt3__111char_traitsIcE3eofB8ne180100Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w1, [x8, #144]
	bl	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii
	tbz	w0, #0, LBB249_2
	b	LBB249_1
LBB249_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w1, #32                         ; =0x20
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	sxtb	w8, w0
	str	w8, [x9, #144]
	b	LBB249_2
LBB249_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w8, [x8, #144]
	sxtb	w0, w8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev ; -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev
	.globl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev
	.weak_definition	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev
	.p2align	2
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev: ; @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	__ZNSt3__18ios_base8setstateB8ne180100Ej
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5widthB8ne180100Ev ; -- Begin function _ZNKSt3__18ios_base5widthB8ne180100Ev
	.globl	__ZNKSt3__18ios_base5widthB8ne180100Ev
	.weak_definition	__ZNKSt3__18ios_base5widthB8ne180100Ev
	.p2align	2
__ZNKSt3__18ios_base5widthB8ne180100Ev: ; @_ZNKSt3__18ios_base5widthB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl
	.globl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl
	.weak_definition	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl
	.p2align	2
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB8ne180100EPKcl
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x8, [x0]
	ldr	x8, [x8, #96]
	blr	x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Emc
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
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev
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
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev
	bl	__ZNSt3__112__to_addressB8ne180100IcEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base5widthB8ne180100El ; -- Begin function _ZNSt3__18ios_base5widthB8ne180100El
	.globl	__ZNSt3__18ios_base5widthB8ne180100El
	.weak_definition	__ZNSt3__18ios_base5widthB8ne180100El
	.p2align	2
__ZNSt3__18ios_base5widthB8ne180100El:  ; @_ZNSt3__18ios_base5widthB8ne180100El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #24]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #24]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Emc
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
	strb	w2, [sp, #15]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	add	x1, sp, #14
	add	x2, sp, #13
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagESA_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne180100IcEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB8ne180100IcEEPT_S2_
	.globl	__ZNSt3__112__to_addressB8ne180100IcEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB8ne180100IcEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB8ne180100IcEEPT_S2_: ; @_ZNSt3__112__to_addressB8ne180100IcEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB8ne180100Ev
	tbz	w0, #0, LBB259_2
	b	LBB259_1
LBB259_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB259_3
LBB259_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB259_3
LBB259_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB8ne180100Ev
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
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	ldr	x0, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev
	.weak_definition	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB8ne180100Ev
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
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	bl	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	.weak_definition	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB8ne180100Ev
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
	bl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	.globl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev: ; @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc ; -- Begin function _ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc
	.globl	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc
	.weak_definition	__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc
	.p2align	2
__ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc: ; @_ZNSt3__114pointer_traitsIPcE10pointer_toB8ne180100ERc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE
	.globl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE
	.p2align	2
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B8ne180100ERNS_13basic_ostreamIcS2_EE
Lfunc_begin31:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception31
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
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
Ltmp432:
	add	x0, x8, x9
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp433:
	b	LBB265_1
LBB265_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB265_2:
Ltmp434:
	bl	___clang_call_terminate
Lfunc_end31:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table265:
Lexception31:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase14-Lttbaseref14
Lttbaseref14:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end31-Lcst_begin31
Lcst_begin31:
	.uleb128 Ltmp432-Lfunc_begin31          ; >> Call Site 1 <<
	.uleb128 Ltmp433-Ltmp432                ;   Call between Ltmp432 and Ltmp433
	.uleb128 Ltmp434-Lfunc_begin31          ;     jumps to Ltmp434
	.byte	1                               ;   On action: 1
Lcst_end31:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase14:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB8ne180100Ev
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
	bl	__ZNKSt3__18ios_base5rdbufB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__18ios_base5rdbufB8ne180100Ev ; -- Begin function _ZNKSt3__18ios_base5rdbufB8ne180100Ev
	.globl	__ZNKSt3__18ios_base5rdbufB8ne180100Ev
	.weak_definition	__ZNKSt3__18ios_base5rdbufB8ne180100Ev
	.p2align	2
__ZNKSt3__18ios_base5rdbufB8ne180100Ev: ; @_ZNKSt3__18ios_base5rdbufB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii ; -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii
	.p2align	2
__ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii: ; @_ZNSt3__111char_traitsIcE11eq_int_typeB8ne180100Eii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111char_traitsIcE3eofB8ne180100Ev ; -- Begin function _ZNSt3__111char_traitsIcE3eofB8ne180100Ev
	.globl	__ZNSt3__111char_traitsIcE3eofB8ne180100Ev
	.weak_definition	__ZNSt3__111char_traitsIcE3eofB8ne180100Ev
	.p2align	2
__ZNSt3__111char_traitsIcE3eofB8ne180100Ev: ; @_ZNSt3__111char_traitsIcE3eofB8ne180100Ev
	.cfi_startproc
; %bb.0:
	mov	w0, #-1                         ; =0xffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec
	.globl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec
	.weak_definition	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec
	.p2align	2
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec
Lfunc_begin32:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception32
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	ldur	x0, [x29, #-8]
	sub	x8, x29, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__18ios_base6getlocEv
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp437:
	bl	__ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp438:
	b	LBB270_1
LBB270_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldursb	w1, [x29, #-9]
Ltmp439:
	bl	__ZNKSt3__15ctypeIcE5widenB8ne180100Ec
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
Ltmp440:
	b	LBB270_2
LBB270_2:
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	sxtb	w0, w8
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
LBB270_3:
Ltmp441:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	sub	x0, x29, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB270_4
LBB270_4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end32:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table270:
Lexception32:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end32-Lcst_begin32
Lcst_begin32:
	.uleb128 Lfunc_begin32-Lfunc_begin32    ; >> Call Site 1 <<
	.uleb128 Ltmp437-Lfunc_begin32          ;   Call between Lfunc_begin32 and Ltmp437
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp437-Lfunc_begin32          ; >> Call Site 2 <<
	.uleb128 Ltmp440-Ltmp437                ;   Call between Ltmp437 and Ltmp440
	.uleb128 Ltmp441-Lfunc_begin32          ;     jumps to Ltmp441
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp440-Lfunc_begin32          ; >> Call Site 3 <<
	.uleb128 Lfunc_end32-Ltmp440            ;   Call between Ltmp440 and Lfunc_end32
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end32:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE ; -- Begin function _ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.globl	__ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.weak_definition	__ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE
	.p2align	2
__ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE: ; @_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE
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
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__15ctypeIcE5widenB8ne180100Ec ; -- Begin function _ZNKSt3__15ctypeIcE5widenB8ne180100Ec
	.globl	__ZNKSt3__15ctypeIcE5widenB8ne180100Ec
	.weak_definition	__ZNKSt3__15ctypeIcE5widenB8ne180100Ec
	.p2align	2
__ZNKSt3__15ctypeIcE5widenB8ne180100Ec: ; @_ZNKSt3__15ctypeIcE5widenB8ne180100Ec
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldr	x0, [sp, #8]
	ldrsb	w1, [sp, #7]
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
	blr	x8
	sxtb	w0, w0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base8setstateB8ne180100Ej ; -- Begin function _ZNSt3__18ios_base8setstateB8ne180100Ej
	.globl	__ZNSt3__18ios_base8setstateB8ne180100Ej
	.weak_definition	__ZNSt3__18ios_base8setstateB8ne180100Ej
	.p2align	2
__ZNSt3__18ios_base8setstateB8ne180100Ej: ; @_ZNSt3__18ios_base8setstateB8ne180100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [x0, #32]
	ldr	w9, [sp, #4]
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E ; -- Begin function _ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.globl	__ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.weak_definition	__ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.p2align	2
__ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E: ; @_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_RKNS_8__iom_t5E
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	ldr	x10, [sp]
	ldrsw	x1, [x10]
	add	x0, x8, x9
	bl	__ZNSt3__18ios_base9precisionB8ne180100El
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRNS_8ios_baseES5_E ; -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRNS_8ios_baseES5_E
	.globl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRNS_8ios_baseES5_E
	.weak_definition	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRNS_8ios_baseES5_E
	.p2align	2
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRNS_8ios_baseES5_E: ; @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB8ne180100EPFRNS_8ios_baseES5_E
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
	ldur	x9, [x29, #-8]
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #16]
	ldr	x10, [x9]
	ldur	x10, [x10, #-24]
	add	x0, x9, x10
	blr	x8
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__15fixedB8ne180100ERNS_8ios_baseE ; -- Begin function _ZNSt3__15fixedB8ne180100ERNS_8ios_baseE
	.globl	__ZNSt3__15fixedB8ne180100ERNS_8ios_baseE
	.weak_definition	__ZNSt3__15fixedB8ne180100ERNS_8ios_baseE
	.p2align	2
__ZNSt3__15fixedB8ne180100ERNS_8ios_baseE: ; @_ZNSt3__15fixedB8ne180100ERNS_8ios_baseE
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
	mov	w1, #4                          ; =0x4
	mov	w2, #260                        ; =0x104
	bl	__ZNSt3__18ios_base4setfB8ne180100Ejj
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112setprecisionB8ne180100Ei ; -- Begin function _ZNSt3__112setprecisionB8ne180100Ei
	.globl	__ZNSt3__112setprecisionB8ne180100Ei
	.weak_definition	__ZNSt3__112setprecisionB8ne180100Ei
	.p2align	2
__ZNSt3__112setprecisionB8ne180100Ei:   ; @_ZNSt3__112setprecisionB8ne180100Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	w0, [sp, #8]
	ldr	w1, [sp, #8]
	sub	x0, x29, #4
	bl	__ZNSt3__18__iom_t5C1B8ne180100Ei
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE ; -- Begin function _ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.globl	__ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.weak_definition	__ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
	.p2align	2
__ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE: ; @_ZNSt3__1lsB8ne180100IcNS_11char_traitsIcEENS_9allocatorIcEEEERNS_13basic_ostreamIT_T0_EES9_RKNS_12basic_stringIS6_S7_T1_EE
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
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB8ne180100Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4sizeB8ne180100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts11json_escapeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE ; -- Begin function _ZN3bts11json_escapeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE
	.weak_definition	__ZN3bts11json_escapeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE
	.p2align	2
__ZN3bts11json_escapeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE: ; @_ZN3bts11json_escapeENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE
Lfunc_begin33:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception33
; %bb.0:
	sub	sp, sp, #400
	stp	x28, x27, [sp, #368]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #384]            ; 16-byte Folded Spill
	add	x29, sp, #384
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	sub	x9, x29, #40
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x9, [sp, #16]                   ; 8-byte Folded Spill
	str	x9, [x8, #16]
	sub	x9, x29, #40
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	str	x0, [x8]
	str	x1, [x8, #8]
	add	x0, sp, #80
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #72]
	ldr	x0, [sp, #72]
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5beginB8ne180100Ev
	str	x0, [sp, #64]
	ldr	x0, [sp, #72]
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE3endB8ne180100Ev
	str	x0, [sp, #56]
	b	LBB279_1
LBB279_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #64]
	ldr	x9, [sp, #56]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB279_22
	b	LBB279_2
LBB279_2:                               ;   in Loop: Header=BB279_1 Depth=1
	ldr	x8, [sp, #64]
	ldrb	w8, [x8]
	strb	w8, [sp, #55]
	ldrsb	w8, [sp, #55]
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	subs	w8, w8, #9
	cset	w8, eq
	tbnz	w8, #0, LBB279_16
	b	LBB279_3
LBB279_3:                               ;   in Loop: Header=BB279_1 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #10
	cset	w8, eq
	tbnz	w8, #0, LBB279_12
	b	LBB279_4
LBB279_4:                               ;   in Loop: Header=BB279_1 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #13
	cset	w8, eq
	tbnz	w8, #0, LBB279_14
	b	LBB279_5
LBB279_5:                               ;   in Loop: Header=BB279_1 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #34
	cset	w8, eq
	tbnz	w8, #0, LBB279_10
	b	LBB279_6
LBB279_6:                               ;   in Loop: Header=BB279_1 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	subs	w8, w8, #92
	cset	w8, ne
	tbnz	w8, #0, LBB279_18
	b	LBB279_7
LBB279_7:                               ;   in Loop: Header=BB279_1 Depth=1
Ltmp452:
	add	x0, sp, #80
	adrp	x1, l_.str.50@PAGE
	add	x1, x1, l_.str.50@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp453:
	b	LBB279_8
LBB279_8:                               ;   in Loop: Header=BB279_1 Depth=1
	b	LBB279_20
LBB279_9:
Ltmp456:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	add	x0, sp, #80
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB279_24
LBB279_10:                              ;   in Loop: Header=BB279_1 Depth=1
Ltmp450:
	add	x0, sp, #80
	adrp	x1, l_.str.51@PAGE
	add	x1, x1, l_.str.51@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp451:
	b	LBB279_11
LBB279_11:                              ;   in Loop: Header=BB279_1 Depth=1
	b	LBB279_20
LBB279_12:                              ;   in Loop: Header=BB279_1 Depth=1
Ltmp448:
	add	x0, sp, #80
	adrp	x1, l_.str.52@PAGE
	add	x1, x1, l_.str.52@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp449:
	b	LBB279_13
LBB279_13:                              ;   in Loop: Header=BB279_1 Depth=1
	b	LBB279_20
LBB279_14:                              ;   in Loop: Header=BB279_1 Depth=1
Ltmp446:
	add	x0, sp, #80
	adrp	x1, l_.str.53@PAGE
	add	x1, x1, l_.str.53@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp447:
	b	LBB279_15
LBB279_15:                              ;   in Loop: Header=BB279_1 Depth=1
	b	LBB279_20
LBB279_16:                              ;   in Loop: Header=BB279_1 Depth=1
Ltmp444:
	add	x0, sp, #80
	adrp	x1, l_.str.54@PAGE
	add	x1, x1, l_.str.54@PAGEOFF
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp445:
	b	LBB279_17
LBB279_17:                              ;   in Loop: Header=BB279_1 Depth=1
	b	LBB279_20
LBB279_18:                              ;   in Loop: Header=BB279_1 Depth=1
	ldrsb	w1, [sp, #55]
Ltmp454:
	add	x0, sp, #80
	bl	__ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
Ltmp455:
	b	LBB279_19
LBB279_19:                              ;   in Loop: Header=BB279_1 Depth=1
	b	LBB279_20
LBB279_20:                              ;   in Loop: Header=BB279_1 Depth=1
	b	LBB279_21
LBB279_21:                              ;   in Loop: Header=BB279_1 Depth=1
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	b	LBB279_1
LBB279_22:
Ltmp442:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, sp, #80
	bl	__ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev
Ltmp443:
	b	LBB279_23
LBB279_23:
	add	x0, sp, #80
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldp	x29, x30, [sp, #384]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #368]            ; 16-byte Folded Reload
	add	sp, sp, #400
	ret
LBB279_24:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
Lfunc_end33:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table279:
Lexception33:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end33-Lcst_begin33
Lcst_begin33:
	.uleb128 Lfunc_begin33-Lfunc_begin33    ; >> Call Site 1 <<
	.uleb128 Ltmp452-Lfunc_begin33          ;   Call between Lfunc_begin33 and Ltmp452
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp452-Lfunc_begin33          ; >> Call Site 2 <<
	.uleb128 Ltmp443-Ltmp452                ;   Call between Ltmp452 and Ltmp443
	.uleb128 Ltmp456-Lfunc_begin33          ;     jumps to Ltmp456
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp443-Lfunc_begin33          ; >> Call Site 3 <<
	.uleb128 Lfunc_end33-Ltmp443            ;   Call between Ltmp443 and Lfunc_end33
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end33:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__18ios_base9precisionB8ne180100El ; -- Begin function _ZNSt3__18ios_base9precisionB8ne180100El
	.globl	__ZNSt3__18ios_base9precisionB8ne180100El
	.weak_definition	__ZNSt3__18ios_base9precisionB8ne180100El
	.p2align	2
__ZNSt3__18ios_base9precisionB8ne180100El: ; @_ZNSt3__18ios_base9precisionB8ne180100El
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x8, [x9, #16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x8, [x9, #16]
	ldr	x0, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base4setfB8ne180100Ejj ; -- Begin function _ZNSt3__18ios_base4setfB8ne180100Ejj
	.globl	__ZNSt3__18ios_base4setfB8ne180100Ejj
	.weak_definition	__ZNSt3__18ios_base4setfB8ne180100Ejj
	.p2align	2
__ZNSt3__18ios_base4setfB8ne180100Ejj:  ; @_ZNSt3__18ios_base4setfB8ne180100Ejj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	w8, [x0, #8]
	str	w8, [sp, #12]
	ldr	w1, [sp, #16]
	bl	__ZNSt3__18ios_base6unsetfB8ne180100Ej
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w10, [sp, #16]
	and	w10, w8, w10
	ldr	w8, [x9, #8]
	orr	w8, w8, w10
	str	w8, [x9, #8]
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_base6unsetfB8ne180100Ej ; -- Begin function _ZNSt3__18ios_base6unsetfB8ne180100Ej
	.globl	__ZNSt3__18ios_base6unsetfB8ne180100Ej
	.weak_definition	__ZNSt3__18ios_base6unsetfB8ne180100Ej
	.p2align	2
__ZNSt3__18ios_base6unsetfB8ne180100Ej: ; @_ZNSt3__18ios_base6unsetfB8ne180100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w10, [sp, #4]
	ldr	w8, [x9, #8]
	bic	w8, w8, w10
	str	w8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__iom_t5C1B8ne180100Ei ; -- Begin function _ZNSt3__18__iom_t5C1B8ne180100Ei
	.globl	__ZNSt3__18__iom_t5C1B8ne180100Ei
	.weak_def_can_be_hidden	__ZNSt3__18__iom_t5C1B8ne180100Ei
	.p2align	2
__ZNSt3__18__iom_t5C1B8ne180100Ei:      ; @_ZNSt3__18__iom_t5C1B8ne180100Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	bl	__ZNSt3__18__iom_t5C2B8ne180100Ei
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__iom_t5C2B8ne180100Ei ; -- Begin function _ZNSt3__18__iom_t5C2B8ne180100Ei
	.globl	__ZNSt3__18__iom_t5C2B8ne180100Ei
	.weak_def_can_be_hidden	__ZNSt3__18__iom_t5C2B8ne180100Ei
	.p2align	2
__ZNSt3__18__iom_t5C2B8ne180100Ei:      ; @_ZNSt3__18__iom_t5C2B8ne180100Ei
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w8, [sp, #4]
	str	w8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev ; -- Begin function _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev
	.globl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev
	.p2align	2
__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev: ; @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev
Lfunc_begin34:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception34
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, x8, #112
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne180100Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x10, x9, #24
	str	x10, [x8]
	add	x9, x9, #64
	str	x9, [x8, #112]
Ltmp460:
	mov	x0, x8
	adrp	x9, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x1, x9, #8
	add	x2, x8, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne180100EPNS_15basic_streambufIcS2_EE
Ltmp461:
	b	LBB285_1
LBB285_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x10, x9, #24
	str	x10, [x8]
	add	x9, x9, #64
	str	x9, [x8, #112]
	add	x0, x8, #8
Ltmp463:
	mov	w1, #16                         ; =0x10
	bl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ej
Ltmp464:
	b	LBB285_2
LBB285_2:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB285_3:
Ltmp462:
	str	x0, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	b	LBB285_5
LBB285_4:
Ltmp465:
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #16]
	mov	x8, x1
	str	w8, [sp, #12]
	adrp	x8, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
	ldr	x8, [x8, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x1, x8, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	b	LBB285_5
LBB285_5:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #112
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	b	LBB285_6
LBB285_6:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
Lfunc_end34:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table285:
Lexception34:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end34-Lcst_begin34
Lcst_begin34:
	.uleb128 Lfunc_begin34-Lfunc_begin34    ; >> Call Site 1 <<
	.uleb128 Ltmp460-Lfunc_begin34          ;   Call between Lfunc_begin34 and Ltmp460
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp460-Lfunc_begin34          ; >> Call Site 2 <<
	.uleb128 Ltmp461-Ltmp460                ;   Call between Ltmp460 and Ltmp461
	.uleb128 Ltmp462-Lfunc_begin34          ;     jumps to Ltmp462
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp463-Lfunc_begin34          ; >> Call Site 3 <<
	.uleb128 Ltmp464-Ltmp463                ;   Call between Ltmp463 and Ltmp464
	.uleb128 Ltmp465-Lfunc_begin34          ;     jumps to Ltmp465
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp464-Lfunc_begin34          ; >> Call Site 4 <<
	.uleb128 Lfunc_end34-Ltmp464            ;   Call between Ltmp464 and Lfunc_end34
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end34:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5beginB8ne180100Ev ; -- Begin function _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5beginB8ne180100Ev
	.globl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5beginB8ne180100Ev
	.weak_definition	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5beginB8ne180100Ev
	.p2align	2
__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5beginB8ne180100Ev: ; @_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE5beginB8ne180100Ev
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
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6cbeginB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE3endB8ne180100Ev ; -- Begin function _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE3endB8ne180100Ev
	.globl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE3endB8ne180100Ev
	.weak_definition	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE3endB8ne180100Ev
	.p2align	2
__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE3endB8ne180100Ev: ; @_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE3endB8ne180100Ev
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
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4cendB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev ; -- Begin function _ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev
	.globl	__ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev
	.weak_definition	__ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev
	.p2align	2
__ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev: ; @_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, x8
	str	x9, [sp, #8]
	str	x0, [sp]
	ldr	x9, [sp]
	add	x0, x9, #8
	bl	__ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ; -- Begin function _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	2
__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ; @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
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
	adrp	x1, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
	ldr	x1, [x1, __ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	bl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x0, x8, #112
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne180100Ev ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne180100Ev
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne180100Ev
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne180100Ev: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEEC2B8ne180100Ev
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
	bl	__ZNSt3__18ios_baseC2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x8, __ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__19basic_iosIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne180100EPNS_15basic_streambufIcS2_EE ; -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne180100EPNS_15basic_streambufIcS2_EE
	.globl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne180100EPNS_15basic_streambufIcS2_EE
	.weak_def_can_be_hidden	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne180100EPNS_15basic_streambufIcS2_EE
	.p2align	2
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne180100EPNS_15basic_streambufIcS2_EE: ; @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEEC2B8ne180100EPNS_15basic_streambufIcS2_EE
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
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x9, [sp, #16]
	ldr	x10, [x9]
	str	x10, [x8]
	ldr	x9, [x9, #8]
	ldr	x10, [x8]
	ldur	x10, [x10, #-24]
	str	x9, [x8, x10]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	ldr	x1, [sp, #8]
	add	x0, x8, x9
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne180100EPNS_15basic_streambufIcS2_EE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ej ; -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ej
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ej
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ej
	.p2align	2
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ej: ; @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	w1, [x29, #-12]
	bl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Ej
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18ios_baseC2B8ne180100Ev ; -- Begin function _ZNSt3__18ios_baseC2B8ne180100Ev
	.globl	__ZNSt3__18ios_baseC2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__18ios_baseC2B8ne180100Ev
	.p2align	2
__ZNSt3__18ios_baseC2B8ne180100Ev:      ; @_ZNSt3__18ios_baseC2B8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, __ZTVNSt3__18ios_baseE@GOTPAGE
	ldr	x8, [x8, __ZTVNSt3__18ios_baseE@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne180100EPNS_15basic_streambufIcS2_EE ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne180100EPNS_15basic_streambufIcS2_EE
	.globl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne180100EPNS_15basic_streambufIcS2_EE
	.weak_definition	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne180100EPNS_15basic_streambufIcS2_EE
	.p2align	2
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne180100EPNS_15basic_streambufIcS2_EE: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE4initB8ne180100EPNS_15basic_streambufIcS2_EE
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
	bl	__ZNSt3__18ios_base4initEPv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8, #136]
	bl	__ZNSt3__111char_traitsIcE3eofB8ne180100Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	w0, [x8, #144]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Ej ; -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Ej
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Ej
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Ej
	.p2align	2
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Ej: ; @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Ej
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	adrp	x9, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x9, x9, #16
	str	x9, [x8]
	add	x0, x8, #64
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0, #88]
	ldur	w8, [x29, #-12]
	str	w8, [x0, #96]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev
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
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Ev ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Ev
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Ev
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Ev: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100Ev
Lfunc_begin35:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception35
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp467:
	sub	x1, x29, #9
	sub	x2, x29, #10
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_16__value_init_tagENS_18__default_init_tagEEEOT_OT0_
Ltmp468:
	b	LBB297_1
LBB297_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne180100Em
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB297_2:
Ltmp469:
	bl	___clang_call_terminate
Lfunc_end35:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table297:
Lexception35:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase15-Lttbaseref15
Lttbaseref15:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end35-Lcst_begin35
Lcst_begin35:
	.uleb128 Ltmp467-Lfunc_begin35          ; >> Call Site 1 <<
	.uleb128 Ltmp468-Ltmp467                ;   Call between Ltmp467 and Ltmp468
	.uleb128 Ltmp469-Lfunc_begin35          ;     jumps to Ltmp469
	.byte	1                               ;   On action: 1
Lcst_end35:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase15:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_16__value_init_tagENS_18__default_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_16__value_init_tagENS_18__default_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_16__value_init_tagENS_18__default_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_16__value_init_tagENS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_16__value_init_tagENS_18__default_init_tagEEEOT_OT0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_16__value_init_tagENS_18__default_init_tagEEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne180100Em ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne180100Em
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne180100Em
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne180100Em
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne180100Em: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE14__annotate_newB8ne180100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_16__value_init_tagENS_18__default_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_16__value_init_tagENS_18__default_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_16__value_init_tagENS_18__default_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_16__value_init_tagENS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_16__value_init_tagENS_18__default_init_tagEEEOT_OT0_
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
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_16__value_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_16__value_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_16__value_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_16__value_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_16__value_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_16__value_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_16__value_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x0, [sp]
	str	xzr, [x0]
	str	xzr, [x0, #8]
	str	xzr, [x0, #16]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6cbeginB8ne180100Ev ; -- Begin function _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6cbeginB8ne180100Ev
	.globl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6cbeginB8ne180100Ev
	.weak_definition	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6cbeginB8ne180100Ev
	.p2align	2
__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6cbeginB8ne180100Ev: ; @_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE6cbeginB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4cendB8ne180100Ev ; -- Begin function _ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4cendB8ne180100Ev
	.globl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4cendB8ne180100Ev
	.weak_definition	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4cendB8ne180100Ev
	.p2align	2
__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4cendB8ne180100Ev: ; @_ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4cendB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	ldr	x9, [x9, #8]
	add	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev ; -- Begin function _ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev
	.globl	__ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev
	.weak_definition	__ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev
	.p2align	2
__ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev: ; @_ZNKRSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x8, [x29, #-8]
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, x8, #64
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB8ne180100Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	sub	x1, x29, #17
	bl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100IS4_EENS_12basic_stringIcS2_T_EERKS8_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100IS4_EENS_12basic_stringIcS2_T_EERKS8_ ; -- Begin function _ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100IS4_EENS_12basic_stringIcS2_T_EERKS8_
	.weak_definition	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100IS4_EENS_12basic_stringIcS2_T_EERKS8_
	.p2align	2
__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100IS4_EENS_12basic_stringIcS2_T_EERKS8_: ; @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100IS4_EENS_12basic_stringIcS2_T_EERKS8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x8, [x29, #-8]
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev
	mov	x9, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x8, x1
	add	x1, sp, #8
	str	x9, [sp, #8]
	str	x8, [sp, #16]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB8ne180100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB8ne180100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB8ne180100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB8ne180100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB8ne180100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13get_allocatorB8ne180100Ev
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
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev ; -- Begin function _ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev
	.globl	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev
	.weak_definition	__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev
	.p2align	2
__ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev: ; @_ZNKSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEE4viewB8ne180100Ev
Lfunc_begin36:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception36
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-32]                 ; 8-byte Folded Spill
	ldr	w8, [x8, #96]
	ands	w8, w8, #0x10
	cset	w8, eq
	tbnz	w8, #0, LBB307_8
	b	LBB307_1
LBB307_1:
	ldur	x0, [x29, #-32]                 ; 8-byte Folded Reload
	ldr	x8, [x0, #88]
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
Ltmp480:
	bl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB8ne180100Ev
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
Ltmp481:
	b	LBB307_2
LBB307_2:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB307_5
	b	LBB307_3
LBB307_3:
Ltmp482:
	ldur	x0, [x29, #-32]                 ; 8-byte Folded Reload
	bl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB8ne180100Ev
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp483:
	b	LBB307_4
LBB307_4:
	ldur	x9, [x29, #-32]                 ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [x9, #88]
	b	LBB307_5
LBB307_5:
Ltmp484:
	ldur	x0, [x29, #-32]                 ; 8-byte Folded Reload
	bl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB8ne180100Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp485:
	b	LBB307_6
LBB307_6:
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-32]                 ; 8-byte Folded Reload
	ldr	x2, [x8, #88]
Ltmp486:
	sub	x0, x29, #16
	bl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100IPcS5_EET_T0_
Ltmp487:
	b	LBB307_7
LBB307_7:
	b	LBB307_15
LBB307_8:
	ldur	x8, [x29, #-32]                 ; 8-byte Folded Reload
	ldr	w8, [x8, #96]
	ands	w8, w8, #0x8
	cset	w8, eq
	tbnz	w8, #0, LBB307_13
	b	LBB307_9
LBB307_9:
Ltmp474:
	ldur	x0, [x29, #-32]                 ; 8-byte Folded Reload
	bl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp475:
	b	LBB307_10
LBB307_10:
Ltmp476:
	ldur	x0, [x29, #-32]                 ; 8-byte Folded Reload
	bl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB8ne180100Ev
	str	x0, [sp]                        ; 8-byte Folded Spill
Ltmp477:
	b	LBB307_11
LBB307_11:
Ltmp478:
	ldr	x2, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	sub	x0, x29, #16
	bl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100IPcS5_EET_T0_
Ltmp479:
	b	LBB307_12
LBB307_12:
	b	LBB307_15
LBB307_13:
	b	LBB307_14
LBB307_14:
	sub	x0, x29, #16
	bl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100Ev
	b	LBB307_15
LBB307_15:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB307_16:
Ltmp488:
	bl	___clang_call_terminate
Lfunc_end36:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table307:
Lexception36:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase16-Lttbaseref16
Lttbaseref16:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end36-Lcst_begin36
Lcst_begin36:
	.uleb128 Ltmp480-Lfunc_begin36          ; >> Call Site 1 <<
	.uleb128 Ltmp479-Ltmp480                ;   Call between Ltmp480 and Ltmp479
	.uleb128 Ltmp488-Lfunc_begin36          ;     jumps to Ltmp488
	.byte	1                               ;   On action: 1
Lcst_end36:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase16:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_ ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB8ne180100Ev ; -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB8ne180100Ev
	.globl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB8ne180100Ev
	.weak_definition	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB8ne180100Ev
	.p2align	2
__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB8ne180100Ev: ; @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE4pptrB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #48]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB8ne180100Ev ; -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB8ne180100Ev
	.globl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB8ne180100Ev
	.weak_definition	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB8ne180100Ev
	.p2align	2
__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB8ne180100Ev: ; @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5pbaseB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100IPcS5_EET_T0_ ; -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100IPcS5_EET_T0_
	.weak_def_can_be_hidden	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100IPcS5_EET_T0_
	.p2align	2
__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100IPcS5_EET_T0_: ; @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100IPcS5_EET_T0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100IPcS5_EET_T0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB8ne180100Ev ; -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB8ne180100Ev
	.globl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB8ne180100Ev
	.weak_definition	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB8ne180100Ev
	.p2align	2
__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB8ne180100Ev: ; @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5ebackB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB8ne180100Ev ; -- Begin function _ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB8ne180100Ev
	.globl	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB8ne180100Ev
	.weak_definition	__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB8ne180100Ev
	.p2align	2
__ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB8ne180100Ev: ; @_ZNKSt3__115basic_streambufIcNS_11char_traitsIcEEE5egptrB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #32]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100Ev ; -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100Ev
	.globl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100Ev
	.p2align	2
__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100Ev: ; @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC1B8ne180100Ev
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
	bl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100IPcS5_EET_T0_ ; -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100IPcS5_EET_T0_
	.weak_def_can_be_hidden	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100IPcS5_EET_T0_
	.p2align	2
__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100IPcS5_EET_T0_: ; @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100IPcS5_EET_T0_
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
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__110to_addressB8ne180100IcEEDaPT_
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	str	x8, [x0, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110to_addressB8ne180100IcEEDaPT_ ; -- Begin function _ZNSt3__110to_addressB8ne180100IcEEDaPT_
	.globl	__ZNSt3__110to_addressB8ne180100IcEEDaPT_
	.weak_definition	__ZNSt3__110to_addressB8ne180100IcEEDaPT_
	.p2align	2
__ZNSt3__110to_addressB8ne180100IcEEDaPT_: ; @_ZNSt3__110to_addressB8ne180100IcEEDaPT_
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
	bl	__ZNSt3__112__to_addressB8ne180100IcEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100Ev ; -- Begin function _ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100Ev
	.globl	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100Ev
	.p2align	2
__ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100Ev: ; @_ZNSt3__117basic_string_viewIcNS_11char_traitsIcEEEC2B8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	str	xzr, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_ ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_
	.weak_def_can_be_hidden	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_
	.p2align	2
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2INS_17basic_string_viewIcS2_EELi0EEERKT_RKS4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	ldur	x2, [x29, #-24]
	sub	x1, x29, #25
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagERKS5_EEOT_OT0_
	ldur	x8, [x29, #-16]
	ldr	q0, [x8]
	add	x0, sp, #32
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	str	q0, [sp, #32]
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4dataB8ne180100Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__117basic_string_viewIcNS_11char_traitsIcEEE4sizeB8ne180100Ev
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagERKS5_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagERKS5_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagERKS5_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagERKS5_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ne180100INS_18__default_init_tagERKS5_EEOT_OT0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagERKS5_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagERKS5_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagERKS5_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagERKS5_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagERKS5_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ne180100INS_18__default_init_tagERKS5_EEOT_OT0_
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
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ne180100ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #24]
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100IRKS2_vEEOT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100IRKS2_vEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100IRKS2_vEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100IRKS2_vEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100IRKS2_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ne180100IRKS2_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB8ne180100Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB8ne180100Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB8ne180100Ev
	.weak_definition	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB8ne180100Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB8ne180100Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7__allocB8ne180100Ev
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
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB8ne180100Ev ; -- Begin function _ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB8ne180100Ev
	.globl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB8ne180100Ev
	.weak_definition	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB8ne180100Ev
	.p2align	2
__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB8ne180100Ev: ; @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E6secondB8ne180100Ev
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
	bl	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB8ne180100Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB8ne180100Ev
	.globl	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB8ne180100Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB8ne180100Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB8ne180100Ev: ; @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev ; -- Begin function _ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.p2align	2
__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev: ; @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
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
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x10, [x9]
	str	x10, [x8]
	ldr	x9, [x9, #24]
	ldr	x10, [x8]
	ldur	x10, [x10, #-24]
	str	x9, [x8, x10]
	add	x0, x8, #8
	bl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	add	x1, x8, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ; -- Begin function _ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	2
__ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ; @_ZTv0_n24_NSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	mov	x9, x8
	str	x9, [sp, #8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	add	sp, sp, #16
	b	__ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev ; -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	.p2align	2
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev: ; @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
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
	bl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev ; -- Begin function _ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
	.p2align	2
__ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev: ; @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev
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
	adrp	x9, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGE
	ldr	x9, [x9, __ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE@GOTPAGEOFF]
	add	x9, x9, #16
	str	x9, [x8]
	add	x0, x8, #64
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts14BenchmarkStatsD2Ev    ; -- Begin function _ZN3bts14BenchmarkStatsD2Ev
	.weak_def_can_be_hidden	__ZN3bts14BenchmarkStatsD2Ev
	.p2align	2
__ZN3bts14BenchmarkStatsD2Ev:           ; @_ZN3bts14BenchmarkStatsD2Ev
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
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16invokeB8ne180100IRZ4mainE3$_0JEEENS_13invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_
__ZNSt3__16invokeB8ne180100IRZ4mainE3$_0JEEENS_13invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_: ; @"_ZNSt3__16invokeB8ne180100IRZ4mainE3$_0JEEENS_13invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_"
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
	bl	__ZNSt3__18__invokeB8ne180100IRZ4mainE3$_0JEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS3_DpOS4_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1B8ne180100Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEC1B8ne180100Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1B8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEEC1B8ne180100Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEEC1B8ne180100Ev
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
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE7reserveEm ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE7reserveEm
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE7reserveEm
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE7reserveEm
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE7reserveEm: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE7reserveEm
Lfunc_begin37:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception37
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB8ne180100Ev
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, ls
	tbnz	w8, #0, LBB332_6
	b	LBB332_1
LBB332_1:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, ls
	tbnz	w8, #0, LBB332_3
	b	LBB332_2
LBB332_2:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
LBB332_3:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB8ne180100Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, x0
	ldur	x3, [x29, #-24]
	add	x0, sp, #64
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
Ltmp497:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE
Ltmp498:
	b	LBB332_4
LBB332_4:
	add	x0, sp, #64
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	b	LBB332_6
LBB332_5:
Ltmp499:
	str	x0, [sp, #56]
	mov	x8, x1
	str	w8, [sp, #52]
	add	x0, sp, #64
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	b	LBB332_7
LBB332_6:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB332_7:
	ldr	x0, [sp, #56]
	bl	__Unwind_Resume
Lfunc_end37:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table332:
Lexception37:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end37-Lcst_begin37
Lcst_begin37:
	.uleb128 Lfunc_begin37-Lfunc_begin37    ; >> Call Site 1 <<
	.uleb128 Ltmp497-Lfunc_begin37          ;   Call between Lfunc_begin37 and Ltmp497
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp497-Lfunc_begin37          ; >> Call Site 2 <<
	.uleb128 Ltmp498-Ltmp497                ;   Call between Ltmp497 and Ltmp498
	.uleb128 Ltmp499-Lfunc_begin37          ;     jumps to Ltmp499
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp498-Lfunc_begin37          ; >> Call Site 3 <<
	.uleb128 Lfunc_end37-Ltmp498            ;   Call between Ltmp498 and Lfunc_end37
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end37:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16chronomiB8ne180100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE ; -- Begin function _ZNSt3__16chronomiB8ne180100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.globl	__ZNSt3__16chronomiB8ne180100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.weak_definition	__ZNSt3__16chronomiB8ne180100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.p2align	2
__ZNSt3__16chronomiB8ne180100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE: ; @_ZNSt3__16chronomiB8ne180100INS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEES6_EENS_11common_typeIJT0_T1_EE4typeERKNS0_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne180100Ev
	add	x8, sp, #16
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x0, [sp, #16]
	ldr	x0, [sp, #24]
	bl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__16chronomiB8ne180100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B8ne180100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B8ne180100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B8ne180100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B8ne180100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B8ne180100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
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
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B8ne180100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB8ne180100Ev ; -- Begin function _ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB8ne180100Ev
	.globl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB8ne180100Ev
	.weak_definition	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB8ne180100Ev
	.p2align	2
__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB8ne180100Ev: ; @_ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	d0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backB8ne180100ERKd ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backB8ne180100ERKd
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backB8ne180100ERKd
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backB8ne180100ERKd
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backB8ne180100ERKd: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE9push_backB8ne180100ERKd
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
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x0, #8]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE9__end_capB8ne180100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x0]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB336_2
	b	LBB336_1
LBB336_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE22__construct_one_at_endB8ne180100IJRKdEEEvDpOT_
	ldr	x8, [sp, #24]
	add	x8, x8, #8
	str	x8, [sp, #24]
	b	LBB336_3
LBB336_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEPdOT_
	str	x0, [sp, #24]
	b	LBB336_3
LBB336_3:
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__110accumulateB8ne180100INS_11__wrap_iterIPdEEdEET0_T_S5_S4_ ; -- Begin function _ZNSt3__110accumulateB8ne180100INS_11__wrap_iterIPdEEdEET0_T_S5_S4_
	.globl	__ZNSt3__110accumulateB8ne180100INS_11__wrap_iterIPdEEdEET0_T_S5_S4_
	.weak_definition	__ZNSt3__110accumulateB8ne180100INS_11__wrap_iterIPdEEdEET0_T_S5_S4_
	.p2align	2
__ZNSt3__110accumulateB8ne180100INS_11__wrap_iterIPdEEdEET0_T_S5_S4_: ; @_ZNSt3__110accumulateB8ne180100INS_11__wrap_iterIPdEEdEET0_T_S5_S4_
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
	str	d0, [sp, #8]
	b	LBB337_1
LBB337_1:                               ; =>This Inner Loop Header: Depth=1
	sub	x0, x29, #8
	add	x1, sp, #16
	bl	__ZNSt3__1neB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_
	tbz	w0, #0, LBB337_4
	b	LBB337_2
LBB337_2:                               ;   in Loop: Header=BB337_1 Depth=1
	ldr	d0, [sp, #8]
	str	d0, [sp]                        ; 8-byte Folded Spill
	sub	x0, x29, #8
	bl	__ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev
	ldr	d0, [sp]                        ; 8-byte Folded Reload
	ldr	d1, [x0]
	fadd	d0, d0, d1
	str	d0, [sp, #8]
	b	LBB337_3
LBB337_3:                               ;   in Loop: Header=BB337_1 Depth=1
	sub	x0, x29, #8
	bl	__ZNSt3__111__wrap_iterIPdEppB8ne180100Ev
	b	LBB337_1
LBB337_4:
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB8ne180100Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB8ne180100Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB8ne180100Ev
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB8ne180100Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterB8ne180100EPd
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB8ne180100Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE3endB8ne180100Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB8ne180100Ev
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB8ne180100Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE3endB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0, #8]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterB8ne180100EPd
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB8ne180100Ev
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB8ne180100Ev
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB8ne180100Ev: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1neB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_ ; -- Begin function _ZNSt3__1neB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_
	.globl	__ZNSt3__1neB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_
	.weak_definition	__ZNSt3__1neB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_
	.p2align	2
__ZNSt3__1neB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_: ; @_ZNSt3__1neB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__1eqB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_
	eor	w8, w0, #0x1
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev ; -- Begin function _ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev
	.globl	__ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev
	.weak_definition	__ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev
	.p2align	2
__ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev: ; @_ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPdEppB8ne180100Ev ; -- Begin function _ZNSt3__111__wrap_iterIPdEppB8ne180100Ev
	.globl	__ZNSt3__111__wrap_iterIPdEppB8ne180100Ev
	.weak_definition	__ZNSt3__111__wrap_iterIPdEppB8ne180100Ev
	.p2align	2
__ZNSt3__111__wrap_iterIPdEppB8ne180100Ev: ; @_ZNSt3__111__wrap_iterIPdEppB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0]
	add	x8, x8, #8
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts14BenchmarkStatsC1Ev    ; -- Begin function _ZN3bts14BenchmarkStatsC1Ev
	.weak_def_can_be_hidden	__ZN3bts14BenchmarkStatsC1Ev
	.p2align	2
__ZN3bts14BenchmarkStatsC1Ev:           ; @_ZN3bts14BenchmarkStatsC1Ev
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
	bl	__ZN3bts14BenchmarkStatsC2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts10percentileENSt3__16vectorIdNS0_9allocatorIdEEEEd ; -- Begin function _ZN3bts10percentileENSt3__16vectorIdNS0_9allocatorIdEEEEd
	.weak_definition	__ZN3bts10percentileENSt3__16vectorIdNS0_9allocatorIdEEEEd
	.p2align	2
__ZN3bts10percentileENSt3__16vectorIdNS0_9allocatorIdEEEEd: ; @_ZN3bts10percentileENSt3__16vectorIdNS0_9allocatorIdEEEEd
Lfunc_begin38:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception38
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-16]
	stur	d0, [x29, #-24]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE5emptyB8ne180100Ev
	tbz	w0, #0, LBB345_4
	b	LBB345_1
LBB345_1:
	mov	x0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
Ltmp504:
	adrp	x1, l_.str.56@PAGE
	add	x1, x1, l_.str.56@PAGEOFF
	bl	__ZNSt16invalid_argumentC1B8ne180100EPKc
Ltmp505:
	b	LBB345_2
LBB345_2:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	adrp	x1, __ZTISt16invalid_argument@GOTPAGE
	ldr	x1, [x1, __ZTISt16invalid_argument@GOTPAGEOFF]
	adrp	x2, __ZNSt16invalid_argumentD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt16invalid_argumentD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB345_3:
Ltmp506:
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-32]
	mov	x8, x1
	stur	w8, [x29, #-36]
	bl	___cxa_free_exception
	b	LBB345_8
LBB345_4:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE5beginB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-48]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE3endB8ne180100Ev
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-56]
	bl	__ZNSt3__14sortB8ne180100INS_11__wrap_iterIPdEEEEvT_S4_
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldur	d0, [x29, #-24]
	str	d0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB8ne180100Ev
	ldr	d0, [sp, #16]                   ; 8-byte Folded Reload
	subs	x8, x0, #1
	ucvtf	d1, x8
	fmul	d0, d0, d1
	str	d0, [sp, #64]
	ldr	d0, [sp, #64]
	fcvtmu	x8, d0
	str	x8, [sp, #56]
	ldr	d0, [sp, #64]
	fcvtpu	x8, d0
	str	x8, [sp, #48]
	ldr	x8, [sp, #56]
	ldr	x9, [sp, #48]
	subs	x8, x8, x9
	cset	w8, ne
	tbnz	w8, #0, LBB345_6
	b	LBB345_5
LBB345_5:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #56]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEixB8ne180100Em
	ldr	d0, [x0]
	stur	d0, [x29, #-8]
	b	LBB345_7
LBB345_6:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	d0, [sp, #64]
	ldr	d1, [sp, #56]
	ucvtf	d1, d1
	fsub	d0, d0, d1
	str	d0, [sp, #40]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEixB8ne180100Em
	mov	x8, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	d0, [x8]
	str	d0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [sp, #48]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEixB8ne180100Em
	mov	x8, x0
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	d0, [x8]
	str	d0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #56]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEixB8ne180100Em
	ldr	d0, [sp]                        ; 8-byte Folded Reload
	ldr	d2, [sp, #8]                    ; 8-byte Folded Reload
	ldr	d1, [x0]
	fsub	d0, d0, d1
	ldr	d1, [sp, #40]
	fmadd	d0, d0, d1, d2
	stur	d0, [x29, #-8]
	b	LBB345_7
LBB345_7:
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
LBB345_8:
	ldur	x0, [x29, #-32]
	bl	__Unwind_Resume
Lfunc_end38:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table345:
Lexception38:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end38-Lcst_begin38
Lcst_begin38:
	.uleb128 Lfunc_begin38-Lfunc_begin38    ; >> Call Site 1 <<
	.uleb128 Ltmp504-Lfunc_begin38          ;   Call between Lfunc_begin38 and Ltmp504
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp504-Lfunc_begin38          ; >> Call Site 2 <<
	.uleb128 Ltmp505-Ltmp504                ;   Call between Ltmp504 and Ltmp505
	.uleb128 Ltmp506-Lfunc_begin38          ;     jumps to Ltmp506
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp505-Lfunc_begin38          ; >> Call Site 3 <<
	.uleb128 Lfunc_end38-Ltmp505            ;   Call between Ltmp505 and Lfunc_end38
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end38:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_ ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEEC1ERKS3_
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
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2ERKS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEED1B8ne180100Ev
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
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111min_elementB8ne180100INS_11__wrap_iterIPdEEEET_S4_S4_ ; -- Begin function _ZNSt3__111min_elementB8ne180100INS_11__wrap_iterIPdEEEET_S4_S4_
	.globl	__ZNSt3__111min_elementB8ne180100INS_11__wrap_iterIPdEEEET_S4_S4_
	.weak_definition	__ZNSt3__111min_elementB8ne180100INS_11__wrap_iterIPdEEEET_S4_S4_
	.p2align	2
__ZNSt3__111min_elementB8ne180100INS_11__wrap_iterIPdEEEET_S4_S4_: ; @_ZNSt3__111min_elementB8ne180100INS_11__wrap_iterIPdEEEET_S4_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__111min_elementB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEET_S6_S6_T0_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPdEEEET_S4_S4_ ; -- Begin function _ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPdEEEET_S4_S4_
	.globl	__ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPdEEEET_S4_S4_
	.weak_definition	__ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPdEEEET_S4_S4_
	.p2align	2
__ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPdEEEET_S4_S4_: ; @_ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPdEEEET_S4_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEET_S6_S6_T0_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__18__invokeB8ne180100IRZ4mainE3$_0JEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS3_DpOS4_
__ZNSt3__18__invokeB8ne180100IRZ4mainE3$_0JEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS3_DpOS4_: ; @"_ZNSt3__18__invokeB8ne180100IRZ4mainE3$_0JEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS3_DpOS4_"
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
	bl	__ZZ4mainENK3$_0clEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_0clEv
__ZZ4mainENK3$_0clEv:                   ; @"_ZZ4mainENK3$_0clEv"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [x8]
	ldr	x1, [x8]
	add	x8, sp, #24
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #20]                   ; 4-byte Folded Spill
	and	w0, w9, #0x1
	mov	x2, #4660                       ; =0x1234
	movk	x2, #24301, lsl #16
	bl	__ZN12_GLOBAL__N_114mixed_workloadEbmy
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w2, [sp, #20]                   ; 4-byte Folded Reload
	ldr	x0, [x8, #8]
	ldr	x8, [sp, #120]
	ldr	x9, [sp, #112]
	add	x1, x8, x9
	bl	__ZNSt3__113__atomic_baseImLb0EE5storeB8ne180100EmNS_12memory_orderE
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__atomic_baseImLb0EE5storeB8ne180100EmNS_12memory_orderE ; -- Begin function _ZNSt3__113__atomic_baseImLb0EE5storeB8ne180100EmNS_12memory_orderE
	.globl	__ZNSt3__113__atomic_baseImLb0EE5storeB8ne180100EmNS_12memory_orderE
	.weak_definition	__ZNSt3__113__atomic_baseImLb0EE5storeB8ne180100EmNS_12memory_orderE
	.p2align	2
__ZNSt3__113__atomic_baseImLb0EE5storeB8ne180100EmNS_12memory_orderE: ; @_ZNSt3__113__atomic_baseImLb0EE5storeB8ne180100EmNS_12memory_orderE
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
	bl	__ZNSt3__118__cxx_atomic_storeB8ne180100ImEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__cxx_atomic_storeB8ne180100ImEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE ; -- Begin function _ZNSt3__118__cxx_atomic_storeB8ne180100ImEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
	.globl	__ZNSt3__118__cxx_atomic_storeB8ne180100ImEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
	.weak_definition	__ZNSt3__118__cxx_atomic_storeB8ne180100ImEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
	.p2align	2
__ZNSt3__118__cxx_atomic_storeB8ne180100ImEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE: ; @_ZNSt3__118__cxx_atomic_storeB8ne180100ImEEvPNS_22__cxx_atomic_base_implIT_EES2_NS_12memory_orderE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	w2, [sp, #28]
	ldr	x8, [sp, #40]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	w8, [sp, #28]
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	ldr	x9, [sp, #32]
	str	x9, [sp, #16]
	subs	w8, w8, #3
	cset	w8, eq
	tbnz	w8, #0, LBB353_3
	b	LBB353_1
LBB353_1:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	subs	w8, w8, #5
	cset	w8, eq
	tbnz	w8, #0, LBB353_4
	b	LBB353_2
LBB353_2:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #16]
	str	x8, [x9]
	b	LBB353_5
LBB353_3:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #16]
	stlr	x8, [x9]
	b	LBB353_5
LBB353_4:
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #16]
	stlr	x8, [x9]
	b	LBB353_5
LBB353_5:
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2B8ne180100Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEC2B8ne180100Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2B8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEEC2B8ne180100Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEEC2B8ne180100Ev
Lfunc_begin39:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception39
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	add	x1, sp, #16
	str	xzr, [sp, #16]
Ltmp508:
	add	x0, x8, #16
	add	x2, sp, #15
	bl	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_
Ltmp509:
	b	LBB354_1
LBB354_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB354_2:
Ltmp510:
	bl	___clang_call_terminate
Lfunc_end39:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table354:
Lexception39:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase17-Lttbaseref17
Lttbaseref17:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end39-Lcst_begin39
Lcst_begin39:
	.uleb128 Ltmp508-Lfunc_begin39          ; >> Call Site 1 <<
	.uleb128 Ltmp509-Ltmp508                ;   Call between Ltmp508 and Ltmp509
	.uleb128 Ltmp510-Lfunc_begin39          ;     jumps to Ltmp510
	.byte	1                               ;   On action: 1
Lcst_end39:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase17:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2B8ne180100IDnNS_18__default_init_tagEEEOT_OT0_
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
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2B8ne180100IDnvEEOT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2B8ne180100IDnvEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2B8ne180100IDnvEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2B8ne180100IDnvEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2B8ne180100IDnvEEOT_: ; @_ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2B8ne180100IDnvEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EEC2B8ne180100ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIdEC2B8ne180100Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIdEC2B8ne180100Ev ; -- Begin function _ZNSt3__19allocatorIdEC2B8ne180100Ev
	.globl	__ZNSt3__19allocatorIdEC2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__19allocatorIdEC2B8ne180100Ev
	.p2align	2
__ZNSt3__19allocatorIdEC2B8ne180100Ev:  ; @_ZNSt3__19allocatorIdEC2B8ne180100Ev
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
	bl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIdEEEC2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIdEEEC2B8ne180100Ev ; -- Begin function _ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIdEEEC2B8ne180100Ev
	.globl	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIdEEEC2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIdEEEC2B8ne180100Ev
	.p2align	2
__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIdEEEC2B8ne180100Ev: ; @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIdEEEC2B8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB8ne180100Ev
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB8ne180100Ev
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB8ne180100Ev: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB8ne180100Ev
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
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE9__end_capB8ne180100Ev
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv
Lfunc_begin40:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception40
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeB8ne180100IS2_vvEEmRKS2_
	sub	x8, x29, #16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	bl	__ZNSt3__114numeric_limitsIlE3maxB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #24
	str	x8, [sp, #24]
Ltmp513:
	bl	__ZNSt3__13minB8ne180100ImEERKT_S3_S3_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp514:
	b	LBB362_1
LBB362_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB362_2:
Ltmp515:
	bl	___clang_call_terminate
Lfunc_end40:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table362:
Lexception40:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase18-Lttbaseref18
Lttbaseref18:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end40-Lcst_begin40
Lcst_begin40:
	.uleb128 Ltmp513-Lfunc_begin40          ; >> Call Site 1 <<
	.uleb128 Ltmp514-Ltmp513                ;   Call between Ltmp513 and Ltmp514
	.uleb128 Ltmp515-Lfunc_begin40          ;     jumps to Ltmp515
	.byte	1                               ;   On action: 1
Lcst_end40:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase18:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	adrp	x0, l_.str.26@PAGE
	add	x0, x0, l_.str.26@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne180100EPKc
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
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
	add	x0, x8, #16
	bl	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_ ; -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_
	.p2align	2
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_: ; @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_
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
	str	x3, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteB8ne180100Ev
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x1, [x8, #8]
	sub	x0, x29, #48
	bl	__ZNSt3__116reverse_iteratorIPdEC1B8ne180100ES1_
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [x8]
	add	x0, sp, #48
	bl	__ZNSt3__116reverse_iteratorIPdEC1B8ne180100ES1_
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	add	x0, sp, #32
	bl	__ZNSt3__116reverse_iteratorIPdEC1B8ne180100ES1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x1, [x29, #-48]
	ldur	x2, [x29, #-40]
	ldr	x3, [sp, #48]
	ldr	x4, [sp, #56]
	ldr	x5, [sp, #32]
	ldr	x6, [sp, #40]
	bl	__ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIdEENS_16reverse_iteratorIPdEES5_dvEET1_RT_T0_S9_S6_
	mov	x8, x0
	sub	x0, x29, #32
	stur	x8, [x29, #-32]
	stur	x1, [x29, #-24]
	bl	__ZNKSt3__116reverse_iteratorIPdE4baseB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	ldur	x8, [x29, #-16]
	add	x1, x8, #8
	bl	__ZNSt3__14swapB8ne180100IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	add	x0, x9, #8
	add	x1, x8, #16
	bl	__ZNSt3__14swapB8ne180100IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE9__end_capB8ne180100Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capB8ne180100Ev
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__14swapB8ne180100IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB8ne180100Ev
	mov	x1, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newB8ne180100Em
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev ; -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	.p2align	2
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev: ; @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
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
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE9__end_capB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE9__end_capB8ne180100Ev
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE9__end_capB8ne180100Ev
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE9__end_capB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE9__end_capB8ne180100Ev: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE9__end_capB8ne180100Ev
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
	add	x0, x8, #16
	bl	__ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstB8ne180100Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstB8ne180100Ev
	.globl	__ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstB8ne180100Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstB8ne180100Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstB8ne180100Ev: ; @_ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstB8ne180100Ev
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
	bl	__ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getB8ne180100Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getB8ne180100Ev
	.globl	__ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getB8ne180100Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getB8ne180100Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getB8ne180100Ev: ; @_ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeB8ne180100IS2_vvEEmRKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeB8ne180100IS2_vvEEmRKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeB8ne180100IS2_vvEEmRKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeB8ne180100IS2_vvEEmRKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeB8ne180100IS2_vvEEmRKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	bl	__ZNSt3__114numeric_limitsImE3maxB8ne180100Ev
	mov	x8, #8                          ; =0x8
	udiv	x0, x0, x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
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
	add	x0, x8, #16
	bl	__ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondB8ne180100Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondB8ne180100Ev
	.globl	__ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondB8ne180100Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondB8ne180100Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondB8ne180100Ev: ; @_ZNKSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondB8ne180100Ev
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
	bl	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getB8ne180100Ev ; -- Begin function _ZNKSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getB8ne180100Ev
	.globl	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getB8ne180100Ev
	.weak_definition	__ZNKSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getB8ne180100Ev
	.p2align	2
__ZNKSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getB8ne180100Ev: ; @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondB8ne180100Ev ; -- Begin function _ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondB8ne180100Ev
	.globl	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondB8ne180100Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondB8ne180100Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondB8ne180100Ev: ; @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE6secondB8ne180100Ev
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
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getB8ne180100Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getB8ne180100Ev
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getB8ne180100Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getB8ne180100Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getB8ne180100Ev: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_ ; -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_
	.p2align	2
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_: ; @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC2EmmS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	str	x3, [sp, #40]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	add	x1, sp, #32
                                        ; kill: def $x9 killed $xzr
	str	xzr, [sp, #32]
	ldr	x2, [sp, #40]
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC1B8ne180100IDnS4_EEOT_OT0_
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB377_2
	b	LBB377_1
LBB377_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	LBB377_3
LBB377_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE7__allocB8ne180100Ev
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIdEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x9]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-24]
	b	LBB377_3
LBB377_3:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldur	x9, [x29, #-32]
	add	x8, x8, x9, lsl #3
	str	x8, [x0, #16]
	str	x8, [x0, #8]
	ldr	x8, [x0]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9, lsl #3
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capB8ne180100Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	str	x8, [x0]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC1B8ne180100IDnS4_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC1B8ne180100IDnS4_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC1B8ne180100IDnS4_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC1B8ne180100IDnS4_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC1B8ne180100IDnS4_EEOT_OT0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC2B8ne180100IDnS4_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIdEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m ; -- Begin function _ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIdEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.globl	__ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIdEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.weak_definition	__ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIdEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.p2align	2
__ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIdEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m: ; @_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIdEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__19allocatorIdE8allocateB8ne180100Em
	str	x0, [sp, #16]
	ldr	x8, [sp]
	str	x8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE7__allocB8ne180100Ev ; -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE7__allocB8ne180100Ev
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE7__allocB8ne180100Ev
	.weak_definition	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE7__allocB8ne180100Ev
	.p2align	2
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE7__allocB8ne180100Ev: ; @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE7__allocB8ne180100Ev
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
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE6secondB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capB8ne180100Ev ; -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capB8ne180100Ev
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capB8ne180100Ev
	.weak_definition	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capB8ne180100Ev
	.p2align	2
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capB8ne180100Ev: ; @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capB8ne180100Ev
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
	add	x0, x8, #24
	bl	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC2B8ne180100IDnS4_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC2B8ne180100IDnS4_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC2B8ne180100IDnS4_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC2B8ne180100IDnS4_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEEC2B8ne180100IDnS4_EEOT_OT0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2B8ne180100IDnvEEOT_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]
	add	x0, x8, #8
	bl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EEC2B8ne180100IS3_vEEOT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EEC2B8ne180100IS3_vEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EEC2B8ne180100IS3_vEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EEC2B8ne180100IS3_vEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EEC2B8ne180100IS3_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EEC2B8ne180100IS3_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIdE8allocateB8ne180100Em ; -- Begin function _ZNSt3__19allocatorIdE8allocateB8ne180100Em
	.globl	__ZNSt3__19allocatorIdE8allocateB8ne180100Em
	.weak_definition	__ZNSt3__19allocatorIdE8allocateB8ne180100Em
	.p2align	2
__ZNSt3__19allocatorIdE8allocateB8ne180100Em: ; @_ZNSt3__19allocatorIdE8allocateB8ne180100Em
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
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE8max_sizeB8ne180100IS2_vvEEmRKS2_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, ls
	tbnz	w8, #0, LBB384_2
	b	LBB384_1
LBB384_1:
	bl	__ZSt28__throw_bad_array_new_lengthB8ne180100v
LBB384_2:
	ldr	x8, [sp, #16]
	lsl	x0, x8, #3
	mov	x1, #8                          ; =0x8
	bl	__ZNSt3__117__libcpp_allocateB8ne180100Emm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE6secondB8ne180100Ev ; -- Begin function _ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE6secondB8ne180100Ev
	.globl	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE6secondB8ne180100Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE6secondB8ne180100Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE6secondB8ne180100Ev: ; @_ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE6secondB8ne180100Ev
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
	add	x0, x8, #8
	bl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EE5__getB8ne180100Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EE5__getB8ne180100Ev
	.globl	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EE5__getB8ne180100Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EE5__getB8ne180100Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EE5__getB8ne180100Ev: ; @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIdEELi1ELb0EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstB8ne180100Ev ; -- Begin function _ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstB8ne180100Ev
	.globl	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstB8ne180100Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstB8ne180100Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstB8ne180100Ev: ; @_ZNSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstB8ne180100Ev
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
	bl	__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getB8ne180100Ev ; -- Begin function _ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getB8ne180100Ev
	.globl	__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getB8ne180100Ev
	.weak_definition	__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getB8ne180100Ev
	.p2align	2
__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getB8ne180100Ev: ; @_ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteB8ne180100Ev
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteB8ne180100Ev
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteB8ne180100Ev: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIdEENS_16reverse_iteratorIPdEES5_dvEET1_RT_T0_S9_S6_ ; -- Begin function _ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIdEENS_16reverse_iteratorIPdEES5_dvEET1_RT_T0_S9_S6_
	.globl	__ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIdEENS_16reverse_iteratorIPdEES5_dvEET1_RT_T0_S9_S6_
	.weak_definition	__ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIdEENS_16reverse_iteratorIPdEES5_dvEET1_RT_T0_S9_S6_
	.p2align	2
__ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIdEENS_16reverse_iteratorIPdEES5_dvEET1_RT_T0_S9_S6_: ; @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ne180100INS_9allocatorIdEENS_16reverse_iteratorIPdEES5_dvEET1_RT_T0_S9_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-48]
	stur	x4, [x29, #-40]
	str	x5, [sp, #64]
	str	x6, [sp, #72]
	str	x0, [sp, #56]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-48]
	str	q0, [sp, #16]
	ldr	q0, [sp, #64]
	str	q0, [sp]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	ldr	x4, [sp]
	ldr	x5, [sp, #8]
	bl	__ZNSt3__14moveB8ne180100INS_16reverse_iteratorIPdEES3_EET0_T_S5_S4_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPdEC1B8ne180100ES1_ ; -- Begin function _ZNSt3__116reverse_iteratorIPdEC1B8ne180100ES1_
	.globl	__ZNSt3__116reverse_iteratorIPdEC1B8ne180100ES1_
	.weak_def_can_be_hidden	__ZNSt3__116reverse_iteratorIPdEC1B8ne180100ES1_
	.p2align	2
__ZNSt3__116reverse_iteratorIPdEC1B8ne180100ES1_: ; @_ZNSt3__116reverse_iteratorIPdEC1B8ne180100ES1_
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
	bl	__ZNSt3__116reverse_iteratorIPdEC2B8ne180100ES1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116reverse_iteratorIPdE4baseB8ne180100Ev ; -- Begin function _ZNKSt3__116reverse_iteratorIPdE4baseB8ne180100Ev
	.globl	__ZNKSt3__116reverse_iteratorIPdE4baseB8ne180100Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorIPdE4baseB8ne180100Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorIPdE4baseB8ne180100Ev: ; @_ZNKSt3__116reverse_iteratorIPdE4baseB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14swapB8ne180100IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_ ; -- Begin function _ZNSt3__14swapB8ne180100IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.globl	__ZNSt3__14swapB8ne180100IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.weak_definition	__ZNSt3__14swapB8ne180100IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.p2align	2
__ZNSt3__14swapB8ne180100IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_: ; @_ZNSt3__14swapB8ne180100IPdEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE9__end_capB8ne180100Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE9__end_capB8ne180100Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE9__end_capB8ne180100Ev
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE9__end_capB8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE9__end_capB8ne180100Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE9__end_capB8ne180100Ev
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
	add	x0, x8, #16
	bl	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newB8ne180100Em ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newB8ne180100Em
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newB8ne180100Em
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newB8ne180100Em
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newB8ne180100Em: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newB8ne180100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14moveB8ne180100INS_16reverse_iteratorIPdEES3_EET0_T_S5_S4_ ; -- Begin function _ZNSt3__14moveB8ne180100INS_16reverse_iteratorIPdEES3_EET0_T_S5_S4_
	.globl	__ZNSt3__14moveB8ne180100INS_16reverse_iteratorIPdEES3_EET0_T_S5_S4_
	.weak_definition	__ZNSt3__14moveB8ne180100INS_16reverse_iteratorIPdEES3_EET0_T_S5_S4_
	.p2align	2
__ZNSt3__14moveB8ne180100INS_16reverse_iteratorIPdEES3_EET0_T_S5_S4_: ; @_ZNSt3__14moveB8ne180100INS_16reverse_iteratorIPdEES3_EET0_T_S5_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-64]
	stur	x5, [x29, #-56]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-48]
	str	q0, [sp, #16]
	ldur	q0, [x29, #-64]
	str	q0, [sp]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	ldr	x4, [sp]
	ldr	x5, [sp, #8]
	add	x8, sp, #48
	bl	__ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPdEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_
	ldr	q0, [sp, #64]
	stur	q0, [x29, #-16]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPdEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_ ; -- Begin function _ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPdEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_
	.globl	__ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPdEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_
	.weak_definition	__ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPdEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_
	.p2align	2
__ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPdEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_: ; @_ZNSt3__16__moveB8ne180100INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPdEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-24]
	str	x4, [sp, #48]
	str	x5, [sp, #56]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]
	ldr	q0, [sp, #48]
	str	q0, [sp]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	ldr	x4, [sp]
	ldr	x5, [sp, #8]
	bl	__ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPdEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPdEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_ ; -- Begin function _ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPdEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_
	.globl	__ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPdEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_
	.weak_definition	__ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPdEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_
	.p2align	2
__ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPdEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_: ; @_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPdEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-24]
	str	x4, [sp, #48]
	str	x5, [sp, #56]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]
	ldr	q0, [sp, #48]
	str	q0, [sp]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	ldr	x4, [sp]
	ldr	x5, [sp, #8]
	bl	__ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPdEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPdEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_ ; -- Begin function _ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPdEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_
	.globl	__ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPdEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_
	.weak_definition	__ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPdEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_
	.p2align	2
__ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPdEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_: ; @_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPdEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #368
	stp	x28, x27, [sp, #336]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #352]            ; 16-byte Folded Spill
	add	x29, sp, #352
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-48]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-64]
	stur	x5, [x29, #-56]
	ldur	q0, [x29, #-32]
	stur	q0, [x29, #-112]
	ldur	q0, [x29, #-48]
	stur	q0, [x29, #-128]
	ldur	x0, [x29, #-112]
	ldur	x1, [x29, #-104]
	ldur	x2, [x29, #-128]
	ldur	x3, [x29, #-120]
	sub	x8, x29, #96
	bl	__ZNSt3__114__unwrap_rangeB8ne180100INS_16reverse_iteratorIPdEES3_EEDaT_T0_
	ldur	q0, [x29, #-96]
	str	q0, [sp, #160]
	ldur	q0, [x29, #-80]
	str	q0, [sp, #144]
	ldur	q0, [x29, #-64]
	str	q0, [sp, #112]
	ldr	x0, [sp, #112]
	ldr	x1, [sp, #120]
	bl	__ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPdEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	str	x0, [sp, #128]
	str	x1, [sp, #136]
	ldr	x1, [sp, #160]
	ldr	x2, [sp, #168]
	ldr	x3, [sp, #144]
	ldr	x4, [sp, #152]
	ldr	x5, [sp, #128]
	ldr	x6, [sp, #136]
	sub	x8, x29, #160
	sub	x0, x29, #161
	bl	__ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPdEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_
	ldur	q0, [x29, #-32]
	str	q0, [sp, #80]
	ldur	q0, [x29, #-160]
	str	q0, [sp, #64]
	ldr	x0, [sp, #80]
	ldr	x1, [sp, #88]
	ldr	x2, [sp, #64]
	ldr	x3, [sp, #72]
	bl	__ZNSt3__114__rewrap_rangeB8ne180100INS_16reverse_iteratorIPdEES3_S3_EET0_S4_T1_
	add	x8, sp, #96
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #96]
	str	x1, [sp, #104]
	ldur	q0, [x29, #-64]
	str	q0, [sp, #32]
	ldur	q0, [x29, #-144]
	str	q0, [sp, #16]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
	bl	__ZNSt3__113__rewrap_iterB8ne180100INS_16reverse_iteratorIPdEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x10, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x1
	add	x1, sp, #48
	str	x10, [sp, #48]
	str	x9, [sp, #56]
	bl	__ZNSt3__19make_pairB8ne180100INS_16reverse_iteratorIPdEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	ldp	x29, x30, [sp, #352]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #336]            ; 16-byte Folded Reload
	add	sp, sp, #368
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__unwrap_rangeB8ne180100INS_16reverse_iteratorIPdEES3_EEDaT_T0_ ; -- Begin function _ZNSt3__114__unwrap_rangeB8ne180100INS_16reverse_iteratorIPdEES3_EEDaT_T0_
	.globl	__ZNSt3__114__unwrap_rangeB8ne180100INS_16reverse_iteratorIPdEES3_EEDaT_T0_
	.weak_definition	__ZNSt3__114__unwrap_rangeB8ne180100INS_16reverse_iteratorIPdEES3_EEDaT_T0_
	.p2align	2
__ZNSt3__114__unwrap_rangeB8ne180100INS_16reverse_iteratorIPdEES3_EEDaT_T0_: ; @_ZNSt3__114__unwrap_rangeB8ne180100INS_16reverse_iteratorIPdEES3_EEDaT_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	str	x2, [sp, #32]
	str	x3, [sp, #40]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #16]
	ldr	q0, [sp, #32]
	str	q0, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp]
	ldr	x3, [sp, #8]
	bl	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPdEES3_E8__unwrapB8ne180100ES3_S3_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPdEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_ ; -- Begin function _ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPdEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_
	.weak_definition	__ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPdEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_
	.p2align	2
__ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPdEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_: ; @_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ne180100INS_16reverse_iteratorIPdEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-24]
	str	x5, [sp, #48]
	str	x6, [sp, #56]
	str	x0, [sp, #40]
	b	LBB401_1
LBB401_1:                               ; =>This Inner Loop Header: Depth=1
	sub	x0, x29, #16
	sub	x1, x29, #32
	bl	__ZNSt3__1neB8ne180100IPdS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	tbz	w0, #0, LBB401_3
	b	LBB401_2
LBB401_2:                               ;   in Loop: Header=BB401_1 Depth=1
	sub	x0, x29, #16
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ne180100IRNS_16reverse_iteratorIPdEELi0EEEDTclsr3stdE4movedeclsr3stdE7declvalIRT_EEEEOS8_
	ldr	d0, [x0]
	str	d0, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, sp, #48
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__116reverse_iteratorIPdEdeB8ne180100Ev
	ldr	d0, [sp, #8]                    ; 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	d0, [x8]
	bl	__ZNSt3__116reverse_iteratorIPdEppB8ne180100Ev
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__116reverse_iteratorIPdEppB8ne180100Ev
	b	LBB401_1
LBB401_3:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	sub	x0, x29, #16
	add	x1, sp, #48
	bl	__ZNSt3__19make_pairB8ne180100INS_16reverse_iteratorIPdEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPdEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_ ; -- Begin function _ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPdEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.globl	__ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPdEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.weak_definition	__ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPdEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.p2align	2
__ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPdEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_: ; @_ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPdEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	q0, [sp, #16]
	str	q0, [sp]
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPdEELb0EE8__unwrapB8ne180100ES3_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne180100INS_16reverse_iteratorIPdEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_ ; -- Begin function _ZNSt3__19make_pairB8ne180100INS_16reverse_iteratorIPdEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	.globl	__ZNSt3__19make_pairB8ne180100INS_16reverse_iteratorIPdEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	.weak_definition	__ZNSt3__19make_pairB8ne180100INS_16reverse_iteratorIPdEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	.p2align	2
__ZNSt3__19make_pairB8ne180100INS_16reverse_iteratorIPdEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_: ; @_ZNSt3__19make_pairB8ne180100INS_16reverse_iteratorIPdEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x1, [x29, #-8]
	ldr	x2, [sp, #16]
	bl	__ZNSt3__14pairINS_16reverse_iteratorIPdEES3_EC1B8ne180100IS3_S3_Li0EEEOT_OT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__rewrap_rangeB8ne180100INS_16reverse_iteratorIPdEES3_S3_EET0_S4_T1_ ; -- Begin function _ZNSt3__114__rewrap_rangeB8ne180100INS_16reverse_iteratorIPdEES3_S3_EET0_S4_T1_
	.globl	__ZNSt3__114__rewrap_rangeB8ne180100INS_16reverse_iteratorIPdEES3_S3_EET0_S4_T1_
	.weak_definition	__ZNSt3__114__rewrap_rangeB8ne180100INS_16reverse_iteratorIPdEES3_S3_EET0_S4_T1_
	.p2align	2
__ZNSt3__114__rewrap_rangeB8ne180100INS_16reverse_iteratorIPdEES3_S3_EET0_S4_T1_: ; @_ZNSt3__114__rewrap_rangeB8ne180100INS_16reverse_iteratorIPdEES3_S3_EET0_S4_T1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #40]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]
	ldr	q0, [sp, #32]
	str	q0, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp]
	ldr	x3, [sp, #8]
	bl	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPdEES3_E8__rewrapB8ne180100ES3_S3_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__rewrap_iterB8ne180100INS_16reverse_iteratorIPdEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB8ne180100INS_16reverse_iteratorIPdEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_
	.globl	__ZNSt3__113__rewrap_iterB8ne180100INS_16reverse_iteratorIPdEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB8ne180100INS_16reverse_iteratorIPdEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB8ne180100INS_16reverse_iteratorIPdEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_: ; @_ZNSt3__113__rewrap_iterB8ne180100INS_16reverse_iteratorIPdEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_
Lfunc_begin41:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception41
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	str	x2, [sp, #48]
	str	x3, [sp, #56]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #32]
	ldr	q0, [sp, #48]
	str	q0, [sp, #16]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #24]
Ltmp526:
	bl	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPdEELb0EE8__rewrapB8ne180100ES3_S3_
	str	x0, [sp]                        ; 8-byte Folded Spill
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp527:
	b	LBB405_1
LBB405_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	stur	x9, [x29, #-16]
	stur	x8, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB405_2:
Ltmp528:
	bl	___clang_call_terminate
Lfunc_end41:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table405:
Lexception41:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase19-Lttbaseref19
Lttbaseref19:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end41-Lcst_begin41
Lcst_begin41:
	.uleb128 Ltmp526-Lfunc_begin41          ; >> Call Site 1 <<
	.uleb128 Ltmp527-Ltmp526                ;   Call between Ltmp526 and Ltmp527
	.uleb128 Ltmp528-Lfunc_begin41          ;     jumps to Ltmp528
	.byte	1                               ;   On action: 1
Lcst_end41:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase19:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPdEES3_E8__unwrapB8ne180100ES3_S3_ ; -- Begin function _ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPdEES3_E8__unwrapB8ne180100ES3_S3_
	.globl	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPdEES3_E8__unwrapB8ne180100ES3_S3_
	.weak_definition	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPdEES3_E8__unwrapB8ne180100ES3_S3_
	.p2align	2
__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPdEES3_E8__unwrapB8ne180100ES3_S3_: ; @_ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPdEES3_E8__unwrapB8ne180100ES3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-24]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #48]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPdEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	sub	x8, x29, #48
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	stur	x0, [x29, #-48]
	stur	x1, [x29, #-40]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	__ZNSt3__113__unwrap_iterB8ne180100INS_16reverse_iteratorIPdEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	mov	x9, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x8, x1
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	add	x2, sp, #32
	str	x9, [sp, #32]
	str	x8, [sp, #40]
	bl	__ZNSt3__14pairINS_16reverse_iteratorIPdEES3_EC1B8ne180100IS3_S3_Li0EEEOT_OT0_
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairINS_16reverse_iteratorIPdEES3_EC1B8ne180100IS3_S3_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairINS_16reverse_iteratorIPdEES3_EC1B8ne180100IS3_S3_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairINS_16reverse_iteratorIPdEES3_EC1B8ne180100IS3_S3_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairINS_16reverse_iteratorIPdEES3_EC1B8ne180100IS3_S3_Li0EEEOT_OT0_: ; @_ZNSt3__14pairINS_16reverse_iteratorIPdEES3_EC1B8ne180100IS3_S3_Li0EEEOT_OT0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairINS_16reverse_iteratorIPdEES3_EC2B8ne180100IS3_S3_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairINS_16reverse_iteratorIPdEES3_EC2B8ne180100IS3_S3_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairINS_16reverse_iteratorIPdEES3_EC2B8ne180100IS3_S3_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairINS_16reverse_iteratorIPdEES3_EC2B8ne180100IS3_S3_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairINS_16reverse_iteratorIPdEES3_EC2B8ne180100IS3_S3_Li0EEEOT_OT0_: ; @_ZNSt3__14pairINS_16reverse_iteratorIPdEES3_EC2B8ne180100IS3_S3_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	q0, [x8]
	str	q0, [x0]
	ldr	x8, [sp, #8]
	ldr	q0, [x8]
	str	q0, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1neB8ne180100IPdS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE ; -- Begin function _ZNSt3__1neB8ne180100IPdS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	.globl	__ZNSt3__1neB8ne180100IPdS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	.weak_definition	__ZNSt3__1neB8ne180100IPdS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
	.p2align	2
__ZNSt3__1neB8ne180100IPdS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE: ; @_ZNSt3__1neB8ne180100IPdS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE
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
	bl	__ZNKSt3__116reverse_iteratorIPdE4baseB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__116reverse_iteratorIPdE4baseB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w8, ne
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ne180100IRNS_16reverse_iteratorIPdEELi0EEEDTclsr3stdE4movedeclsr3stdE7declvalIRT_EEEEOS8_ ; -- Begin function _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ne180100IRNS_16reverse_iteratorIPdEELi0EEEDTclsr3stdE4movedeclsr3stdE7declvalIRT_EEEEOS8_
	.globl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ne180100IRNS_16reverse_iteratorIPdEELi0EEEDTclsr3stdE4movedeclsr3stdE7declvalIRT_EEEEOS8_
	.weak_definition	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ne180100IRNS_16reverse_iteratorIPdEELi0EEEDTclsr3stdE4movedeclsr3stdE7declvalIRT_EEEEOS8_
	.p2align	2
__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ne180100IRNS_16reverse_iteratorIPdEELi0EEEDTclsr3stdE4movedeclsr3stdE7declvalIRT_EEEEOS8_: ; @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ne180100IRNS_16reverse_iteratorIPdEELi0EEEDTclsr3stdE4movedeclsr3stdE7declvalIRT_EEEEOS8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	bl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ne180100IRNS_16reverse_iteratorIPdEEEEvv
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__116reverse_iteratorIPdEdeB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__116reverse_iteratorIPdEdeB8ne180100Ev ; -- Begin function _ZNKSt3__116reverse_iteratorIPdEdeB8ne180100Ev
	.globl	__ZNKSt3__116reverse_iteratorIPdEdeB8ne180100Ev
	.weak_definition	__ZNKSt3__116reverse_iteratorIPdEdeB8ne180100Ev
	.p2align	2
__ZNKSt3__116reverse_iteratorIPdEdeB8ne180100Ev: ; @_ZNKSt3__116reverse_iteratorIPdEdeB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x0, x8, #8
	str	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPdEppB8ne180100Ev ; -- Begin function _ZNSt3__116reverse_iteratorIPdEppB8ne180100Ev
	.globl	__ZNSt3__116reverse_iteratorIPdEppB8ne180100Ev
	.weak_definition	__ZNSt3__116reverse_iteratorIPdEppB8ne180100Ev
	.p2align	2
__ZNSt3__116reverse_iteratorIPdEppB8ne180100Ev: ; @_ZNSt3__116reverse_iteratorIPdEppB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	subs	x8, x8, #8
	str	x8, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ne180100IRNS_16reverse_iteratorIPdEEEEvv ; -- Begin function _ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ne180100IRNS_16reverse_iteratorIPdEEEEvv
	.globl	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ne180100IRNS_16reverse_iteratorIPdEEEEvv
	.weak_definition	__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ne180100IRNS_16reverse_iteratorIPdEEEEvv
	.p2align	2
__ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ne180100IRNS_16reverse_iteratorIPdEEEEvv: ; @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ne180100IRNS_16reverse_iteratorIPdEEEEvv
	.cfi_startproc
; %bb.0:
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPdEELb0EE8__unwrapB8ne180100ES3_ ; -- Begin function _ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPdEELb0EE8__unwrapB8ne180100ES3_
	.globl	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPdEELb0EE8__unwrapB8ne180100ES3_
	.weak_definition	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPdEELb0EE8__unwrapB8ne180100ES3_
	.p2align	2
__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPdEELb0EE8__unwrapB8ne180100ES3_: ; @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPdEELb0EE8__unwrapB8ne180100ES3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp]
	str	x1, [sp, #8]
	ldr	q0, [sp]
	str	q0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPdEES3_E8__rewrapB8ne180100ES3_S3_ ; -- Begin function _ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPdEES3_E8__rewrapB8ne180100ES3_S3_
	.globl	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPdEES3_E8__rewrapB8ne180100ES3_S3_
	.weak_definition	__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPdEES3_E8__rewrapB8ne180100ES3_S3_
	.p2align	2
__ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPdEES3_E8__rewrapB8ne180100ES3_S3_: ; @_ZNSt3__119__unwrap_range_implINS_16reverse_iteratorIPdEES3_E8__rewrapB8ne180100ES3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-32]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	str	x3, [sp, #40]
	ldur	q0, [x29, #-32]
	str	q0, [sp, #16]
	ldr	q0, [sp, #32]
	str	q0, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldr	x2, [sp]
	ldr	x3, [sp, #8]
	bl	__ZNSt3__113__rewrap_iterB8ne180100INS_16reverse_iteratorIPdEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPdEELb0EE8__rewrapB8ne180100ES3_S3_ ; -- Begin function _ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPdEELb0EE8__rewrapB8ne180100ES3_S3_
	.globl	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPdEELb0EE8__rewrapB8ne180100ES3_S3_
	.weak_definition	__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPdEELb0EE8__rewrapB8ne180100ES3_S3_
	.p2align	2
__ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPdEELb0EE8__rewrapB8ne180100ES3_S3_: ; @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPdEELb0EE8__rewrapB8ne180100ES3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	x2, [sp]
	str	x3, [sp, #8]
	ldr	q0, [sp]
	str	q0, [sp, #32]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116reverse_iteratorIPdEC2B8ne180100ES1_ ; -- Begin function _ZNSt3__116reverse_iteratorIPdEC2B8ne180100ES1_
	.globl	__ZNSt3__116reverse_iteratorIPdEC2B8ne180100ES1_
	.weak_def_can_be_hidden	__ZNSt3__116reverse_iteratorIPdEC2B8ne180100ES1_
	.p2align	2
__ZNSt3__116reverse_iteratorIPdEC2B8ne180100ES1_: ; @_ZNSt3__116reverse_iteratorIPdEC2B8ne180100ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	ldr	x8, [sp]
	str	x8, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstB8ne180100Ev ; -- Begin function _ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstB8ne180100Ev
	.globl	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstB8ne180100Ev
	.weak_definition	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstB8ne180100Ev
	.p2align	2
__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstB8ne180100Ev: ; @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEE5firstB8ne180100Ev
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
	bl	__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev ; -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev
	.weak_def_can_be_hidden	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev
	.p2align	2
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev: ; @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED2Ev
Lfunc_begin42:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception42
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x8, x0
	stur	x8, [x29, #-8]
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearB8ne180100Ev
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB419_3
	b	LBB419_1
LBB419_1:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE7__allocB8ne180100Ev
	mov	x1, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x1, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x0]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
Ltmp535:
	bl	__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityB8ne180100Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp536:
	b	LBB419_2
LBB419_2:
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateB8ne180100ERS2_Pdm
	b	LBB419_3
LBB419_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB419_4:
Ltmp537:
	bl	___clang_call_terminate
Lfunc_end42:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table419:
Lexception42:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase20-Lttbaseref20
Lttbaseref20:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end42-Lcst_begin42
Lcst_begin42:
	.uleb128 Ltmp535-Lfunc_begin42          ; >> Call Site 1 <<
	.uleb128 Ltmp536-Ltmp535                ;   Call between Ltmp535 and Ltmp536
	.uleb128 Ltmp537-Lfunc_begin42          ;     jumps to Ltmp537
	.byte	1                               ;   On action: 1
Lcst_end42:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase20:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearB8ne180100Ev ; -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearB8ne180100Ev
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearB8ne180100Ev
	.weak_definition	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearB8ne180100Ev
	.p2align	2
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearB8ne180100Ev: ; @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE5clearB8ne180100Ev
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
	ldr	x1, [x0, #8]
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB8ne180100EPd
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateB8ne180100ERS2_Pdm ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateB8ne180100ERS2_Pdm
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateB8ne180100ERS2_Pdm
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateB8ne180100ERS2_Pdm
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateB8ne180100ERS2_Pdm: ; @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateB8ne180100ERS2_Pdm
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__19allocatorIdE10deallocateB8ne180100EPdm
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityB8ne180100Ev ; -- Begin function _ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityB8ne180100Ev
	.globl	__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityB8ne180100Ev
	.weak_definition	__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityB8ne180100Ev
	.p2align	2
__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityB8ne180100Ev: ; @_ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE8capacityB8ne180100Ev
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
	bl	__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capB8ne180100Ev
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	x9, [x9]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x0, x8, x9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB8ne180100EPd ; -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB8ne180100EPd
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB8ne180100EPd
	.weak_definition	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB8ne180100EPd
	.p2align	2
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB8ne180100EPd: ; @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB8ne180100EPd
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
	ldr	x1, [sp, #16]
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB8ne180100EPdNS_17integral_constantIbLb0EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB8ne180100EPdNS_17integral_constantIbLb0EEE ; -- Begin function _ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB8ne180100EPdNS_17integral_constantIbLb0EEE
	.globl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB8ne180100EPdNS_17integral_constantIbLb0EEE
	.weak_definition	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB8ne180100EPdNS_17integral_constantIbLb0EEE
	.p2align	2
__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB8ne180100EPdNS_17integral_constantIbLb0EEE: ; @_ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE17__destruct_at_endB8ne180100EPdNS_17integral_constantIbLb0EEE
Lfunc_begin43:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception43
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB424_1
LBB424_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB424_4
	b	LBB424_2
LBB424_2:                               ;   in Loop: Header=BB424_1 Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEE7__allocB8ne180100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8, #16]
	subs	x0, x9, #8
	str	x0, [x8, #16]
	bl	__ZNSt3__112__to_addressB8ne180100IdEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp538:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyB8ne180100IdvvEEvRS2_PT_
Ltmp539:
	b	LBB424_3
LBB424_3:                               ;   in Loop: Header=BB424_1 Depth=1
	b	LBB424_1
LBB424_4:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB424_5:
Ltmp540:
	bl	___clang_call_terminate
Lfunc_end43:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table424:
Lexception43:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase21-Lttbaseref21
Lttbaseref21:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end43-Lcst_begin43
Lcst_begin43:
	.uleb128 Ltmp538-Lfunc_begin43          ; >> Call Site 1 <<
	.uleb128 Ltmp539-Ltmp538                ;   Call between Ltmp538 and Ltmp539
	.uleb128 Ltmp540-Lfunc_begin43          ;     jumps to Ltmp540
	.byte	1                               ;   On action: 1
Lcst_end43:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase21:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyB8ne180100IdvvEEvRS2_PT_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyB8ne180100IdvvEEvRS2_PT_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyB8ne180100IdvvEEvRS2_PT_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyB8ne180100IdvvEEvRS2_PT_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyB8ne180100IdvvEEvRS2_PT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp]
	bl	__ZNSt3__112__destroy_atB8ne180100IdLi0EEEvPT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne180100IdEEPT_S2_ ; -- Begin function _ZNSt3__112__to_addressB8ne180100IdEEPT_S2_
	.globl	__ZNSt3__112__to_addressB8ne180100IdEEPT_S2_
	.weak_definition	__ZNSt3__112__to_addressB8ne180100IdEEPT_S2_
	.p2align	2
__ZNSt3__112__to_addressB8ne180100IdEEPT_S2_: ; @_ZNSt3__112__to_addressB8ne180100IdEEPT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__destroy_atB8ne180100IdLi0EEEvPT_ ; -- Begin function _ZNSt3__112__destroy_atB8ne180100IdLi0EEEvPT_
	.globl	__ZNSt3__112__destroy_atB8ne180100IdLi0EEEvPT_
	.weak_definition	__ZNSt3__112__destroy_atB8ne180100IdLi0EEEvPT_
	.p2align	2
__ZNSt3__112__destroy_atB8ne180100IdLi0EEEvPT_: ; @_ZNSt3__112__destroy_atB8ne180100IdLi0EEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19allocatorIdE10deallocateB8ne180100EPdm ; -- Begin function _ZNSt3__19allocatorIdE10deallocateB8ne180100EPdm
	.globl	__ZNSt3__19allocatorIdE10deallocateB8ne180100EPdm
	.weak_definition	__ZNSt3__19allocatorIdE10deallocateB8ne180100EPdm
	.p2align	2
__ZNSt3__19allocatorIdE10deallocateB8ne180100EPdm: ; @_ZNSt3__19allocatorIdE10deallocateB8ne180100EPdm
Lfunc_begin44:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception44
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #8]
	lsl	x1, x8, #3
Ltmp543:
	mov	x2, #8                          ; =0x8
	bl	__ZNSt3__119__libcpp_deallocateB8ne180100EPvmm
Ltmp544:
	b	LBB428_1
LBB428_1:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB428_2:
Ltmp545:
	bl	___clang_call_terminate
Lfunc_end44:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table428:
Lexception44:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase22-Lttbaseref22
Lttbaseref22:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end44-Lcst_begin44
Lcst_begin44:
	.uleb128 Ltmp543-Lfunc_begin44          ; >> Call Site 1 <<
	.uleb128 Ltmp544-Ltmp543                ;   Call between Ltmp543 and Ltmp544
	.uleb128 Ltmp545-Lfunc_begin44          ;     jumps to Ltmp545
	.byte	1                               ;   On action: 1
Lcst_end44:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase22:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capB8ne180100Ev ; -- Begin function _ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capB8ne180100Ev
	.globl	__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capB8ne180100Ev
	.weak_definition	__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capB8ne180100Ev
	.p2align	2
__ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capB8ne180100Ev: ; @_ZNKSt3__114__split_bufferIdRNS_9allocatorIdEEE9__end_capB8ne180100Ev
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
	add	x0, x8, #24
	bl	__ZNKSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstB8ne180100Ev ; -- Begin function _ZNKSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstB8ne180100Ev
	.globl	__ZNKSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstB8ne180100Ev
	.weak_definition	__ZNKSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstB8ne180100Ev
	.p2align	2
__ZNKSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstB8ne180100Ev: ; @_ZNKSt3__117__compressed_pairIPdRNS_9allocatorIdEEE5firstB8ne180100Ev
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
	bl	__ZNKSt3__122__compressed_pair_elemIPdLi0ELb0EE5__getB8ne180100Ev
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chronomiB8ne180100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_ ; -- Begin function _ZNSt3__16chronomiB8ne180100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.globl	__ZNSt3__16chronomiB8ne180100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.weak_definition	__ZNSt3__16chronomiB8ne180100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.p2align	2
__ZNSt3__16chronomiB8ne180100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_: ; @_ZNSt3__16chronomiB8ne180100IxNS_5ratioILl1ELl1000000000EEExS3_EENS_11common_typeIJNS0_8durationIT_T0_EENS5_IT1_T2_EEEE4typeERKS8_RKSB_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	add	x0, sp, #24
	str	x8, [sp, #24]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	add	x0, sp, #16
	str	x8, [sp, #16]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	add	x1, sp, #32
	str	x8, [sp, #32]
	sub	x0, x29, #8
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne180100IxLi0EEERKT_
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne180100Ev ; -- Begin function _ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne180100Ev
	.globl	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne180100Ev
	.weak_definition	__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne180100Ev
	.p2align	2
__ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne180100Ev: ; @_ZNKSt3__16chrono10time_pointINS0_12steady_clockENS0_8durationIxNS_5ratioILl1ELl1000000000EEEEEE16time_since_epochB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne180100Ev ; -- Begin function _ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne180100Ev
	.globl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne180100Ev
	.weak_definition	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne180100Ev
	.p2align	2
__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne180100Ev: ; @_ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne180100IxLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne180100IxLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne180100IxLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne180100IxLi0EEERKT_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC1B8ne180100IxLi0EEERKT_
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
	bl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne180100IxLi0EEERKT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne180100IxLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne180100IxLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne180100IxLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne180100IxLi0EEERKT_: ; @_ZNSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEEC2B8ne180100IxLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	x8, [x8]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B8ne180100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B8ne180100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B8ne180100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B8ne180100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B8ne180100IxNS2_ILl1ELl1000000000EEELi0EEERKNS1_IT_T0_EE
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
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNSt3__16chrono13duration_castB8ne180100INS0_8durationIdNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	add	x0, sp, #8
	str	d0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEE5countB8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	d0, [x0]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16chrono13duration_castB8ne180100INS0_8durationIdNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE ; -- Begin function _ZNSt3__16chrono13duration_castB8ne180100INS0_8durationIdNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.globl	__ZNSt3__16chrono13duration_castB8ne180100INS0_8durationIdNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.weak_definition	__ZNSt3__16chrono13duration_castB8ne180100INS0_8durationIdNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.p2align	2
__ZNSt3__16chrono13duration_castB8ne180100INS0_8durationIdNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE: ; @_ZNSt3__16chrono13duration_castB8ne180100INS0_8durationIdNS_5ratioILl1ELl1000EEEEExNS3_ILl1ELl1000000000EEELi0EEET_RKNS2_IT0_T1_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x1, [sp, #16]
	add	x0, sp, #15
	bl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB8ne180100ERKS5_
	stur	d0, [x29, #-8]
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function _ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB8ne180100ERKS5_
lCPI438_0:
	.quad	0x412e848000000000              ; double 1.0E+6
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB8ne180100ERKS5_
	.globl	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB8ne180100ERKS5_
	.weak_definition	__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB8ne180100ERKS5_
	.p2align	2
__ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB8ne180100ERKS5_: ; @_ZNKSt3__16chrono15__duration_castINS0_8durationIxNS_5ratioILl1ELl1000000000EEEEENS2_IdNS3_ILl1ELl1000EEEEENS3_ILl1ELl1000000EEELb1ELb0EEclB8ne180100ERKS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__16chrono8durationIxNS_5ratioILl1ELl1000000000EEEE5countB8ne180100Ev
	scvtf	d0, x0
	adrp	x8, lCPI438_0@PAGE
	ldr	d1, [x8, lCPI438_0@PAGEOFF]
	fdiv	d0, d0, d1
	mov	x1, sp
	str	d0, [sp]
	sub	x0, x29, #8
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B8ne180100IdLi0EEERKT_
	ldur	d0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B8ne180100IdLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B8ne180100IdLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B8ne180100IdLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B8ne180100IdLi0EEERKT_: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC1B8ne180100IdLi0EEERKT_
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
	bl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B8ne180100IdLi0EEERKT_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B8ne180100IdLi0EEERKT_ ; -- Begin function _ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B8ne180100IdLi0EEERKT_
	.weak_def_can_be_hidden	__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B8ne180100IdLi0EEERKT_
	.p2align	2
__ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B8ne180100IdLi0EEERKT_: ; @_ZNSt3__16chrono8durationIdNS_5ratioILl1ELl1000EEEEC2B8ne180100IdLi0EEERKT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	d0, [x8]
	str	d0, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE22__construct_one_at_endB8ne180100IJRKdEEEvDpOT_ ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE22__construct_one_at_endB8ne180100IJRKdEEEvDpOT_
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE22__construct_one_at_endB8ne180100IJRKdEEEvDpOT_
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE22__construct_one_at_endB8ne180100IJRKdEEEvDpOT_: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE22__construct_one_at_endB8ne180100IJRKdEEEvDpOT_
Lfunc_begin45:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception45
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, sp, #40
	mov	x2, #1                          ; =0x1
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1B8ne180100ERS3_m
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x0, [sp, #48]
	bl	__ZNSt3__112__to_addressB8ne180100IdEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
Ltmp550:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructB8ne180100IdJRKdEvvEEvRS2_PT_DpOT0_
Ltmp551:
	b	LBB441_1
LBB441_1:
	add	x0, sp, #40
	ldr	x8, [sp, #48]
	add	x8, x8, #8
	str	x8, [sp, #48]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B8ne180100Ev
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB441_2:
Ltmp552:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B8ne180100Ev
	b	LBB441_3
LBB441_3:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end45:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table441:
Lexception45:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end45-Lcst_begin45
Lcst_begin45:
	.uleb128 Lfunc_begin45-Lfunc_begin45    ; >> Call Site 1 <<
	.uleb128 Ltmp550-Lfunc_begin45          ;   Call between Lfunc_begin45 and Ltmp550
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp550-Lfunc_begin45          ; >> Call Site 2 <<
	.uleb128 Ltmp551-Ltmp550                ;   Call between Ltmp550 and Ltmp551
	.uleb128 Ltmp552-Lfunc_begin45          ;     jumps to Ltmp552
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp551-Lfunc_begin45          ; >> Call Site 3 <<
	.uleb128 Lfunc_end45-Ltmp551            ;   Call between Ltmp551 and Lfunc_end45
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end45:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEPdOT_ ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEPdOT_
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEPdOT_
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEPdOT_: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE21__push_back_slow_pathIRKdEEPdOT_
Lfunc_begin46:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception46
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	stur	x8, [x29, #-24]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, x8, #1
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendB8ne180100Em
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB8ne180100Ev
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	ldur	x3, [x29, #-24]
	add	x0, sp, #48
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEEC1EmmS3_
	ldur	x8, [x29, #-24]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldr	x0, [sp, #64]
	bl	__ZNSt3__112__to_addressB8ne180100IdEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-16]
Ltmp553:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructB8ne180100IdJRKdEvvEEvRS2_PT_DpOT0_
Ltmp554:
	b	LBB442_1
LBB442_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	add	x1, sp, #48
	ldr	x8, [sp, #64]
	add	x8, x8, #8
	str	x8, [sp, #64]
Ltmp555:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE26__swap_out_circular_bufferERNS_14__split_bufferIdRS2_EE
Ltmp556:
	b	LBB442_2
LBB442_2:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x8, [x8, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #48
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB442_3:
Ltmp557:
	str	x0, [sp, #40]
	mov	x8, x1
	str	w8, [sp, #36]
	add	x0, sp, #48
	bl	__ZNSt3__114__split_bufferIdRNS_9allocatorIdEEED1Ev
	b	LBB442_4
LBB442_4:
	ldr	x0, [sp, #40]
	bl	__Unwind_Resume
Lfunc_end46:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table442:
Lexception46:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end46-Lcst_begin46
Lcst_begin46:
	.uleb128 Lfunc_begin46-Lfunc_begin46    ; >> Call Site 1 <<
	.uleb128 Ltmp553-Lfunc_begin46          ;   Call between Lfunc_begin46 and Ltmp553
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp553-Lfunc_begin46          ; >> Call Site 2 <<
	.uleb128 Ltmp556-Ltmp553                ;   Call between Ltmp553 and Ltmp556
	.uleb128 Ltmp557-Lfunc_begin46          ;     jumps to Ltmp557
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp556-Lfunc_begin46          ; >> Call Site 3 <<
	.uleb128 Lfunc_end46-Ltmp556            ;   Call between Ltmp556 and Lfunc_end46
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end46:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1B8ne180100ERS3_m ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1B8ne180100ERS3_m
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1B8ne180100ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1B8ne180100ERS3_m
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1B8ne180100ERS3_m: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1B8ne180100ERS3_m
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2B8ne180100ERS3_m
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructB8ne180100IdJRKdEvvEEvRS2_PT_DpOT0_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructB8ne180100IdJRKdEvvEEvRS2_PT_DpOT0_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructB8ne180100IdJRKdEvvEEvRS2_PT_DpOT0_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructB8ne180100IdJRKdEvvEEvRS2_PT_DpOT0_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE9constructB8ne180100IdJRKdEvvEEvRS2_PT_DpOT0_
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
	str	x2, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__114__construct_atB8ne180100IdJRKdEPdEEPT_S5_DpOT0_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B8ne180100Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B8ne180100Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B8ne180100Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B8ne180100Ev
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
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2B8ne180100ERS3_m ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2B8ne180100ERS3_m
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2B8ne180100ERS3_m
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2B8ne180100ERS3_m
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2B8ne180100ERS3_m: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC2B8ne180100ERS3_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	str	x8, [x0]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [x0, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	add	x8, x8, x9, lsl #3
	str	x8, [x0, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__construct_atB8ne180100IdJRKdEPdEEPT_S5_DpOT0_ ; -- Begin function _ZNSt3__114__construct_atB8ne180100IdJRKdEPdEEPT_S5_DpOT0_
	.globl	__ZNSt3__114__construct_atB8ne180100IdJRKdEPdEEPT_S5_DpOT0_
	.weak_definition	__ZNSt3__114__construct_atB8ne180100IdJRKdEPdEEPT_S5_DpOT0_
	.p2align	2
__ZNSt3__114__construct_atB8ne180100IdJRKdEPdEEPT_S5_DpOT0_: ; @_ZNSt3__114__construct_atB8ne180100IdJRKdEPdEEPT_S5_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__112construct_atB8ne180100IdJRKdEPdEEPT_S5_DpOT0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112construct_atB8ne180100IdJRKdEPdEEPT_S5_DpOT0_ ; -- Begin function _ZNSt3__112construct_atB8ne180100IdJRKdEPdEEPT_S5_DpOT0_
	.globl	__ZNSt3__112construct_atB8ne180100IdJRKdEPdEEPT_S5_DpOT0_
	.weak_definition	__ZNSt3__112construct_atB8ne180100IdJRKdEPdEEPT_S5_DpOT0_
	.p2align	2
__ZNSt3__112construct_atB8ne180100IdJRKdEPdEEPT_S5_DpOT0_: ; @_ZNSt3__112construct_atB8ne180100IdJRKdEPdEEPT_S5_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	ldr	d0, [x8]
	str	d0, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2B8ne180100Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2B8ne180100Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2B8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2B8ne180100Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD2B8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldr	x8, [x0, #8]
	ldr	x9, [x0]
	str	x8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendB8ne180100Em ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendB8ne180100Em
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendB8ne180100Em
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendB8ne180100Em
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendB8ne180100Em: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE11__recommendB8ne180100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	ldur	x0, [x29, #-16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv
	str	x0, [sp, #32]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	cset	w8, ls
	tbnz	w8, #0, LBB450_2
	b	LBB450_1
LBB450_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
LBB450_2:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB8ne180100Ev
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	mov	x10, #2                         ; =0x2
	udiv	x9, x9, x10
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB450_4
	b	LBB450_3
LBB450_3:
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-8]
	b	LBB450_5
LBB450_4:
	ldr	x9, [sp, #24]
	mov	x8, #2                          ; =0x2
	mul	x8, x8, x9
	add	x0, sp, #16
	str	x8, [sp, #16]
	sub	x1, x29, #24
	bl	__ZNSt3__13maxB8ne180100ImEERKT_S3_S3_
	ldr	x8, [x0]
	stur	x8, [x29, #-8]
	b	LBB450_5
LBB450_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterB8ne180100EPd ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterB8ne180100EPd
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterB8ne180100EPd
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterB8ne180100EPd
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterB8ne180100EPd: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE11__make_iterB8ne180100EPd
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x1, [sp, #8]
	sub	x0, x29, #8
	bl	__ZNSt3__111__wrap_iterIPdEC1B8ne180100ES1_
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPdEC1B8ne180100ES1_ ; -- Begin function _ZNSt3__111__wrap_iterIPdEC1B8ne180100ES1_
	.globl	__ZNSt3__111__wrap_iterIPdEC1B8ne180100ES1_
	.weak_def_can_be_hidden	__ZNSt3__111__wrap_iterIPdEC1B8ne180100ES1_
	.p2align	2
__ZNSt3__111__wrap_iterIPdEC1B8ne180100ES1_: ; @_ZNSt3__111__wrap_iterIPdEC1B8ne180100ES1_
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
	bl	__ZNSt3__111__wrap_iterIPdEC2B8ne180100ES1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__wrap_iterIPdEC2B8ne180100ES1_ ; -- Begin function _ZNSt3__111__wrap_iterIPdEC2B8ne180100ES1_
	.globl	__ZNSt3__111__wrap_iterIPdEC2B8ne180100ES1_
	.weak_def_can_be_hidden	__ZNSt3__111__wrap_iterIPdEC2B8ne180100ES1_
	.p2align	2
__ZNSt3__111__wrap_iterIPdEC2B8ne180100ES1_: ; @_ZNSt3__111__wrap_iterIPdEC2B8ne180100ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__1eqB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_ ; -- Begin function _ZNSt3__1eqB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_
	.globl	__ZNSt3__1eqB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_
	.weak_definition	__ZNSt3__1eqB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_
	.p2align	2
__ZNSt3__1eqB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_: ; @_ZNSt3__1eqB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_
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
	bl	__ZNKSt3__111__wrap_iterIPdE4baseB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	__ZNKSt3__111__wrap_iterIPdE4baseB8ne180100Ev
	mov	x8, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x0, x8
	cset	w8, eq
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__111__wrap_iterIPdE4baseB8ne180100Ev ; -- Begin function _ZNKSt3__111__wrap_iterIPdE4baseB8ne180100Ev
	.globl	__ZNKSt3__111__wrap_iterIPdE4baseB8ne180100Ev
	.weak_definition	__ZNKSt3__111__wrap_iterIPdE4baseB8ne180100Ev
	.p2align	2
__ZNKSt3__111__wrap_iterIPdE4baseB8ne180100Ev: ; @_ZNKSt3__111__wrap_iterIPdE4baseB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN3bts14BenchmarkStatsC2Ev    ; -- Begin function _ZN3bts14BenchmarkStatsC2Ev
	.weak_def_can_be_hidden	__ZN3bts14BenchmarkStatsC2Ev
	.p2align	2
__ZN3bts14BenchmarkStatsC2Ev:           ; @_ZN3bts14BenchmarkStatsC2Ev
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
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	xzr, [x0, #24]
	str	xzr, [x0, #32]
	movi	d0, #0000000000000000
	str	d0, [x0, #40]
	str	d0, [x0, #48]
	str	d0, [x0, #56]
	str	d0, [x0, #64]
	str	d0, [x0, #72]
	str	d0, [x0, #80]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIdNS_9allocatorIdEEE5emptyB8ne180100Ev ; -- Begin function _ZNKSt3__16vectorIdNS_9allocatorIdEEE5emptyB8ne180100Ev
	.globl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE5emptyB8ne180100Ev
	.weak_definition	__ZNKSt3__16vectorIdNS_9allocatorIdEEE5emptyB8ne180100Ev
	.p2align	2
__ZNKSt3__16vectorIdNS_9allocatorIdEEE5emptyB8ne180100Ev: ; @_ZNKSt3__16vectorIdNS_9allocatorIdEEE5emptyB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	x8, [x9]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14sortB8ne180100INS_11__wrap_iterIPdEEEEvT_S4_ ; -- Begin function _ZNSt3__14sortB8ne180100INS_11__wrap_iterIPdEEEEvT_S4_
	.globl	__ZNSt3__14sortB8ne180100INS_11__wrap_iterIPdEEEEvT_S4_
	.weak_definition	__ZNSt3__14sortB8ne180100INS_11__wrap_iterIPdEEEEvT_S4_
	.p2align	2
__ZNSt3__14sortB8ne180100INS_11__wrap_iterIPdEEEEvT_S4_: ; @_ZNSt3__14sortB8ne180100INS_11__wrap_iterIPdEEEEvT_S4_
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
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	bl	__ZNSt3__14sortB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT_S6_T0_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEEixB8ne180100Em ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEixB8ne180100Em
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEEixB8ne180100Em
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEEixB8ne180100Em
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEEixB8ne180100Em: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEEixB8ne180100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	add	x0, x8, x9, lsl #3
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14sortB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT_S6_T0_ ; -- Begin function _ZNSt3__14sortB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT_S6_T0_
	.globl	__ZNSt3__14sortB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT_S6_T0_
	.weak_definition	__ZNSt3__14sortB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT_S6_T0_
	.p2align	2
__ZNSt3__14sortB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT_S6_T0_: ; @_ZNSt3__14sortB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT_S6_T0_
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
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	sub	x2, x29, #17
	bl	__ZNSt3__111__sort_implB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT0_S7_RT1_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111__sort_implB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT0_S7_RT1_ ; -- Begin function _ZNSt3__111__sort_implB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT0_S7_RT1_
	.globl	__ZNSt3__111__sort_implB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT0_S7_RT1_
	.weak_definition	__ZNSt3__111__sort_implB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT0_S7_RT1_
	.p2align	2
__ZNSt3__111__sort_implB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT0_S7_RT1_: ; @_ZNSt3__111__sort_implB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEENS_6__lessIvvEEEEvT0_S7_RT1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-40]
	ldur	x0, [x29, #-32]
	ldur	x1, [x29, #-40]
	bl	__ZNSt3__123__debug_randomize_rangeB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEES4_EEvT0_T1_
	ldur	x8, [x29, #-8]
	str	x8, [sp, #48]
	ldr	x0, [sp, #48]
	bl	__ZNSt3__113__unwrap_iterB8ne180100INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #40]
	ldr	x0, [sp, #40]
	bl	__ZNSt3__113__unwrap_iterB8ne180100INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldur	x2, [x29, #-24]
	bl	__ZNSt3__115__sort_dispatchB8ne180100INS_17_ClassicAlgPolicyEdLi0EEEvPT0_S3_RNS_6__lessIvvEE
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]
	ldr	x0, [sp, #32]
	bl	__ZNSt3__113__unwrap_iterB8ne180100INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	ldr	x0, [sp, #24]
	bl	__ZNSt3__113__unwrap_iterB8ne180100INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	mov	x1, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x2, [x29, #-24]
	bl	__ZNSt3__135__check_strict_weak_ordering_sortedB8ne180100IPdNS_6__lessIvvEEEEvT_S4_RT0_
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__debug_randomize_rangeB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEES4_EEvT0_T1_ ; -- Begin function _ZNSt3__123__debug_randomize_rangeB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEES4_EEvT0_T1_
	.globl	__ZNSt3__123__debug_randomize_rangeB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEES4_EEvT0_T1_
	.weak_definition	__ZNSt3__123__debug_randomize_rangeB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEES4_EEvT0_T1_
	.p2align	2
__ZNSt3__123__debug_randomize_rangeB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEES4_EEvT0_T1_: ; @_ZNSt3__123__debug_randomize_rangeB8ne180100INS_17_ClassicAlgPolicyENS_11__wrap_iterIPdEES4_EEvT0_T1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__115__sort_dispatchB8ne180100INS_17_ClassicAlgPolicyEdLi0EEEvPT0_S3_RNS_6__lessIvvEE ; -- Begin function _ZNSt3__115__sort_dispatchB8ne180100INS_17_ClassicAlgPolicyEdLi0EEEvPT0_S3_RNS_6__lessIvvEE
	.globl	__ZNSt3__115__sort_dispatchB8ne180100INS_17_ClassicAlgPolicyEdLi0EEEvPT0_S3_RNS_6__lessIvvEE
	.weak_definition	__ZNSt3__115__sort_dispatchB8ne180100INS_17_ClassicAlgPolicyEdLi0EEEvPT0_S3_RNS_6__lessIvvEE
	.p2align	2
__ZNSt3__115__sort_dispatchB8ne180100INS_17_ClassicAlgPolicyEdLi0EEEvPT0_S3_RNS_6__lessIvvEE: ; @_ZNSt3__115__sort_dispatchB8ne180100INS_17_ClassicAlgPolicyEdLi0EEEvPT0_S3_RNS_6__lessIvvEE
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	add	x2, sp, #7
	bl	__ZNSt3__16__sortIRNS_6__lessIddEEPdEEvT0_S5_T_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB8ne180100INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_ ; -- Begin function _ZNSt3__113__unwrap_iterB8ne180100INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.globl	__ZNSt3__113__unwrap_iterB8ne180100INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.weak_definition	__ZNSt3__113__unwrap_iterB8ne180100INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
	.p2align	2
__ZNSt3__113__unwrap_iterB8ne180100INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_: ; @_ZNSt3__113__unwrap_iterB8ne180100INS_11__wrap_iterIPdEENS_18__unwrap_iter_implIS3_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_
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
	str	x8, [sp]
	ldr	x0, [sp]
	bl	__ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPdEELb1EE8__unwrapB8ne180100ES3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__135__check_strict_weak_ordering_sortedB8ne180100IPdNS_6__lessIvvEEEEvT_S4_RT0_ ; -- Begin function _ZNSt3__135__check_strict_weak_ordering_sortedB8ne180100IPdNS_6__lessIvvEEEEvT_S4_RT0_
	.globl	__ZNSt3__135__check_strict_weak_ordering_sortedB8ne180100IPdNS_6__lessIvvEEEEvT_S4_RT0_
	.weak_definition	__ZNSt3__135__check_strict_weak_ordering_sortedB8ne180100IPdNS_6__lessIvvEEEEvT_S4_RT0_
	.p2align	2
__ZNSt3__135__check_strict_weak_ordering_sortedB8ne180100IPdNS_6__lessIvvEEEEvT_S4_RT0_: ; @_ZNSt3__135__check_strict_weak_ordering_sortedB8ne180100IPdNS_6__lessIvvEEEEvT_S4_RT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPdEELb1EE8__unwrapB8ne180100ES3_ ; -- Begin function _ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPdEELb1EE8__unwrapB8ne180100ES3_
	.globl	__ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPdEELb1EE8__unwrapB8ne180100ES3_
	.weak_definition	__ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPdEELb1EE8__unwrapB8ne180100ES3_
	.p2align	2
__ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPdEELb1EE8__unwrapB8ne180100ES3_: ; @_ZNSt3__118__unwrap_iter_implINS_11__wrap_iterIPdEELb1EE8__unwrapB8ne180100ES3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x0
	add	x0, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__112__to_addressB8ne180100INS_11__wrap_iterIPdEEvEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__112__to_addressB8ne180100INS_11__wrap_iterIPdEEvEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_ ; -- Begin function _ZNSt3__112__to_addressB8ne180100INS_11__wrap_iterIPdEEvEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	.globl	__ZNSt3__112__to_addressB8ne180100INS_11__wrap_iterIPdEEvEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	.weak_definition	__ZNSt3__112__to_addressB8ne180100INS_11__wrap_iterIPdEEvEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
	.p2align	2
__ZNSt3__112__to_addressB8ne180100INS_11__wrap_iterIPdEEvEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_: ; @_ZNSt3__112__to_addressB8ne180100INS_11__wrap_iterIPdEEvEEu7__decayIDTclsr19__to_address_helperIT_EE6__callclsr3stdE7declvalIRKS4_EEEEES6_
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
	bl	__ZNSt3__119__to_address_helperINS_11__wrap_iterIPdEEvE6__callB8ne180100ERKS3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__to_address_helperINS_11__wrap_iterIPdEEvE6__callB8ne180100ERKS3_ ; -- Begin function _ZNSt3__119__to_address_helperINS_11__wrap_iterIPdEEvE6__callB8ne180100ERKS3_
	.globl	__ZNSt3__119__to_address_helperINS_11__wrap_iterIPdEEvE6__callB8ne180100ERKS3_
	.weak_definition	__ZNSt3__119__to_address_helperINS_11__wrap_iterIPdEEvE6__callB8ne180100ERKS3_
	.p2align	2
__ZNSt3__119__to_address_helperINS_11__wrap_iterIPdEEvE6__callB8ne180100ERKS3_: ; @_ZNSt3__119__to_address_helperINS_11__wrap_iterIPdEEvE6__callB8ne180100ERKS3_
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
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	x0, [sp]
	bl	__ZNSt3__114pointer_traitsINS_11__wrap_iterIPdEEE10to_addressB8ne180100ES3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114pointer_traitsINS_11__wrap_iterIPdEEE10to_addressB8ne180100ES3_ ; -- Begin function _ZNSt3__114pointer_traitsINS_11__wrap_iterIPdEEE10to_addressB8ne180100ES3_
	.globl	__ZNSt3__114pointer_traitsINS_11__wrap_iterIPdEEE10to_addressB8ne180100ES3_
	.weak_definition	__ZNSt3__114pointer_traitsINS_11__wrap_iterIPdEEE10to_addressB8ne180100ES3_
	.p2align	2
__ZNSt3__114pointer_traitsINS_11__wrap_iterIPdEEE10to_addressB8ne180100ES3_: ; @_ZNSt3__114pointer_traitsINS_11__wrap_iterIPdEEE10to_addressB8ne180100ES3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, x0
	add	x0, sp, #8
	str	x8, [sp, #8]
	bl	__ZNKSt3__111__wrap_iterIPdE4baseB8ne180100Ev
	bl	__ZNSt3__112__to_addressB8ne180100IdEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2ERKS3_ ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEEC2ERKS3_
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2ERKS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEEC2ERKS3_
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEEC2ERKS3_: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEEC2ERKS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
                                        ; kill: def $x9 killed $xzr
	str	xzr, [x8]
	str	xzr, [x8, #8]
	sub	x8, x29, #24
	str	x8, [sp]                        ; 8-byte Folded Spill
	stur	xzr, [x29, #-24]
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE37select_on_container_copy_constructionB8ne180100IS2_vvEES2_RKS2_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x0, x8, #16
	sub	x2, x29, #25
	bl	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1B8ne180100IDnS3_EEOT_OT0_
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE4sizeB8ne180100Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__init_with_sizeB8ne180100IPdS5_EEvT_T0_m
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE37select_on_container_copy_constructionB8ne180100IS2_vvEES2_RKS2_ ; -- Begin function _ZNSt3__116allocator_traitsINS_9allocatorIdEEE37select_on_container_copy_constructionB8ne180100IS2_vvEES2_RKS2_
	.weak_definition	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE37select_on_container_copy_constructionB8ne180100IS2_vvEES2_RKS2_
	.p2align	2
__ZNSt3__116allocator_traitsINS_9allocatorIdEEE37select_on_container_copy_constructionB8ne180100IS2_vvEES2_RKS2_: ; @_ZNSt3__116allocator_traitsINS_9allocatorIdEEE37select_on_container_copy_constructionB8ne180100IS2_vvEES2_RKS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1B8ne180100IDnS3_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1B8ne180100IDnS3_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1B8ne180100IDnS3_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1B8ne180100IDnS3_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC1B8ne180100IDnS3_EEOT_OT0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2B8ne180100IDnS3_EEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__init_with_sizeB8ne180100IPdS5_EEvT_T0_m ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE16__init_with_sizeB8ne180100IPdS5_EEvT_T0_m
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__init_with_sizeB8ne180100IPdS5_EEvT_T0_m
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE16__init_with_sizeB8ne180100IPdS5_EEvT_T0_m: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE16__init_with_sizeB8ne180100IPdS5_EEvT_T0_m
Lfunc_begin47:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception47
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC1B8ne180100ERS3_
	ldr	x0, [sp, #40]
	add	x8, sp, #48
	bl	__ZNSt3__122__make_exception_guardB8ne180100INS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	ldur	x8, [x29, #-32]
	subs	x8, x8, #0
	cset	w8, ls
	tbnz	w8, #0, LBB473_5
	b	LBB473_1
LBB473_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-32]
Ltmp568:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateB8ne180100Em
Ltmp569:
	b	LBB473_2
LBB473_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
Ltmp570:
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdS5_EEvT_T0_m
Ltmp571:
	b	LBB473_3
LBB473_3:
	b	LBB473_5
LBB473_4:
Ltmp572:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #48
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED1B8ne180100Ev
	b	LBB473_6
LBB473_5:
	add	x0, sp, #48
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEE10__completeB8ne180100Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED1B8ne180100Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB473_6:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end47:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table473:
Lexception47:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end47-Lcst_begin47
Lcst_begin47:
	.uleb128 Lfunc_begin47-Lfunc_begin47    ; >> Call Site 1 <<
	.uleb128 Ltmp568-Lfunc_begin47          ;   Call between Lfunc_begin47 and Ltmp568
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp568-Lfunc_begin47          ; >> Call Site 2 <<
	.uleb128 Ltmp571-Ltmp568                ;   Call between Ltmp568 and Ltmp571
	.uleb128 Ltmp572-Lfunc_begin47          ;     jumps to Ltmp572
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp571-Lfunc_begin47          ; >> Call Site 3 <<
	.uleb128 Lfunc_end47-Ltmp571            ;   Call between Ltmp571 and Lfunc_end47
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end47:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2B8ne180100IDnS3_EEOT_OT0_ ; -- Begin function _ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2B8ne180100IDnS3_EEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2B8ne180100IDnS3_EEOT_OT0_
	.p2align	2
__ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2B8ne180100IDnS3_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairIPdNS_9allocatorIdEEEC2B8ne180100IDnS3_EEOT_OT0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	bl	__ZNSt3__122__compressed_pair_elemIPdLi0ELb0EEC2B8ne180100IDnvEEOT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #8]
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EEC2B8ne180100IS2_vEEOT_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EEC2B8ne180100IS2_vEEOT_ ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EEC2B8ne180100IS2_vEEOT_
	.weak_def_can_be_hidden	__ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EEC2B8ne180100IS2_vEEOT_
	.p2align	2
__ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EEC2B8ne180100IS2_vEEOT_: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIdEELi1ELb1EEC2B8ne180100IS2_vEEOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__122__make_exception_guardB8ne180100INS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_ ; -- Begin function _ZNSt3__122__make_exception_guardB8ne180100INS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.globl	__ZNSt3__122__make_exception_guardB8ne180100INS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.weak_definition	__ZNSt3__122__make_exception_guardB8ne180100INS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.p2align	2
__ZNSt3__122__make_exception_guardB8ne180100INS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_: ; @_ZNSt3__122__make_exception_guardB8ne180100INS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEENS_28__exception_guard_exceptionsIT_EES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp]                        ; 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	x9, x0
	stur	x9, [x29, #-8]
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC1B8ne180100ES5_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC1B8ne180100ERS3_ ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC1B8ne180100ERS3_
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC1B8ne180100ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC1B8ne180100ERS3_
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC1B8ne180100ERS3_: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC1B8ne180100ERS3_
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
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC2B8ne180100ERS3_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateB8ne180100Em ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateB8ne180100Em
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateB8ne180100Em
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateB8ne180100Em
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateB8ne180100Em: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE11__vallocateB8ne180100Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8max_sizeEv
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	subs	x8, x8, x0
	cset	w8, ls
	tbnz	w8, #0, LBB478_2
	b	LBB478_1
LBB478_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE20__throw_length_errorB8ne180100Ev
LBB478_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
	ldur	x1, [x29, #-16]
	bl	__ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorIdEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m
	mov	x8, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [sp, #32]
	str	x1, [sp, #40]
	ldr	x8, [sp, #32]
	str	x8, [x0]
	ldr	x8, [sp, #32]
	str	x8, [x0, #8]
	ldr	x8, [x0]
	ldr	x9, [sp, #40]
	add	x8, x8, x9, lsl #3
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE9__end_capB8ne180100Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x9, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x9]
	mov	x1, #0                          ; =0x0
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE14__annotate_newB8ne180100Em
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdS5_EEvT_T0_m ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdS5_EEvT_T0_m
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdS5_EEvT_T0_m
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdS5_EEvT_T0_m: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE18__construct_at_endIPdS5_EEvT_T0_m
Lfunc_begin48:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception48
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x2, [x29, #-32]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionC1B8ne180100ERS3_m
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldr	x3, [sp, #48]
Ltmp574:
	bl	__ZNSt3__130__uninitialized_allocator_copyB8ne180100INS_9allocatorIdEEPdS3_S3_EET2_RT_T0_T1_S4_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
Ltmp575:
	b	LBB479_1
LBB479_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x0, sp, #40
	str	x8, [sp, #48]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B8ne180100Ev
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB479_2:
Ltmp576:
	str	x0, [sp, #32]
	mov	x8, x1
	str	w8, [sp, #28]
	add	x0, sp, #40
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE21_ConstructTransactionD1B8ne180100Ev
	b	LBB479_3
LBB479_3:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end48:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table479:
Lexception48:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end48-Lcst_begin48
Lcst_begin48:
	.uleb128 Lfunc_begin48-Lfunc_begin48    ; >> Call Site 1 <<
	.uleb128 Ltmp574-Lfunc_begin48          ;   Call between Lfunc_begin48 and Ltmp574
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp574-Lfunc_begin48          ; >> Call Site 2 <<
	.uleb128 Ltmp575-Ltmp574                ;   Call between Ltmp574 and Ltmp575
	.uleb128 Ltmp576-Lfunc_begin48          ;     jumps to Ltmp576
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp575-Lfunc_begin48          ; >> Call Site 3 <<
	.uleb128 Lfunc_end48-Ltmp575            ;   Call between Ltmp575 and Lfunc_end48
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end48:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEE10__completeB8ne180100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEE10__completeB8ne180100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEE10__completeB8ne180100Ev
	.weak_definition	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEE10__completeB8ne180100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEE10__completeB8ne180100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEE10__completeB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	w8, #1                          ; =0x1
	strb	w8, [x9, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED1B8ne180100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED1B8ne180100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED1B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED1B8ne180100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED1B8ne180100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED1B8ne180100Ev
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
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED2B8ne180100Ev
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC1B8ne180100ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC1B8ne180100ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC1B8ne180100ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC1B8ne180100ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC1B8ne180100ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC1B8ne180100ES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-8]
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x1, [x29, #-8]
	bl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC2B8ne180100ES5_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC2B8ne180100ES5_ ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC2B8ne180100ES5_
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC2B8ne180100ES5_
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC2B8ne180100ES5_
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC2B8ne180100ES5_: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEEC2B8ne180100ES5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x1, [sp, #8]
	str	x0, [sp]
	ldr	x0, [sp]
	ldr	x8, [sp, #8]
	str	x8, [x0]
	strb	wzr, [x0, #8]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC2B8ne180100ERS3_ ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC2B8ne180100ERS3_
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC2B8ne180100ERS3_
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC2B8ne180100ERS3_
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC2B8ne180100ERS3_: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC2B8ne180100ERS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	str	x8, [x0]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__130__uninitialized_allocator_copyB8ne180100INS_9allocatorIdEEPdS3_S3_EET2_RT_T0_T1_S4_ ; -- Begin function _ZNSt3__130__uninitialized_allocator_copyB8ne180100INS_9allocatorIdEEPdS3_S3_EET2_RT_T0_T1_S4_
	.globl	__ZNSt3__130__uninitialized_allocator_copyB8ne180100INS_9allocatorIdEEPdS3_S3_EET2_RT_T0_T1_S4_
	.weak_definition	__ZNSt3__130__uninitialized_allocator_copyB8ne180100INS_9allocatorIdEEPdS3_S3_EET2_RT_T0_T1_S4_
	.p2align	2
__ZNSt3__130__uninitialized_allocator_copyB8ne180100INS_9allocatorIdEEPdS3_S3_EET2_RT_T0_T1_S4_: ; @_ZNSt3__130__uninitialized_allocator_copyB8ne180100INS_9allocatorIdEEPdS3_S3_EET2_RT_T0_T1_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	__ZNSt3__114__unwrap_rangeB8ne180100IPdS1_EEDaT_T0_
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #32]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [sp, #40]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	__ZNSt3__113__unwrap_iterB8ne180100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	mov	x3, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__135__uninitialized_allocator_copy_implB8ne180100INS_9allocatorIdEEdddLPv0EEEPT2_RT_PT0_S9_S5_
	str	x0, [sp, #24]
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #24]
	bl	__ZNSt3__113__rewrap_iterB8ne180100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__unwrap_rangeB8ne180100IPdS1_EEDaT_T0_ ; -- Begin function _ZNSt3__114__unwrap_rangeB8ne180100IPdS1_EEDaT_T0_
	.globl	__ZNSt3__114__unwrap_rangeB8ne180100IPdS1_EEDaT_T0_
	.weak_definition	__ZNSt3__114__unwrap_rangeB8ne180100IPdS1_EEDaT_T0_
	.p2align	2
__ZNSt3__114__unwrap_rangeB8ne180100IPdS1_EEDaT_T0_: ; @_ZNSt3__114__unwrap_rangeB8ne180100IPdS1_EEDaT_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__119__unwrap_range_implIPdS1_E8__unwrapB8ne180100ES1_S1_
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__135__uninitialized_allocator_copy_implB8ne180100INS_9allocatorIdEEdddLPv0EEEPT2_RT_PT0_S9_S5_ ; -- Begin function _ZNSt3__135__uninitialized_allocator_copy_implB8ne180100INS_9allocatorIdEEdddLPv0EEEPT2_RT_PT0_S9_S5_
	.globl	__ZNSt3__135__uninitialized_allocator_copy_implB8ne180100INS_9allocatorIdEEdddLPv0EEEPT2_RT_PT0_S9_S5_
	.weak_definition	__ZNSt3__135__uninitialized_allocator_copy_implB8ne180100INS_9allocatorIdEEdddLPv0EEEPT2_RT_PT0_S9_S5_
	.p2align	2
__ZNSt3__135__uninitialized_allocator_copy_implB8ne180100INS_9allocatorIdEEdddLPv0EEEPT2_RT_PT0_S9_S5_: ; @_ZNSt3__135__uninitialized_allocator_copy_implB8ne180100INS_9allocatorIdEEdddLPv0EEEPT2_RT_PT0_S9_S5_
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
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__14copyB8ne180100IPdS1_EET0_T_S3_S2_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__unwrap_iterB8ne180100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_ ; -- Begin function _ZNSt3__113__unwrap_iterB8ne180100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.globl	__ZNSt3__113__unwrap_iterB8ne180100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.weak_definition	__ZNSt3__113__unwrap_iterB8ne180100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	.p2align	2
__ZNSt3__113__unwrap_iterB8ne180100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_: ; @_ZNSt3__113__unwrap_iterB8ne180100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
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
	bl	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB8ne180100ES1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__rewrap_iterB8ne180100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_ ; -- Begin function _ZNSt3__113__rewrap_iterB8ne180100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.globl	__ZNSt3__113__rewrap_iterB8ne180100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.weak_definition	__ZNSt3__113__rewrap_iterB8ne180100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	.p2align	2
__ZNSt3__113__rewrap_iterB8ne180100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_: ; @_ZNSt3__113__rewrap_iterB8ne180100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
Lfunc_begin49:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception49
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
	ldr	x1, [sp, #16]
Ltmp580:
	bl	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB8ne180100ES1_S1_
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
Ltmp581:
	b	LBB489_1
LBB489_1:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB489_2:
Ltmp582:
	bl	___clang_call_terminate
Lfunc_end49:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table489:
Lexception49:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase23-Lttbaseref23
Lttbaseref23:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end49-Lcst_begin49
Lcst_begin49:
	.uleb128 Ltmp580-Lfunc_begin49          ; >> Call Site 1 <<
	.uleb128 Ltmp581-Ltmp580                ;   Call between Ltmp580 and Ltmp581
	.uleb128 Ltmp582-Lfunc_begin49          ;     jumps to Ltmp582
	.byte	1                               ;   On action: 1
Lcst_end49:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase23:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__119__unwrap_range_implIPdS1_E8__unwrapB8ne180100ES1_S1_ ; -- Begin function _ZNSt3__119__unwrap_range_implIPdS1_E8__unwrapB8ne180100ES1_S1_
	.globl	__ZNSt3__119__unwrap_range_implIPdS1_E8__unwrapB8ne180100ES1_S1_
	.weak_definition	__ZNSt3__119__unwrap_range_implIPdS1_E8__unwrapB8ne180100ES1_S1_
	.p2align	2
__ZNSt3__119__unwrap_range_implIPdS1_E8__unwrapB8ne180100ES1_S1_: ; @_ZNSt3__119__unwrap_range_implIPdS1_E8__unwrapB8ne180100ES1_S1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	str	x1, [sp, #32]
	ldur	x0, [x29, #-24]
	bl	__ZNSt3__113__unwrap_iterB8ne180100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	add	x8, sp, #24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x0, [sp, #24]
	ldr	x0, [sp, #32]
	bl	__ZNSt3__113__unwrap_iterB8ne180100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	add	x2, sp, #16
	str	x0, [sp, #16]
	sub	x0, x29, #16
	bl	__ZNSt3__14pairIPdS1_EC1B8ne180100IS1_S1_Li0EEEOT_OT0_
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPdS1_EC1B8ne180100IS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPdS1_EC1B8ne180100IS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPdS1_EC1B8ne180100IS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPdS1_EC1B8ne180100IS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPdS1_EC1B8ne180100IS1_S1_Li0EEEOT_OT0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPdS1_EC2B8ne180100IS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPdS1_EC2B8ne180100IS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPdS1_EC2B8ne180100IS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPdS1_EC2B8ne180100IS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPdS1_EC2B8ne180100IS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPdS1_EC2B8ne180100IS1_S1_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__14copyB8ne180100IPdS1_EET0_T_S3_S2_ ; -- Begin function _ZNSt3__14copyB8ne180100IPdS1_EET0_T_S3_S2_
	.globl	__ZNSt3__14copyB8ne180100IPdS1_EET0_T_S3_S2_
	.weak_definition	__ZNSt3__14copyB8ne180100IPdS1_EET0_T_S3_S2_
	.p2align	2
__ZNSt3__14copyB8ne180100IPdS1_EET0_T_S3_S2_: ; @_ZNSt3__14copyB8ne180100IPdS1_EET0_T_S3_S2_
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
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	x2, [sp, #24]
	bl	__ZNSt3__16__copyB8ne180100INS_17_ClassicAlgPolicyEPdS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_
	str	x0, [sp, #8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16__copyB8ne180100INS_17_ClassicAlgPolicyEPdS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_ ; -- Begin function _ZNSt3__16__copyB8ne180100INS_17_ClassicAlgPolicyEPdS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_
	.globl	__ZNSt3__16__copyB8ne180100INS_17_ClassicAlgPolicyEPdS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_
	.weak_definition	__ZNSt3__16__copyB8ne180100INS_17_ClassicAlgPolicyEPdS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_
	.p2align	2
__ZNSt3__16__copyB8ne180100INS_17_ClassicAlgPolicyEPdS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_: ; @_ZNSt3__16__copyB8ne180100INS_17_ClassicAlgPolicyEPdS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialEPdS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialEPdS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_ ; -- Begin function _ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialEPdS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_
	.globl	__ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialEPdS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_
	.weak_definition	__ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialEPdS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_
	.p2align	2
__ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialEPdS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_: ; @_ZNSt3__123__dispatch_copy_or_moveB8ne180100INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialEPdS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEEPdS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEEPdS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_ ; -- Begin function _ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEEPdS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_
	.globl	__ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEEPdS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_
	.weak_definition	__ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEEPdS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_
	.p2align	2
__ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEEPdS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_: ; @_ZNSt3__121__unwrap_and_dispatchB8ne180100INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEEPdS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-40]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	__ZNSt3__114__unwrap_rangeB8ne180100IPdS1_EEDaT_T0_
	stur	x0, [x29, #-56]
	stur	x1, [x29, #-48]
	ldur	x8, [x29, #-56]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-48]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldur	x0, [x29, #-40]
	bl	__ZNSt3__113__unwrap_iterB8ne180100IPdNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	mov	x3, x0
	add	x0, sp, #55
	bl	__ZNKSt3__114__copy_trivialclB8ne180100IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	str	x0, [sp, #56]
	str	x1, [sp, #64]
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #56]
	bl	__ZNSt3__114__rewrap_rangeB8ne180100IPdS1_S1_EET0_S2_T1_
	add	x8, sp, #40
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x0, [sp, #40]
	ldur	x0, [x29, #-40]
	ldr	x1, [sp, #64]
	bl	__ZNSt3__113__rewrap_iterB8ne180100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	mov	x8, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	add	x1, sp, #32
	str	x8, [sp, #32]
	bl	__ZNSt3__19make_pairB8ne180100IPdS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__114__copy_trivialclB8ne180100IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_ ; -- Begin function _ZNKSt3__114__copy_trivialclB8ne180100IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.globl	__ZNKSt3__114__copy_trivialclB8ne180100IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.weak_definition	__ZNKSt3__114__copy_trivialclB8ne180100IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.p2align	2
__ZNKSt3__114__copy_trivialclB8ne180100IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_: ; @_ZNKSt3__114__copy_trivialclB8ne180100IddLi0EEENS_4pairIPT_PT0_EES4_S4_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZNSt3__119__copy_trivial_implB8ne180100IddEENS_4pairIPT_PT0_EES3_S3_S5_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne180100IPdS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_ ; -- Begin function _ZNSt3__19make_pairB8ne180100IPdS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_
	.globl	__ZNSt3__19make_pairB8ne180100IPdS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_
	.weak_definition	__ZNSt3__19make_pairB8ne180100IPdS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_
	.p2align	2
__ZNSt3__19make_pairB8ne180100IPdS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_: ; @_ZNSt3__19make_pairB8ne180100IPdS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPdS1_EC1B8ne180100IS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__114__rewrap_rangeB8ne180100IPdS1_S1_EET0_S2_T1_ ; -- Begin function _ZNSt3__114__rewrap_rangeB8ne180100IPdS1_S1_EET0_S2_T1_
	.globl	__ZNSt3__114__rewrap_rangeB8ne180100IPdS1_S1_EET0_S2_T1_
	.weak_definition	__ZNSt3__114__rewrap_rangeB8ne180100IPdS1_S1_EET0_S2_T1_
	.p2align	2
__ZNSt3__114__rewrap_rangeB8ne180100IPdS1_S1_EET0_S2_T1_: ; @_ZNSt3__114__rewrap_rangeB8ne180100IPdS1_S1_EET0_S2_T1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__119__unwrap_range_implIPdS1_E8__rewrapB8ne180100ES1_S1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__copy_trivial_implB8ne180100IddEENS_4pairIPT_PT0_EES3_S3_S5_ ; -- Begin function _ZNSt3__119__copy_trivial_implB8ne180100IddEENS_4pairIPT_PT0_EES3_S3_S5_
	.globl	__ZNSt3__119__copy_trivial_implB8ne180100IddEENS_4pairIPT_PT0_EES3_S3_S5_
	.weak_definition	__ZNSt3__119__copy_trivial_implB8ne180100IddEENS_4pairIPT_PT0_EES3_S3_S5_
	.p2align	2
__ZNSt3__119__copy_trivial_implB8ne180100IddEENS_4pairIPT_PT0_EES3_S3_S5_: ; @_ZNSt3__119__copy_trivial_implB8ne180100IddEENS_4pairIPT_PT0_EES3_S3_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-24]
	add	x8, sp, #32
	str	x8, [sp]                        ; 8-byte Folded Spill
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	mov	x9, #8                          ; =0x8
	sdiv	x8, x8, x9
	str	x8, [sp, #16]
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #16]
	bl	__ZNSt3__119__constexpr_memmoveB8ne180100IddLi0EEEPT_S2_PT0_NS_15__element_countE
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	add	x8, x8, x9, lsl #3
	add	x1, sp, #8
	str	x8, [sp, #8]
	bl	__ZNSt3__19make_pairB8ne180100IRPdS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__constexpr_memmoveB8ne180100IddLi0EEEPT_S2_PT0_NS_15__element_countE ; -- Begin function _ZNSt3__119__constexpr_memmoveB8ne180100IddLi0EEEPT_S2_PT0_NS_15__element_countE
	.globl	__ZNSt3__119__constexpr_memmoveB8ne180100IddLi0EEEPT_S2_PT0_NS_15__element_countE
	.weak_definition	__ZNSt3__119__constexpr_memmoveB8ne180100IddLi0EEEPT_S2_PT0_NS_15__element_countE
	.p2align	2
__ZNSt3__119__constexpr_memmoveB8ne180100IddLi0EEEPT_S2_PT0_NS_15__element_countE: ; @_ZNSt3__119__constexpr_memmoveB8ne180100IddLi0EEEPT_S2_PT0_NS_15__element_countE
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
	str	x2, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w8, ls
	tbnz	w8, #0, LBB501_2
	b	LBB501_1
LBB501_1:
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x8, [sp]
	subs	x8, x8, #1
	lsl	x8, x8, #3
	add	x2, x8, #8
	bl	_memmove
	b	LBB501_2
LBB501_2:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__19make_pairB8ne180100IRPdS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_ ; -- Begin function _ZNSt3__19make_pairB8ne180100IRPdS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_
	.globl	__ZNSt3__19make_pairB8ne180100IRPdS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_
	.weak_definition	__ZNSt3__19make_pairB8ne180100IRPdS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_
	.p2align	2
__ZNSt3__19make_pairB8ne180100IRPdS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_: ; @_ZNSt3__19make_pairB8ne180100IRPdS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	add	x0, sp, #16
	bl	__ZNSt3__14pairIPdS1_EC1B8ne180100IRS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPdS1_EC1B8ne180100IRS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPdS1_EC1B8ne180100IRS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPdS1_EC1B8ne180100IRS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPdS1_EC1B8ne180100IRS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPdS1_EC1B8ne180100IRS1_S1_Li0EEEOT_OT0_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__14pairIPdS1_EC2B8ne180100IRS1_S1_Li0EEEOT_OT0_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14pairIPdS1_EC2B8ne180100IRS1_S1_Li0EEEOT_OT0_ ; -- Begin function _ZNSt3__14pairIPdS1_EC2B8ne180100IRS1_S1_Li0EEEOT_OT0_
	.weak_def_can_be_hidden	__ZNSt3__14pairIPdS1_EC2B8ne180100IRS1_S1_Li0EEEOT_OT0_
	.p2align	2
__ZNSt3__14pairIPdS1_EC2B8ne180100IRS1_S1_Li0EEEOT_OT0_: ; @_ZNSt3__14pairIPdS1_EC2B8ne180100IRS1_S1_Li0EEEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [x0]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [x0, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__119__unwrap_range_implIPdS1_E8__rewrapB8ne180100ES1_S1_ ; -- Begin function _ZNSt3__119__unwrap_range_implIPdS1_E8__rewrapB8ne180100ES1_S1_
	.globl	__ZNSt3__119__unwrap_range_implIPdS1_E8__rewrapB8ne180100ES1_S1_
	.weak_definition	__ZNSt3__119__unwrap_range_implIPdS1_E8__rewrapB8ne180100ES1_S1_
	.p2align	2
__ZNSt3__119__unwrap_range_implIPdS1_E8__rewrapB8ne180100ES1_S1_: ; @_ZNSt3__119__unwrap_range_implIPdS1_E8__rewrapB8ne180100ES1_S1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNSt3__113__rewrap_iterB8ne180100IPdS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB8ne180100ES1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB8ne180100ES1_
	.globl	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB8ne180100ES1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB8ne180100ES1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB8ne180100ES1_: ; @_ZNSt3__118__unwrap_iter_implIPdLb1EE8__unwrapB8ne180100ES1_
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
	bl	__ZNSt3__112__to_addressB8ne180100IdEEPT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB8ne180100ES1_S1_ ; -- Begin function _ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB8ne180100ES1_S1_
	.globl	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB8ne180100ES1_S1_
	.weak_definition	__ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB8ne180100ES1_S1_
	.p2align	2
__ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB8ne180100ES1_S1_: ; @_ZNSt3__118__unwrap_iter_implIPdLb1EE8__rewrapB8ne180100ES1_S1_
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
	ldr	x8, [sp, #16]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__112__to_addressB8ne180100IdEEPT_S2_
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x9, x0
	mov	x10, #8                         ; =0x8
	sdiv	x9, x9, x10
	add	x0, x8, x9, lsl #3
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED2B8ne180100Ev ; -- Begin function _ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED2B8ne180100Ev
	.globl	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED2B8ne180100Ev
	.p2align	2
__ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED2B8ne180100Ev: ; @_ZNSt3__128__exception_guard_exceptionsINS_6vectorIdNS_9allocatorIdEEE16__destroy_vectorEED2B8ne180100Ev
Lfunc_begin50:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception50
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	mov	x9, x8
	stur	x9, [x29, #-8]
	ldrb	w8, [x8, #8]
	tbnz	w8, #0, LBB508_3
	b	LBB508_1
LBB508_1:
Ltmp585:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorclB8ne180100Ev
Ltmp586:
	b	LBB508_2
LBB508_2:
	b	LBB508_3
LBB508_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB508_4:
Ltmp587:
	bl	___clang_call_terminate
Lfunc_end50:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table508:
Lexception50:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase24-Lttbaseref24
Lttbaseref24:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end50-Lcst_begin50
Lcst_begin50:
	.uleb128 Ltmp585-Lfunc_begin50          ; >> Call Site 1 <<
	.uleb128 Ltmp586-Ltmp585                ;   Call between Ltmp585 and Ltmp586
	.uleb128 Ltmp587-Lfunc_begin50          ;     jumps to Ltmp587
	.byte	1                               ;   On action: 1
Lcst_end50:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase24:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorclB8ne180100Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorclB8ne180100Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorclB8ne180100Ev
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorclB8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorclB8ne180100Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorclB8ne180100Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8]
	ldr	x8, [x8]
	subs	x8, x8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB509_2
	b	LBB509_1
LBB509_1:
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE7__clearB8ne180100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE17__annotate_deleteB8ne180100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x9, [x8]
	ldr	x9, [x9]
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x0, [x8]
	bl	__ZNKSt3__16vectorIdNS_9allocatorIdEEE8capacityB8ne180100Ev
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE10deallocateB8ne180100ERS2_Pdm
	b	LBB509_2
LBB509_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE7__clearB8ne180100Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE7__clearB8ne180100Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE7__clearB8ne180100Ev
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE7__clearB8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE7__clearB8ne180100Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE7__clearB8ne180100Ev
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
	ldr	x1, [x0]
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE22__base_destruct_at_endB8ne180100EPd
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEE22__base_destruct_at_endB8ne180100EPd ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEE22__base_destruct_at_endB8ne180100EPd
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEE22__base_destruct_at_endB8ne180100EPd
	.weak_definition	__ZNSt3__16vectorIdNS_9allocatorIdEEE22__base_destruct_at_endB8ne180100EPd
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEE22__base_destruct_at_endB8ne180100EPd: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEE22__base_destruct_at_endB8ne180100EPd
Lfunc_begin51:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception51
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	b	LBB511_1
LBB511_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB511_4
	b	LBB511_2
LBB511_2:                               ;   in Loop: Header=BB511_1 Depth=1
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE7__allocB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	ldr	x8, [sp, #24]
	subs	x0, x8, #8
	str	x0, [sp, #24]
	bl	__ZNSt3__112__to_addressB8ne180100IdEEPT_S2_
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
Ltmp588:
	bl	__ZNSt3__116allocator_traitsINS_9allocatorIdEEE7destroyB8ne180100IdvvEEvRS2_PT_
Ltmp589:
	b	LBB511_3
LBB511_3:                               ;   in Loop: Header=BB511_1 Depth=1
	b	LBB511_1
LBB511_4:
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
LBB511_5:
Ltmp590:
	bl	___clang_call_terminate
Lfunc_end51:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table511:
Lexception51:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase25-Lttbaseref25
Lttbaseref25:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end51-Lcst_begin51
Lcst_begin51:
	.uleb128 Ltmp588-Lfunc_begin51          ; >> Call Site 1 <<
	.uleb128 Ltmp589-Ltmp588                ;   Call between Ltmp588 and Ltmp589
	.uleb128 Ltmp590-Lfunc_begin51          ;     jumps to Ltmp590
	.byte	1                               ;   On action: 1
Lcst_end51:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase25:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev ; -- Begin function _ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev
	.globl	__ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev
	.weak_def_can_be_hidden	__ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev
	.p2align	2
__ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev: ; @_ZNSt3__16vectorIdNS_9allocatorIdEEED2B8ne180100Ev
Lfunc_begin52:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception52
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x1, [x29, #-8]
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
Ltmp591:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorC1B8ne180100ERS3_
Ltmp592:
	b	LBB512_1
LBB512_1:
	add	x0, sp, #16
	bl	__ZNSt3__16vectorIdNS_9allocatorIdEEE16__destroy_vectorclB8ne180100Ev
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB512_2:
Ltmp593:
	bl	___clang_call_terminate
Lfunc_end52:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table512:
Lexception52:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase26-Lttbaseref26
Lttbaseref26:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end52-Lcst_begin52
Lcst_begin52:
	.uleb128 Ltmp591-Lfunc_begin52          ; >> Call Site 1 <<
	.uleb128 Ltmp592-Ltmp591                ;   Call between Ltmp591 and Ltmp592
	.uleb128 Ltmp593-Lfunc_begin52          ;     jumps to Ltmp593
	.byte	1                               ;   On action: 1
Lcst_end52:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase26:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__111min_elementB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEET_S6_S6_T0_ ; -- Begin function _ZNSt3__111min_elementB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEET_S6_S6_T0_
	.globl	__ZNSt3__111min_elementB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEET_S6_S6_T0_
	.weak_definition	__ZNSt3__111min_elementB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEET_S6_S6_T0_
	.p2align	2
__ZNSt3__111min_elementB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEET_S6_S6_T0_: ; @_ZNSt3__111min_elementB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEET_S6_S6_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	str	x8, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	add	x2, sp, #23
	bl	__ZNSt3__113__min_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEES6_EET0_S7_T1_T_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__min_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEES6_EET0_S7_T1_T_ ; -- Begin function _ZNSt3__113__min_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEES6_EET0_S7_T1_T_
	.globl	__ZNSt3__113__min_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEES6_EET0_S7_T1_T_
	.weak_definition	__ZNSt3__113__min_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEES6_EET0_S7_T1_T_
	.p2align	2
__ZNSt3__113__min_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEES6_EET0_S7_T1_T_: ; @_ZNSt3__113__min_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEES6_EET0_S7_T1_T_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	add	x3, sp, #31
	strb	wzr, [sp, #31]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]
	ldr	x2, [sp, #32]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__113__min_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEES6_NS_10__identityEEET0_S8_T1_T_RT2_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__min_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEES6_NS_10__identityEEET0_S8_T1_T_RT2_ ; -- Begin function _ZNSt3__113__min_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEES6_NS_10__identityEEET0_S8_T1_T_RT2_
	.globl	__ZNSt3__113__min_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEES6_NS_10__identityEEET0_S8_T1_T_RT2_
	.weak_definition	__ZNSt3__113__min_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEES6_NS_10__identityEEET0_S8_T1_T_RT2_
	.p2align	2
__ZNSt3__113__min_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEES6_NS_10__identityEEET0_S8_T1_T_RT2_: ; @_ZNSt3__113__min_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEES6_NS_10__identityEEET0_S8_T1_T_RT2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, x0
	mov	x8, x1
	sub	x0, x29, #16
	stur	x9, [x29, #-16]
	sub	x1, x29, #24
	stur	x8, [x29, #-24]
	stur	x2, [x29, #-32]
	str	x3, [sp, #40]
	bl	__ZNSt3__1eqB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_
	tbz	w0, #0, LBB515_2
	b	LBB515_1
LBB515_1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB515_8
LBB515_2:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]
	b	LBB515_3
LBB515_3:                               ; =>This Inner Loop Header: Depth=1
	add	x0, sp, #32
	bl	__ZNSt3__111__wrap_iterIPdEppB8ne180100Ev
	sub	x1, x29, #24
	bl	__ZNSt3__1neB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_
	tbz	w0, #0, LBB515_7
	b	LBB515_4
LBB515_4:                               ;   in Loop: Header=BB515_3 Depth=1
	ldur	x8, [x29, #-32]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #40]
	str	x8, [sp]                        ; 8-byte Folded Spill
	add	x0, sp, #32
	bl	__ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev
	mov	x1, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__18__invokeB8ne180100IRNS_10__identityEJRdEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS4_DpOS5_
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #40]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	sub	x0, x29, #16
	bl	__ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev
	mov	x1, x0
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__18__invokeB8ne180100IRNS_10__identityEJRdEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS4_DpOS5_
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__18__invokeB8ne180100IRNS_6__lessIvvEEJRdS4_EEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS5_DpOS6_
	tbz	w0, #0, LBB515_6
	b	LBB515_5
LBB515_5:                               ;   in Loop: Header=BB515_3 Depth=1
	ldr	x8, [sp, #32]
	stur	x8, [x29, #-16]
	b	LBB515_6
LBB515_6:                               ;   in Loop: Header=BB515_3 Depth=1
	b	LBB515_3
LBB515_7:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB515_8
LBB515_8:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__invokeB8ne180100IRNS_6__lessIvvEEJRdS4_EEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS5_DpOS6_ ; -- Begin function _ZNSt3__18__invokeB8ne180100IRNS_6__lessIvvEEJRdS4_EEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS5_DpOS6_
	.globl	__ZNSt3__18__invokeB8ne180100IRNS_6__lessIvvEEJRdS4_EEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS5_DpOS6_
	.weak_definition	__ZNSt3__18__invokeB8ne180100IRNS_6__lessIvvEEJRdS4_EEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS5_DpOS6_
	.p2align	2
__ZNSt3__18__invokeB8ne180100IRNS_6__lessIvvEEJRdS4_EEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS5_DpOS6_: ; @_ZNSt3__18__invokeB8ne180100IRNS_6__lessIvvEEJRdS4_EEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS5_DpOS6_
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
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNKSt3__16__lessIvvEclB8ne180100IddEEbRKT_RKT0_
	and	w0, w0, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__18__invokeB8ne180100IRNS_10__identityEJRdEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS4_DpOS5_ ; -- Begin function _ZNSt3__18__invokeB8ne180100IRNS_10__identityEJRdEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS4_DpOS5_
	.globl	__ZNSt3__18__invokeB8ne180100IRNS_10__identityEJRdEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS4_DpOS5_
	.weak_definition	__ZNSt3__18__invokeB8ne180100IRNS_10__identityEJRdEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS4_DpOS5_
	.p2align	2
__ZNSt3__18__invokeB8ne180100IRNS_10__identityEJRdEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS4_DpOS5_: ; @_ZNSt3__18__invokeB8ne180100IRNS_10__identityEJRdEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS4_DpOS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZNKSt3__110__identityclB8ne180100IRdEEOT_S4_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16__lessIvvEclB8ne180100IddEEbRKT_RKT0_ ; -- Begin function _ZNKSt3__16__lessIvvEclB8ne180100IddEEbRKT_RKT0_
	.globl	__ZNKSt3__16__lessIvvEclB8ne180100IddEEbRKT_RKT0_
	.weak_definition	__ZNKSt3__16__lessIvvEclB8ne180100IddEEbRKT_RKT0_
	.p2align	2
__ZNKSt3__16__lessIvvEclB8ne180100IddEEbRKT_RKT0_: ; @_ZNKSt3__16__lessIvvEclB8ne180100IddEEbRKT_RKT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	d0, [x8]
	ldr	x8, [sp, #8]
	ldr	d1, [x8]
	fcmp	d0, d1
	cset	w8, mi
	and	w0, w8, #0x1
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__110__identityclB8ne180100IRdEEOT_S4_ ; -- Begin function _ZNKSt3__110__identityclB8ne180100IRdEEOT_S4_
	.globl	__ZNKSt3__110__identityclB8ne180100IRdEEOT_S4_
	.weak_definition	__ZNKSt3__110__identityclB8ne180100IRdEEOT_S4_
	.p2align	2
__ZNKSt3__110__identityclB8ne180100IRdEEOT_S4_: ; @_ZNKSt3__110__identityclB8ne180100IRdEEOT_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEET_S6_S6_T0_ ; -- Begin function _ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEET_S6_S6_T0_
	.globl	__ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEET_S6_S6_T0_
	.weak_definition	__ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEET_S6_S6_T0_
	.p2align	2
__ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEET_S6_S6_T0_: ; @_ZNSt3__111max_elementB8ne180100INS_11__wrap_iterIPdEENS_6__lessIvvEEEET_S6_S6_T0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	str	x8, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	add	x2, sp, #23
	bl	__ZNSt3__113__max_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEEEET0_S7_S7_T_
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__113__max_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEEEET0_S7_S7_T_ ; -- Begin function _ZNSt3__113__max_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEEEET0_S7_S7_T_
	.globl	__ZNSt3__113__max_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEEEET0_S7_S7_T_
	.weak_definition	__ZNSt3__113__max_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEEEET0_S7_S7_T_
	.p2align	2
__ZNSt3__113__max_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEEEET0_S7_S7_T_: ; @_ZNSt3__113__max_elementB8ne180100IRNS_6__lessIvvEENS_11__wrap_iterIPdEEEET0_S7_S7_T_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x9, x0
	mov	x8, x1
	sub	x0, x29, #16
	stur	x9, [x29, #-16]
	sub	x1, x29, #24
	stur	x8, [x29, #-24]
	str	x2, [sp, #32]
	bl	__ZNSt3__1neB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_
	tbz	w0, #0, LBB521_7
	b	LBB521_1
LBB521_1:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	b	LBB521_2
LBB521_2:                               ; =>This Inner Loop Header: Depth=1
	add	x0, sp, #24
	bl	__ZNSt3__111__wrap_iterIPdEppB8ne180100Ev
	sub	x1, x29, #24
	bl	__ZNSt3__1neB8ne180100IPdEEbRKNS_11__wrap_iterIT_EES6_
	tbz	w0, #0, LBB521_6
	b	LBB521_3
LBB521_3:                               ;   in Loop: Header=BB521_2 Depth=1
	ldr	x8, [sp, #32]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	sub	x0, x29, #16
	bl	__ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	add	x0, sp, #24
	bl	__ZNKSt3__111__wrap_iterIPdEdeB8ne180100Ev
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	mov	x2, x0
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__16__lessIvvEclB8ne180100IddEEbRKT_RKT0_
	tbz	w0, #0, LBB521_5
	b	LBB521_4
LBB521_4:                               ;   in Loop: Header=BB521_2 Depth=1
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-16]
	b	LBB521_5
LBB521_5:                               ;   in Loop: Header=BB521_2 Depth=1
	b	LBB521_2
LBB521_6:
	b	LBB521_7
LBB521_7:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__16invokeB8ne180100IRZ4mainE3$_1JEEENS_13invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_
__ZNSt3__16invokeB8ne180100IRZ4mainE3$_1JEEENS_13invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_: ; @"_ZNSt3__16invokeB8ne180100IRZ4mainE3$_1JEEENS_13invoke_resultIT_JDpT0_EE4typeEOS4_DpOS5_"
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
	bl	__ZNSt3__18__invokeB8ne180100IRZ4mainE3$_1JEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS3_DpOS4_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__18__invokeB8ne180100IRZ4mainE3$_1JEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS3_DpOS4_
__ZNSt3__18__invokeB8ne180100IRZ4mainE3$_1JEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS3_DpOS4_: ; @"_ZNSt3__18__invokeB8ne180100IRZ4mainE3$_1JEEEDTclclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOS3_DpOS4_"
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
	bl	__ZZ4mainENK3$_1clEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZZ4mainENK3$_1clEv
__ZZ4mainENK3$_1clEv:                   ; @"_ZZ4mainENK3$_1clEv"
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x8]
	ldr	x1, [x8]
	add	x8, sp, #8
	mov	w9, #1                          ; =0x1
	and	w0, w9, #0x1
	mov	x2, #4660                       ; =0x1234
	movk	x2, #24301, lsl #16
	bl	__ZN12_GLOBAL__N_114mixed_workloadEbmy
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8, #8]
	ldr	x8, [sp, #104]
	ldr	x9, [sp, #96]
	add	x1, x8, x9
	mov	w2, #0                          ; =0x0
	bl	__ZNSt3__113__atomic_baseImLb0EE5storeB8ne180100EmNS_12memory_orderE
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"--operations"

l_.str.1:                               ; @.str.1
	.asciz	"--warmup"

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
	.asciz	"fragmentation probe setup did not fit arena"

l_.str.23:                              ; @.str.23
	.asciz	"allocator arena is too small"

l_.str.24:                              ; @.str.24
	.asciz	"pointer does not belong to allocator arena"

l_.str.25:                              ; @.str.25
	.asciz	"double free detected by toy allocator"

l_.str.26:                              ; @.str.26
	.asciz	"vector"

l_.str.27:                              ; @.str.27
	.asciz	"{\"capacity_bytes\":"

l_.str.28:                              ; @.str.28
	.asciz	",\"live_requested_bytes\":"

l_.str.29:                              ; @.str.29
	.asciz	",\"live_reserved_bytes\":"

l_.str.30:                              ; @.str.30
	.asciz	",\"peak_live_reserved_bytes\":"

l_.str.31:                              ; @.str.31
	.asciz	",\"free_payload_bytes\":"

l_.str.32:                              ; @.str.32
	.asciz	",\"largest_free_block_bytes\":"

l_.str.33:                              ; @.str.33
	.asciz	",\"internal_fragmentation_bytes\":"

l_.str.34:                              ; @.str.34
	.asciz	",\"external_fragmentation_bytes\":"

l_.str.35:                              ; @.str.35
	.asciz	",\"block_count\":"

l_.str.36:                              ; @.str.36
	.asciz	",\"allocations\":"

l_.str.37:                              ; @.str.37
	.asciz	",\"frees\":"

l_.str.38:                              ; @.str.38
	.asciz	",\"reused_allocations\":"

l_.str.39:                              ; @.str.39
	.asciz	",\"failed_allocations\":"

l_.str.40:                              ; @.str.40
	.asciz	"{\"name\":\""

l_.str.41:                              ; @.str.41
	.asciz	"\",\"warmup\":"

l_.str.42:                              ; @.str.42
	.asciz	",\"repetitions\":"

l_.str.43:                              ; @.str.43
	.asciz	",\"mean_ms\":"

l_.str.44:                              ; @.str.44
	.asciz	",\"stddev_ms\":"

l_.str.45:                              ; @.str.45
	.asciz	",\"p50_ms\":"

l_.str.46:                              ; @.str.46
	.asciz	",\"p95_ms\":"

l_.str.47:                              ; @.str.47
	.asciz	",\"min_ms\":"

l_.str.48:                              ; @.str.48
	.asciz	",\"max_ms\":"

l_.str.49:                              ; @.str.49
	.asciz	"}"

l_.str.50:                              ; @.str.50
	.asciz	"\\\\"

l_.str.51:                              ; @.str.51
	.asciz	"\\\""

l_.str.52:                              ; @.str.52
	.asciz	"\\n"

l_.str.53:                              ; @.str.53
	.asciz	"\\r"

l_.str.54:                              ; @.str.54
	.asciz	"\\t"

l_.str.55:                              ; @.str.55
	.asciz	"benchmark repetitions must be greater than zero"

l_.str.56:                              ; @.str.56
	.asciz	"percentile requires at least one sample"

.subsections_via_symbols

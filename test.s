	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 3	sdk_version 13, 3
	.globl	_strength_reduction1            ; -- Begin function strength_reduction1
	.p2align	2
_strength_reduction1:                   ; @strength_reduction1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	lsl	w0, w8, #4
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_strength_reduction2            ; -- Begin function strength_reduction2
	.p2align	2
_strength_reduction2:                   ; @strength_reduction2
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	mov	w9, #5
	mul	w0, w8, w9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_strength_reduction_loop        ; -- Begin function strength_reduction_loop
	.p2align	2
_strength_reduction_loop:               ; @strength_reduction_loop
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	str	w2, [sp, #16]
	str	wzr, [sp, #12]
	b	LBB2_1
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB2_4
	b	LBB2_2
LBB2_2:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #16]
	mul	w8, w8, w9
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB2_3
LBB2_3:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB2_1
LBB2_4:
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_strength_reduction_con         ; -- Begin function strength_reduction_con
	.p2align	2
_strength_reduction_con:                ; @strength_reduction_con
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #4]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB3_2
	b	LBB3_1
LBB3_1:
	ldr	w8, [sp, #8]
	str	w8, [sp, #12]
	b	LBB3_3
LBB3_2:
	ldr	w8, [sp, #4]
	str	w8, [sp, #12]
	b	LBB3_3
LBB3_3:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_cse1                           ; -- Begin function cse1
	.p2align	2
_cse1:                                  ; @cse1
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldur	w8, [x29, #-4]
	ldr	w9, [sp, #8]
	mov	w10, #3
	str	w10, [sp]                       ; 4-byte Folded Spill
	mul	w9, w9, w10
	add	w0, w8, w9
	bl	_a_function
	ldr	w9, [sp]                        ; 4-byte Folded Reload
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	ldr	w8, [sp, #8]
	mul	w8, w8, w9
	ldur	w9, [x29, #-4]
	subs	w0, w8, w9
	bl	_another_function
	mov	x8, x0
	ldr	w0, [sp, #4]                    ; 4-byte Folded Reload
	add	w0, w0, w8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols

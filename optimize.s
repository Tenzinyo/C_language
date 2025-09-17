	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 3	sdk_version 13, 3
	.globl	_afunction                      ; -- Begin function afunction
	.p2align	2
_afunction:                             ; @afunction
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x9, [sp, #24]
	mov	w8, #3
	str	w8, [x9]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	lsl	w8, w8, #1
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldr	w0, [sp, #12]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols

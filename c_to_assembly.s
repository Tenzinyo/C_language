	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 3	sdk_version 13, 3
	.globl	_afunction                      ; -- Begin function afunction
	.p2align	2
_afunction:                             ; @afunction
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	mov	w8, #3
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	add	w8, w8, w9
	str	w8, [sp, #4]
	mov	w8, #4
	str	w8, [sp, #12]
	ldr	w8, [sp, #8]
	mov	w9, #5
	mul	w0, w8, w9
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols

	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 3	sdk_version 13, 3
	.globl	_afunction                      ; -- Begin function afunction
	.p2align	2
_afunction:                             ; @afunction
	.cfi_startproc
; %bb.0:
	mov	w8, #3
	str	w8, [x0]
	ldr	w8, [x1]
	lsl	w8, w8, #1
	str	w8, [x0]
	mov	x0, x8
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols

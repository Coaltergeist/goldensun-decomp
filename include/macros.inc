	.macro .ssize sym
	.size	\sym, . - \sym
	.endm

	.macro .arm_func_start sym
	.align	2, 0
	.global	\sym
	.type	\sym, function
	.arm
\sym:
	.endm

	.macro .thumb_func_start_noalign sym
	.global	\sym
	.type	\sym, function
	.thumb_func
\sym:
	.endm

	.macro .thumb_func_start sym
	.align	2, 0
	.thumb_func_start_noalign \sym
	.endm

	.macro .pool_aligned
	.align	2, 0
	.pool
	.endm

	.macro .func_end sym
	.pool_aligned
	.ssize	\sym
	.endm

	.macro .func_end_emit_size sym:req, sizesym:req
		.func_end \sym
		\sym\()_End:
		.global \sizesym
		\sizesym = \sym\()_End - \sym
	.endm

	.macro .incrom start, end
	.incbin "baserom.gba", \start, \end - \start
	.endm

	.macro .incdata sym, start, end
	.global	\sym
\sym:
	.incrom \start, \end
	.ssize	\sym
	.endm

	.macro .thumb_stub sym, target, reg=r4
	.thumb_func_start \sym
	ldr	\reg, =\target
	bx	\reg
	.func_end \sym
	.endm

	.macro .export_func sym
	.thumb_stub _\sym, \sym
	.endm

	.macro .call_via reg
	.align	2, 0
	mov	r12, pc
	bx	\reg
	.endm

    .macro .ft_include path:req, padding:vararg
        .section .rodata.mft
        .word file_\@
        .section .rodata.mftdata
    .align 2, 0
    file_\@:
        .incbin "\path"
        .ifnb \padding
            .byte \padding
        .endif
    .endm

	.macro .ft_ref sym:req
		.section .rodata.mft
		.word \sym
	.endm
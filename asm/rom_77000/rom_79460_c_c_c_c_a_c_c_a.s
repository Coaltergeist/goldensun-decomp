	.include "macros.inc"

	.section .text.after, "ax", %progbits

	.section .text.after_79d1c, "ax", %progbits

.thumb_func_start Func_8079d7c  @ 0x08079d7c
	push	{lr}
	sub	r0, #8
	cmp	r0, #0x31
	bls	.L79d86
	b	.L79e90
.L79d86:
	ldr	r2, =.L79d90
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L79d90:
	.word	.L79e8c
	.word	.L79e8c
	.word	.L79e90
	.word	.L79e90
	.word	.L79e58
	.word	.L79e58
	.word	.L79e90
	.word	.L79e90
	.word	.L79e5c
	.word	.L79e5c
	.word	.L79e6c
	.word	.L79e6c
	.word	.L79e78
	.word	.L79e7c
	.word	.L79e60
	.word	.L79e64
	.word	.L79e68
	.word	.L79e6c
	.word	.L79e70
	.word	.L79e74
	.word	.L79e8c
	.word	.L79e90
	.word	.L79e90
	.word	.L79e78
	.word	.L79e8c
	.word	.L79e90
	.word	.L79e7c
	.word	.L79e80
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e90
	.word	.L79e84
	.word	.L79e88
.L79e58:
	mov	r0, #0x46
	b	.L79e94
.L79e5c:
	mov	r0, #0x4b
	b	.L79e94
.L79e60:
	mov	r0, #0x1e
	b	.L79e94
.L79e64:
	mov	r0, #0x28
	b	.L79e94
.L79e68:
	mov	r0, #0x2d
	b	.L79e94
.L79e6c:
	mov	r0, #0x37
	b	.L79e94
.L79e70:
	mov	r0, #0x19
	b	.L79e94
.L79e74:
	mov	r0, #0x14
	b	.L79e94
.L79e78:
	mov	r0, #0x41
	b	.L79e94
.L79e7c:
	mov	r0, #0x23
	b	.L79e94
.L79e80:
	mov	r0, #0x32
	b	.L79e94
.L79e84:
	mov	r0, #0x3c
	b	.L79e92
.L79e88:
	mov	r0, #0x5a
	b	.L79e92
.L79e8c:
	mov	r0, #0x3c
	b	.L79e94
.L79e90:
	mov	r0, #0x64
.L79e92:
	neg	r0, r0
.L79e94:
	pop	{r1}
	bx	r1
.func_end Func_8079d7c

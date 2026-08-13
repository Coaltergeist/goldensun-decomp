	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809b0dc  @ 0x0809b0dc
	push	{lr}
	ldr	r1, =0xfffffd80
	ldr	r3, [r0, #0x1c]
	ldr	r2, [r0, #0x18]
	add	r3, r1
	add	r2, r1
	str	r3, [r0, #0x1c]
	mov	r1, #0x80
	ldrh	r3, [r0, #6]
	lsl	r1, #6
	add	r3, r1
	strh	r3, [r0, #6]
	mov	r1, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r0, #0xc]
	mov	r3, #0xc0
	lsl	r3, #6
	str	r2, [r0, #0x18]
	cmp	r2, r3
	bge	.L9b110
	mov	r2, r0
	ldr	r3, .L9b114	@ 0
	add	r2, #0x54
	strb	r3, [r2]
.L9b110:
	pop	{r0}
	bx	r0

	.align	2, 0
.L9b114:
	.word	0
.func_end Func_809b0dc

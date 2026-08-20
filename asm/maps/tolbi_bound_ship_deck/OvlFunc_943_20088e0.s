	.include "macros.inc"

.thumb_func_start OvlFunc_943_20088e0
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x62
	ldrb	r3, [r6]
	mov	r7, r3
	cmp	r7, #0
	beq	.Lm943_8f4
	add	r3, #0xff
	b	.Lm943_92c
.Lm943_8f4:
	bl	__Random
	lsl	r2, r0, #2
	add	r2, r0
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #2
	lsr	r3, #16
	cmp	r3, #0xc8
	bls	.Lm943_910
	mov	r3, #0xd0
	lsl	r3, #8
	strh	r3, [r5, #6]
	b	.Lm943_91e
.Lm943_910:
	cmp	r3, #0x64
	bls	.Lm943_91c
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r5, #6]
	b	.Lm943_91e
.Lm943_91c:
	strh	r7, [r5, #6]
.Lm943_91e:
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	add	r3, #0x50
.Lm943_92c:
	strb	r3, [r6]
	mov	r0, #1
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_943_20088e0


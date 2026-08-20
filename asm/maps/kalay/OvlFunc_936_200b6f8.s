	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_936_200b6f8
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bne	.Lm936_370e
	bl	__DeleteActor
	b	.Lm936_372e
.Lm936_370e:
	cmp	r3, #1
	bne	.Lm936_371e
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	b	.Lm936_372e
.Lm936_371e:
	ldr	r3, [r5, #0x18]
	mov	r2, #0x80
	lsl	r2, #4
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
	str	r3, [r5, #0x1c]
.Lm936_372e:
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #0x24]
	add	r3, r2
	str	r3, [r5, #8]
	ldr	r1, [r5, #0x28]
	ldr	r3, [r5, #0xc]
	add	r3, r1
	str	r3, [r5, #0xc]
	mov	r3, r2
	cmp	r2, #0
	bge	.Lm936_3746
	add	r3, #0xff
.Lm936_3746:
	asr	r3, #8
	sub	r3, r2, r3
	str	r3, [r5, #0x24]
	mov	r3, r1
	cmp	r1, #0
	bge	.Lm936_3754
	add	r3, #0xf
.Lm936_3754:
	asr	r3, #4
	sub	r3, r1, r3
	str	r3, [r5, #0x28]
	ldrh	r3, [r6]
	sub	r3, #1
	strh	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b6f8


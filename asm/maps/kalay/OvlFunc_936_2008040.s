	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_936_2008040
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bne	.Lm936_9e
	bl	__Random
	lsl	r0, #3
	lsr	r0, #16
	cmp	r0, #1
	beq	.Lm936_74
	cmp	r0, #1
	bcc	.Lm936_6a
	cmp	r0, #4
	bhi	.Lm936_8c
	cmp	r0, #3
	bcc	.Lm936_8c
	b	.Lm936_7e
.Lm936_6a:
	mov	r0, r5
	mov	r1, #3
	bl	__Actor_SetAnim
	b	.Lm936_8c
.Lm936_74:
	mov	r0, r5
	mov	r1, #4
	bl	__Actor_SetAnim
	b	.Lm936_8c
.Lm936_7e:
	bl	__Random
	ldrh	r3, [r5, #6]
	lsl	r0, #15
	lsr	r0, #16
	add	r3, r0
	strh	r3, [r5, #6]
.Lm936_8c:
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	lsr	r3, #16
	strh	r3, [r6]
	cmp	r3, #0
	beq	.Lm936_a4
.Lm936_9e:
	ldrh	r3, [r6]
	sub	r3, #1
	strh	r3, [r6]
.Lm936_a4:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_936_2008040


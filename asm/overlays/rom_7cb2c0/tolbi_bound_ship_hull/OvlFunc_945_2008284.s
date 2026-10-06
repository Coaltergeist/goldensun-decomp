	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_2008284
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, r5
	add	r3, #0x5b
	ldrb	r6, [r3]
	cmp	r6, #0
	bne	.Lm945_2e6
	mov	r7, r0
	add	r7, #0x63
	ldrb	r1, [r7]
	cmp	r1, #1
	bne	.Lm945_2b6
	mov	r2, #0xd0
	lsl	r2, #8
	strh	r2, [r5, #6]
	ldr	r3, =0
	mov	r2, r5
	add	r2, #0x62
	strb	r1, [r2]
	b	.Lm945_2e4
.Lm945_2b6:
	cmp	r1, #2
	bne	.Lm945_2dc
	mov	r2, #0x62
	add	r2, r5
	ldrb	r3, [r2]
	mov	r8, r2
	cmp	r3, #0
	beq	.Lm945_2ce
	mov	r0, r5
	mov	r1, #3
	bl	__Actor_SetAnim
.Lm945_2ce:
	mov	r3, r8
	strb	r6, [r3]
	strb	r6, [r7]
	b	.Lm945_2e6

	.pool_aligned

.Lm945_2dc:
	cmp	r1, #3
	bne	.Lm945_2e6
	ldr	r3, =0
	strh	r6, [r5, #6]
.Lm945_2e4:
	strb	r3, [r7]
.Lm945_2e6:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008284


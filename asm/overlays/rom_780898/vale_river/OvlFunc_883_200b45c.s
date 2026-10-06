	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_883_200b45c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r1
	mov	r6, r0
	cmp	r2, #0
	bne	.Lm883_34a0
	mov	r7, #0
	cmp	r7, r8
	bcs	.Lm883_34b8
.Lm883_3470:
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r2, r5
	mov	r3, #0
	add	r2, #0x55
	strb	r3, [r2]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #0xc3
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r3, #0xa0
	lsl	r3, #16
	str	r3, [r5, #0xc]
	ldr	r3, =0x34a0000
	add	r7, #1
	str	r3, [r5, #0x10]
	add	r6, #1
	cmp	r7, r8
	bcc	.Lm883_3470
	b	.Lm883_34b8
.Lm883_34a0:
	mov	r7, #0
	cmp	r7, r8
	bcs	.Lm883_34b8
.Lm883_34a6:
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0
	add	r7, #1
	bl	__MapActor_SetPos
	add	r6, #1
	cmp	r7, r8
	bcc	.Lm883_34a6
.Lm883_34b8:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200b45c


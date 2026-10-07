	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_888_200a5c4
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm888_25da
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xe
	bl	__MapActor_SetPos
.Lm888_25da:
	mov	r1, #0
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	ldrh	r3, [r0, #6]
	mov	r0, #0xe
	strh	r3, [r5, #6]
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_888_200a67c
	str	r3, [r0, #0x6c]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r5, [r0, #0x50]
	mov	r3, r5
	add	r3, #0x27
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r0, r3
	bcs	.Lm888_262e
	mov	r1, r5
	mov	r4, #0xa
	mov	r12, r3
	add	r1, #0x28
.Lm888_261a:
	ldmia	r1!, {r2}
	cmp	r2, #0
	beq	.Lm888_2628
	ldr	r3, [r2, #0x10]
	cmp	r3, #0
	beq	.Lm888_2628
	strb	r4, [r2, #5]
.Lm888_2628:
	add	r0, #1
	cmp	r0, r12
	bcc	.Lm888_261a
.Lm888_262e:
	mov	r2, r5
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r2, [r5, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r5, #9]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200a5c4


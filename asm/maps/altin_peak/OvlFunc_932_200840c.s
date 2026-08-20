	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200840c
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm932_474
	mov	r3, #1
	mov	r7, #0x18
	mov	r6, #0x1a
	mov	r0, #0x18
	mov	r1, #0x1b
	mov	r2, #2
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x19
	bne	.Lm932_44a
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_8010704
	b	.Lm932_45a
.Lm932_44a:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
.Lm932_45a:
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
.Lm932_474:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200840c


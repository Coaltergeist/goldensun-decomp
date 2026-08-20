	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_886_20085d4
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.Lm886_5f2
	mov	r0, #3
	mov	r1, #0x14
	bl	__Func_80b0278
	b	.Lm886_63a
.Lm886_5f2:
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm886_614
	bl	__CutsceneStart
	ldr	r0, =0x1c0a
	bl	__MessageID
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	b	.Lm886_63a
.Lm886_614:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm886_624
	bl	OvlFunc_886_20081e8
	b	.Lm886_63a
.Lm886_624:
	bl	__CutsceneStart
	ldr	r0, =0xf55
	bl	__MessageID
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.Lm886_63a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_20085d4


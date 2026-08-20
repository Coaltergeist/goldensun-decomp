	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_926_200a508
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.Lm926_2528
	mov	r0, #0xd
	bl	__UI_Sanctum
	b	.Lm926_2536
.Lm926_2528:
	ldr	r0, =0x1a1c
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
.Lm926_2536:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200a508


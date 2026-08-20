	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_930_20088e0
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.Lm930_900
	mov	r0, #0xf
	bl	__UI_Sanctum
	b	.Lm930_90e
.Lm930_900:
	ldr	r0, =0x1a1e
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
.Lm930_90e:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_20088e0


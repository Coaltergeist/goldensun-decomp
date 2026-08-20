	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_937_20081fc
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0x5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe0000
	lsl	r3, #16
	cmp	r3, r2
	bhi	.Lm937_21a
	mov	r0, #8
	bl	__UI_Sanctum
	b	.Lm937_230
.Lm937_21a:
	bl	__CutsceneStart
	ldr	r0, =0x1a8f
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.Lm937_230:
	pop	{r0}
	bx	r0
.func_end OvlFunc_937_20081fc


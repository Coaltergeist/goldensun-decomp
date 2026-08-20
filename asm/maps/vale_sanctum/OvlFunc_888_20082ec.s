	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_888_20082ec
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm888_304
	ldr	r0, =0x128b
	bl	__MessageID
	b	.Lm888_30a
.Lm888_304:
	ldr	r0, =0x1379
	bl	__MessageID
.Lm888_30a:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bne	.Lm888_320
	ldr	r0, =0x1ceb
	bl	__MessageID
.Lm888_320:
	mov	r0, #9
	bl	__MapActor_SetIdle
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #9
	mov	r1, #2
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_20082ec


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_888_200827c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm888_294
	ldr	r0, =0x1377
	bl	__MessageID
	b	.Lm888_29a
.Lm888_294:
	ldr	r0, =0x1289
	bl	__MessageID
.Lm888_29a:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bne	.Lm888_2b0
	ldr	r0, =0x1ce9
	bl	__MessageID
.Lm888_2b0:
	mov	r0, #9
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__MapActor_TurnToFaceActor
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200827c


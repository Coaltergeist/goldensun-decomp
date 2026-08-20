	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_883_2008b28
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm883_b48
	ldr	r0, =0x11c9
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm883_b8a
.Lm883_b48:
	ldr	r0, =0x806
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm883_b72
	ldr	r0, =0x806
	bl	__SetFlag
	ldr	r0, =0xf7c
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #4
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8093054
	b	.Lm883_b8a
.Lm883_b72:
	ldr	r0, =0xf7e
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #4
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
.Lm883_b8a:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008b28


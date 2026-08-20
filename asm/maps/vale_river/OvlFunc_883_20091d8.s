	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_883_20091d8
	push	{r5, lr}
	ldr	r0, =0x808
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm883_1230
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0
	bl	__MapActor_SetSpeed
	ldr	r5, =0xf4d
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #2
	bl	__ActorMessage_Wait
	add	r5, #2
	mov	r2, #2
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #1
	mov	r0, r5
	bl	__Func_801776c
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x45
	ldr	r2, =0x366
	bl	__MapActor_TravelToAnimWait
	bl	__CutsceneEnd
.Lm883_1230:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_20091d8


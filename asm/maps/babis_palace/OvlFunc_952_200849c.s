	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_952_200849c
	push	{r5, lr}
	mov	r5, r1
	bl	__CutsceneStart
	ldr	r0, =0x2052
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x968
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm952_512
	ldr	r0, =0x968
	bl	__SetFlag
	bl	__Func_8097608
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0x46
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, r5
	mov	r1, #0
	bl	__MapActor_Face
	mov	r1, #0
	mov	r0, r5
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, r5
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.Lm952_512:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_200849c


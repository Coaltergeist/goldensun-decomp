	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_921_20082b8
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm921_31c
	ldr	r0, =0x163c
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__MapActor_Face
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8093054
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #9
	bl	__MapActor_SetAnim
	b	.Lm921_36e
.Lm921_31c:
	ldr	r0, =0x152d
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__MapActor_Face
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #9
	bl	__MapActor_SetAnim
.Lm921_36e:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_20082b8


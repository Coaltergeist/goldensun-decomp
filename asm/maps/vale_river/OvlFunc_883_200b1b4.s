	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_883_200b1b4
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	ldr	r5, =gScript_883__0200e65c
	mov	r0, #0xc
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r1, r5
	mov	r0, #0xd
	bl	__MapActor_SetBehavior
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__WaitFrames
	mov	r1, r5
	mov	r0, #0xe
	bl	__MapActor_RunScript
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xb
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #0xb
	bl	__Func_8092adc
	ldr	r0, =0x1c90
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__MapActor_Face
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #0xb
	bl	__Func_8092adc
	ldr	r0, =0x305
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200b1b4


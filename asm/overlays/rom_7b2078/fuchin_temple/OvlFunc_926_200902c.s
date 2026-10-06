	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_926_200902c
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r1, =0xcccc
	mov	r0, #0xf
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r5, =0x183a
	mov	r0, r5
	bl	__MessageID
	cmp	r6, #0
	bne	.Lm926_10a4
	sub	r0, r5, #1
	bl	__MessageID
	mov	r0, #0xf
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	ldr	r0, =0x18ae
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #4
	mov	r0, #0xf
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #0xf
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
.Lm926_10a4:
	cmp	r6, #2
	bne	.Lm926_10bc
	ldr	r0, =0x18ac
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
.Lm926_10bc:
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage_Wait
	bl	OvlFunc_926_2008f80
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #0xe8
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xe8
	mov	r2, #0xa8
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #12
	str	r3, [r0, #0xc]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, =0xcccc
	str	r3, [r0, #0x18]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x7c
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xf
	mov	r1, #0xd8
	mov	r2, #0x98
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #6
	mov	r2, #0x1e
	bl	__Func_8092adc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200902c


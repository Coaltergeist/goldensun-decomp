	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_899_2009a4c
	push	{r5, r6, lr}
	mov	r0, #0x18
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r6, r0
	bl	__CutsceneStart
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0xae
	mov	r0, #0
	mov	r1, #0xe8
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xae
	mov	r1, #0xc8
	lsl	r2, #2
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0x18
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #0x19
	mov	r1, #0
	bl	OvlFunc_899_200c60c
	mov	r1, #2
	mov	r0, #0x18
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1296
	bl	__MessageID
	mov	r0, #0x18
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x19
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x19
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x18
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x18
	lsl	r1, #11
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r1, #0xe0
	mov	r2, #0xe0
	lsl	r2, #9
	mov	r0, #0x19
	lsl	r1, #10
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_899__0200d830
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_899__0200d560
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	mov	r0, #0x18
	bl	__MapActor_WaitScript
	mov	r3, #0xe
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #3
	mov	r1, #0x2d
	mov	r0, #0xe
	bl	__Func_8010704
	ldr	r0, =0x852
	bl	__SetFlag
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_899_200aba0
	bl	__StartTask
	add	r5, #0x64
	mov	r3, #1
	strh	r3, [r5]
	add	r6, #0x64
	mov	r3, #3
	strh	r3, [r6]
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2009a4c


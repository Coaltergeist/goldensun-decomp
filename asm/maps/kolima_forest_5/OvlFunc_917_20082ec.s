	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_917_20082ec
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0xc0
	mov	r2, #0
	mov	r6, r0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r0, #0x11
	bl	__PlaySound
	ldr	r5, =.Lm917_1dd0
	mov	r3, #1
	mov	r1, #0xc8
	str	r3, [r5]
	lsl	r1, #4
	ldr	r0, =OvlFunc_917_2009218
	bl	__StartTask
	mov	r0, #0x1e
	bl	__WaitFrames
	mov	r3, #0
	mov	r0, #0xa4
	mov	r1, #1
	mov	r2, #0xeb
	lsl	r2, #16
	str	r3, [r5]
	lsl	r0, #17
	mov	r3, #1
	neg	r1, r1
	bl	__Func_80933f8
	mov	r1, #1
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #0x10
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #10
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0x85
	bl	__PlaySound
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r6, #0x28]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x48]
	mov	r3, #0xa0
	lsl	r3, #8
	mov	r2, #0x81
	str	r3, [r6, #0x44]
	mov	r0, #0
	ldr	r1, =0x14f
	lsl	r2, #1
	bl	__MapActor_TravelToWait
	ldr	r3, [r6, #0x28]
	cmp	r3, #0
	blt	.Lm917_3ac
.Lm917_3a0:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r6, #0x28]
	cmp	r3, #0
	bge	.Lm917_3a0
.Lm917_3ac:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r6, #0x28]
	cmp	r3, #0
	ble	.Lm917_3ac
	mov	r0, #0xa1
	bl	__PlaySound
	mov	r1, #0x13
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r5, #0x80
	ldr	r0, =OvlFunc_917_2009218
	bl	__StopTask
	lsl	r5, #7
	mov	r0, #0x28
	bl	__WaitFrames
	str	r5, [r6, #0x44]
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r0, =0x14cc
	bl	__MessageID
	mov	r2, #0x14
	ldr	r0, =0x200e
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x200e
	mov	r1, #0
	bl	__ActorMessage
	bl	__PlayMapMusic
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r6, #6]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x48]
	mov	r1, #2
	str	r5, [r6, #0x44]
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_20082ec


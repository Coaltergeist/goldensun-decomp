	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_896_200978c
	push	{r5, r6, r7, lr}
	mov	r0, #0xa1
	bl	__PlaySound
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xc
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm896_17b6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xd
	bl	__MapActor_SetPos
.Lm896_17b6:
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0xd
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #3
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #0x28
	bl	OvlFunc_896_200c248
	mov	r1, #3
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r1, #1
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0x28
	bl	OvlFunc_896_200c248
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #0x50
	bl	OvlFunc_896_200c248
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0x28
	bl	OvlFunc_896_200c248
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #0x50
	bl	OvlFunc_896_200c248
	mov	r0, #0xd
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0xd
	mov	r1, #0x50
	bl	OvlFunc_896_200c248
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xb
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r2, #0x50
	mov	r0, #9
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r0, #0xb
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r1, #1
	mov	r2, #0xe9
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #17
	ldr	r0, =0x1050000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r2, #0xef
	mov	r0, #0
	mov	r1, #0xf4
	lsl	r2, #1
	bl	__MapActor_TravelToAnim
	mov	r1, #0x82
	mov	r2, #0xf5
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	bl	__GetUnit
	ldr	r4, =0x1ff
	mov	r5, #0
	add	r0, #0xd8
	mov	r1, #0xe
.Lm896_1a70:
	ldrh	r3, [r0]
	mov	r2, r4
	and	r2, r3
	mov	r3, r2
	sub	r3, #0xdc
	add	r0, #2
	cmp	r3, #1
	bls	.Lm896_1a84
	cmp	r2, #0xdf
	bne	.Lm896_1a86
.Lm896_1a84:
	add	r5, #1
.Lm896_1a86:
	sub	r1, #1
	cmp	r1, #0
	bge	.Lm896_1a70
	mov	r1, #0
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm896_1af8
	ldr	r6, =0x10b0
	mov	r0, r6
	bl	__MessageID
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	cmp	r5, #2
	bgt	.Lm896_1ae8
	mov	r0, #1
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r2, #0xf3
	lsl	r2, #1
	mov	r0, #1
	mov	r1, #0xfc
	bl	__MapActor_TravelToAnimWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r6, #1
	mov	r1, #1
	mov	r2, #0
	bl	__Func_8019aa0
	b	.Lm896_1bdc
.Lm896_1ae8:
	ldr	r0, =0x10b4
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	b	.Lm896_1bdc
.Lm896_1af8:
	cmp	r5, #2
	bgt	.Lm896_1baa
	ldr	r6, =0x10b2
	mov	r0, r6
	bl	__MessageID
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #1
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r5, r7
	add	r5, #0x5a
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0xef
	strb	r3, [r5]
	mov	r0, #1
	mov	r1, #0xf4
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xda
	ldr	r2, =0x1d7
	mov	r0, #0
	bl	__MapActor_TravelTo
	add	r6, #1
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r0, r6
	mov	r1, #1
	bl	__Func_8019aa0
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	ldrb	r2, [r5]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r5]
	b	.Lm896_1bdc
.Lm896_1baa:
	ldr	r0, =0x10b5
	bl	__MessageID
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
.Lm896_1bdc:
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r0, #1
	mov	r1, #1
	bl	__SetCameraTarget
	bl	__Func_8093530
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	lsl	r2, #7
	mov	r0, #1
	bl	__MapActor_SetSpeed
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r5, r7
	add	r5, #0x5a
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x84
	mov	r2, #0xf1
	strb	r3, [r5]
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	ldrb	r2, [r5]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0x8b
	mov	r2, #0xf0
	lsl	r2, #1
	strb	r3, [r5]
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_TravelToAnimWait
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r7, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	mov	r5, #0xc0
	str	r3, [r7, #0x34]
	lsl	r5, #11
	mov	r0, #0x99
	bl	__PlaySound
	str	r5, [r7, #0x28]
	mov	r0, #1
	mov	r1, #7
	bl	__MapActor_SetAnim
	mov	r1, #0x9c
	mov	r2, #0xeb
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_TravelToWait
	mov	r1, #1
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x99
	bl	__PlaySound
	str	r5, [r7, #0x28]
	mov	r0, #1
	mov	r1, #7
	bl	__MapActor_SetAnim
	mov	r1, #0xab
	mov	r2, #0xeb
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_TravelToWait
	mov	r1, #1
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x99
	bl	__PlaySound
	str	r5, [r7, #0x28]
	mov	r0, #1
	mov	r1, #7
	bl	__MapActor_SetAnim
	mov	r1, #0xbc
	mov	r2, #0xeb
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToWait
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200978c


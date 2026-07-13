	.include "macros.inc"

.thumb_func_start OvlFunc_909_20099b0
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	bl	__Func_8093554
	mov	r5, #0
	add	r0, #0x55
	mov	r1, #1
	mov	r2, #0xa6
	mov	r3, #0
	strb	r5, [r0]
	neg	r1, r1
	lsl	r2, #18
	ldr	r0, =0x37e0000
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_SetPos
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r6, =iwram_3001ebc
	mov	r3, #0xe0
	ldr	r1, [r6]
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	sub	r3, #0x39
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xde
	mov	r0, #0x13
	lsl	r1, #18
	ldr	r2, =0x31e0000
	bl	__MapActor_SetPos
	mov	r1, #0xe2
	ldr	r2, =0x31e0000
	mov	r0, #0
	lsl	r1, #18
	bl	__MapActor_SetPos
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x37e0000
	neg	r1, r1
	ldr	r2, =0x2ba0000
	bl	__Func_80933f8
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0xde
	mov	r2, #0xb4
	mov	r0, #0x13
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0xe2
	mov	r2, #0xb8
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x13
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x1728
	bl	__MessageID
	ldr	r0, =0x84f
	mov	r5, #1
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1ad6
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.L1ad6:
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
	cmp	r5, #0
	beq	.L1af0
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1af0:
	mov	r1, #1
	mov	r2, #0xa6
	lsl	r2, #18
	mov	r3, #1
	ldr	r0, =0x37e0000
	neg	r1, r1
	bl	__Func_80933f8
	ldr	r1, =gScript_909__0200a5d4
	mov	r0, #0x13
	bl	__MapActor_SetBehavior
	mov	r2, #0xab
	mov	r0, #0
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1b28
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.L1b28:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1b3c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.L1b3c:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1b50
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.L1b50:
	mov	r0, #1
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #0x10
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	bl	__Func_809228c
	mov	r0, #2
	mov	r1, #0x10
	mov	r2, #0x10
	bl	__Func_809228c
	mov	r2, #0x10
	mov	r1, #0x20
	mov	r0, #3
	bl	__Func_809228c
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x13
	bl	__MapActor_WaitScript
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x84f
	mov	r5, #1
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1c20
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.L1c20:
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_80925cc
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	cmp	r5, #0
	beq	.L1c44
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1c44:
	ldr	r0, =0x84f
	mov	r5, #1
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1c60
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.L1c60:
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	cmp	r5, #0
	beq	.L1c84
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1c84:
	bl	OvlFunc_909_2009958
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x84f
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1cec
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__MapActor_Emote
	b	.L1cf2

	.pool_aligned

.L1cec:
	mov	r0, #0x28
	bl	__CutsceneWait
.L1cf2:
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x84f
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1df8
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__Func_8092c40
	bl	OvlFunc_909_2009958
	mov	r0, #0
	mov	r1, #0
	mov	r5, #1
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L1db6
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.L1db6:
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x12
	bl	__Func_8092adc
	bl	OvlFunc_909_2009984
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	cmp	r5, #0
	beq	.L1dea
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1dea:
	mov	r1, #0x81
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	b	.L1e08
.L1df8:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #4
	strh	r3, [r2]
.L1e08:
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__Func_8092c40
	bl	OvlFunc_909_2009958
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1e48
	ldr	r0, =0x1737
	bl	__MessageID
	b	.L1e4e

	.pool_aligned

.L1e48:
	ldr	r0, =0x1738
	bl	__MessageID
.L1e4e:
	bl	OvlFunc_909_2009984
	mov	r2, #0x14
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	ldr	r0, =0x1739
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	bl	OvlFunc_909_2009984
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x84
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0x12
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__Func_8092c40
	bl	OvlFunc_909_2009958
	mov	r0, #0
	mov	r1, #0
	mov	r5, #1
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L1f76
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.L1f76:
	bl	OvlFunc_909_2009984
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	cmp	r5, #0
	beq	.L1f98
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1f98:
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L205a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.L205a:
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L207a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.L207a:
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L209a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.L209a:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_SetPos
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r2, =gOvl_0200a5c0
	mov	r0, #0
	ldr	r1, =0x10013
	bl	__Func_8092a1c
	mov	r1, #0xd5
	mov	r0, #0x13
	lsl	r1, #2
	ldr	r2, =0x286
	bl	__Func_80921c4
	mov	r1, #0xd5
	mov	r0, #0x13
	lsl	r1, #2
	ldr	r2, =0x29a
	bl	__Func_80921c4
	mov	r1, #0xd8
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, #0xb1
	mov	r0, #0x13
	ldr	r1, =0x376
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xbf
	mov	r0, #0x13
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__Func_809218c
	mov	r2, #0xbf
	mov	r0, #0
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__Func_80921c4
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x322
	bl	__SetFlag
	ldr	r0, =0x84f
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2172
	ldr	r0, =0x84f
	bl	__SetFlag
	ldr	r0, =0x84a
	bl	__SetFlag
.L2172:
	mov	r0, #6
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_20099b0

.thumb_func_start OvlFunc_909_200a1bc
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	bl	__Func_8093554
	mov	r6, #0
	add	r0, #0x55
	strb	r6, [r0]
	mov	r1, #1
	mov	r0, #0x9d
	mov	r2, #0xbb
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #0
	bl	__Func_80933f8
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r5, #0x26
	mov	r0, #0x26
	mov	r1, #0x37
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x2e
	str	r3, [sp, #4]
	mov	r1, #0x37
	mov	r3, #1
	mov	r2, #4
	mov	r0, #0x2a
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xbe
	strh	r6, [r0, #6]
	ldr	r1, =0x2410000
	lsl	r2, #18
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0x94
	mov	r2, #0xbe
	strh	r6, [r0, #6]
	lsl	r1, #18
	lsl	r2, #18
	mov	r0, #0x13
	bl	__MapActor_SetPos
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r3, #0x90
	lsl	r3, #8
	mov	r2, #0xbf
	strh	r3, [r0, #6]
	ldr	r1, =0x2960000
	mov	r0, #0x11
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x9a
	mov	r2, #0xb6
	mov	r0, #0x15
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x9e
	mov	r2, #0xb6
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xa2
	mov	r2, #0xb6
	mov	r0, #0x17
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xa6
	mov	r2, #0xb6
	lsl	r2, #18
	lsl	r1, #18
	mov	r0, #0x18
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r5, .L2308	@ 0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r5, =0xfffc0000
	str	r5, [r0, #0xc]
	mov	r0, #0x16
	bl	__MapActor_GetActor
	str	r5, [r0, #0xc]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	b	.L2318

	.align	2, 0
.L2308:
	.word	0
	.pool

.L2318:
	str	r5, [r0, #0xc]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	str	r5, [r0, #0xc]
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	sub	r3, #0x39
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x13
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x9d
	mov	r2, #0xbf
	mov	r0, #0x13
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0x99
	mov	r2, #0xbf
	lsl	r2, #2
	mov	r0, #0
	lsl	r1, #2
	bl	__Func_80921c4
	mov	r1, #1
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	ldr	r0, =0x1746
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, #0xc3
	mov	r0, #0x13
	ldr	r1, =0x26e
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldr	r0, =0x202
	bl	__SetFlag
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_200a1bc

	.section .data
	.global .L299c
	.global .L29b4
	.global .L2c9c
	.global .L2ca8
	.global gOvl_0200a638

	.global gOvl_0200a5c0
	.global ActorCmd_ARRAY_909__0200a5c0
gOvl_0200a5c0:
ActorCmd_ARRAY_909__0200a5c0:
	.incbin "overlays/rom_79c738/orig.bin", 0x25c0, (0x25d4-0x25c0)
	.global gScript_909__0200a5d4
gScript_909__0200a5d4:
	.incbin "overlays/rom_79c738/orig.bin", 0x25d4, (0x2638-0x25d4)
gOvl_0200a638:
	.incbin "overlays/rom_79c738/orig.bin", 0x2638, (0x2920-0x2638)
	.global gOvl_0200a920
gOvl_0200a920:
	.incbin "overlays/rom_79c738/orig.bin", 0x2920, (0x299c-0x2920)
.L299c:
	.incbin "overlays/rom_79c738/orig.bin", 0x299c, (0x29b4-0x299c)
.L29b4:
	.incbin "overlays/rom_79c738/orig.bin", 0x29b4, (0x2c9c-0x29b4)
.L2c9c:
	.incbin "overlays/rom_79c738/orig.bin", 0x2c9c, (0x2ca8-0x2c9c)
.L2ca8:
	.incbin "overlays/rom_79c738/orig.bin", 0x2ca8

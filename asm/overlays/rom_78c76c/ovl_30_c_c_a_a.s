	.include "macros.inc"

.thumb_func_start OvlFunc_891_2008054
	push	{lr}
	ldr	r0, =0x818
	bl	__GetFlag
	cmp	r0, #0
	beq	.L6e
	ldr	r0, =0x813
	bl	__GetFlag
	cmp	r0, #0
	bne	.L82
	mov	r0, #3
	b	.L7a
.L6e:
	ldr	r0, =0x812
	bl	__GetFlag
	cmp	r0, #0
	bne	.L82
	mov	r0, #4
.L7a:
	bl	__Func_8091e9c
	mov	r0, #1
	b	.L86
.L82:
	mov	r0, #1
	neg	r0, r0
.L86:
	pop	{r1}
	bx	r1
.func_end OvlFunc_891_2008054

.thumb_func_start OvlFunc_891_2008098
	push	{r5, r6, r7, lr}
	sub	sp, #8
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x1c
	mov	r2, #0x11
	mov	r3, #8
	bl	__CopyMapTiles
	mov	r0, #0xc8
	bl	__PlaySound
	mov	r5, #0
	mov	r7, #2
	mov	r6, #1
.Lbc:
	mov	r1, #0x3d
	mov	r2, #0x11
	mov	r3, #0x28
	mov	r0, #0xa
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0x3d
	mov	r2, #0x11
	mov	r3, #0x28
	str	r7, [sp]
	str	r6, [sp, #4]
	add	r5, #1
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	cmp	r5, #0x16
	bne	.Lbc
	mov	r5, #4
	mov	r6, #3
	mov	r0, #0
	mov	r1, #0x3b
	mov	r2, #0xf
	mov	r3, #0x26
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x26
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #8
	mov	r1, #0x3c
	mov	r2, #0x11
	mov	r3, #0x27
	bl	__CopyMapTiles
	mov	r3, #0x11
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #2
	mov	r3, #1
	mov	r0, #0
	bl	__Func_8010704
	ldr	r0, =0x207
	bl	__SetFlag
	bl	OvlFunc_891_20096dc
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2008098

.thumb_func_start OvlFunc_891_2008150
	push	{r5, r6, r7, lr}
	bl	__CutsceneStart
	ldr	r7, =iwram_3001ebc
	mov	r6, #0xe0
	ldr	r2, [r7]
	mov	r3, #0x80
	lsl	r6, #1
	lsl	r3, #1
	mov	r5, #0xe4
	str	r3, [r2, r6]
	lsl	r5, #1
	mov	r3, #0x20
	str	r3, [r2, r5]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x90
	mov	r2, #0xe8
	lsl	r2, #16
	lsl	r1, #18
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r0, =0x101a
	bl	__MessageID
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #0x90
	mov	r2, #0x8c
	lsl	r2, #17
	mov	r0, #8
	lsl	r1, #18
	bl	__MapActor_SetPos
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	ldr	r0, =0x23e0000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	lsl	r1, #2
	mov	r2, #0xd8
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #2
	mov	r0, #5
	bl	__MapActor_Jump
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0x90
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x59999
	ldr	r1, =0xb333
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xb0
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	ldr	r0, =0x11f0000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	ldr	r0, =0x23e0000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xc0
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	mov	r2, #0xb8
	lsl	r1, #2
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r2, [r7]
	ldr	r3, =0x202
	str	r3, [r2, r6]
	mov	r6, #0x10
	str	r6, [r2, r5]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r1, #1
	mov	r2, #0xb0
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #16
	ldr	r0, =0x11f0000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xd4
	mov	r2, #0xc8
	lsl	r2, #16
	lsl	r1, #17
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_891_200a3a4
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r1, #0x90
	mov	r2, #0xb8
	mov	r0, #8
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #1
	mov	r2, #0xb4
	lsl	r2, #16
	mov	r3, #0
	neg	r1, r1
	ldr	r0, =0x23e0000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x13333
	ldr	r1, =0x2666
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0x9d
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	ldr	r0, =0x23e0000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_891_200a3a4
	mov	r0, #5
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #5
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #0x50
	bl	OvlFunc_891_200a3a4
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_891_200a3a4
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #5
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #5
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0xd7
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0x90
	lsl	r1, #2
	mov	r2, #0xd9
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x90
	mov	r0, #8
	lsl	r1, #2
	ldr	r2, =0x141
	bl	__Func_80921c4
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x39999
	ldr	r1, =0x7333
	bl	__Func_80933d4
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0x88
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	b	.L598

	.pool_aligned

.L598:
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L5ae
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.L5ae:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L5de
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__MapActor_TravelTo
.L5de:
	mov	r0, #5
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #5
	bl	__MapActor_SetPos
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldr	r1, [r7]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	add	r2, #0x44
	str	r2, [r3]
	sub	r2, #0x3c
	add	r3, r1, r2
	str	r6, [r3]
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2008150

.thumb_func_start OvlFunc_891_2008614
	push	{lr}
	bl	__CutsceneStart
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x90
	mov	r2, #0x94
	lsl	r2, #17
	lsl	r1, #18
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r0, =0x1004
	bl	__MessageID
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	ldr	r0, =0x23e0000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	lsl	r1, #2
	mov	r2, #0xd8
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #2
	mov	r0, #5
	bl	__MapActor_Jump
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0x90
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x59999
	ldr	r1, =0xb333
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xb0
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	ldr	r0, =0x11f0000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	ldr	r0, =0x23e0000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xc0
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	mov	r2, #0xb8
	lsl	r1, #2
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r2, #0
	mov	r1, #2
	mov	r0, #5
	bl	__MapActor_Jump
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #5
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #5
	mov	r2, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0x90
	mov	r0, #8
	lsl	r1, #2
	mov	r2, #0xd8
	bl	__Func_80921c4
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r1, #0xd8
	mov	r2, #0xc8
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_809218c
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0xab
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	ldr	r0, =0x23e0000
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x90
	mov	r0, #8
	lsl	r1, #2
	mov	r2, #0xd8
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xab
	mov	r3, #1
	ldr	r0, =0x23e0000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xc0
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	mov	r2, #0xb8
	lsl	r1, #2
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_891_200a3a4
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #5
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #5
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #5
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #5
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	b	.La4c

	.pool_aligned

.La4c:
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.La5e
	ldr	r0, =0x1010
	bl	__MessageID
	b	.La64
.La5e:
	ldr	r0, =0x1011
	bl	__MessageID
.La64:
	mov	r1, #6
	mov	r0, #8
	bl	OvlFunc_891_200a3a4
	ldr	r0, =0x1012
	bl	__MessageID
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0x90
	mov	r2, #0xd8
	lsl	r1, #2
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xbf
	mov	r3, #1
	ldr	r0, =0x23e0000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	mov	r2, #0xe8
	lsl	r1, #2
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0xd7
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r0, #8
	ldr	r1, =0x23e
	ldr	r2, =0x143
	bl	__Func_80921c4
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x39999
	ldr	r1, =0x7333
	bl	__Func_80933d4
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0x88
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #5
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lbf8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__MapActor_TravelTo
.Lbf8:
	mov	r0, #5
	bl	__MapActor_WaitMovement
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lc28
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lc28:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_SetPos
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x44
	str	r3, [r2]
	sub	r3, #0x3c
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2008614

.thumb_func_start OvlFunc_891_2008c8c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r0, #0
	mov	r10, r3
	sub	sp, #0x14
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r2, #0xb3
	ldr	r3, [r5, #0x10]
	lsl	r2, #16
	cmp	r3, r2
	bge	.Ld0c
	mov	r0, #0
	ldr	r1, =0x23f
	mov	r2, #0x84
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r3, r10
	ldr	r3, [r3]
	mov	r11, r3
	ldr	r3, [r5, #8]
	add	r7, sp, #8
	str	r3, [r7]
	ldr	r3, [r5, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r5, #0x10]
	mov	r2, r10
	str	r3, [r7, #8]
	str	r7, [r2]
	mov	r6, #0
	mov	r5, r7
.Lcec:
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__CutsceneWait
	cmp	r6, #0x1e
	bne	.Lcec
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r3, #1
	b	.Ld60
.Ld0c:
	mov	r0, #0
	ldr	r1, =0x241
	mov	r2, #0xde
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r3, [r5, #8]
	add	r7, sp, #8
	str	r3, [r7]
	ldr	r3, [r5, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r5, #0x10]
	mov	r2, r10
	ldr	r2, [r2]
	str	r3, [r7, #8]
	mov	r3, r10
	str	r7, [r3]
	mov	r11, r2
	mov	r6, #0
	mov	r5, r7
.Ld44:
	ldr	r3, [r5, #8]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__CutsceneWait
	cmp	r6, #0x1e
	bne	.Ld44
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r3, #2
.Ld60:
	mov	r9, r3
	mov	r2, #4
	mov	r6, #0
	mov	r8, r2
	mov	r5, #2
.Ld6a:
	mov	r3, r8
	str	r3, [sp]
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	mov	r0, #2
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #8
	bl	__CutsceneWait
	mov	r2, r8
	str	r2, [sp]
	mov	r0, #2
	mov	r1, #0x1e
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp, #4]
	add	r6, #1
	bl	__CopyMapTiles
	mov	r0, #8
	bl	__CutsceneWait
	cmp	r6, #6
	bne	.Ld6a
	mov	r3, #4
	mov	r6, #0
	mov	r8, r3
	mov	r5, #2
.Lda8:
	mov	r2, r8
	str	r2, [sp]
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	mov	r0, #2
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0x1e
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp, #4]
	add	r6, #1
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	cmp	r6, #0xa
	bne	.Lda8
	mov	r2, #4
	mov	r6, #0
	mov	r8, r2
	mov	r5, #2
.Lde6:
	mov	r3, r8
	str	r3, [sp]
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	mov	r0, #2
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #2
	bl	__CutsceneWait
	mov	r2, r8
	str	r2, [sp]
	mov	r0, #2
	mov	r1, #0x1e
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp, #4]
	add	r6, #1
	bl	__CopyMapTiles
	mov	r0, #2
	bl	__CutsceneWait
	cmp	r6, #0xc
	bne	.Lde6
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r5, #4
	mov	r0, #2
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #8
	mov	r3, #0x28
	mov	r1, #0x37
	mov	r2, #0x20
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r3, r9
	cmp	r3, #1
	bne	.Le68
	mov	r6, #0
	mov	r5, r7
.Le52:
	ldr	r3, [r5, #8]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__CutsceneWait
	cmp	r6, #0x1e
	bne	.Le52
	b	.Le88
.Le68:
	mov	r3, r9
	cmp	r3, #2
	bne	.Le88
	mov	r6, #0
	mov	r5, r7
.Le72:
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, #1
	add	r6, #1
	bl	__CutsceneWait
	cmp	r6, #0x1e
	bne	.Le72
.Le88:
	mov	r3, r11
	mov	r2, r10
	str	r3, [r2]
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2008c8c

.thumb_func_start OvlFunc_891_2008eb0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	add	r3, #0xe4
	ldr	r2, [r3]
	ldr	r6, =.L2a50
	cmp	r2, #0
	bge	.Led0
	ldr	r1, =0xffff
	add	r2, r1
.Led0:
	ldr	r3, [r3, #4]
	asr	r2, #16
	mov	r10, r2
	cmp	r3, #0
	bge	.Lede
	ldr	r2, =0xffff
	add	r3, r2
.Lede:
	asr	r3, #16
	mov	r2, #0x50
	sub	r2, r3
	mov	r8, r2
	mov	r3, r8
	add	r3, #0x10
	cmp	r3, #0xaf
	bhi	.Lfb2
	ldr	r3, =.L2974
	ldr	r3, [r3]
	mov	r1, r10
	asr	r3, #10
	sub	r5, r3, r1
	mov	r3, #0x20
	neg	r3, r3
	orr	r5, r3
	ldr	r2, =0x1ff
	ldr	r3, =0xfffffe00
	mov	r7, #0
	mov	r11, r2
	mov	r9, r3
.Lf08:
	ldrh	r3, [r6, #6]
	mov	r2, r5
	mov	r1, r11
	and	r2, r1
	mov	r1, r9
	and	r3, r1
	orr	r3, r2
	mov	r2, r8
	strh	r3, [r6, #6]
	strb	r2, [r6, #4]
	mov	r0, r6
	mov	r1, #0
	add	r7, #1
	bl	__Func_8003dec
	add	r5, #0x20
	add	r6, #0xc
	cmp	r7, #8
	bls	.Lf08
	ldr	r3, =.L2974
	ldr	r3, [r3]
	mov	r1, r10
	asr	r3, #9
	sub	r5, r3, r1
	mov	r3, #0x20
	neg	r3, r3
	orr	r5, r3
	ldr	r2, =0x1ff
	ldr	r3, =0xfffffe00
	mov	r7, #0
	mov	r11, r2
	mov	r9, r3
.Lf48:
	ldrh	r3, [r6, #6]
	mov	r2, r5
	mov	r1, r11
	and	r2, r1
	mov	r1, r9
	and	r3, r1
	orr	r3, r2
	mov	r2, r8
	strh	r3, [r6, #6]
	strb	r2, [r6, #4]
	mov	r0, r6
	mov	r1, #0
	add	r7, #1
	bl	__Func_8003dec
	add	r5, #0x20
	add	r6, #0xc
	cmp	r7, #8
	bls	.Lf48
	ldr	r3, =.L2974
	ldr	r3, [r3]
	mov	r1, r10
	asr	r3, #8
	sub	r5, r3, r1
	mov	r3, #0x20
	neg	r3, r3
	orr	r5, r3
	ldr	r1, =0xfffffe00
	ldr	r3, =0x1ff
	mov	r2, #8
	mov	r7, #0
	add	r8, r2
	mov	r9, r3
	mov	r10, r1
.Lf8c:
	mov	r2, r5
	mov	r3, r9
	and	r2, r3
	ldrh	r3, [r6, #6]
	mov	r1, r10
	and	r3, r1
	orr	r3, r2
	mov	r2, r8
	strh	r3, [r6, #6]
	strb	r2, [r6, #4]
	mov	r0, r6
	mov	r1, #0
	add	r7, #1
	bl	__Func_8003dec
	add	r5, #0x20
	add	r6, #0xc
	cmp	r7, #8
	bls	.Lf8c
.Lfb2:
	ldr	r2, =.L2974
	ldr	r3, [r2]
	add	r3, #0x80
	str	r3, [r2]
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2008eb0


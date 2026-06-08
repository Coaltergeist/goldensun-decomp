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
	bl	__Func_8091e20
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
	bl	__Func_8092b94
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
	bl	__Func_8092064
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
	bl	__Func_8092560
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
	bl	__Func_8092548
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
	bl	__Func_8092560
	mov	r1, #0xc0
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #10
	bl	__Func_8092064
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
	bl	__Func_8091e20
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
	bl	__Func_8091e20
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
	bl	__Func_8091e20
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
	bl	__Func_8091e20
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
	bl	__Func_8092548
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
	bl	__Func_8092548
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
	bl	__Func_8092548
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
	bl	__Func_8092548
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
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
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
	bl	__Func_8092560
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
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
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
	bl	__Func_8092128
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
	bl	__Func_8092128
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
	bl	__Func_8091750
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
	bl	__Func_8091e20
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
	bl	__Func_8092b94
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
	bl	__Func_8092064
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
	bl	__Func_8092560
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
	bl	__Func_8092548
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
	bl	__Func_8092560
	mov	r1, #0xc0
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #10
	bl	__Func_8092064
	mov	r1, #0x90
	mov	r2, #0xb8
	lsl	r1, #2
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
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
	bl	__Func_8092548
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
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092560
	mov	r2, #0
	mov	r1, #2
	mov	r0, #5
	bl	__Func_8092560
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
	bl	__Func_8092548
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
	bl	__Func_8092560
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
	bl	__Func_8092064
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
	bl	__Func_8092560
	mov	r1, #0xc0
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #10
	bl	__Func_8092064
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
	bl	__Func_8092548
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
	bl	__Func_8092548
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
	bl	__Func_8092548
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
	bl	__Func_8092b94
	b	.La64
.La5e:
	ldr	r0, =0x1011
	bl	__Func_8092b94
.La64:
	mov	r1, #6
	mov	r0, #8
	bl	OvlFunc_891_200a3a4
	ldr	r0, =0x1012
	bl	__Func_8092b94
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
	bl	__Func_8092548
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
	bl	__Func_8092560
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
	bl	__Func_8092064
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
	bl	__Func_8092548
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
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
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
	bl	__Func_8092128
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
	bl	__Func_8092128
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
	bl	__Func_8091750
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

.thumb_func_start OvlFunc_891_2008fe4
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bne	.Lffa
	bl	__Func_8093c00
.Lffa:
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2008fe4

.thumb_func_start OvlFunc_891_2009000
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #7
	cmp	r3, r2
	bne	.L1016
	bl	__Func_8093c00
.L1016:
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2009000

.thumb_func_start OvlFunc_891_200901c
	push	{lr}
	ldr	r0, =0x80b
	bl	__GetFlag
	cmp	r0, #0
	bne	.L104c
	bl	__CutsceneStart
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r0, #9
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_8092064
	mov	r1, #0xfc
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x98
	bl	__Func_80921c4
	bl	__Func_8091750
.L104c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_200901c

.thumb_func_start OvlFunc_891_200905c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	sub	sp, #8
	bl	OvlFunc_891_20094b8
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r2, r0
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x12
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #1
	mov	r0, #0x12
	bl	__Func_8092b08
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #3
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bls	.L10e4
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.L10e4:
	ldr	r0, =0x818
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1186
	mov	r1, #0x90
	mov	r2, #0xb2
	mov	r0, #0x12
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xc9
	mov	r2, #0xc9
	mov	r0, #0x11
	lsl	r1, #19
	lsl	r2, #19
	bl	__MapActor_SetPos
	mov	r1, #0xe8
	mov	r2, #0xf0
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0xac
	mov	r2, #0xf0
	mov	r0, #0xc
	lsl	r1, #17
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0xe8
	mov	r2, #0xf0
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r5, #4
	mov	r3, #0x26
	mov	r6, #3
	mov	r0, #0
	mov	r1, #0x3b
	mov	r2, #0xf
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0xac
	mov	r2, #0xf0
	mov	r0, #0xc
	lsl	r1, #17
	lsl	r2, #15
	bl	__MapActor_SetPos
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
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	b	.L122a
.L1186:
	ldr	r0, =0x816
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1234
	ldr	r0, =0x817
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1234
	mov	r1, #0xe8
	mov	r2, #0xf0
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0xac
	mov	r2, #0xf0
	mov	r0, #0xc
	lsl	r1, #17
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r5, #2
	mov	r3, #8
	mov	r0, #0
	mov	r1, #0x1c
	mov	r2, #0x11
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r1, #0xe8
	mov	r2, #0xf0
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r3, #3
	str	r3, [sp, #4]
	mov	r6, #4
	mov	r8, r3
	mov	r0, #0
	mov	r3, #0x26
	mov	r1, #0x3b
	mov	r2, #0xf
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r1, #0xac
	mov	r2, #0xf0
	mov	r0, #0xc
	lsl	r1, #17
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #4
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x26
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #8
	mov	r1, #0x3c
	mov	r2, #0x11
	mov	r3, #0x27
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #0x11
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
.L122a:
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
	b	.L128c
.L1234:
	ldr	r0, =0x816
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1260
	mov	r1, #0xe8
	mov	r2, #0xf0
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x3b
	mov	r2, #0xf
	mov	r3, #0x26
	bl	__CopyMapTiles
.L1260:
	ldr	r0, =0x817
	bl	__GetFlag
	cmp	r0, #0
	beq	.L128c
	mov	r1, #0xac
	mov	r2, #0xf0
	mov	r0, #0xc
	lsl	r1, #17
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #4
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x26
	bl	__CopyMapTiles
.L128c:
	ldr	r0, =0x80b
	bl	__GetFlag
	cmp	r0, #0
	beq	.L12dc
	mov	r1, #0xfc
	mov	r2, #0x98
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r5, #2
	mov	r6, #1
	mov	r0, #2
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #2
	mov	r1, #0x1e
	mov	r2, #0x10
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x37
	mov	r2, #0x20
	mov	r3, #0x28
	bl	__CopyMapTiles
.L12dc:
	ldr	r0, =0x80c
	bl	__GetFlag
	cmp	r0, #0
	beq	.L132c
	mov	r1, #0xa2
	mov	r2, #0x98
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r5, #2
	mov	r6, #1
	mov	r0, #4
	mov	r1, #0x1c
	mov	r2, #0x24
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	mov	r1, #0x1e
	mov	r2, #0x12
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #4
	mov	r1, #0x37
	mov	r2, #0x24
	mov	r3, #0x28
	bl	__CopyMapTiles
.L132c:
	ldr	r0, =0x80d
	bl	__GetFlag
	cmp	r0, #0
	beq	.L137a
	mov	r1, #0xfc
	mov	r2, #0xc8
	mov	r0, #0xd
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r5, #1
	mov	r6, #2
	mov	r0, #2
	mov	r1, #0x1d
	mov	r2, #0x22
	mov	r3, #0xb
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #2
	mov	r1, #0x1f
	mov	r2, #0x10
	mov	r3, #0xb
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #4
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0x3a
	mov	r2, #0x20
	mov	r3, #0x2b
	str	r5, [sp, #4]
	bl	__CopyMapTiles
.L137a:
	ldr	r0, =0x80e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L13c8
	mov	r1, #0xa2
	mov	r2, #0xc8
	mov	r0, #0xf
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r5, #1
	mov	r6, #2
	mov	r0, #4
	mov	r1, #0x1d
	mov	r2, #0x24
	mov	r3, #0xb
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	mov	r1, #0x1f
	mov	r2, #0x12
	mov	r3, #0xb
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #4
	str	r3, [sp]
	mov	r0, #4
	mov	r1, #0x3a
	mov	r2, #0x24
	mov	r3, #0x2b
	str	r5, [sp, #4]
	bl	__CopyMapTiles
.L13c8:
	ldr	r5, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L1434
	ldr	r0, =0x30a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1420
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L1434

	.pool_aligned

.L1420:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1434
	bl	OvlFunc_891_2008150
	ldr	r0, =0x30a
	bl	__SetFlag
.L1434:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.L1476
	ldr	r0, =0x30b
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1462
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L1476
.L1462:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1476
	bl	OvlFunc_891_2008614
	ldr	r0, =0x30b
	bl	__SetFlag
.L1476:
	ldr	r0, =0x814
	bl	__GetFlag
	cmp	r0, #0
	beq	.L149a
	mov	r0, #0x8d
	bl	__Func_8091ff0
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	bl	__StartEarthquake
.L149a:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_891_200905c

.thumb_func_start OvlFunc_891_20094b8
	push	{r5, r6, lr}
	mov	r1, #0x80
	lsl	r1, #3
	mov	r0, #0xe
	ldr	r5, =.L2a50
	bl	__galloc_ewram
	mov	r6, r0
	mov	r1, r6
	ldr	r0, =.L256c
	bl	__DecompressLZ1
	bl	__AllocSpriteSlot
	mov	r1, #0x80
	mov	r2, r6
	bl	__UploadSpriteGFX
	mov	r3, #0xac
	lsl	r3, #8
	ldr	r1, =0x40004000
	mov	r2, #0
	mov	r4, #0
	orr	r0, r3
.L14e8:
	mov	r3, r5
	stmia	r3!, {r4}
	stmia	r3!, {r1}
	add	r2, #1
	add	r5, #0xc
	str	r0, [r3]
	cmp	r2, #8
	bls	.L14e8
	bl	__AllocSpriteSlot
	mov	r2, r6
	add	r2, #0x80
	mov	r1, #0x80
	bl	__UploadSpriteGFX
	mov	r3, #0xdc
	lsl	r3, #8
	ldr	r1, =0x40004000
	mov	r2, #0
	mov	r4, #0
	orr	r0, r3
.L1512:
	mov	r3, r5
	stmia	r3!, {r4}
	stmia	r3!, {r1}
	add	r2, #1
	add	r5, #0xc
	str	r0, [r3]
	cmp	r2, #8
	bls	.L1512
	bl	__AllocSpriteSlot
	mov	r3, #0x80
	lsl	r3, #1
	add	r2, r6, r3
	mov	r1, #0x80
	bl	__UploadSpriteGFX
	mov	r3, #0xc0
	lsl	r3, #4
	ldr	r1, =0x40004000
	mov	r2, #0
	mov	r4, #0
	orr	r0, r3
.L153e:
	mov	r3, r5
	stmia	r3!, {r4}
	stmia	r3!, {r1}
	add	r2, #1
	add	r5, #0xc
	str	r0, [r3]
	cmp	r2, #8
	bls	.L153e
	mov	r0, #0xe
	bl	__gfree
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_891_2008eb0
	bl	__StartTask
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_20094b8

.thumb_func_start OvlFunc_891_2009574
	push	{lr}
	mov	r0, #9
	mov	r1, #0x1f
	mov	r2, #9
	bl	OvlFunc_891_2009be8
	cmp	r0, #0
	beq	.L1588
	bl	OvlFunc_891_2009c14
.L1588:
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2009574

.thumb_func_start OvlFunc_891_200958c
	push	{lr}
	mov	r0, #0xb
	mov	r1, #0x28
	mov	r2, #9
	bl	OvlFunc_891_2009be8
	cmp	r0, #0
	beq	.L15a0
	bl	OvlFunc_891_2009d14
.L15a0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_200958c

.thumb_func_start OvlFunc_891_20095a4
	push	{lr}
	mov	r0, #0xd
	mov	r1, #0x1f
	mov	r2, #0xc
	bl	OvlFunc_891_2009be8
	cmp	r0, #0
	beq	.L15b8
	bl	OvlFunc_891_2009e10
.L15b8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_20095a4

.thumb_func_start OvlFunc_891_20095bc
	push	{lr}
	mov	r0, #0xf
	mov	r1, #0x28
	mov	r2, #0xc
	bl	OvlFunc_891_2009be8
	cmp	r0, #0
	beq	.L15d0
	bl	OvlFunc_891_2009f0c
.L15d0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_20095bc

.thumb_func_start OvlFunc_891_20095d4
	push	{lr}
	mov	r1, #0xd0
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #15
	mov	r3, #0
	bl	__Func_8012078
	mov	r0, #0xa
	mov	r1, #0xe
	mov	r2, #7
	bl	OvlFunc_891_2009be8
	cmp	r0, #0
	beq	.L15f8
	bl	OvlFunc_891_200a244
.L15f8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_20095d4

.thumb_func_start OvlFunc_891_20095fc
	push	{lr}
	mov	r1, #0xb0
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #15
	mov	r3, #0
	bl	__Func_8012078
	mov	r0, #0xc
	mov	r1, #0x15
	mov	r2, #7
	bl	OvlFunc_891_2009be8
	cmp	r0, #0
	beq	.L1620
	bl	OvlFunc_891_200a2f4
.L1620:
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_20095fc

.thumb_func_start OvlFunc_891_2009624
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #8
	bne	.L1666
	mov	r3, r5
	sub	r3, #0x11
	cmp	r3, #1
	bhi	.L1666
	mov	r1, #0x88
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	mov	r3, #0xff
	bl	__Func_8012078
	mov	r1, #0x90
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	mov	r3, #0xff
	bl	__Func_8012078
.L1666:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2009624

.thumb_func_start OvlFunc_891_200966c
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #7
	bne	.L169e
	mov	r3, r5
	sub	r3, #0xd
	cmp	r3, #1
	bhi	.L169e
	mov	r1, #0xd0
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #15
	mov	r3, #0xff
	bl	__Func_8012078
.L169e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_200966c

.thumb_func_start OvlFunc_891_20096a4
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #7
	bne	.L16d6
	mov	r3, r5
	sub	r3, #0x15
	cmp	r3, #1
	bhi	.L16d6
	mov	r1, #0xb0
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #15
	mov	r3, #0xff
	bl	__Func_8012078
.L16d6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_20096a4

.thumb_func_start OvlFunc_891_20096dc
	push	{r5, r6, lr}
	mov	r0, #0x11
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r1, #0x88
	mov	r2, #0x80
	mov	r6, r0
	lsl	r1, #17
	mov	r0, #2
	lsl	r2, #16
	mov	r3, #0
	bl	__Func_8012078
	mov	r1, #0x90
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	mov	r3, #0
	bl	__Func_8012078
	cmp	r6, #0
	bne	.L170e
	b	.L1924
.L170e:
	ldr	r5, [r6, #0x10]
	asr	r5, #20
	bl	__CutsceneStart
	cmp	r5, #8
	beq	.L171c
	b	.L1920
.L171c:
	ldr	r0, =0x207
	bl	__GetFlag
	cmp	r0, #0
	bne	.L174a
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #19
	cmp	r3, #0x11
	bhi	.L174a
	mov	r0, #0
	ldr	r1, =0x121
	mov	r2, #0x9e
	bl	__Func_80921c4
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r0, #6]
.L174a:
	ldr	r0, =0x816
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1756
	b	.L1920
.L1756:
	ldr	r0, =0x817
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1762
	b	.L1920
.L1762:
	ldr	r0, =0x818
	bl	__SetFlag
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x8f
	mov	r1, #1
	mov	r2, #0x92
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x11
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	strb	r3, [r0]
	lsl	r1, #10
	mov	r0, #0x11
	bl	__Func_8092064
	mov	r3, r6
	mov	r5, #0
	add	r3, #0x55
	strb	r5, [r3]
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_8092b08
	mov	r0, #0xbd
	bl	__PlaySound
	mov	r1, #0x90
	lsl	r1, #1
	mov	r2, #0xb2
	mov	r0, #0x11
	bl	__Func_8092128
	mov	r0, #8
	bl	__CutsceneWait
	mov	r1, #0x90
	mov	r2, #0xb2
	mov	r0, #0x12
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	str	r3, [r6, #0x40]
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	str	r5, [r6, #8]
	str	r5, [r6, #0xc]
	str	r5, [r6, #0x10]
	str	r5, [r6, #0x24]
	str	r5, [r6, #0x28]
	str	r5, [r6, #0x2c]
	bl	__MapActor_SetPos
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x23
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xbc
	bl	__PlaySound
	ldr	r0, =0x80b
	bl	__GetFlag
	cmp	r0, #0
	beq	.L18ec
	ldr	r0, =0x80c
	bl	__GetFlag
	cmp	r0, #0
	beq	.L18ec
	ldr	r0, =0x80d
	bl	__GetFlag
	cmp	r0, #0
	beq	.L18ec
	ldr	r0, =0x80e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L18ec
	ldr	r0, =0x80f
	bl	__SetFlag
.L18ec:
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x1038
	mov	r1, #1
	bl	__Func_801776c
	mov	r3, #8
	mov	r5, #0x11
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #2
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #7
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #9
	mov	r2, #2
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
.L1920:
	bl	__Func_8091750
.L1924:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_20096dc

.thumb_func_start OvlFunc_891_200995c
	push	{lr}
	mov	r0, #0x11
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L19d6
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #8
	bne	.L19d6
	bl	__CutsceneStart
	mov	r0, #0xb9
	bl	__PlaySound
	mov	r0, #0x11
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_8092064
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0
	bl	__Func_8092064
	mov	r0, #0x11
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #8
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x88
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r0, #0
	bl	__Func_8092128
	mov	r1, #0x90
	lsl	r1, #1
	mov	r2, #0x78
	mov	r0, #0x11
	bl	__Func_8092128
	mov	r0, #0x11
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	bl	__Func_8091750
.L19d6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_200995c

.thumb_func_start OvlFunc_891_20099e4
	push	{lr}
	sub	sp, #4
	mov	r3, #9
	str	r3, [sp]
	mov	r0, #9
	mov	r1, #0x1f
	mov	r2, #9
	mov	r3, #0x1e
	bl	OvlFunc_891_2009b44
	bl	OvlFunc_891_2009c14
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_20099e4

.thumb_func_start OvlFunc_891_2009a04
	push	{lr}
	sub	sp, #4
	mov	r3, #9
	str	r3, [sp]
	mov	r0, #0xb
	mov	r1, #0x28
	mov	r2, #9
	mov	r3, #0x29
	bl	OvlFunc_891_2009b44
	bl	OvlFunc_891_2009d14
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2009a04

.thumb_func_start OvlFunc_891_2009a24
	push	{lr}
	sub	sp, #4
	mov	r3, #0xc
	str	r3, [sp]
	mov	r0, #0xd
	mov	r1, #0x1f
	mov	r2, #0xc
	mov	r3, #0x1e
	bl	OvlFunc_891_2009b44
	bl	OvlFunc_891_2009e10
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2009a24

.thumb_func_start OvlFunc_891_2009a44
	push	{lr}
	sub	sp, #4
	mov	r3, #0xc
	str	r3, [sp]
	mov	r0, #0xf
	mov	r1, #0x28
	mov	r2, #0xc
	mov	r3, #0x29
	bl	OvlFunc_891_2009b44
	bl	OvlFunc_891_2009f0c
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2009a44

.thumb_func_start OvlFunc_891_2009a64
	push	{lr}
	sub	sp, #4
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #0xa
	mov	r1, #0xe
	mov	r2, #7
	mov	r3, #0xd
	bl	OvlFunc_891_2009b44
	bl	OvlFunc_891_200a244
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2009a64


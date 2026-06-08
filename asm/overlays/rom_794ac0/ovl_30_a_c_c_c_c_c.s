	.include "macros.inc"

.thumb_func_start OvlFunc_899_200a758
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r3, =gState
	sub	r2, #0x47
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #5
	sub	sp, #8
	cmp	r3, #0xc
	bls	.L277c
	b	.L2b92
.L277c:
	ldr	r2, =.L2784
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2784:
	.word	.L27b8
	.word	.L2b92
	.word	.L2840
	.word	.L2b92
	.word	.L2b92
	.word	.L27d6
	.word	.L2840
	.word	.L289c
	.word	.L296a
	.word	.L296a
	.word	.L2a12
	.word	.L2ab2
	.word	.L2b2c
.L27b8:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	str	r5, [r0, #0xc]
	mov	r0, #8
	bl	__MapActor_GetActor
	str	r5, [r0, #0x14]
	b	.L2b92
.L27d6:
	mov	r0, #0x85
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L27fc
	mov	r1, #0xbc
	mov	r2, #0xbc
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
.L27fc:
	ldr	r0, =0x856
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2810
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.L2810:
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.L281c
	b	.L2b92
.L281c:
	mov	r1, #0x86
	mov	r2, #0xe8
	lsl	r2, #17
	mov	r0, #0x10
	lsl	r1, #18
	bl	__MapActor_SetPos
	mov	r0, #0x10
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r1, #0xa0
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	b	.L2b92
.L2840:
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2884
	mov	r1, #0x8e
	mov	r2, #0xa2
	lsl	r2, #18
	mov	r0, #0x12
	lsl	r1, #18
	bl	__MapActor_SetPos
	mov	r0, #0x12
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x8e
	mov	r2, #0x80
	mov	r3, #0xa8
	lsl	r1, #18
	mov	r0, #0xe7
	lsl	r2, #13
	lsl	r3, #18
	bl	OvlFunc_899_200c698
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_899_200a71c
	b	.L28de
.L2884:
	ldr	r0, =0x853
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2890
	b	.L2b92
.L2890:
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L2b92
.L289c:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L28e6
	ldr	r0, =0x852
	bl	__GetFlag
	cmp	r0, #0
	beq	.L28e6
	ldr	r0, =0x853
	bl	__GetFlag
	cmp	r0, #0
	bne	.L28e6
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L28e6
	mov	r3, #0xe
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_899_200aba0
.L28de:
	lsl	r1, #4
	bl	__StartTask
	b	.L2b92
.L28e6:
	ldr	r0, =0x856
	bl	__GetFlag
	cmp	r0, #0
	beq	.L290a
	mov	r1, #0xf0
	mov	r2, #0xae
	mov	r0, #0x19
	lsl	r1, #15
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.L290a:
	ldr	r0, =0x852
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2916
	b	.L2b92
.L2916:
	mov	r0, #0xe
	mov	r5, #0xe
	mov	r6, #0x2c
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x853
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2946
	mov	r0, #0xe
	mov	r1, #0x32
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	b	.L2b92
.L2946:
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r3, #5
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r3, #4
	add	r0, #0x64
	mov	r1, #0xc8
	strh	r3, [r0]
	lsl	r1, #4
	ldr	r0, =OvlFunc_899_200aba0
	bl	__StartTask
	b	.L2b92
.L296a:
	mov	r0, #2
	bl	__CutsceneWait
	mov	r5, #2
	mov	r6, #0xa
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #0x23
	mov	r3, #0x14
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #0x5f
	mov	r3, #0x14
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #0x23
	mov	r3, #0x50
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r5, #4
	mov	r6, #8
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #0x2e
	mov	r3, #0x15
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #2
	mov	r2, #0x2e
	mov	r3, #0x51
	mov	r0, #0x36
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r0, =0x859
	bl	__GetFlag
	cmp	r0, #0
	bne	.L29f0
	b	.L2b92
.L29f0:
	mov	r1, #0xa9
	mov	r0, #0x1a
	lsl	r1, #18
	ldr	r2, =0x19b0000
	bl	__MapActor_SetPos
	mov	r3, #0x29
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x65
	mov	r1, #0x18
	mov	r2, #3
	mov	r3, #4
	bl	__Func_8010704
	b	.L2b92
.L2a12:
	mov	r0, #2
	bl	__CutsceneWait
	mov	r5, #2
	mov	r6, #8
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #0x2c
	mov	r3, #0x15
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #0x2c
	mov	r3, #0x51
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	bl	__CutsceneStart
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2a6a
	mov	r0, #0xf
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #2
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x11
	mov	r1, #2
	bl	__MapActor_SetAnim
	b	.L2b92
.L2a6a:
	mov	r1, #0xce
	mov	r2, #0xe4
	mov	r0, #8
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	ldr	r0, =0x854
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2a8c
	bl	OvlFunc_899_200adb4
	bl	__CutsceneEnd
	b	.L2b92
.L2a8c:
	mov	r1, #7
	mov	r0, #8
	bl	__MapActor_SetAnim
	bl	OvlFunc_899_200c5cc
	mov	r0, #0x11
	bl	__PlaySound
	ldr	r0, =0x12c3
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0xa
	bl	OvlFunc_899_200c5f4
	bl	__CutsceneEnd
	b	.L2b92
.L2ab2:
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r5, #0x2c
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #2
	mov	r3, #8
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0x51
	str	r3, [sp, #4]
	mov	r0, #0x36
	mov	r3, #8
	mov	r1, #2
	mov	r2, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r1, #0xce
	mov	r2, #0xe4
	mov	r0, #8
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	bl	OvlFunc_899_200abf0
	mov	r0, #0x10
	bl	__Func_8091e9c
	b	.L2b92

	.pool_aligned

.L2b2c:
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r5, #0x2c
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #2
	mov	r3, #8
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0x51
	str	r3, [sp, #4]
	mov	r0, #0x36
	mov	r1, #2
	mov	r2, #2
	mov	r3, #8
	str	r5, [sp]
	bl	__Func_80105d4
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2b74
	mov	r1, #0xce
	mov	r2, #0xe4
	mov	r0, #8
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	bl	OvlFunc_899_200afd4
	bl	OvlFunc_899_200b6f8
	b	.L2b92
.L2b74:
	mov	r0, #0xf
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #2
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x11
	mov	r1, #2
	bl	__MapActor_SetAnim
.L2b92:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200a758

.thumb_func_start OvlFunc_899_200aba0
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x19
	bl	__MapActor_GetActor
	ldr	r3, [r5, #0x10]
	mov	r8, r0
	ldr	r0, [r6, #0x10]
	ldr	r1, [r6, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	__atan2
	strh	r0, [r5, #6]
	mov	r2, r8
	ldr	r3, [r2, #0x10]
	ldr	r0, [r6, #0x10]
	ldr	r1, [r6, #8]
	sub	r0, r3
	ldr	r3, [r2, #8]
	sub	r1, r3
	bl	__atan2
	mov	r3, r8
	strh	r0, [r3, #6]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200aba0

.thumb_func_start OvlFunc_899_200abf0
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #0xc6
	mov	r2, #0xd0
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc8
	mov	r2, #0xc8
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc2
	mov	r2, #0xd0
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xb
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xc4
	mov	r2, #0xe0
	mov	r0, #0
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xca
	mov	r2, #0xd8
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc2
	mov	r2, #0xd8
	lsl	r2, #17
	mov	r0, #2
	lsl	r1, #18
	bl	__MapActor_SetPos
	mov	r0, #0
	mov	r1, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #0x13
	bl	__MapActor_SetAnim
	mov	r1, #0x13
	mov	r0, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, #2
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xb0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	mov	r1, #0
	mov	r0, #0
	bl	__SetCameraTarget
	bl	__Func_8093530
	bl	__Func_800fe9c
	bl	OvlFunc_899_200c5cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r1, #3
	mov	r0, #0xa
	bl	OvlFunc_899_200c63c
	ldr	r0, =0x12dd
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r0, #8
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #0xca
	mov	r2, #0xe4
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xc6
	mov	r2, #0xe4
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x1e
	mov	r0, #0xc
	mov	r1, #0
	bl	OvlFunc_899_200c60c
	mov	r0, #0xc
	mov	r1, #0x3c
	bl	OvlFunc_899_200c5f4
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200abf0

.thumb_func_start OvlFunc_899_200adb4
	push	{r5, r6, lr}
	mov	r1, #0xc6
	mov	r2, #0xd0
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc8
	mov	r2, #0xc8
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc2
	mov	r2, #0xd0
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc6
	mov	r2, #0xdc
	mov	r0, #0
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xca
	mov	r2, #0xd8
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc6
	mov	r2, #0xe4
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	ldr	r5, =iwram_3001ebc
	ldr	r3, =0x209
	ldr	r2, [r5]
	mov	r6, #0xe0
	lsl	r6, #1
	mov	r1, #0
	str	r3, [r2, r6]
	mov	r0, #0
	bl	__SetCameraTarget
	bl	__Func_8093530
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, [r5]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x20
	str	r2, [r3]
	bl	OvlFunc_899_200c5cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, =0x12e1
	bl	__MessageID
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0x1e
	mov	r0, #0xa
	mov	r1, #0xb
	bl	OvlFunc_899_200c624
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r2, #0x1e
	mov	r0, #0xa
	mov	r1, #0xc
	bl	OvlFunc_899_200c624
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	mov	r2, #0x28
	bl	OvlFunc_899_200c63c
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	ldr	r2, [r5]
	mov	r3, #0x80
	ldr	r5, =0x15
	lsl	r3, #2
	str	r3, [r2, r6]
	mov	r0, r5
	mov	r1, #0x11
	bl	__Func_8091f90
	mov	r0, r5
	mov	r1, #0x10
	bl	__Func_8091fa8
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0xc
	mov	r1, #5
	bl	__Func_8091eb0
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200adb4


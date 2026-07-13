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


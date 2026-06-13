	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200b068
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #1
	sub	sp, #0xc
	bl	__CutsceneWait
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L308c
	bl	OvlFunc_968_2008558
.L308c:
	mov	r0, #0x88
	lsl	r0, #1
	bl	__SetFlag
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r0, r3, r2
	mov	r3, #0x81
	lsl	r3, #2
	str	r3, [r0]
	ldr	r1, =gState
	ldrsh	r2, [r1, r2]
	ldr	r3, =0xb5
	cmp	r2, r3
	bne	.L3112
	mov	r3, #0x80
	lsl	r3, #1
	str	r3, [r0]
	ldr	r0, =0x981
	bl	__GetFlag
	cmp	r0, #0
	bne	.L30c6
	mov	r0, #8
	bl	OvlFunc_968_200b00c
	b	.L30da
.L30c6:
	mov	r3, #7
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #7
	mov	r1, #0x11
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
.L30da:
	mov	r0, #9
	bl	OvlFunc_968_200b00c
	mov	r0, #0xa
	bl	OvlFunc_968_200b00c
	mov	r0, #0xb
	bl	OvlFunc_968_200b00c
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_8092b08
	mov	r0, #0xc
	bl	OvlFunc_968_200b00c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_8092b08
	mov	r0, #0xd
	bl	OvlFunc_968_200b00c
	mov	r0, #0xe
	bl	OvlFunc_968_200b00c
	bl	.L3fa6
.L3112:
	ldr	r3, =0xb6
	cmp	r2, r3
	beq	.L311a
	b	.L33a8
.L311a:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	r3, #1
	cmp	r3, #0x19
	bls	.L312e
	bl	.L3fa6
.L312e:
	ldr	r2, =.L3138
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L3138:
	.word	.L31a0
	.word	.L31a0
	.word	.L31b2
	.word	.L31b2
	.word	.L31aa
	.word	.L31b2
	.word	.L3376
	.word	.L3376
	.word	.L3376
	.word	.L3376
	.word	.L3376
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3fa6
	.word	.L31bc
	.word	.L31bc
	.word	.L3348
	.word	.L3348
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3342
.L31a0:
	mov	r0, #8
	bl	OvlFunc_968_200b00c
	bl	.L3fa6
.L31aa:
	mov	r0, #0x90
	lsl	r0, #1
	bl	__ClearFlag
.L31b2:
	mov	r0, #9
	bl	OvlFunc_968_200b00c
	bl	.L3fa6
.L31bc:
	ldr	r0, =0x982
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3268
	mov	r3, #7
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x67
	mov	r1, #0x1b
	mov	r2, #0x59
	mov	r3, #0x1b
	bl	__CopyMapTiles
	mov	r5, #3
	mov	r6, #2
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x5c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1d
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x5e
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x19
	mov	r3, #0x5b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5c
	mov	r2, #0x19
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x19
	mov	r3, #0x5f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x19
	mov	r3, #0x61
	b	.L3316
.L3268:
	ldr	r0, =0x983
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3276
	bl	.L3fa6
.L3276:
	mov	r3, #7
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6f
	mov	r1, #0x1b
	mov	r2, #0x59
	mov	r3, #0x1b
	bl	__CopyMapTiles
	mov	r5, #3
	mov	r6, #2
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x5b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x5f
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x19
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5a
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5e
	mov	r2, #0x1b
	mov	r3, #0x5c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1d
	mov	r3, #0x5d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x5e
	mov	r2, #0x1b
	mov	r3, #0x5e
.L3316:
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1b
	mov	r3, #0x60
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x60
	mov	r2, #0x1d
	mov	r3, #0x61
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	bl	.L3fa6
.L3342:
	ldr	r0, =0x121
	bl	__ClearFlag
.L3348:
	ldr	r0, =0x12f
	bl	__ClearFlag
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L335e
	bl	.L3fa6
.L335e:
	mov	r3, #3
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x75
	mov	r2, #0x29
	mov	r3, #0x75
	bl	__CopyMapTiles
	bl	.L3fa6
.L3376:
	ldr	r0, =0x987
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3384
	bl	.L3fa6
.L3384:
	mov	r1, #0xda
	mov	r2, #0xb0
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, =0xffe80000
	mov	r7, r0
	str	r3, [r7, #0xc]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r7, #0x3c]
	bl	.L3fa6
.L33a8:
	ldr	r3, =0xb7
	cmp	r2, r3
	beq	.L33b0
	b	.L35b4
.L33b0:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	r3, #1
	cmp	r3, #0x14
	bls	.L33c4
	bl	.L3fa6
.L33c4:
	ldr	r2, =.L33cc
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L33cc:
	.word	.L3c86
	.word	.L3c86
	.word	.L3c86
	.word	.L3c86
	.word	.L3fa6
	.word	.L3fa6
	.word	.L34dc
	.word	.L34dc
	.word	.L348c
	.word	.L348c
	.word	.L3524
	.word	.L3524
	.word	.L3524
	.word	.L3524
	.word	.L3524
	.word	.L3420
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3c86
	.word	.L3432
	.word	.L342a
.L3420:
	ldr	r0, =0x12f
	bl	__ClearFlag
	bl	.L3fa6
.L342a:
	bl	OvlFunc_968_200c2bc
	bl	.L3fa6
.L3432:
	mov	r0, #0xaa
	bl	__Func_8091ff0
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3446
	bl	.L3fa6
.L3446:
	bl	OvlFunc_968_20089c8
	bl	.L3fa6

	.pool_aligned

.L348c:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r7, r0
	bl	OvlFunc_968_20099c0
	ldr	r3, [r7, #8]
	asr	r3, #20
	cmp	r3, #8
	bne	.L34a6
	mov	r0, r7
	bl	OvlFunc_968_2009a14
.L34a6:
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	asr	r3, #20
	cmp	r3, #7
	bne	.L34ba
	bl	OvlFunc_968_2009a14
.L34ba:
	ldr	r5, =0x1c10000
	mov	r0, #0xce
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_968_2008058
	mov	r0, #0xd2
	lsl	r0, #16
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0xdf
	bl	OvlFunc_968_2008058
	bl	.L3fa6
.L34dc:
	mov	r0, #0
	bl	__Func_8091494
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r5, =OvlFunc_968_20088c8
	mov	r3, r7
	add	r3, #0x55
	mov	r6, #0
	strb	r6, [r3]
	mov	r0, #9
	str	r5, [r7, #0x6c]
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	strb	r6, [r3]
	mov	r0, #0xa
	str	r5, [r7, #0x6c]
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	strb	r6, [r3]
	str	r5, [r7, #0x6c]
	bl	OvlFunc_968_20098f8
	bl	.L3fa6
.L3524:
	mov	r0, #0xaa
	bl	__Func_8091ff0
	mov	r0, #0
	bl	__Func_8091494
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3546
	bl	.L3fa6
.L3546:
	mov	r5, #5
	mov	r6, #2
	mov	r0, #0x6f
	mov	r1, #5
	mov	r2, #0x75
	mov	r3, #5
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x6f
	mov	r1, #0xa
	mov	r2, #0x75
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x6f
	mov	r1, #7
	mov	r2, #0x6f
	mov	r3, #5
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x6f
	mov	r1, #7
	mov	r2, #0x6f
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #0x36
	mov	r5, #3
	str	r3, [sp]
	mov	r0, #0x30
	mov	r1, #3
	mov	r2, #3
	mov	r3, #0xa
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x30
	str	r3, [sp]
	mov	r0, #0x37
	mov	r1, #0x1a
	mov	r2, #3
	mov	r3, #0xa
	str	r5, [sp, #4]
	bl	__Func_80105d4
	bl	.L3fa6
.L35b4:
	ldr	r3, =0xb8
	cmp	r2, r3
	beq	.L35bc
	b	.L37bc
.L35bc:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	r3, #1
	cmp	r3, #0xa
	bls	.L35d0
	bl	.L3fa6
.L35d0:
	ldr	r2, =.L35d8
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L35d8:
	.word	.L3c86
	.word	.L3604
	.word	.L3fa6
	.word	.L360a
	.word	.L3fa6
	.word	.L360a
	.word	.L3706
	.word	.L3706
	.word	.L3614
	.word	.L3614
	.word	.L36ee
.L3604:
	bl	OvlFunc_968_20087d8
	b	.L3c86
.L360a:
	mov	r0, #0
	bl	__Func_8091494
	bl	.L3fa6
.L3614:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r2, #0
	mov	r7, r0
	mov	r8, r2
	mov	r3, r7
	add	r3, #0x55
	mov	r1, r8
	strb	r1, [r3]
	mov	r0, #9
	str	r2, [r7, #0xc]
	bl	__MapActor_GetActor
	mov	r3, #0x55
	mov	r7, r0
	add	r3, r7
	mov	r1, r8
	strb	r1, [r3]
	mov	r10, r3
	mov	r3, r7
	add	r3, #0x59
	strb	r1, [r3]
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	beq	.L36e6
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #1
	str	r3, [sp]
	mov	r5, #2
	mov	r0, #0x7c
	mov	r1, #0x29
	mov	r2, #0x6e
	mov	r3, #0x29
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #0x2a
	str	r3, [sp, #4]
	mov	r6, #0x2e
	mov	r3, #1
	mov	r0, #0x2e
	mov	r1, #0x29
	mov	r2, #1
	str	r6, [sp]
	bl	__Func_8010704
	mov	r1, #0xba
	mov	r2, #0xb6
	mov	r0, #9
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r2, r8
	mov	r3, r10
	strb	r2, [r3]
	ldr	r3, =0xfff00000
	mov	r0, #9
	str	r3, [r7, #0xc]
	mov	r1, #3
	bl	__Func_8092b08
	mov	r3, r7
	add	r3, #0x23
	strb	r5, [r3]
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x2d
	mov	r1, #0x2d
	str	r6, [sp]
	bl	__Func_8010704
	mov	r0, #0xa
	mov	r1, #7
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_8092b08
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x59
	mov	r1, r8
	strb	r1, [r3]
	mov	r2, #0xae
	sub	r3, #0x36
	strb	r5, [r3]
	mov	r0, #0xa
	ldr	r1, =0x2e70000
	lsl	r2, #18
	bl	__MapActor_SetPos
	ldr	r3, =OvlFunc_968_2008b98
	str	r3, [r7, #0x6c]
.L36e6:
	bl	OvlFunc_968_2009d48
	bl	.L3fa6
.L36ee:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
.L3706:
	mov	r0, #0xaa
	bl	__Func_8091ff0
	bl	__Func_8011ae0
	mov	r3, #0
	ldr	r2, =REG_BLDCNT
	strh	r3, [r2]
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L378c
	mov	r5, #3
	mov	r0, #0xf
	mov	r1, #0x60
	mov	r2, #9
	mov	r3, #0x60
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xc
	mov	r1, #0x60
	mov	r2, #0xf
	mov	r3, #0x60
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r6, #4
	mov	r0, #5
	mov	r1, #0x32
	mov	r2, #0xf
	mov	r3, #0x20
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x19
	mov	r1, #0x2d
	mov	r2, #9
	mov	r3, #0x20
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #9
	mov	r5, #0x20
	str	r3, [sp]
	mov	r0, #0xf
	mov	r1, #0x20
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r0, #0xc
	mov	r1, #0x20
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
.L378c:
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	beq	.L37a0
	bl	.L3fa6
.L37a0:
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r2, #0x81
	add	r3, r1
	lsl	r2, #2
	str	r2, [r3]
	bl	.L3fa6
.L37bc:
	ldr	r3, =0xb9
	cmp	r2, r3
	beq	.L37c4
	b	.L3a78
.L37c4:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	r3, #4
	cmp	r3, #0x10
	bls	.L37d6
	b	.L3fa6
.L37d6:
	ldr	r2, =.L37e0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L37e0:
	.word	.L3910
	.word	.L3910
	.word	.L3c86
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3864
	.word	.L3864
	.word	.L3864
	.word	.L3864
	.word	.L3864
	.word	.L3864
	.word	.L3916
	.word	.L3916
	.word	.L3fa6
	.word	.L3fa6
	.word	.L3824
	.word	.L3864
.L3824:
	bl	OvlFunc_968_200c610
	b	.L3fa6

	.pool_aligned

.L3864:
	mov	r0, #0xaa
	bl	__Func_8091ff0
	ldr	r0, =0x306
	bl	__GetFlag
	cmp	r0, #0
	beq	.L38ac
	mov	r3, #0x1a
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0xc
	mov	r2, #3
	mov	r3, #0xd
	bl	__Func_80105d4
	mov	r3, #9
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x29
	mov	r0, #0x51
	mov	r2, #0x59
	mov	r3, #0xe
	bl	__CopyMapTiles
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_968_200c5f0
	lsl	r1, #4
	bl	__StartTask
.L38ac:
	ldr	r0, =0x307
	bl	__GetFlag
	cmp	r0, #0
	beq	.L38ee
	mov	r3, #0x22
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0xc
	mov	r2, #3
	mov	r3, #0xd
	bl	__Func_80105d4
	mov	r3, #5
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x29
	mov	r0, #0x51
	mov	r2, #0x61
	mov	r3, #0xe
	bl	__CopyMapTiles
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_968_200c600
	lsl	r1, #4
	bl	__StartTask
.L38ee:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0xb
	bne	.L3904
	bl	OvlFunc_968_20087d8
	b	.L3fa6
.L3904:
	cmp	r3, #0x14
	beq	.L390a
	b	.L3fa6
.L390a:
	bl	OvlFunc_968_200c7c0
	b	.L3fa6
.L3910:
	bl	OvlFunc_968_20087d8
	b	.L3c86
.L3916:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	mov	r5, #0
	add	r3, #0x55
	strb	r5, [r3]
	mov	r0, #9
	str	r5, [r7, #0xc]
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3954
	b	.L3a72
.L3954:
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6f
	mov	r1, #0x3b
	mov	r2, #0x6d
	mov	r3, #0x25
	bl	__CopyMapTiles
	mov	r3, #0x2d
	mov	r2, #0x26
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x25
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	beq	.L39b8
	mov	r1, #0xc2
	mov	r2, #0xa6
	mov	r0, #9
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xd2
	mov	r2, #0xa6
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xc2
	mov	r2, #0xae
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.L39e2
.L39b8:
	mov	r1, #0xd2
	mov	r2, #0xa6
	mov	r0, #9
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xc2
	mov	r2, #0xae
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xd2
	mov	r2, #0xae
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
.L39e2:
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092b08
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r5, =0xfff00000
	mov	r3, r7
	add	r3, #0x23
	mov	r6, #2
	mov	r2, #0
	str	r5, [r7, #0xc]
	mov	r1, #3
	strb	r6, [r3]
	mov	r0, #0xa
	mov	r8, r2
	bl	__Func_8092b08
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	str	r5, [r7, #0xc]
	mov	r1, #3
	strb	r6, [r3]
	mov	r0, #0xb
	bl	__Func_8092b08
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	str	r5, [r7, #0xc]
	mov	r1, #7
	strb	r6, [r3]
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_8092b08
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x59
	mov	r1, r8
	strb	r1, [r3]
	mov	r2, #0x9e
	sub	r3, #0x36
	strb	r6, [r3]
	mov	r0, #0xc
	ldr	r1, =0x2d70000
	lsl	r2, #18
	bl	__MapActor_SetPos
	ldr	r3, =OvlFunc_968_2008b98
	str	r3, [r7, #0x6c]
.L3a72:
	bl	OvlFunc_968_2009f60
	b	.L3fa6
.L3a78:
	ldr	r3, =0xba
	cmp	r2, r3
	beq	.L3a80
	b	.L3fa6
.L3a80:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	sub	r3, #1
	cmp	r3, #0x13
	bls	.L3a92
	b	.L3fa6
.L3a92:
	ldr	r2, =.L3a9c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L3a9c:
	.word	.L3aec
	.word	.L3aec
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3ca6
	.word	.L3c86
	.word	.L3c86
	.word	.L3e34
	.word	.L3e34
	.word	.L3fa6
	.word	.L3c8e
	.word	.L3c8e
	.word	.L3ca6
.L3aec:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3b70
	mov	r0, #0
	bl	OvlFunc_968_200a2c8
	mov	r0, #0
	bl	__MapActor_GetActor
	bl	OvlFunc_968_200894c
	mov	r5, #0
.L3b08:
	mov	r0, r5
	add	r0, #0xa
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	asr	r4, r3, #20
	cmp	r4, #0xd
	bne	.L3b36
	ldr	r3, [r7, #0x10]
	asr	r6, r3, #20
	cmp	r6, #7
	bne	.L3b36
	mov	r2, #0x80
	lsl	r2, #2
	add	r0, r5, r2
	str	r4, [sp, #8]
	bl	__GetFlag
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.L3b36
	b	.L3e0a
.L3b36:
	add	r5, #1
	cmp	r5, #3
	bls	.L3b08
	b	.L3fa6

	.pool_aligned

.L3b70:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r7, r0
	mov	r9, r1
	mov	r3, r7
	add	r3, #0x55
	mov	r2, r9
	strb	r2, [r3]
	ldr	r3, =0xffd00000
	mov	r2, r7
	str	r3, [r7, #0xc]
	add	r2, #0x23
	mov	r11, r3
	ldrb	r3, [r2]
	mov	r6, #2
	orr	r3, r6
	strb	r3, [r2]
	mov	r1, r7
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r1]
	mov	r2, #3
	ldr	r1, .L3be4	@ 0
	mov	r10, r2
	mov	r3, r7
	mov	r8, r1
	add	r3, #0x64
	mov	r1, r10
	strh	r1, [r3]
	mov	r0, #8
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	mov	r2, r8
	strb	r2, [r3]
	mov	r3, r11
	str	r3, [r7, #0xc]
	mov	r2, r7
	add	r2, #0x23
	ldrb	r3, [r2]
	orr	r6, r3
	strb	r6, [r2]
	add	r2, #0x36
	ldrb	r3, [r2]
	and	r5, r3
	mov	r3, r7
	b	.L3bec

	.align	2, 0
.L3be4:
	.word	0
	.pool

.L3bec:
	add	r3, #0x64
	mov	r1, r10
	strb	r5, [r2]
	mov	r0, #9
	strh	r1, [r3]
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	mov	r1, r9
	add	r3, #0xf
	strh	r1, [r3]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	mov	r1, r9
	add	r3, #0xf
	strh	r1, [r3]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	mov	r1, r9
	add	r3, #0xf
	strh	r1, [r3]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x55
	mov	r2, r8
	strb	r2, [r3]
	mov	r1, r9
	add	r3, #0xf
	strh	r1, [r3]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	b	.L3fa6
.L3c86:
	mov	r0, #0xaa
	bl	__Func_8091ff0
	b	.L3fa6
.L3c8e:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
.L3ca6:
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r7, #4
	add	r0, #0x55
	strb	r7, [r0]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r3, =0xffef8000
	str	r3, [r0, #0xc]
	bl	__Func_8011ae0
	mov	r5, #0
	ldr	r3, =REG_BLDCNT
	strh	r5, [r3]
	ldr	r0, =0x306
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3d52
	mov	r0, #0xaa
	bl	__Func_8091ff0
	mov	r6, #3
	mov	r5, #2
	mov	r0, #0x24
	mov	r1, #0x51
	mov	r2, #0x20
	mov	r3, #0x51
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x24
	mov	r1, #0x53
	mov	r2, #0x24
	mov	r3, #0x51
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x20
	str	r3, [sp]
	mov	r5, #0x11
	mov	r0, #0x24
	mov	r1, #0x11
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x24
	str	r3, [sp]
	mov	r0, #0x24
	mov	r1, #0x12
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x3f
	mov	r1, #0x1d
	mov	r2, #0x21
	mov	r3, #0x14
	bl	__CopyMapTiles
	mov	r0, #0x14
	mov	r1, #0x38
	mov	r2, #0x24
	mov	r3, #0x11
	str	r6, [sp]
	str	r7, [sp, #4]
	bl	__CopyMapTiles
.L3d52:
	ldr	r0, =0x307
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3dc8
	mov	r6, #3
	mov	r5, #2
	mov	r0, #0x2c
	mov	r1, #0x51
	mov	r2, #0x30
	mov	r3, #0x51
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x2c
	mov	r1, #0x53
	mov	r2, #0x2c
	mov	r3, #0x51
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x30
	str	r3, [sp]
	mov	r5, #0x11
	mov	r0, #0x2c
	mov	r1, #0x11
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x2c
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x12
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x3f
	mov	r1, #0x1d
	mov	r2, #0x31
	mov	r3, #0x14
	bl	__CopyMapTiles
	mov	r0, #0x29
	mov	r1, #0x38
	mov	r2, #0x2c
	mov	r3, #0x11
	str	r6, [sp]
	str	r7, [sp, #4]
	bl	__CopyMapTiles
.L3dc8:
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r3, r1
	ldrh	r2, [r5]
	mov	r3, r2
	sub	r3, #0x12
	mov	r1, #0x80
	lsl	r3, #16
	lsl	r1, #9
	cmp	r3, r1
	bhi	.L3df8
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	ldrh	r2, [r5]
.L3df8:
	mov	r1, #0xa0
	lsl	r3, r2, #16
	lsl	r1, #13
	cmp	r3, r1
	beq	.L3e04
	b	.L3fa6
.L3e04:
	bl	OvlFunc_968_200ca2c
	b	.L3fa6
.L3e0a:
	mov	r0, r7
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r3, r7
	mov	r1, #0
	add	r3, #0x59
	strb	r1, [r3]
	sub	r3, #4
	strb	r1, [r3]
	mov	r0, #4
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #1
	str	r4, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	b	.L3fa6
.L3e34:
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_968_200b050
	bl	__StartTask
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r2, #0
	mov	r7, r0
	mov	r8, r2
	mov	r3, r7
	mov	r1, r8
	add	r3, #0x55
	strb	r1, [r3]
	mov	r0, #0xf
	str	r2, [r7, #0xc]
	bl	__MapActor_GetActor
	mov	r3, r8
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r1, r8
	add	r0, #0x55
	strb	r1, [r0]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r2, r8
	add	r0, #0x55
	strb	r2, [r0]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r3, r8
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3e98
	b	.L3fa2
.L3e98:
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #1
	str	r3, [sp]
	mov	r6, #2
	mov	r0, #0x5f
	mov	r1, #0x38
	mov	r2, #0x4d
	mov	r3, #0x23
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #0xd
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #0xd
	mov	r1, #0x23
	mov	r2, #1
	bl	__Func_8010704
	mov	r1, #0x84
	mov	r2, #0xba
	lsl	r2, #18
	lsl	r1, #17
	mov	r0, #0xf
	bl	__MapActor_SetPos
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r5, =0xfff00000
	mov	r3, r7
	add	r3, #0x23
	str	r5, [r7, #0xc]
	mov	r0, #0xf
	strb	r6, [r3]
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #0xb8
	mov	r2, #0x9e
	lsl	r2, #18
	lsl	r1, #16
	mov	r0, #0x10
	bl	__MapActor_SetPos
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	str	r5, [r7, #0xc]
	mov	r0, #0x10
	strb	r6, [r3]
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #0xe8
	mov	r2, #0xae
	lsl	r2, #18
	lsl	r1, #16
	mov	r0, #0x11
	bl	__MapActor_SetPos
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	str	r5, [r7, #0xc]
	mov	r0, #0x11
	strb	r6, [r3]
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #0xb8
	mov	r2, #0xa6
	lsl	r2, #18
	lsl	r1, #16
	mov	r0, #0x12
	bl	__MapActor_SetPos
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x23
	str	r5, [r7, #0xc]
	mov	r0, #0x12
	strb	r6, [r3]
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #7
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_8092b08
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x59
	mov	r1, r8
	strb	r1, [r3]
	mov	r2, #0x96
	sub	r3, #0x36
	mov	r1, #0xd7
	strb	r6, [r3]
	mov	r0, #0x13
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	ldr	r3, =OvlFunc_968_2008b98
	str	r3, [r7, #0x6c]
.L3fa2:
	bl	OvlFunc_968_200ab14
.L3fa6:
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_200b068

.thumb_func_start OvlFunc_968_200bfe4
	push	{lr}
	sub	sp, #0xc
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	sub	r3, #1
	str	r3, [r0, #8]
	bl	OvlFunc_968_200c048
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200bfe4

.thumb_func_start OvlFunc_968_200bffc
	push	{lr}
	sub	sp, #0xc
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	mov	r3, #1
	str	r3, [r0, #8]
	bl	OvlFunc_968_200c048
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200bffc

.thumb_func_start OvlFunc_968_200c014
	push	{lr}
	sub	sp, #0xc
	mov	r3, #1
	mov	r0, sp
	neg	r3, r3
	str	r3, [r0]
	mov	r3, #0
	str	r3, [r0, #8]
	bl	OvlFunc_968_200c048
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200c014


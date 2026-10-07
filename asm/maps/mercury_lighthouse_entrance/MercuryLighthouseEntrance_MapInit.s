	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MercuryLighthouseEntrance_MapInit
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =REG_BLDCNT
	mov	r2, #0xfd
	lsl	r2, #6
	sub	sp, #0x44
	strh	r2, [r3]
	ldr	r2, =0x1010
	add	r3, #2
	strh	r2, [r3]
	ldr	r1, =ewram_2001000
	mov	r0, #0x15
	bl	OvlFunc_923_2009a3c
	ldr	r0, =0x111
	bl	__SetFlag
	ldr	r2, =gState
	ldr	r3, =0x242
	mov	r4, #0x90
	add	r1, r2, r3
	mov	r3, #0xb
	strh	r3, [r1]
	lsl	r4, #2
	ldr	r3, =0x39
	add	r2, r4
	mov	r0, #0
	strh	r3, [r2]
	bl	__Func_8091494
	ldr	r0, =0x875
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm923_1338
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_923_2008d98
	lsl	r1, #4
	bl	__StartTask
	b	.Lm923_133c
.Lm923_1338:
	bl	OvlFunc_923_2008e3c
.Lm923_133c:
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r2, #0x81
	add	r3, r1
	lsl	r2, #2
	str	r2, [r3]
	ldr	r3, =gState
	sub	r2, #0x42
	add	r3, r2
	mov	r4, #0
	ldrsh	r3, [r3, r4]
	sub	r3, #1
	cmp	r3, #0x1e
	bls	.Lm923_135e
	b	.Lm923_1718
.Lm923_135e:
	ldr	r2, =.Lm923_1368
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm923_1368:
	.word	.Lm923_13e4
	.word	.Lm923_13f4
	.word	.Lm923_144a
	.word	.Lm923_144a
	.word	.Lm923_144a
	.word	.Lm923_144a
	.word	.Lm923_1416
	.word	.Lm923_1416
	.word	.Lm923_1416
	.word	.Lm923_1416
	.word	.Lm923_1416
	.word	.Lm923_1416
	.word	.Lm923_1718
	.word	.Lm923_1718
	.word	.Lm923_1718
	.word	.Lm923_1718
	.word	.Lm923_1640
	.word	.Lm923_163c
	.word	.Lm923_163c
	.word	.Lm923_163c
	.word	.Lm923_1718
	.word	.Lm923_1718
	.word	.Lm923_1718
	.word	.Lm923_1718
	.word	.Lm923_1648
	.word	.Lm923_1718
	.word	.Lm923_1718
	.word	.Lm923_1718
	.word	.Lm923_1718
	.word	.Lm923_1694
	.word	.Lm923_170a
.Lm923_13e4:
	ldr	r0, =0x872
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm923_13f4
	mov	r0, #0x14
	bl	__Func_8091e9c
.Lm923_13f4:
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm923_1718
.Lm923_1416:
	ldr	r0, =0x875
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm923_1422
	b	.Lm923_1718
.Lm923_1422:
	mov	r3, #0x14
	mov	r5, #5
	str	r3, [sp]
	mov	r0, #0x54
	mov	r1, #5
	mov	r2, #0xa
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x25
	str	r3, [sp]
	mov	r0, #0x65
	mov	r1, #5
	mov	r2, #0xc
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_8010704
	b	.Lm923_1718
.Lm923_144a:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_923_2008d98
	lsl	r1, #4
	bl	__StartTask
	ldr	r0, =0x875
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm923_1490
	mov	r3, #5
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x62
	mov	r2, #0xa
	mov	r3, #0x61
	mov	r0, #0x25
	bl	__CopyMapTiles
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #6
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x20
	mov	r2, #0xd
	mov	r3, #7
	bl	__Func_8010704
.Lm923_1490:
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #6
	beq	.Lm923_14a2
	b	.Lm923_1718
.Lm923_14a2:
	ldr	r0, =0x251
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm923_14b0
	b	.Lm923_1718
.Lm923_14b0:
	ldr	r0, =0x251
	bl	__SetFlag
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x82
	lsl	r3, #16
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r0, #0x48]
	mov	r0, #0
	bl	__MapActor_GetActor
	str	r5, [r0, #0x44]
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xcc
	bl	__PlaySound
	mov	r0, #0x18
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r3, sp, #0x1c
	mov	r9, r3
	mov	r4, r9
	mov	r3, #7
	mov	r1, #0
	add	r6, sp, #0x10
	str	r3, [r4, #4]
	mov	r10, r0
	mov	r8, r1
	mov	r7, r6
.Lm923_1540:
	mov	r2, r8
	lsl	r5, r2, #12
	mov	r0, r5
	bl	__cos
	mov	r3, #0
	str	r0, [r7]
	str	r3, [r7, #4]
	mov	r0, r5
	bl	__sin
	ldr	r2, [r7]
	str	r0, [r7, #8]
	mov	r3, r2
	cmp	r2, #0
	bge	.Lm923_1562
	add	r3, r2, #3
.Lm923_1562:
	lsr	r5, r0, #31
	add	r5, r0, r5
	asr	r3, #2
	asr	r5, #1
	sub	r3, r2, r3
	sub	r5, r0, r5
	str	r3, [r6]
	str	r5, [r6, #8]
	mov	r4, r10
	ldr	r1, [r4, #0xc]
	ldr	r2, [r4, #0x10]
	ldr	r0, [r4, #8]
	ldr	r4, [r6, #4]
	str	r4, [sp]
	ldr	r4, =0x10001
	str	r4, [sp, #8]
	mov	r4, r9
	str	r5, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x10
	bls	.Lm923_1540
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #0
	ldr	r1, =0x101
	bl	__MapActor_Surprise
	mov	r0, #0
	mov	r1, #0x16
	bl	__MapActor_SetAnim
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #9
	str	r5, [r0, #0x48]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r0, #0x44]
	ldr	r0, =0x875
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm923_168e
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #1
	ldr	r0, =0x10003
	bl	__Func_8091200
	mov	r0, #0x1e
	bl	__Func_8091254
	bl	__WaitMapTransition
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x1632
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8019aa0
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8091200
	mov	r0, #0x1e
	bl	__Func_8091254
	b	.Lm923_168e
.Lm923_163c:
	bl	OvlFunc_923_2009208
.Lm923_1640:
	mov	r0, #0xaa
	bl	__Func_8091ff0
	b	.Lm923_1718
.Lm923_1648:
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	bl	__CutsceneStart
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, =iwram_3001ebc
	mov	r4, #0xe0
	ldr	r3, [r3]
	lsl	r4, #1
	mov	r2, #0x80
	add	r3, r4
	lsl	r2, #1
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0x32
	bl	__Func_8091e9c
.Lm923_168e:
	bl	__CutsceneEnd
	b	.Lm923_1718
.Lm923_1694:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm923_16f4
	bl	OvlFunc_923_2009730
	b	.Lm923_1718

	.pool_aligned

.Lm923_16f4:
	mov	r3, #7
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #3
	bl	__Func_8010704
	b	.Lm923_1718
.Lm923_170a:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm923_1718
	bl	OvlFunc_923_200996c
.Lm923_1718:
	mov	r0, #0
	add	sp, #0x44
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end MercuryLighthouseEntrance_MapInit


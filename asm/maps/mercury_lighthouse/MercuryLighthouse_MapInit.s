	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MercuryLighthouse_MapInit
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x111
	sub	sp, #8
	bl	__SetFlag
	ldr	r2, =gState
	ldr	r3, =0x242
	add	r1, r2, r3
	mov	r3, #0xb
	strh	r3, [r1]
	mov	r1, #0x90
	ldr	r3, =0x39
	lsl	r1, #2
	add	r2, r1
	strh	r3, [r2]
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	mov	r2, #0xfd
	ldr	r3, =REG_BLDCNT
	lsl	r2, #6
	strh	r2, [r3]
	ldr	r2, =0x1010
	add	r3, #2
	strh	r2, [r3]
	ldr	r1, =ewram_2001000
	mov	r0, #0x15
	bl	OvlFunc_924_200cfcc
	mov	r0, #0
	bl	__Func_8091494
	ldr	r0, =0x875
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_3d82
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_924_2008d58
	lsl	r1, #4
	bl	__StartTask
	b	.Lm924_3d86
.Lm924_3d82:
	bl	OvlFunc_924_2008dfc
.Lm924_3d86:
	ldr	r1, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x36
	cmp	r2, r3
	beq	.Lm924_3d9a
	b	.Lm924_3f56
.Lm924_3d9a:
	ldr	r2, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0xe
	bls	.Lm924_3dae
	b	.Lm924_3f56
.Lm924_3dae:
	ldr	r2, =.Lm924_3db8
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm924_3db8:
	.word	.Lm924_3df4
	.word	.Lm924_3df4
	.word	.Lm924_3df4
	.word	.Lm924_3e2a
	.word	.Lm924_3e16
	.word	.Lm924_3e16
	.word	.Lm924_3f56
	.word	.Lm924_3f56
	.word	.Lm924_3f10
	.word	.Lm924_3f10
	.word	.Lm924_3f56
	.word	.Lm924_3f56
	.word	.Lm924_3f56
	.word	.Lm924_3f56
	.word	.Lm924_3e1e
.Lm924_3df4:
	ldr	r0, =0x875
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_3e00
	b	.Lm924_3f56
.Lm924_3e00:
	mov	r3, #2
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x42
	mov	r1, #5
	mov	r2, #0x1b
	mov	r3, #0x17
	bl	__Func_8010704
	b	.Lm924_3f56
.Lm924_3e16:
	mov	r0, #0xaa
	bl	__Func_8091ff0
	b	.Lm924_3f56
.Lm924_3e1e:
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
.Lm924_3e2a:
	ldr	r0, =0x876
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_3e66
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xa8
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xb0
	mov	r2, #0xc0
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xa2
	mov	r2, #0xf0
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	b	.Lm924_3e8a
.Lm924_3e66:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_3e8a
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x311
	bl	__ClearFlag
	ldr	r0, =0x312
	bl	__ClearFlag
	ldr	r0, =0x313
	bl	__ClearFlag
.Lm924_3e8a:
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #9
	bl	OvlFunc_924_2008ba4
	mov	r0, #0xa
	bl	OvlFunc_924_2008ba4
	mov	r0, #0xb
	bl	OvlFunc_924_2008ba4
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_3f56
	mov	r5, #1
	mov	r0, #0x77
	mov	r1, #9
	mov	r2, #0x6d
	mov	r3, #0xb
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	ldr	r0, =0x311
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_3f04
	mov	r0, #0x76
	mov	r1, #9
	mov	r2, #0x68
	mov	r3, #0xd
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
.Lm924_3f04:
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm924_3f56
.Lm924_3f10:
	ldr	r0, =0x873
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_3f34
	mov	r1, #0xae
	mov	r2, #0x9e
	mov	r0, #3
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	b	.Lm924_3f56
.Lm924_3f34:
	mov	r1, #0xc2
	mov	r2, #0x9e
	mov	r0, #8
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r3, #0x2e
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6e
	mov	r1, #0x27
	mov	r2, #5
	mov	r3, #1
	bl	__Func_8010704
.Lm924_3f56:
	ldr	r1, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x37
	cmp	r2, r3
	beq	.Lm924_3f6a
	b	.Lm924_41f4
.Lm924_3f6a:
	ldr	r2, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #8
	bls	.Lm924_3f7e
	b	.Lm924_41f4
.Lm924_3f7e:
	ldr	r2, =.Lm924_3f88
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm924_3f88:
	.word	.Lm924_3fac
	.word	.Lm924_3fac
	.word	.Lm924_40f0
	.word	.Lm924_40f0
	.word	.Lm924_41f4
	.word	.Lm924_41f4
	.word	.Lm924_41a4
	.word	.Lm924_41a4
	.word	.Lm924_41a4
.Lm924_3fac:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_3fd0
	b	.Lm924_41f4
.Lm924_3fd0:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xd3
	bl	__PlaySound
	mov	r1, #0xb8
	mov	r2, #0x84
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r3, #9
	str	r3, [sp]
	mov	r5, #0x1f
	mov	r0, #0xb
	mov	r1, #0x1f
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xb
	str	r3, [sp]
	mov	r0, #7
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r5, #1
	mov	r6, #2
	mov	r0, #0x4a
	mov	r1, #0x3a
	mov	r2, #0x46
	mov	r3, #0x20
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x4a
	mov	r1, #0x3b
	mov	r2, #0x46
	mov	r3, #0x22
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #3
	str	r3, [sp]
	mov	r8, r3
	mov	r0, #0x4c
	mov	r1, #0x3c
	mov	r2, #0x4a
	mov	r3, #0x26
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x4d
	mov	r1, #0x3c
	mov	r2, #0x4c
	mov	r3, #0x26
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, r8
	str	r1, [sp, #4]
	mov	r0, #0x4b
	mov	r1, #0x3a
	mov	r2, #0x56
	mov	r3, #0x29
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x4b
	mov	r1, #0x3b
	mov	r2, #0x56
	mov	r3, #0x2b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x4c
	mov	r1, #0x3b
	mov	r2, #0x50
	mov	r3, #0x31
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x4d
	mov	r1, #0x3b
	mov	r2, #0x52
	mov	r3, #0x31
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	b	.Lm924_41f4

	.pool_aligned

.Lm924_40f0:
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_4132
	ldr	r0, =0x256
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_4132
	mov	r5, #1
	mov	r0, #5
	mov	r1, #2
	mov	r2, #5
	mov	r3, #0xb
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, #9
	mov	r1, #1
	mov	r2, #9
	mov	r3, #7
	str	r5, [sp]
	bl	__CopyMapTiles
.Lm924_4132:
	ldr	r0, =0x874
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_41f4
	mov	r1, #0xb0
	mov	r2, #0xd8
	lsl	r1, #15
	lsl	r2, #16
	mov	r0, #0xb
	bl	__MapActor_SetPos
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0x3c]
	mov	r3, #2
	mov	r5, #1
	str	r3, [sp, #4]
	mov	r0, #9
	mov	r1, #1
	mov	r2, #9
	mov	r3, #7
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r0, #5
	mov	r1, #2
	mov	r2, #5
	mov	r3, #0xb
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #9
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #9
	mov	r1, #5
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm924_41f4
.Lm924_41a4:
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	ldr	r0, =0x306
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_41f4
	mov	r0, #0
	bl	OvlFunc_924_20097a8
	mov	r3, #0x27
	str	r3, [sp, #4]
	mov	r5, #0x2a
	mov	r0, #0x2a
	mov	r1, #0x29
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x29
	str	r3, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x28
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r1, #0xb0
	mov	r2, #0xa0
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm924_41f4:
	ldr	r1, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x38
	cmp	r2, r3
	beq	.Lm924_4208
	b	.Lm924_466c

.Lm924_4208:
	ldr	r2, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0xf
	bls	.Lm924_421c
	b	.Lm924_466c
.Lm924_421c:
	ldr	r2, =.Lm924_4224
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm924_4224:
	.word	.Lm924_4380
	.word	.Lm924_4380
	.word	.Lm924_437c
	.word	.Lm924_4264
	.word	.Lm924_4264
	.word	.Lm924_4264
	.word	.Lm924_4388
	.word	.Lm924_4388
	.word	.Lm924_4388
	.word	.Lm924_434a
	.word	.Lm924_434a
	.word	.Lm924_4380
	.word	.Lm924_437c
	.word	.Lm924_44b6
	.word	.Lm924_45ac
	.word	.Lm924_447c
.Lm924_4264:
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r7, #0x9e
	mov	r6, #0xcc
	mov	r5, #0
	lsl	r7, #18
	lsl	r6, #2
.Lm924_42b6:
	mov	r0, r6
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_42d0
	mov	r0, r5
	mov	r2, #0xb0
	add	r0, #0xf
	mov	r1, r7
	lsl	r2, #15
	bl	__MapActor_SetPos
	b	.Lm924_42ec
.Lm924_42d0:
	add	r0, r6, #1
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_42ec
	mov	r3, #0x80
	mov	r0, r5
	lsl	r3, #14
	mov	r2, #0xb0
	add	r0, #0xf
	add	r1, r7, r3
	lsl	r2, #15
	bl	__MapActor_SetPos
.Lm924_42ec:
	mov	r1, #0x80
	lsl	r1, #15
	add	r5, #1
	add	r7, r1
	add	r6, #2
	cmp	r5, #3
	bls	.Lm924_42b6
	mov	r0, #0xce
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_4322
	mov	r1, #0xe6
	mov	r2, #0xb0
	mov	r0, #0x13
	lsl	r1, #18
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r3, #0x3a
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0xa
	b	.Lm924_4372
.Lm924_4322:
	ldr	r0, =0x339
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_432e
	b	.Lm924_466c
.Lm924_432e:
	mov	r1, #0xee
	mov	r2, #0xb0
	mov	r0, #0x13
	lsl	r1, #18
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r3, #0x3a
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x35
	mov	r1, #0xa
	b	.Lm924_4372
.Lm924_434a:
	mov	r0, #0xd2
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_4358
	b	.Lm924_466c
.Lm924_4358:
	mov	r1, #0xe4
	mov	r2, #0xa4
	mov	r0, #0x14
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r3, #0x1f
	mov	r2, #0x14
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1d
	mov	r1, #0x14
.Lm924_4372:
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm924_466c
.Lm924_437c:
	bl	OvlFunc_924_200b788
.Lm924_4380:
	mov	r0, #0xaa
	bl	__Func_8091ff0
	b	.Lm924_466c
.Lm924_4388:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_43dc
	ldr	r0, =0x256
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_43dc
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0xc]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	mov	r1, #0x1d
	str	r3, [r5, #0x3c]
	mov	r0, #6
	mov	r5, #1
	mov	r2, #0xa
	mov	r3, #0x17
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1c
	mov	r2, #0xa
	mov	r3, #0x12
	str	r5, [sp]
	bl	__CopyMapTiles
.Lm924_43dc:
	ldr	r0, =0x878
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_43e8
	b	.Lm924_466c
.Lm924_43e8:
	mov	r1, #0xa8
	mov	r2, #0xbc
	lsl	r1, #16
	lsl	r2, #17
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	mov	r1, #0x1d
	str	r3, [r5, #0x3c]
	mov	r0, #6
	mov	r5, #1
	mov	r2, #0xa
	mov	r3, #0x17
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x1c
	mov	r2, #0xa
	mov	r3, #0x12
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0xa
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	bl	__Func_800fe9c
	b	.Lm924_466c

	.pool_aligned

.Lm924_447c:
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xcc
	mov	r2, #0x98
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xc2
	mov	r2, #0x90
	lsl	r2, #18
	lsl	r1, #18
	mov	r0, #0xb
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0
	bl	OvlFunc_924_200a030
	mov	r0, #1
	bl	OvlFunc_924_2009db4
.Lm924_44b6:
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r3, r1
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xe
	bne	.Lm924_44cc
	mov	r0, #0xd3
	bl	__PlaySound
.Lm924_44cc:
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_8092b08
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x22
	strb	r3, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r0, #0xa
	bl	OvlFunc_924_2008ba4
	mov	r0, #0xb
	bl	OvlFunc_924_2008ba4
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	cmp	r3, #0xe
	beq	.Lm924_4532
	b	.Lm924_466c
.Lm924_4532:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_4558
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x319
	bl	__ClearFlag
	ldr	r0, =0x31a
	bl	__ClearFlag
	ldr	r0, =0x31b
	bl	__ClearFlag
	b	.Lm924_466c
.Lm924_4558:
	mov	r0, #0
	bl	OvlFunc_924_200a030
	ldr	r0, =0x319
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_4588
	mov	r0, #2
	bl	OvlFunc_924_2009db4
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x2c
	bne	.Lm924_466c
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_924_200a2c4
	lsl	r1, #4
	bl	__StartTask
	b	.Lm924_466c
.Lm924_4588:
	ldr	r0, =0x31a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_459a
	mov	r0, #1
	bl	OvlFunc_924_2009db4
	b	.Lm924_466c
.Lm924_459a:
	ldr	r0, =0x31b
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_466c
	mov	r0, #0
	bl	OvlFunc_924_2009db4
	b	.Lm924_466c
.Lm924_45ac:
	bl	__CutsceneStart
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0x90
	lsl	r3, #16
	str	r3, [r0, #0xc]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	str	r5, [r0, #0x44]
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, =0x4ccc
	str	r3, [r0, #0x48]
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xbd
	bl	__PlaySound
	mov	r0, #0x20
	bl	__CutsceneWait
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #2
	bl	OvlFunc_common0_0
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x10
	bl	__Func_8091e9c
	bl	__CutsceneEnd
.Lm924_466c:
	ldr	r1, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x39
	cmp	r2, r3
	beq	.Lm924_4680
	b	.Lm924_49ea
.Lm924_4680:
	ldr	r2, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bne	.Lm924_4692
	b	.Lm924_4800
.Lm924_4692:
	cmp	r3, #0xb
	bgt	.Lm924_469c
	cmp	r3, #0xa
	beq	.Lm924_46a8
	b	.Lm924_49ea
.Lm924_469c:
	cmp	r3, #0xc
	bne	.Lm924_46a2
	b	.Lm924_47ee
.Lm924_46a2:
	cmp	r3, #0xf
	beq	.Lm924_470e
	b	.Lm924_49ea
.Lm924_46a8:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_924_200adcc
	lsl	r1, #4
	bl	__StartTask
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_46be
	b	.Lm924_49ea
.Lm924_46be:
	bl	OvlFunc_924_200b788
	mov	r0, #0xaa
	bl	__Func_8091ff0
	mov	r0, #0x80
	lsl	r0, #9
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
	ldr	r0, =0x1633
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8019aa0
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091200
	mov	r0, #0x1e
	bl	__Func_8091254
	b	.Lm924_49ea
.Lm924_470e:
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__Func_8011ae0
	mov	r2, #0
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, =0xffff0000
	mov	r1, #1
	str	r3, [r0, #0x18]
	mov	r0, #0xe
	bl	__Func_8092b08
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_8092b08
	ldr	r0, =0x109
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm924_477a
	mov	r3, #0x28
	mov	r2, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x68
	mov	r1, #0x22
	mov	r2, #5
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #5
	mov	r2, #4
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x5b
	mov	r2, #0x28
	mov	r3, #0x5b
	bl	__CopyMapTiles
	b	.Lm924_49ea
.Lm924_477a:
	mov	r1, #0xce
	mov	r2, #0x96
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r3, #0x34
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r2, #3
	mov	r1, #0x24
	mov	r0, #0x74
	bl	__Func_8010704
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	bl	__Func_8093554
	add	r0, #0x55
	strb	r5, [r0]
	mov	r1, #1
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_8092b08
	bl	OvlFunc_924_200cc68
	bl	__Func_8011af0
	bl	__CutsceneEnd
	b	.Lm924_49ea
.Lm924_47ee:
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
.Lm924_4800:
	mov	r3, #0x28
	mov	r2, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x68
	mov	r1, #0x22
	mov	r2, #5
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r0, #0x2d
	mov	r5, #5
	mov	r1, #0x5b
	mov	r2, #0x28
	mov	r3, #0x5b
	str	r5, [sp]
	bl	__CopyMapTiles
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_48a4
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x2d
	mov	r2, #0x32
	mov	r3, #0x2d
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #3
	str	r3, [sp, #4]
	mov	r0, #0x32
	mov	r1, #0x69
	mov	r2, #0x32
	mov	r3, #0x6d
	str	r5, [sp]
	bl	__CopyMapTiles
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm924_48bc

	.pool_aligned

.Lm924_48a4:
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_8092b08
.Lm924_48bc:
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, =0xffff0000
	str	r3, [r0, #0x18]
	ldr	r0, =0x82b
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_4924
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xce
	mov	r2, #0x96
	lsl	r2, #18
	mov	r0, #0xa
	lsl	r1, #18
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_8092b08
	mov	r3, #0x34
	mov	r2, #0x25
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x74
	mov	r1, #0x25
	mov	r2, #3
	mov	r3, #3
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x7e
	mov	r1, #0x23
	mov	r2, #0x74
	mov	r3, #0x23
	bl	__CopyMapTiles
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_924_200a648
	lsl	r1, #4
	bl	__StartTask
	b	.Lm924_49ea
.Lm924_4924:
	ldr	r0, =0x871
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_4994
	mov	r0, #0x87
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_494e
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #0x10
	bl	__MapActor_SetAnim
	b	.Lm924_4968
.Lm924_494e:
	mov	r1, #0xd2
	mov	r2, #0x9e
	mov	r0, #3
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.Lm924_4968:
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x7e
	mov	r1, #0x23
	mov	r2, #0x74
	mov	r3, #0x23
	bl	__CopyMapTiles
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_924_200a648
	lsl	r1, #4
	bl	__StartTask
	b	.Lm924_49d2
.Lm924_4994:
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xce
	mov	r2, #0x96
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r3, #0x34
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r0, #0x74
	mov	r1, #0x24
	mov	r2, #3
	bl	__Func_8010704
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #0xfe
	add	r0, #0x59
	strb	r3, [r0]
	mov	r0, #1
	bl	__CutsceneWait
.Lm924_49d2:
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	OvlFunc_common0_0
.Lm924_49ea:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end MercuryLighthouse_MapInit


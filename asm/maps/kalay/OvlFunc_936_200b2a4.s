	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_936_200b2a4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r10, r0
	ldr	r0, =0x302
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm936_32cc
	b	.Lm936_351e
.Lm936_32cc:
	ldr	r3, [r6, #8]
	asr	r3, #19
	cmp	r3, #0x1d
	ble	.Lm936_32d6
	b	.Lm936_351e
.Lm936_32d6:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r8, r0
	bl	__CutsceneStart
	mov	r3, #1
	mov	r0, #7
	mov	r1, #0x2c
	mov	r2, #1
	str	r5, [sp]
	str	r3, [sp, #4]
	bl	__Func_8010704
	mov	r5, #0x43
	mov	r7, #1
	mov	r6, #5
.Lm936_32f8:
	mov	r0, r5
	mov	r1, #0x3a
	mov	r2, #0x4e
	mov	r3, #0x29
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	cmp	r5, #0x46
	bne	.Lm936_3318
	ldr	r0, =0x302
	bl	__SetFlag
.Lm936_3318:
	add	r5, #1
	cmp	r5, #0x4a
	bls	.Lm936_32f8
	mov	r3, #3
	str	r3, [sp]
	mov	r5, #2
	mov	r1, #0x6d
	mov	r2, #0xd
	mov	r3, #0x6d
	mov	r0, #0x10
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r3, =0x1999
	mov	r2, r8
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	mov	r1, #0x96
	mov	r2, #0xb6
	lsl	r2, #18
	mov	r0, #0xb
	lsl	r1, #16
	bl	__MapActor_SetPos
	ldr	r1, =gScript_936__0200c268
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	mov	r6, #1
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x47
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x48
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x44
	mov	r2, #0x49
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x44
	mov	r2, #0x4a
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4b
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x4c
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4d
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4e
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x4f
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x50
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r1, #0
	mov	r2, #9
	mov	r3, #0x2a
	mov	r0, #2
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x47
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x48
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x44
	mov	r2, #0x49
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x44
	mov	r2, #0x4a
	mov	r3, #0x2b
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4b
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x4c
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4d
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4e
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x4f
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x50
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r1, #0
	mov	r2, #9
	mov	r3, #0x2a
	mov	r0, #4
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r5, #0xa
	mov	r0, #7
	mov	r1, #0xb
	mov	r2, #7
	mov	r3, #0x2a
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x47
	mov	r1, #0xc
	mov	r2, #0x47
	mov	r3, #0x2b
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0xd
	mov	r2, #0xc
	mov	r3, #0xc
	mov	r5, #0x2c
	mov	r0, #6
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	OvlFunc_936_20095b4
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	bl	__CutsceneEnd
.Lm936_351e:
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm936_352a
	b	.Lm936_36ea
.Lm936_352a:
	mov	r2, r10
	ldr	r3, [r2, #8]
	asr	r3, #19
	cmp	r3, #0x57
	ble	.Lm936_3536
	b	.Lm936_36ea
.Lm936_3536:
	bl	__CutsceneStart
	mov	r5, #0x43
	mov	r7, #1
	mov	r6, #5
.Lm936_3540:
	mov	r0, r5
	mov	r1, #0x3a
	mov	r2, #0x6b
	mov	r3, #0x29
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	cmp	r5, #0x46
	bne	.Lm936_3574
	ldr	r0, =0x303
	bl	__SetFlag
	b	.Lm936_3574

	.pool_aligned

.Lm936_3574:
	add	r5, #1
	cmp	r5, #0x4a
	bls	.Lm936_3540
	mov	r3, #3
	str	r3, [sp]
	mov	r6, #2
	mov	r1, #0x6d
	mov	r2, #0x2a
	mov	r3, #0x6d
	mov	r0, #0x2d
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r5, #1
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x67
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x68
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x69
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6a
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6b
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6c
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x42
	mov	r2, #0x6d
	mov	r3, #0x2c
	mov	r0, #0x43
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x67
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x68
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x69
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6a
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6b
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6c
	mov	r3, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x42
	mov	r2, #0x6d
	mov	r3, #0x2c
	mov	r0, #0x44
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r5, #8
	mov	r0, #0x26
	mov	r1, #0xe
	mov	r2, #0x26
	mov	r3, #0x2c
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0xc
	str	r3, [sp, #4]
	mov	r0, #0x66
	mov	r1, #0xe
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x25
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xd
	mov	r2, #0xa
	mov	r3, #0xc
	mov	r0, #0x25
	bl	__Func_8010704
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	OvlFunc_936_20095b4
	bl	__CutsceneEnd
.Lm936_36ea:
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b2a4


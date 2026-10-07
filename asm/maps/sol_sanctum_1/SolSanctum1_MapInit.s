	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SolSanctum1_MapInit
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #1
	sub	sp, #8
	bl	__WaitFrames
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	ldr	r0, =0x809
	mov	r5, #0
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_214c
	ldr	r0, =0x814
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_214c
	ldr	r0, =0x819
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_214c
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
.Lm890_214c:
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_218e
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_216e
	ldr	r0, =0x2051cc
	b	.Lm890_217a
.Lm890_216e:
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_21ae
	ldr	r0, =0x202db1
.Lm890_217a:
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm890_21ae
.Lm890_218e:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x80a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_21ae
	mov	r1, #0x90
	mov	r2, #0xf0
	mov	r0, #0x10
	lsl	r1, #18
	lsl	r2, #15
	bl	__MapActor_SetPos
.Lm890_21ae:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.Lm890_21d4
	ldr	r0, =0x813
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_2220
	bl	OvlFunc_890_2009380
	ldr	r0, =0x813
	bl	__SetFlag
	b	.Lm890_221e
.Lm890_21d4:
	cmp	r3, #5
	bne	.Lm890_2206
	ldr	r0, =0x812
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_2220
	bl	OvlFunc_890_2009510
	ldr	r0, =0x812
	bl	__SetFlag
	ldr	r0, =0x80b
	bl	__ClearFlag
	ldr	r0, =0x80c
	bl	__ClearFlag
	ldr	r0, =0x80d
	bl	__ClearFlag
	ldr	r0, =0x80e
	bl	__ClearFlag
	b	.Lm890_221e
.Lm890_2206:
	cmp	r3, #6
	bne	.Lm890_2220
	ldr	r0, =0x812
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_221e
	bl	OvlFunc_890_2009790
	ldr	r0, =0x822
	bl	__SetFlag
.Lm890_221e:
	mov	r5, #1
.Lm890_2220:
	ldr	r0, =0x80b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2230
	ldr	r0, =0x826
	bl	__SetFlag
.Lm890_2230:
	ldr	r0, =0x80c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2240
	ldr	r0, =0x827
	bl	__SetFlag
.Lm890_2240:
	ldr	r0, =0x80d
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2250
	ldr	r0, =0x828
	bl	__SetFlag
.Lm890_2250:
	ldr	r0, =0x80e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2260
	ldr	r0, =0x829
	bl	__SetFlag
.Lm890_2260:
	mov	r0, #4
	bl	__WaitFrames
	cmp	r5, #0
	beq	.Lm890_226c
	b	.Lm890_2510
.Lm890_226c:
	bl	OvlFunc_890_200a5b0
	cmp	r0, #0
	bne	.Lm890_2276
	b	.Lm890_23e4
.Lm890_2276:
	mov	r3, #0xc
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x2c
	mov	r2, #0x1e
	mov	r3, #0x26
	bl	__CopyMapTiles
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r5, #4
	mov	r0, #0x1e
	mov	r1, #0x2c
	mov	r2, #0x22
	mov	r8, r3
	mov	r3, #0x25
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r6, #8
	mov	r0, #0xe
	mov	r1, #0x29
	mov	r2, #0x20
	mov	r3, #0x29
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r7, #2
	mov	r0, #0x2d
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x2d
	mov	r1, #0x1e
	mov	r2, #0x10
	mov	r3, #0xa
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, #0xe
	mov	r3, #0x29
	mov	r0, #0xe
	mov	r1, #0x2d
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	beq	.Lm890_2380
	ldr	r0, =0x814
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_2380
	ldr	r0, =0x819
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2362
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x27
	str	r7, [sp]
	bl	__CopyMapTiles
	mov	r5, #3
	mov	r0, #0x2a
	mov	r1, #0x3e
	mov	r2, #0x11
	mov	r3, #0x24
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x28
	str	r7, [sp]
	bl	__CopyMapTiles
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x29
	str	r7, [sp]
	bl	__CopyMapTiles
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x2a
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	b	.Lm890_2374
.Lm890_2362:
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x25
	str	r7, [sp]
	bl	__CopyMapTiles
.Lm890_2374:
	mov	r0, #9
	bl	__Func_80118a8
	mov	r0, #0xa
	bl	__Func_80118a8
.Lm890_2380:
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm890_2510

	.pool_aligned

.Lm890_23e4:
	ldr	r0, =0x80b
	mov	r5, #0
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2416
	mov	r5, #2
	mov	r6, #1
	mov	r0, #0x2d
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x2d
	mov	r1, #0x1e
	mov	r2, #0x10
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r5, #1
.Lm890_2416:
	ldr	r0, =0x80c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2446
	mov	r5, #2
	mov	r6, #1
	mov	r0, #0x2f
	mov	r1, #0x1c
	mov	r2, #0x24
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x2f
	mov	r1, #0x1e
	mov	r2, #0x12
	mov	r3, #0xa
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r5, #1
.Lm890_2446:
	ldr	r0, =0x80d
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2476
	mov	r5, #2
	mov	r6, #1
	mov	r0, #0x2d
	mov	r1, #0x1d
	mov	r2, #0x22
	mov	r3, #0xb
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x2d
	mov	r1, #0x1f
	mov	r2, #0x10
	mov	r3, #0xb
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r5, #1
.Lm890_2476:
	ldr	r0, =0x80e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_24a6
	mov	r5, #2
	mov	r6, #1
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x24
	mov	r3, #0xb
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x2f
	mov	r1, #0x1f
	mov	r2, #0x12
	mov	r3, #0xb
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r5, #1
.Lm890_24a6:
	ldr	r0, =0x812
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_24b4
	cmp	r5, #0
	beq	.Lm890_24fc
.Lm890_24b4:
	mov	r6, #8
	mov	r5, #3
	mov	r0, #0x1e
	mov	r1, #0x2b
	mov	r2, #0x20
	mov	r3, #0x28
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x2b
	mov	r2, #0x21
	mov	r3, #0x27
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x1e
	mov	r1, #0x2b
	mov	r2, #0x24
	mov	r3, #0x26
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r0, #0x24
	mov	r1, #0x3a
	mov	r2, #0x20
	mov	r3, #0x29
	str	r6, [sp]
	bl	__CopyMapTiles
.Lm890_24fc:
	mov	r3, #0x11
	mov	r2, #6
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #6
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
.Lm890_2510:
	ldr	r0, =0x309
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_254a
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	bne	.Lm890_254a
	bl	OvlFunc_890_200a614
	ldr	r0, =0x309
	bl	__SetFlag
	mov	r3, #0x11
	mov	r2, #6
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #6
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm890_2582
.Lm890_254a:
	ldr	r0, =0x814
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2582
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
	mov	r3, #0x11
	mov	r2, #6
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #6
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
.Lm890_2582:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end SolSanctum1_MapInit


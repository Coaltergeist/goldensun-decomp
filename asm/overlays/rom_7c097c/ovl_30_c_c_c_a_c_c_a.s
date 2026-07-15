	.include "macros.inc"



.thumb_func_start OvlFunc_936_2009930
	push	{r5, r6, lr}
	ldr	r6, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r6]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	mov	r0, #0
	sub	sp, #8
	bl	__Func_8091494
	ldr	r0, =0x109
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.L196c
	mov	r0, #0x80
	lsl	r0, #2
	ldr	r5, [r6, #0x24]
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1968
	mov	r0, #0
	bl	__MapActor_GetActor
.L1968:
	str	r0, [r5, #0x18]
	b	.L1990
.L196c:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bne	.L1990
	ldr	r3, [r6, #0x24]
	mov	r0, #0x80
	str	r5, [r3, #0x18]
	lsl	r0, #2
	bl	__ClearFlag
.L1990:
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	beq	.L19f6
	mov	r1, #0x96
	mov	r2, #0xb6
	mov	r0, #0xb
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.L19f6
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r0, #0xb
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r5, #9
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0
	mov	r1, #0
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.L19f6:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_936_200b768
	lsl	r1, #4
	bl	__StartTask
	ldr	r0, =0x915
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1a84
	mov	r1, #0xd5
	lsl	r1, #17
	ldr	r2, =0x2da0000
	mov	r0, #0xa
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r3, #3
	str	r3, [sp, #4]
	mov	r6, #2
	mov	r0, #0x58
	mov	r1, #0x30
	mov	r2, #0x58
	mov	r3, #0x2d
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r5, #1
	mov	r0, #0x18
	mov	r1, #0x31
	mov	r2, #0x18
	mov	r3, #0x30
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x19
	mov	r1, #0x2a
	mov	r2, #0x19
	mov	r3, #0x2f
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #0x18
	mov	r2, #0x31
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x16
	mov	r1, #0x32
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
.L1a84:
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1a90
	b	.L1ca8
.L1a90:
	mov	r1, #0xe8
	mov	r2, #0xb7
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r3, #0
	str	r3, [sp]
	mov	r6, #1
	mov	r0, #7
	mov	r1, #0x2c
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0x3a
	mov	r2, #0x4e
	mov	r3, #0x29
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r3, #3
	str	r3, [sp]
	mov	r5, #2
	mov	r0, #0x10
	mov	r1, #0x6d
	mov	r2, #0xd
	mov	r3, #0x6d
	str	r5, [sp, #4]
	bl	__CopyMapTiles
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
	mov	r0, #2
	mov	r1, #0
	mov	r2, #9
	mov	r3, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
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
	mov	r0, #4
	mov	r1, #0
	mov	r2, #9
	mov	r3, #0x2a
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
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
	mov	r5, #0x2c
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0xd
	mov	r2, #0xc
	mov	r3, #0xc
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #7
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	b	.L1cc2

	.pool_aligned

.L1ca8:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bgt	.L1cc2
	cmp	r3, #1
	blt	.L1cc2
	mov	r0, #0xaa
	bl	__Func_8091ff0
.L1cc2:
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1cce
	b	.L1e40
.L1cce:
	mov	r1, #0xae
	mov	r2, #0xb7
	mov	r0, #9
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r3, #5
	str	r3, [sp, #4]
	mov	r6, #1
	mov	r0, #0x4a
	mov	r1, #0x3a
	mov	r2, #0x6b
	mov	r3, #0x29
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r3, #3
	str	r3, [sp]
	mov	r5, #2
	mov	r0, #0x2d
	mov	r1, #0x6d
	mov	r2, #0x2a
	mov	r3, #0x6d
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x67
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x68
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x69
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6a
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6b
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x40
	mov	r2, #0x6c
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x43
	mov	r1, #0x42
	mov	r2, #0x6d
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x66
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x67
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x68
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x69
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6a
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6b
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x40
	mov	r2, #0x6c
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x44
	mov	r1, #0x42
	mov	r2, #0x6d
	mov	r3, #0x2c
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	__CopyMapTiles
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
	mov	r0, #0x25
	mov	r1, #0xd
	mov	r2, #0xa
	mov	r3, #0xc
	bl	__Func_8010704
	b	.L1e5a
.L1e40:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #4
	bgt	.L1e5a
	cmp	r3, #3
	blt	.L1e5a
	mov	r0, #0xaa
	bl	__Func_8091ff0
.L1e5a:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_2009930

	.include "macros.inc"

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
	bl	__MapActor_SetSpeed
	mov	r1, #0xfc
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x98
	bl	__Func_80921c4
	bl	__CutsceneEnd
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
	bl	__Actor_SetSpriteFlags
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


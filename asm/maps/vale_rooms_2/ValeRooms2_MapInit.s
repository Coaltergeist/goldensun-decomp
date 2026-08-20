	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ValeRooms2_MapInit
	push	{r5, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x13
	bne	.Lm887_420
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	b	.Lm887_550
.Lm887_420:
	ldr	r0, =0x834
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm887_468
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm887_46c
.Lm887_468:
	bl	OvlFunc_887_20093b4
.Lm887_46c:
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_8092b08
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm887_4d8
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #6
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bhi	.Lm887_550
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm887_4bc
	ldr	r0, =0x203
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm887_550
	mov	r0, #0xc
	bl	__Func_80118a8
	b	.Lm887_550
.Lm887_4bc:
	mov	r0, #0xb
	bl	__Func_80118a8
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	mov	r1, #0xa
	bl	__MapActor_SetAnim
	b	.Lm887_550
.Lm887_4d8:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x15
	bne	.Lm887_4ee
	bl	OvlFunc_887_2008a0c
	b	.Lm887_550
.Lm887_4ee:
	cmp	r3, #0x14
	bne	.Lm887_4fe
	ldr	r0, =0x834
	bl	__SetFlag
	bl	OvlFunc_887_2008578
	b	.Lm887_550
.Lm887_4fe:
	cmp	r3, #0x16
	bne	.Lm887_508
	bl	OvlFunc_887_20093e4
	b	.Lm887_550
.Lm887_508:
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r0, =0x834
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm887_546
	bl	__StartThunder
	ldr	r3, [r5, #0xc]
	ldr	r2, =0x1f84
	add	r3, r2
	mov	r2, #1
	strh	r2, [r3]
	bl	__Func_8095240
	mov	r0, #0x1e
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	__Func_8095268
	b	.Lm887_550
.Lm887_546:
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
.Lm887_550:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end ValeRooms2_MapInit


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MercuryLighthouseAerie_MapInit
	push	{r5, r6, lr}
	ldr	r0, =0x111
	sub	sp, #8
	bl	__SetFlag
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r3, =gState
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x3a
	cmp	r2, r3
	beq	.Lm925_380
	b	.Lm925_538
.Lm925_380:
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_925_200b4bc
	bl	__StartTask
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #1
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #2
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #3
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #5
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x16
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x17
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #8
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #9
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_8092b08
	mov	r5, #0xe
	mov	r6, #0
.Lm925_416:
	mov	r1, #1
	mov	r0, r5
	bl	__Func_8092b08
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r3, #4
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, r5
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, r5
	bl	__MapActor_GetActor
	ldr	r3, =0xffcd8000
	add	r5, #1
	str	r3, [r0, #0xc]
	cmp	r5, #0x13
	bls	.Lm925_416
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm925_46c
	bl	OvlFunc_925_20088cc
	cmp	r0, #0
	beq	.Lm925_46c
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm925_46c
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.Lm925_46c:
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, =gState
	mov	r2, #0xe1
	str	r5, [r0, #0x18]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #1
	bne	.Lm925_4da
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm925_538
	bl	OvlFunc_925_200856c
	b	.Lm925_538
.Lm925_4da:
	cmp	r3, #2
	bne	.Lm925_52e
	ldr	r0, =0x251
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm925_538
	ldr	r3, =iwram_3001e70
	mov	r2, #0xb2
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #19
	str	r2, [r3, #0xc]
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #5
	mov	r2, #4
	str	r3, [sp]
	mov	r0, #4
	mov	r1, #0x46
	mov	r3, #0x4a
	str	r2, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm925_538
	bl	OvlFunc_925_2009af0
	b	.Lm925_538
.Lm925_52e:
	cmp	r3, #5
	bne	.Lm925_538
	ldr	r0, =0x251
	bl	__SetFlag
.Lm925_538:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end MercuryLighthouseAerie_MapInit


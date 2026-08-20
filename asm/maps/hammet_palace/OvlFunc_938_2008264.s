	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_938_2008264
	push	{lr}
	mov	r0, #1
	sub	sp, #8
	bl	__Func_80118c0
	mov	r0, #2
	bl	__Func_80118c0
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	bgt	.Lm938_28e
	cmp	r3, #0xa
	bge	.Lm938_2e8
	cmp	r3, #9
	beq	.Lm938_294
	b	.Lm938_33e
.Lm938_28e:
	cmp	r3, #0x14
	beq	.Lm938_326
	b	.Lm938_33e
.Lm938_294:
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm938_2ba
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #5
	strh	r3, [r0, #6]
	ldr	r0, =0x914
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm938_33e
	bl	OvlFunc_938_2009494
	b	.Lm938_33e
.Lm938_2ba:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x321
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm938_33e
	mov	r2, #0xd3
	mov	r0, #8
	ldr	r1, =0x38a0000
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0xd0
	lsl	r3, #8
	strh	r3, [r0, #6]
	b	.Lm938_33e
.Lm938_2e8:
	ldr	r0, =0x915
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm938_33e
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0x46
	mov	r2, #0x36
	mov	r3, #0x46
	bl	__CopyMapTiles
	mov	r3, #0x37
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x37
	mov	r1, #9
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm938_33e
.Lm938_326:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm938_33e
	bl	OvlFunc_938_2008360
.Lm938_33e:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_938_2008264


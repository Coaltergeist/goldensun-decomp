	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MccoysPalace_MapInit
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	mov	r0, #1
	sub	sp, #8
	bl	__Func_80118c0
	mov	r0, #2
	bl	__Func_80118c0
	ldr	r0, =0x84b
	bl	__SetFlag
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_716
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
.Lm909_716:
	ldr	r0, =0x84f
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm909_758
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm909_758
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x1d
	bne	.Lm909_740
	bl	OvlFunc_909_20088c0
	b	.Lm909_888
.Lm909_740:
	cmp	r3, #9
	beq	.Lm909_746
	b	.Lm909_888
.Lm909_746:
	ldr	r0, =0x321
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm909_752
	b	.Lm909_888
.Lm909_752:
	bl	OvlFunc_909_200979c
	b	.Lm909_888
.Lm909_758:
	ldr	r0, =0x84e
	bl	__GetFlag
	mov	r6, r0
	cmp	r6, #0
	beq	.Lm909_766
	b	.Lm909_888
.Lm909_766:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x1d
	bne	.Lm909_792
	ldr	r0, =0x85e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_782
	b	.Lm909_888
.Lm909_782:
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_888
	bl	OvlFunc_909_20099b0
	b	.Lm909_888
.Lm909_792:
	cmp	r3, #0x1c
	bne	.Lm909_888
	ldr	r0, =0x322
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_888
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_884
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r5, #0x26
	mov	r0, #0x26
	mov	r1, #0x37
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x2e
	str	r3, [sp, #4]
	mov	r0, #0x2a
	mov	r3, #1
	mov	r1, #0x37
	mov	r2, #4
	str	r5, [sp]
	bl	__Func_8010704
	mov	r1, #0x9a
	mov	r2, #0xb6
	mov	r0, #0x15
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x9e
	mov	r2, #0xb6
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xa2
	mov	r2, #0xb6
	mov	r0, #0x17
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xa6
	mov	r2, #0xb6
	lsl	r2, #18
	lsl	r1, #18
	mov	r0, #0x18
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r5, =0xfffc0000
	str	r5, [r0, #0xc]
	mov	r0, #0x16
	bl	__MapActor_GetActor
	str	r5, [r0, #0xc]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	str	r5, [r0, #0xc]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	str	r5, [r0, #0xc]
	b	.Lm909_888
.Lm909_884:
	bl	OvlFunc_909_200a1bc
.Lm909_888:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end MccoysPalace_MapInit


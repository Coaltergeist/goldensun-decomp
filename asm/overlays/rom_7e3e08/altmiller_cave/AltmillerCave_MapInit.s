	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AltmillerCave_MapInit
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r2, =gState
	mov	r0, #0xe1
	lsl	r0, #1
	add	r0, r2
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	sub	sp, #0xc
	mov	r12, r0
	cmp	r3, #0
	bne	.Lm957_36bc
	mov	r3, #0xe0
	lsl	r3, #1
	add	r0, r2, r3
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	ldr	r3, =0x93
	ldrh	r1, [r0]
	cmp	r2, r3
	bne	.Lm957_3676
	mov	r3, #0xa
	mov	r2, r12
	strh	r3, [r2]
.Lm957_3676:
	lsl	r3, r1, #16
	ldr	r2, =0x94
	asr	r3, #16
	cmp	r3, r2
	bne	.Lm957_3688
	mov	r1, r12
	mov	r3, #0x14
	strh	r3, [r1]
	ldrh	r1, [r0]
.Lm957_3688:
	lsl	r3, r1, #16
	ldr	r2, =0x95
	asr	r3, #16
	cmp	r3, r2
	bne	.Lm957_369a
	mov	r3, #0x1e
	mov	r2, r12
	strh	r3, [r2]
	ldrh	r1, [r0]
.Lm957_369a:
	lsl	r3, r1, #16
	ldr	r2, =0x96
	asr	r3, #16
	cmp	r3, r2
	bne	.Lm957_36ac
	mov	r1, r12
	mov	r3, #0x28
	strh	r3, [r1]
	ldrh	r1, [r0]
.Lm957_36ac:
	lsl	r3, r1, #16
	ldr	r2, =0x97
	asr	r3, #16
	cmp	r3, r2
	bne	.Lm957_36bc
	mov	r3, #0x32
	mov	r2, r12
	strh	r3, [r2]
.Lm957_36bc:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x201
	bl	__ClearFlag
	ldr	r6, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r6, r0
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x92
	cmp	r2, r3
	bne	.Lm957_3722
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #1
	bne	.Lm957_36fe
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm957_36f8
	ldr	r3, =ewram_2001004
	strb	r0, [r3]
.Lm957_36f8:
	ldr	r0, =0x201
	bl	__SetFlag
.Lm957_36fe:
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r6, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.Lm957_3722
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm957_371c
	ldr	r2, =ewram_2001004
	mov	r3, #5
	strb	r3, [r2]
.Lm957_371c:
	ldr	r0, =0x201
	bl	__SetFlag
.Lm957_3722:
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r6, r0
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x93
	cmp	r2, r3
	bne	.Lm957_376e
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm957_3748
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm957_376e
.Lm957_3748:
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	ldr	r3, [r0, #0x50]
	mov	r2, #2
	add	r3, #0x26
	strb	r2, [r3]
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #7
	strh	r3, [r2, #0x1e]
.Lm957_376e:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r6, r2
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x95
	cmp	r2, r3
	bne	.Lm957_37fc
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
	mov	r0, #8
	bl	OvlFunc_957_20088c0
	mov	r0, #9
	bl	OvlFunc_957_20088c0
	mov	r0, #0xa
	bl	OvlFunc_957_20088c0
	ldr	r0, =0x211
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm957_37c0
	mov	r0, #0xb
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #0x49
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4c
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm957_37d0
.Lm957_37c0:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.Lm957_37d0:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r0, =0x212
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm957_37fa
	mov	r3, #0x20
	mov	r2, #0x14
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lm957_37fa:
	ldr	r6, =gState
.Lm957_37fc:
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r6, r1
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x97
	cmp	r2, r3
	beq	.Lm957_380e
	b	.Lm957_39a4
.Lm957_380e:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
	mov	r0, #8
	bl	OvlFunc_957_20088c0
	mov	r0, #9
	bl	OvlFunc_957_20088c0
	mov	r0, #0xa
	bl	OvlFunc_957_20088c0
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_957_200b610
	str	r5, [r0, #0x6c]
	mov	r0, #9
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0xe1
	str	r5, [r0, #0x6c]
	lsl	r1, #1
	add	r3, r6, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x34
	bne	.Lm957_3876
	ldr	r2, =.Lm957_3f6c
	add	r0, sp, #8
	mov	r3, #0
	str	r3, [r0]
	ldr	r1, [r2]
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm957_3876
	ldr	r3, =ewram_2001000
	mov	r2, #4
	strb	r0, [r3]
	strb	r0, [r3, #1]
	strb	r2, [r3, #2]
.Lm957_3876:
	ldr	r5, =ewram_2001001
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	ldrb	r2, [r5]
	cmp	r3, #0x63
	bne	.Lm957_38ac
	mov	r3, #0x1e
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x29
	mov	r1, #0x37
	mov	r2, #3
	mov	r3, #2
	bl	__Func_8010788
	mov	r3, #0x1f
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r2, #1
	mov	r1, #8
	mov	r3, #1
	bl	__Func_8010704
	ldrb	r2, [r5]
.Lm957_38ac:
	mov	r0, #0x80
	lsl	r3, r2, #24
	lsl	r0, #18
	cmp	r3, r0
	bne	.Lm957_38cc
	mov	r0, #1
	ldrsb	r0, [r5, r0]
	mov	r1, #5
	lsl	r0, #16
	bl	_divsi3_RAM
	mov	r1, #0x80
	lsl	r1, #7
	add	r0, r1
	bl	OvlFunc_957_2008f6c
.Lm957_38cc:
	mov	r6, #0
	mov	r7, #0x80
	mov	r8, r6
	lsl	r7, #9
.Lm957_38d4:
	mov	r5, r6
	add	r5, #0xb
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r3, r0
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #4
	strb	r2, [r3]
	str	r7, [r0, #0x18]
	str	r7, [r0, #0x1c]
	mov	r0, r5
	bl	__MapActor_GetActor
	add	r6, #1
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, r6
	bl	__MapActor_SetAnim
	cmp	r6, #4
	ble	.Lm957_38d4
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0xc
	mov	r1, #4
	bl	__Func_8092950
	mov	r0, #0xd
	mov	r1, #0xb
	bl	__Func_8092950
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x10
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x11
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x12
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #6
	bl	__Func_8092950
	mov	r1, #6
	mov	r0, #0x14
	bl	__Func_8092950
	mov	r0, #0x10
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	mov	r5, #0xc
	orr	r3, r5
	strb	r3, [r2, #9]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	orr	r3, r5
	strb	r3, [r2, #9]
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r5, #2
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm957_39a4:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm957_3a04
	bl	OvlFunc_957_2008b30
	b	.Lm957_3a1c

	.pool_aligned

.Lm957_3a04:
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	mov	r0, #0xe4
	add	r2, r1, r3
	lsl	r0, #1
	add	r3, #0x44
	str	r3, [r2]
	add	r2, r1, r0
	mov	r3, #0x18
	str	r3, [r2]
.Lm957_3a1c:
	mov	r0, #0
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end AltmillerCave_MapInit


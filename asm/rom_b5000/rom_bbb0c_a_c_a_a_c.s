	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bd898  @ 0x080bd898
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	sub	sp, #0x2c
	mov	r1, #0xd7
	mov	r2, #0x80
	str	r3, [sp, #8]
	lsl	r1, #3
	lsl	r2, #4
	add	r7, r3, r1
	add	r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.Lbd8c2
	b	.Lbdfb4
.Lbd8c2:
	mov	r3, #0xa4
	lsl	r3, #1
	add	r5, r7, r3
	ldr	r3, [r5]
	cmp	r3, #4
	bne	.Lbd8d0
	b	.Lbdfb4
.Lbd8d0:
	cmp	r3, #1
	bne	.Lbd91e
	ldr	r2, =0x655
	mov	r4, #0xa0
	ldr	r1, [sp, #8]
	lsl	r4, #1
	add	r3, r1, r2
	add	r6, r7, r4
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	ldr	r3, [r6]
	cmp	r3, r2
	bge	.Lbd918
	add	r4, #4
	mov	r1, #0xa6
	mov	r2, #0
	add	r3, r7, r4
	lsl	r1, #1
	str	r2, [r3]
	add	r4, #0xc
	add	r3, r7, r1
	str	r2, [r3]
	add	r3, r7, r4
	str	r2, [r3]
	ldr	r1, [sp, #8]
	ldr	r2, =0x654
	add	r0, r1, r2
	ldr	r1, [r6]
	bl	Func_80bbb0c
	ldr	r3, [r6]
	add	r3, #1
	str	r3, [r6]
	mov	r3, #2
	str	r3, [r5]
	b	.Lbd8c2
.Lbd918:
	mov	r3, #4
	str	r3, [r5]
	b	.Lbd8c2
.Lbd91e:
	cmp	r3, #2
	beq	.Lbd924
	b	.Lbdb7a
.Lbd924:
	mov	r4, #0xa6
	mov	r1, #0xa2
	lsl	r4, #1
	lsl	r1, #1
	add	r3, r7, r4
	add	r2, r7, r1
	ldr	r5, [r3]
	ldr	r3, [r2]
	cmp	r5, r3
	blt	.Lbd93a
	b	.Lbdb66
.Lbd93a:
	mov	r6, r5
.Lbd93c:
	mov	r3, #0xa8
	lsl	r3, #1
	add	r2, r7, r3
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.Lbd94e
	sub	r3, #1
	str	r3, [r2]
	b	.Lbdfb4
.Lbd94e:
	ldrb	r3, [r7, r6]
	cmp	r3, #0xe
	bls	.Lbd956
	b	.Lbdb3e
.Lbd956:
	ldr	r2, =.Lbd960
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbd960:
	.word	.Lbd9b6
	.word	.Lbd9c4
	.word	.Lbd9d2
	.word	.Lbd9de
	.word	.Lbd9fa
	.word	.Lbda16
	.word	.Lbd9f0
	.word	.Lbda30
	.word	.Lbda42
	.word	.Lbda82
	.word	.Lbdb02
	.word	.Lbdb10
	.word	.Lbda36
	.word	.Lbd9a8
	.word	.Lbd99c
.Lbd99c:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	bl	_PlaySound
	b	.Lbdb3e
.Lbd9a8:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r1, [r7, r3]
	mov	r0, r7
	bl	Func_80bb928
	b	.Lbdb3e
.Lbd9b6:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	mov	r1, #1
	bl	_Func_8019908
	b	.Lbdb3e
.Lbd9c4:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	mov	r1, #5
	bl	_Func_8019908
	b	.Lbdb3e
.Lbd9d2:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	ldr	r3, =0x1ff
	mov	r1, #2
	b	.Lbd9e8
.Lbd9de:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	ldr	r3, =0x3fff
	mov	r1, #4
.Lbd9e8:
	and	r0, r3
	bl	_Func_8019908
	b	.Lbdb3e
.Lbd9f0:
	ldr	r3, =iwram_3001ee4
	ldr	r2, [r3]
	mov	r3, #1
	str	r3, [r2, #8]
	b	.Lbdb3e
.Lbd9fa:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	cmp	r0, #0
	blt	.Lbda08
	bl	_PrintBattleText
.Lbda08:
	mov	r4, #0xa4
	lsl	r4, #1
	add	r2, r7, r4
	mov	r3, #3
	str	r3, [r2]
	ldr	r2, =iwram_3001af8
	b	.Lbda7c
.Lbda16:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	cmp	r0, #0
	blt	.Lbda24
	bl	_PrintBattleText
.Lbda24:
	mov	r1, #0xa4
	lsl	r1, #1
	add	r2, r7, r1
	mov	r3, #0xd
	str	r3, [r2]
	b	.Lbdb3e
.Lbda30:
	bl	_Func_80198dc
	b	.Lbdb3e
.Lbda36:
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	bl	Func_80bb8e8
	b	.Lbdb3e
.Lbda42:
	mov	r2, #0xb4
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r0, [r3]
	cmp	r0, #0
	ble	.Lbda52
	bl	_PlaySound
.Lbda52:
	mov	r3, #0xb2
	lsl	r3, #1
	add	r2, r7, r3
	lsl	r3, r6, #2
	add	r3, #0x40
	ldr	r0, [r7, r3]
	str	r0, [r2]
	bl	GetBattleActor
	mov	r1, #5
	ldr	r0, [r0]
	bl	_Actor_SetAnim
	mov	r4, #0xa4
	lsl	r4, #1
	mov	r1, #0xa8
	add	r2, r7, r4
	mov	r3, #0xa
	lsl	r1, #1
	str	r3, [r2]
	add	r2, r7, r1
.Lbda7c:
	mov	r3, #0
	str	r3, [r2]
	b	.Lbdb3e
.Lbda82:
	lsl	r3, r6, #2
	add	r3, #0x40
	mov	r2, #0xb2
	lsl	r2, #1
	ldr	r0, [r7, r3]
	add	r5, r7, r2
	mov	r4, #0xb6
	lsl	r4, #1
	str	r0, [r5]
	add	r3, r7, r4
	ldr	r1, [r3]
	bl	Func_80c24f0
	ldr	r0, [r5]
	bl	Func_80bb588
	ldr	r0, [r5]
	bl	_GetUnit
	mov	r5, #0
	mov	r6, r0
	b	.Lbdaca
.Lbdaae:
	mov	r1, #0x95
	lsl	r1, #1
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.Lbdac2
	mov	r1, #4
	bl	_Sprite_SetAnim
	b	.Lbdac8
.Lbdac2:
	mov	r1, #5
	bl	_Sprite_SetAnim
.Lbdac8:
	add	r5, #1
.Lbdaca:
	mov	r2, #0xb2
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r0, [r3]
	bl	GetBattleActor
	mov	r1, r5
	ldr	r0, [r0]
	bl	Func_80b7f70
	cmp	r0, #0
	bne	.Lbdaae
	mov	r4, #0x95
	lsl	r4, #1
	add	r3, r6, r4
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lbdb3e
	mov	r1, #0xa4
	lsl	r1, #1
	add	r3, r7, r1
	mov	r2, #0xb
	str	r2, [r3]
	mov	r2, #0xa8
	lsl	r2, #1
	add	r3, r7, r2
	str	r0, [r3]
	b	.Lbdb3e
.Lbdb02:
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	bl	_Func_801f200
	b	.Lbdb3e
.Lbdb10:
	lsl	r5, r6, #2
	add	r5, #0x40
	ldr	r0, [r7, r5]
	bl	GetBattleActor
	mov	r1, r0
	ldr	r0, [r7, r5]
	bl	Func_80b78e4
	ldr	r0, [r7, r5]
	bl	GetBattleActor
	mov	r6, r0
	ldr	r0, [r7, r5]
	bl	Func_80b6cd0
	mov	r1, r0
	ldr	r0, [r6]
	bl	Func_80ba918
	ldr	r0, [r7, r5]
	bl	Func_80b7aac
.Lbdb3e:
	mov	r3, #0xa6
	lsl	r3, #1
	add	r2, r7, r3
	ldr	r3, [r2]
	mov	r4, #0xa2
	add	r5, r3, #1
	str	r5, [r2]
	lsl	r4, #1
	add	r3, r7, r4
	ldr	r3, [r3]
	cmp	r5, r3
	bge	.Lbdb66
	mov	r1, #0xa4
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r3, [r3]
	mov	r6, r5
	cmp	r3, #2
	bne	.Lbdb66
	b	.Lbd93c
.Lbdb66:
	mov	r3, #0xa4
	lsl	r3, #1
	add	r2, r7, r3
	ldr	r3, [r2]
	cmp	r3, #2
	beq	.Lbdb74
	b	.Lbd8c2
.Lbdb74:
	mov	r3, #1
	str	r3, [r2]
	b	.Lbd8c2
.Lbdb7a:
	cmp	r3, #3
	beq	.Lbdb82
	cmp	r3, #0xd
	bne	.Lbdbe0
.Lbdb82:
	bl	_Func_8017364
	cmp	r0, #0
	bne	.Lbdb8c
	b	.Lbdfb4
.Lbdb8c:
	ldr	r3, [r5]
	cmp	r3, #0xd
	bne	.Lbdb9e
	mov	r4, #0xa8
	mov	r3, #2
	lsl	r4, #1
	str	r3, [r5]
	add	r2, r7, r4
	b	.Lbdd1c
.Lbdb9e:
	mov	r1, #0xb0
	mov	r3, #5
	lsl	r1, #1
	str	r3, [r5]
	add	r2, r7, r1
	sub	r3, #6
	str	r3, [r2]
	mov	r3, #0xa8
	lsl	r3, #1
	add	r2, r7, r3
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	str	r3, [r2]
	b	.Lbd8c2

	.pool_aligned

.Lbdbe0:
	cmp	r3, #5
	beq	.Lbdbe6
	b	.Lbdd2c
.Lbdbe6:
	ldr	r2, =iwram_3001e40
	ldr	r3, [r2]
	mov	r2, #7
	lsr	r3, #2
	ldr	r1, =Data_c3734
	and	r3, r2
	lsl	r3, #7
	add	r3, r1
	mov	r10, r3
	ldr	r3, =iwram_3001ee4
	mov	r4, #0xaa
	ldr	r3, [r3]
	lsl	r4, #1
	add	r4, r7
	mov	r9, r4
	ldr	r4, [r3]
	ldr	r3, [r3, #4]
	mov	r2, #0xb0
	str	r3, [sp, #4]
	lsl	r2, #1
	add	r6, r7, r2
	mov	r11, r4
	ldr	r3, [r6]
	mov	r4, #1
	mov	r1, #0
	neg	r4, r4
	mov	r8, r1
	cmp	r3, r4
	bne	.Lbdc26
	ldr	r1, [sp, #8]
	ldr	r3, [r1, #0x54]
	str	r3, [r6]
.Lbdc26:
	ldr	r5, =REG_WINOUT
	bl	_Func_80198dc
	mov	r0, r5
	mov	r1, #4
	bl	Func_80039fc
	mov	r0, r5
	mov	r1, #0x10
	bl	Func_800393c
	mov	r3, #0xa0
	mov	r2, r9
	lsl	r3, #8
	str	r3, [r2, #4]
	mov	r3, r8
	str	r3, [r2, #8]
	mov	r1, r10
	ldr	r0, [r6]
	bl	UploadSprite2
	ldr	r3, .Lbdc84	@ 0x3ff
	mov	r4, r9
	ldrh	r2, [r4, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	mov	r1, r9
	strh	r3, [r1, #8]
	ldr	r4, [sp, #4]
	mov	r3, r11
	ldrh	r2, [r3, #0xc]
	ldrh	r3, [r4, #4]
	lsl	r2, #3
	lsr	r3, #8
	add	r2, r3
	add	r2, #4
	mov	r8, r2
	ldr	r3, .Lbdc88	@ 0x1ff
	mov	r1, r8
	and	r1, r3
	mov	r3, r9
	ldrh	r2, [r3, #6]
	ldr	r3, =0xfffffe00
	and	r3, r2
	b	.Lbdca4

	.align	2, 0
.Lbdc84:
	.word	0x3ff
.Lbdc88:
	.word	0x1ff
	.pool

.Lbdca4:
	orr	r3, r1
	ldr	r1, =iwram_3001e40
	ldr	r0, [r1]
	mov	r4, r9
	strh	r3, [r4, #6]
	lsl	r0, #12
	bl	sin
	cmp	r0, #0
	bge	.Lbdcbc
	ldr	r2, =0x7fff
	add	r0, r2
.Lbdcbc:
	mov	r4, r11
	ldrh	r3, [r4, #0xe]
	ldr	r1, [sp, #4]
	asr	r2, r0, #15
	lsl	r3, #3
	add	r2, r3
	ldrh	r3, [r1, #6]
	lsr	r3, #8
	add	r3, r2
	ldr	r0, =gKeyHeld
	add	r3, #6
	mov	r2, r9
	strb	r3, [r2, #4]
	ldr	r3, [r0]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.Lbdd06
	ldr	r3, =iwram_3001af8
	ldr	r1, =0x303
	ldr	r3, [r3]
	and	r3, r1
	cmp	r3, #0
	bne	.Lbdd06
	mov	r4, #0xa8
	ldr	r3, =iwram_3001800
	lsl	r4, #1
	add	r2, r7, r4
	ldr	r3, [r3]
	ldr	r2, [r2]
	sub	r3, r2
	cmp	r3, #0xa
	bls	.Lbdd22
	ldr	r3, [r0]
	and	r3, r1
	cmp	r3, #0
	beq	.Lbdd22
.Lbdd06:
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, #0xa4
	lsl	r1, #1
	add	r2, r7, r1
	mov	r3, #2
	str	r3, [r2]
	mov	r3, #0xa8
	lsl	r3, #1
	add	r2, r7, r3
.Lbdd1c:
	mov	r3, #0
	str	r3, [r2]
	b	.Lbd8c2
.Lbdd22:
	mov	r0, r9
	mov	r1, #0xf0
	bl	Func_8003dec
	b	.Lbdfb4
.Lbdd2c:
	cmp	r3, #0xa
	bne	.Lbddb8
	mov	r4, #0xa8
	lsl	r4, #1
	add	r3, r7, r4
	ldr	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lbdd96
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lbdd6e
	add	r1, sp, #0x1c
	mov	r9, r1
	mov	r2, r9
	mov	r3, #0xff
	strh	r3, [r2]
	add	r3, #0x65
	add	r5, r7, r3
	ldr	r0, [r5]
	bl	GetBattleActor
	mov	r6, r0
	ldr	r0, [r5]
	bl	Func_80b6cd0
	mov	r1, r0
	ldr	r0, [r6]
	bl	Func_80ba918
	b	.Lbdd90
.Lbdd6e:
	mov	r1, #0xb2
	lsl	r1, #1
	mov	r4, #0x1c
	add	r3, r7, r1
	add	r4, sp
	ldr	r0, [r3]
	mov	r9, r4
	mov	r2, r9
	mov	r3, #0xff
	strh	r0, [r2]
	strh	r3, [r4, #2]
	bl	GetBattleActor
	mov	r1, #7
	ldr	r0, [r0]
	bl	Func_80ba918
.Lbdd90:
	mov	r0, r9
	bl	_Func_802281c
.Lbdd96:
	mov	r2, #0xa8
	lsl	r2, #1
	add	r1, r7, r2
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	cmp	r3, #8
	bgt	.Lbdda8
	b	.Lbdfb4
.Lbdda8:
	mov	r4, #0xa4
	lsl	r4, #1
	add	r3, r7, r4
	mov	r2, #2
	str	r2, [r3]
	mov	r3, #0
	str	r3, [r1]
	b	.Lbd8c2
.Lbddb8:
	cmp	r3, #0xb
	beq	.Lbddbe
	b	.Lbd8c2
.Lbddbe:
	mov	r1, #0xa8
	lsl	r1, #1
	add	r5, r7, r1
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lbddd2
	mov	r2, #0x80
	lsl	r2, #3
	cmp	r3, r2
	blt	.Lbdeca
.Lbddd2:
	mov	r4, #6
	mov	r10, r4
	cmp	r3, #0
	bne	.Lbde1c
	mov	r1, #0xb6
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lbde1c
	mov	r2, #0xb2
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r0, [r3]
	bl	_GetUnit
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r3
	ldrb	r0, [r0]
	bl	Func_80c2368
	cmp	r0, #0
	blt	.Lbde10
	sub	r0, #1
	cmp	r0, #0
	bge	.Lbde0a
	mov	r0, #0
.Lbde0a:
	add	r0, #0x92
	bl	_PlaySound
.Lbde10:
	mov	r4, #0xa8
	lsl	r4, #1
	mov	r3, #0x80
	add	r2, r7, r4
	lsl	r3, #3
	str	r3, [r2]
.Lbde1c:
	mov	r1, #0xa8
	lsl	r1, #1
	add	r2, r7, r1
	ldr	r3, [r2]
	ldr	r4, =0x41d
	cmp	r3, r4
	ble	.Lbde2e
	mov	r3, #0
	str	r3, [r2]
.Lbde2e:
	cmp	r3, #0
	bne	.Lbde54
	mov	r1, #0xb2
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r0, [r3]
	bl	_GetUnit
	mov	r2, #0x94
	lsl	r2, #1
	add	r0, r2
	ldrb	r0, [r0]
	bl	Func_80c2368
	cmp	r0, #0
	blt	.Lbde54
	add	r0, #0x92
	bl	_PlaySound
.Lbde54:
	mov	r4, #0xa8
	lsl	r4, #1
	add	r3, r7, r4
	mov	r1, #0x80
	ldr	r3, [r3]
	lsl	r1, #3
	cmp	r3, r1
	blt	.Lbde7c
	ldr	r2, =0xfffffc00
	add	r0, r3, r2
	cmp	r0, #0
	bge	.Lbde70
	ldr	r4, =0xfffffc07
	add	r0, r3, r4
.Lbde70:
	asr	r0, #3
	mov	r1, #5
	bl	__modsi3
	add	r0, #1
	mov	r10, r0
.Lbde7c:
	mov	r1, r10
	cmp	r1, #6
	beq	.Lbde94
	mov	r2, #0xa8
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	beq	.Lbde94
	b	.Lbdfa2
.Lbde94:
	mov	r3, #0xff
	mov	r6, #0
	add	r5, sp, #0xc
	mov	r8, r3
	b	.Lbdeb0
.Lbde9e:
	ldr	r2, [r0, #0x28]
	ldrb	r3, [r2, #0x16]
	mov	r1, r8
	mov	r4, r10
	orr	r3, r1
	stmia	r5!, {r0}
	strb	r4, [r2, #5]
	strb	r3, [r2, #0x16]
	add	r6, #1
.Lbdeb0:
	mov	r2, #0xb2
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r0, [r3]
	bl	GetBattleActor
	mov	r1, r6
	ldr	r0, [r0]
	bl	Func_80b7f70
	cmp	r0, #0
	bne	.Lbde9e
	b	.Lbdfa2
.Lbdeca:
	cmp	r3, #4
	bne	.Lbdede
	mov	r4, #0xb2
	lsl	r4, #1
	add	r3, r7, r4
	ldr	r0, [r3]
	bl	Func_80bac6c
	ldr	r3, [r5]
	b	.Lbdfb0
.Lbdede:
	cmp	r3, #4
	ble	.Lbdfb0
	mov	r1, #0xb2
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r0, [r3]
	bl	GetBattleActor
	mov	r3, #1
	mov	r6, r0
	mov	r2, #0
	add	r5, sp, #0xc
	strh	r3, [r6, #0x2a]
	b	.Lbdefe
.Lbdefa:
	stmia	r5!, {r0}
	add	r2, #1
.Lbdefe:
	mov	r1, r2
	ldr	r0, [r6]
	str	r2, [sp]
	bl	Func_80b7f70
	ldr	r2, [sp]
	cmp	r0, #0
	bne	.Lbdefa
	mov	r4, #0xa8
	lsl	r4, #1
	add	r3, r7, r4
	ldr	r3, [r3]
	mov	r1, #0x14
	lsl	r3, #2
	neg	r1, r1
	add	r1, r3
	mov	r8, r1
	cmp	r1, #0x7f
	ble	.Lbdf60
	cmp	r2, #0
	ble	.Lbdf3e
	add	r6, sp, #0xc
	mov	r5, r2
.Lbdf2c:
	add	r2, sp, #0x2c
	ldmia	r6!, {r0}
	mov	r9, r2
	mov	r1, #0
	sub	r5, #1
	bl	Func_80bd850
	cmp	r5, #0
	bne	.Lbdf2c
.Lbdf3e:
	mov	r4, #0xb2
	lsl	r4, #1
	add	r3, r7, r4
	ldr	r0, [r3]
	bl	Func_80b7e60
	mov	r1, #0xa4
	lsl	r1, #1
	add	r2, r7, r1
	mov	r3, #2
	str	r3, [r2]
	mov	r3, #0xa8
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0
	str	r3, [r2]
	b	.Lbdfb4
.Lbdf60:
	cmp	r2, #0
	ble	.Lbdfa2
	mov	r4, #0x13
	mov	r1, #0x12
	neg	r4, r4
	neg	r1, r1
	add	r4, r3
	add	r1, r3
	sub	r3, #0x11
	mov	r11, r4
	mov	r9, r1
	mov	r10, r3
	mov	r6, r2
	add	r5, sp, #0xc
.Lbdf7c:
	ldr	r0, [r5]
	mov	r1, r8
	bl	_Func_800be70
	ldr	r0, [r5]
	mov	r1, r11
	bl	_Func_800be70
	ldr	r0, [r5]
	mov	r1, r9
	bl	_Func_800be70
	sub	r6, #1
	ldmia	r5!, {r0}
	mov	r1, r10
	bl	_Func_800be70
	cmp	r6, #0
	bne	.Lbdf7c
.Lbdfa2:
	mov	r3, #0xa8
	lsl	r3, #1
	add	r2, r7, r3
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	b	.Lbdfb4
.Lbdfb0:
	add	r3, #1
	str	r3, [r5]
.Lbdfb4:
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80bd898

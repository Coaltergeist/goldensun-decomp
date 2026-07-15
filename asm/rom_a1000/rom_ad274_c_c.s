	.include "macros.inc"

	.section .text.after_ad69c, "ax", %progbits

.thumb_func_start Func_80ad6d4  @ 0x080ad6d4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	sub	sp, #0x88
	mov	r9, r3
	mov	r1, #1
	mov	r2, #0
	mov	r3, #2
	mov	r11, r0
	mov	r0, #0
	str	r0, [sp, #0x64]
	str	r1, [sp, #0x60]
	str	r3, [sp, #0x58]
	str	r2, [sp, #0x5c]
	mov	r4, r9
	ldr	r2, [r4, #0x14]
	mov	r3, #0xd
	mov	r0, sp
	strb	r3, [r2, #5]
	mov	r7, #0
	add	r0, #0x80
	mov	r3, #0xa5
	str	r7, [sp, #0x80]
	str	r0, [sp, #0x18]
	lsl	r3, #1
	str	r7, [r0, #4]
	ldr	r1, .Lad748	@ 0xc8
	mov	r2, #3
	add	r3, r9
.Lad71a:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.Lad71a
	mov	r1, r9
	mov	r3, #0x1d
	ldrsb	r3, [r1, r3]
	mov	r4, #0x9a
	lsl	r4, #1
	ldr	r2, .Lad74c	@ 0x78
	lsl	r3, #1
	add	r3, r4
	mov	r0, r9
	strh	r2, [r0, r3]
	mov	r3, #0x1d
	ldrsb	r3, [r0, r3]
	mov	r0, #0xa2
	ldr	r1, .Lad750	@ 0x20
	lsl	r0, #1
	lsl	r3, #1
	b	.Lad758

	.align	2, 0
.Lad748:
	.word	0xc8
.Lad74c:
	.word	0x78
.Lad750:
	.word	0x20
	.pool

.Lad758:
	add	r3, r0
	mov	r2, r9
	strh	r1, [r2, r3]
	mov	r3, #0x1c
	ldrsb	r3, [r2, r3]
	ldr	r2, =0x10
	lsl	r3, #1
	add	r3, r4
	mov	r4, r9
	strh	r2, [r4, r3]
	mov	r3, #0x1c
	ldrsb	r3, [r4, r3]
	lsl	r3, #1
	add	r3, r0
	mov	r0, r9
	strh	r1, [r0, r3]
	mov	r5, #0x86
	ldr	r0, [r0, #0x30]
	lsl	r5, #1
	bl	_Func_80164ac
	add	r5, r9
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r5
	mov	r1, #1
	bl	Func_80a1114
	mov	r3, #5
	str	r3, [sp]
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r1, #0
	b	.Lad7a4

	.pool_aligned

.Lad7a4:
	mov	r2, #0
	mov	r0, r5
	mov	r3, #0x1e
	bl	Func_80a10d0
	mov	r1, sp
	mov	r7, #1
	add	r1, #0x78
	mov	r2, r11
	str	r7, [sp, #0x78]
	str	r1, [sp, #0x1c]
	str	r7, [r1, #4]
	cmp	r2, #1
	bls	.Lad7c2
	b	.Lad922
.Lad7c2:
	mov	r0, #0x60
	bl	Func_8004970
	mov	r5, #0xa6
	lsl	r5, #1
	str	r0, [sp, #0x54]
	mov	r0, r5
	bl	Func_8004970
	mov	r3, #0
	str	r3, [sp, #0x4c]
	str	r3, [sp, #0x48]
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r6, [r3]
	ldr	r3, =0x256
	add	r3, r9
	ldrb	r3, [r3]
	str	r3, [sp, #0x50]
	mov	r3, #0x95
	lsl	r3, #2
	mov	r4, #0x1f
	add	r3, r9
	mov	r8, r4
	ldrb	r3, [r3]
	mov	r10, r0
	mov	r0, r8
	and	r0, r3
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #8
	and	r3, r2
	lsl	r3, #16
	lsr	r3, #16
	mov	r8, r0
	mov	r0, r6
	str	r3, [sp, #0x44]
	bl	_GetUnit
	mov	r7, r0
	ldr	r3, =Func_8001af8
	mov	r1, r7
	mov	r2, r5
	mov	r0, r10
	bl	_call_via_r3
	mov	r0, r6
	ldr	r1, [sp, #0x50]
	mov	r2, r8
	bl	_Func_807a350
	mov	r1, r11
	cmp	r1, #0
	bne	.Lad870
	ldr	r3, =0x257
	add	r3, r9
	ldrb	r3, [r3]
	str	r3, [sp, #0x4c]
	ldr	r3, =0x255
	add	r3, r9
	ldrb	r3, [r3]
	mov	r2, #0x1f
	and	r2, r3
	mov	r3, #0xbd
	str	r2, [sp, #0x48]
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	mov	r5, #0x80
	lsl	r5, #8
	and	r5, r3
	lsl	r5, #16
	lsr	r5, #16
	mov	r0, r6
	ldr	r1, [sp, #0x4c]
	bl	_GiveDjinni
	cmp	r5, #0
	beq	.Lad870
	mov	r0, r6
	ldr	r1, [sp, #0x4c]
	ldr	r2, [sp, #0x48]
	bl	_SetDjinni
.Lad870:
	mov	r0, r6
	bl	_CalcStats
	mov	r3, r10
	mov	r4, sp
	mov	r0, sp
	add	r4, #0x74
	add	r3, #0x58
	add	r0, #0x70
	mov	r1, r7
	str	r3, [sp, #0x40]
	str	r0, [sp, #0x38]
	str	r0, [sp]
	ldr	r2, [sp, #0x54]
	add	r1, #0x58
	mov	r0, r3
	mov	r3, r4
	str	r4, [sp, #0x3c]
	bl	Func_80aae14
	mov	r2, #0xa6
	str	r0, [sp, #0x78]
	mov	r1, r10
	lsl	r2, #1
	ldr	r5, =Func_8001af8
	mov	r0, r7
	bl	_call_via_r5
	ldr	r3, =0x21b
	add	r3, r9
	ldrb	r6, [r3]
	mov	r0, r6
	bl	_GetUnit
	mov	r2, #0xa6
	mov	r7, r0
	mov	r1, r7
	mov	r0, r10
	lsl	r2, #1
	bl	_call_via_r5
	mov	r1, r11
	cmp	r1, #0
	bne	.Lad8d2
	mov	r0, r6
	ldr	r1, [sp, #0x4c]
	ldr	r2, [sp, #0x48]
	bl	_Func_807a350
.Lad8d2:
	mov	r2, r8
	mov	r0, r6
	ldr	r1, [sp, #0x50]
	bl	_GiveDjinni
	ldr	r2, [sp, #0x44]
	cmp	r2, #0
	beq	.Lad8ec
	mov	r0, r6
	ldr	r1, [sp, #0x50]
	mov	r2, r8
	bl	_SetDjinni
.Lad8ec:
	mov	r0, r6
	bl	_CalcStats
	ldr	r3, [sp, #0x38]
	mov	r1, r7
	str	r3, [sp]
	ldr	r2, [sp, #0x54]
	ldr	r0, [sp, #0x40]
	ldr	r3, [sp, #0x3c]
	add	r1, #0x58
	bl	Func_80aae14
	ldr	r4, [sp, #0x1c]
	mov	r2, #0xa6
	str	r0, [r4, #4]
	mov	r1, r10
	lsl	r2, #1
	mov	r0, r7
	bl	_call_via_r5
	mov	r0, r10
	bl	free
	ldr	r0, [sp, #0x54]
	bl	free
	b	.Lad9d8
.Lad922:
	mov	r3, r11
	sub	r3, #2
	cmp	r3, #1
	bhi	.Lad9d8
	mov	r0, #0x60
	bl	Func_8004970
	str	r0, [sp, #0x34]
	mov	r0, #0xa6
	lsl	r0, #1
	bl	Func_8004970
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r6, [r3]
	ldr	r3, =0x256
	add	r3, r9
	ldrb	r3, [r3]
	str	r3, [sp, #0x30]
	mov	r3, #0x95
	lsl	r3, #2
	mov	r10, r0
	add	r3, r9
	mov	r0, #0x1f
	ldrb	r3, [r3]
	mov	r8, r0
	mov	r1, r8
	and	r1, r3
	mov	r2, r11
	mov	r3, #3
	eor	r3, r2
	neg	r5, r3
	mov	r0, r6
	mov	r8, r1
	orr	r5, r3
	bl	_GetUnit
	lsr	r5, #31
	sub	r5, r7, r5
	mov	r2, #0xa6
	mov	r7, r0
	mov	r1, r7
	lsl	r2, #1
	mov	r0, r10
	ldr	r3, =Func_8001af8
	bl	_call_via_r3
	mov	r0, r6
	ldr	r1, [sp, #0x30]
	mov	r2, r8
	bl	_Func_807a350
	cmp	r5, #0
	beq	.Lad998
	mov	r0, r6
	ldr	r1, [sp, #0x30]
	mov	r2, r8
	bl	_SetDjinni
.Lad998:
	mov	r0, r6
	bl	_CalcStats
	mov	r0, r10
	add	r2, sp, #0x68
	mov	r1, r7
	add	r3, sp, #0x6c
	str	r2, [sp]
	add	r1, #0x58
	ldr	r2, [sp, #0x34]
	add	r0, #0x58
	bl	Func_80aae14
	mov	r2, #0xa6
	str	r0, [sp, #0x78]
	mov	r1, r10
	lsl	r2, #1
	ldr	r4, =Func_8001af8
	mov	r0, r7
	bl	_call_via_r4
	ldr	r0, [sp, #0x1c]
	ldr	r3, [sp, #0x78]
	mov	r1, #0
	str	r3, [r0, #4]
	mov	r0, r10
	str	r1, [sp, #0x58]
	bl	free
	ldr	r0, [sp, #0x34]
	bl	free
.Lad9d8:
	ldr	r0, [sp, #0x78]
	mov	r1, #5
	sub	r0, #1
	bl	__divsi3
	add	r0, #1
	str	r0, [sp, #0x78]
	cmp	r0, #0
	bne	.Lad9ee
	mov	r3, #1
	str	r3, [sp, #0x78]
.Lad9ee:
	ldr	r2, [sp, #0x1c]
	ldr	r0, [r2, #4]
	mov	r1, #5
	sub	r0, #1
	bl	__divsi3
	ldr	r3, [sp, #0x1c]
	add	r0, #1
	str	r0, [r3, #4]
	cmp	r0, #0
	bne	.Lada0a
	ldr	r4, [sp, #0x1c]
	mov	r3, #1
	str	r3, [r4, #4]
.Lada0a:
	mov	r0, r9
	mov	r5, #2
	add	r0, #0x24
	mov	r6, #0xf
	mov	r1, #0
	mov	r2, #5
	mov	r3, #0xf
	str	r5, [sp, #4]
	str	r0, [sp, #0x2c]
	str	r6, [sp]
	bl	Func_80a10d0
	mov	r1, r9
	str	r5, [sp, #4]
	mov	r5, #0x86
	add	r1, #0x34
	lsl	r5, #1
	str	r1, [sp, #0x28]
	mov	r2, #5
	mov	r0, r1
	mov	r3, #0xf
	mov	r1, #0xf
	add	r5, r9
	str	r6, [sp]
	bl	Func_80a10d0
	ldr	r0, [r5]
	bl	_Func_8016498
	mov	r2, r11
	cmp	r2, #2
	bne	.Lada4e
	ldr	r0, =0xba5
	b	.Lada56
.Lada4e:
	mov	r3, r11
	cmp	r3, #3
	bne	.Lada6e
	ldr	r0, =0xba4
.Lada56:
	ldr	r1, [r5]
	mov	r2, #0x60
	mov	r3, #0
	bl	_Func_801e7c0
	ldr	r0, =0xbc1
	ldr	r1, [r5]
	mov	r2, #0x60
	mov	r3, #0x10
	bl	_Func_801e7c0
	b	.Ladaa6
.Lada6e:
	mov	r4, r11
	cmp	r4, #0
	bne	.Lada8e
	ldr	r0, =0xba7
	ldr	r1, [r5]
	mov	r2, #0x80
	mov	r3, #0
	bl	_Func_801e7c0
	ldr	r0, =0xbc1
	ldr	r1, [r5]
	mov	r2, #0x80
	mov	r3, #8
	bl	_Func_801e7c0
	b	.Ladaa6
.Lada8e:
	ldr	r0, =0xba6
	ldr	r1, [r5]
	mov	r2, #0x80
	mov	r3, #0
	bl	_Func_801e7c0
	ldr	r0, =0xbc1
	ldr	r1, [r5]
	mov	r2, #0x80
	mov	r3, #8
	bl	_Func_801e7c0
.Ladaa6:
	mov	r1, #1
	mov	r2, r11
	mov	r7, #0xbc
	eor	r2, r1
	lsl	r7, #1
	mov	r0, #0x80
	neg	r3, r2
	add	r7, r9
	lsl	r0, #8
	orr	r3, r2
	mov	r8, r0
	ldrh	r2, [r7]
	lsr	r5, r3, #31
	mov	r3, r8
	and	r3, r2
	sub	r5, r1, r5
	cmp	r3, #0
	bne	.Ladad2
	mov	r0, #2
	bl	_SetTextColor
	ldrh	r2, [r7]
.Ladad2:
	mov	r3, #0xe0
	and	r3, r2
	lsr	r3, #5
	lsl	r0, r3, #2
	add	r0, r3
	mov	r6, #0x86
	mov	r3, #0x1f
	and	r3, r2
	ldr	r1, =0x45f
	lsl	r0, #2
	lsl	r6, #1
	add	r0, r3
	add	r6, r9
	add	r0, r1
	lsl	r3, r5, #3
	ldr	r1, [r6]
	mov	r2, #0x30
	bl	_Func_801e7c0
	ldrh	r3, [r7]
	mov	r1, #0xe0
	and	r1, r3
	ldr	r2, =0x5001
	mov	r3, #0
	lsr	r1, #5
	ldr	r0, [r6]
	add	r1, r2
	str	r3, [sp]
	mov	r2, #5
	mov	r10, r3
	mov	r3, r5
	bl	_Func_8019000
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r4, r11
	cmp	r4, #0
	bne	.Ladbba
	mov	r5, #0xbd
	lsl	r5, #1
	add	r5, r9
	ldrh	r2, [r5]
	mov	r3, r8
	and	r3, r2
	cmp	r3, #0
	bne	.Ladb38
	mov	r0, #2
	bl	_SetTextColor
	ldrh	r2, [r5]
.Ladb38:
	mov	r3, #0xe0
	and	r3, r2
	lsr	r3, #5
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0x1f
	and	r3, r2
	ldr	r1, =0x45f
	lsl	r0, #2
	add	r0, r3
	add	r0, r1
	mov	r2, #0x30
	ldr	r1, [r6]
	mov	r3, #0x10
	bl	_Func_801e7c0
	ldrh	r3, [r5]
	mov	r1, #0xe0
	and	r1, r3
	ldr	r2, =0x5001
	mov	r3, r11
	lsr	r1, #5
	ldr	r0, [r6]
	add	r1, r2
	str	r3, [sp]
	mov	r2, #5
	mov	r3, #2
	bl	_Func_8019000
	mov	r0, #0xf
	bl	_SetTextColor
	b	.Ladc24
.Ladb7a:
	mov	r7, #1
	b	.Lae216

	.pool_aligned

.Ladbb4:
	mov	r0, #0x71
	mov	r7, #2
	b	.Lae15e
.Ladbba:
	mov	r3, r11
	sub	r3, #2
	cmp	r3, #1
	bhi	.Ladc24
	ldrh	r2, [r7]
	mov	r3, r8
	and	r3, r2
	cmp	r3, #0
	beq	.Ladbd4
	mov	r0, #2
	bl	_SetTextColor
	ldrh	r2, [r7]
.Ladbd4:
	mov	r3, #0xe0
	and	r3, r2
	lsr	r3, #5
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0x1f
	ldr	r4, =0x45f
	and	r3, r2
	lsl	r0, #2
	add	r0, r3
	add	r0, r4
	ldr	r1, [r6]
	mov	r2, #0x30
	mov	r3, #0x10
	bl	_Func_801e7c0
	ldrh	r3, [r7]
	mov	r1, #0xe0
	and	r1, r3
	ldr	r2, =0x5001
	mov	r3, r10
	lsr	r1, #5
	add	r1, r2
	ldr	r0, [r6]
	mov	r2, #5
	str	r3, [sp]
	mov	r3, #2
	bl	_Func_8019000
	mov	r0, #0xf
	bl	_SetTextColor
	ldr	r0, [r6]
	mov	r4, r10
	ldr	r1, =0xf296
	mov	r2, #7
	mov	r3, #1
	str	r4, [sp]
	bl	_Func_8019000
.Ladc24:
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r10, r3
	mov	r3, #0xc2
	lsl	r3, #1
	add	r3, r9
	ldr	r6, [r3]
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	ldr	r0, =0x212c
	str	r3, [sp, #0x20]
	add	r5, r6, r0
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.Ladc4a
	b	.Lade0c
.Ladc4a:
	mov	r0, #0x80
	lsl	r0, #2
	bl	Func_8004970
	mov	r1, #0
	ldr	r3, =0x2128
	str	r1, [sp, #0x24]
	str	r1, [sp, #0x20]
	add	r2, r6, r3
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	ldr	r3, [r5]
	sub	r3, #5
	mov	r8, r0
	cmp	r3, #0x12
	bls	.Ladc6e
	b	.Lade06
.Ladc6e:
	ldr	r2, =.Ladc78
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Ladc78:
	.word	.Ladcc4
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Ladce6
	.word	.Ladd72
	.word	.Ladcc4
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Lade06
	.word	.Ladcc4
.Ladcc4:
	ldr	r4, =0x2128
	add	r2, r6, r4
	ldr	r3, [r2]
	cmp	r3, #0x64
	beq	.Ladcd0
	b	.Lade06
.Ladcd0:
	mov	r0, #1
	ldr	r1, =0x212c
	str	r0, [sp, #0x20]
	str	r0, [sp, #0x24]
	mov	r3, #0
	str	r3, [r2]
	add	r2, r6, r1
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	b	.Lade06
.Ladce6:
	ldr	r2, =0x2128
	add	r3, r6, r2
	ldr	r3, [r3]
	cmp	r3, #0x3c
	beq	.Ladcf2
	b	.Lade06
.Ladcf2:
	mov	r2, #0x80
	mov	r1, r10
	ldr	r3, =Func_8001af8
	mov	r0, r8
	lsl	r2, #2
	bl	_call_via_r3
	mov	r1, #8
	mov	r2, #0
	mov	r3, #1
	ldr	r0, =0xc43
	bl	_Func_8017658
	mov	r7, r0
	mov	r4, r9
	ldr	r3, [r4, #0x14]
	mov	r5, #1
	strb	r5, [r3, #5]
	mov	r0, #2
	mov	r1, #0x60
	bl	Func_80a1ac0
	ldr	r3, =gState
	mov	r0, #0x83
	lsl	r0, #2
	add	r3, r0
	strb	r5, [r3]
	b	.Ladd30
.Ladd2a:
	mov	r0, #1
	bl	WaitFrames
.Ladd30:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Ladd2a
	mov	r0, r7
	mov	r1, #1
	bl	_CloseUIBox
	mov	r2, #0x80
	mov	r1, r8
	ldr	r3, =Func_8001af8
	lsl	r2, #2
	mov	r0, r10
	bl	_call_via_r3
	bl	_Func_801e318
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r10
	strb	r3, [r2]
	ldr	r2, =0x2128
	str	r3, [sp, #0x60]
	mov	r1, #0
	add	r3, r6, r2
	str	r1, [r3]
	ldr	r3, =0x212c
	add	r2, r6, r3
	mov	r3, #0xb
	str	r3, [r2]
	mov	r4, r9
	ldr	r2, [r4, #0x14]
	b	.Lade02
.Ladd72:
	ldr	r0, =0x2128
	add	r3, r6, r0
	ldr	r3, [r3]
	cmp	r3, #0x3c
	bne	.Lade06
	mov	r2, #0x80
	mov	r1, r10
	ldr	r3, =Func_8001af8
	mov	r0, r8
	lsl	r2, #2
	bl	_call_via_r3
	mov	r1, #8
	mov	r2, #0
	mov	r3, #1
	ldr	r0, =0xc42
	bl	_Func_8017658
	mov	r7, r0
	mov	r1, r9
	ldr	r3, [r1, #0x14]
	mov	r5, #1
	strb	r5, [r3, #5]
	mov	r0, #0x6a
	mov	r1, #0x38
	bl	Func_80a1ac0
	ldr	r3, =gState
	mov	r2, #0x83
	lsl	r2, #2
	add	r3, r2
	strb	r5, [r3]
	b	.Laddba
.Laddb4:
	mov	r0, #1
	bl	WaitFrames
.Laddba:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Laddb4
	mov	r0, r7
	mov	r1, #1
	bl	_CloseUIBox
	mov	r2, #0x80
	mov	r1, r8
	ldr	r3, =Func_8001af8
	lsl	r2, #2
	mov	r0, r10
	bl	_call_via_r3
	bl	_Func_801e318
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r10
	strb	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r4, =0x2128
	mov	r3, #1
	ldr	r0, =0x212c
	str	r3, [sp, #0x60]
	mov	r5, #0
	add	r3, r6, r4
	str	r5, [r3]
	add	r2, r6, r0
	mov	r3, #0xc
	str	r3, [r2]
	mov	r1, r9
	ldr	r2, [r1, #0x14]
.Lade02:
	mov	r3, #0xd
	strb	r3, [r2, #5]
.Lade06:
	mov	r0, r8
	bl	free
.Lade0c:
	ldr	r2, [sp, #0x60]
	cmp	r2, #0
	bne	.Lade14
	b	.Ladfbc
.Lade14:
	mov	r3, #1
	mov	r4, r11
	mov	r8, r3
	cmp	r4, #1
	bhi	.Lade78
	mov	r5, #0x86
	lsl	r5, #1
	mov	r3, #0x18
	add	r5, r9
	ldr	r0, [r5]
	mov	r1, #0x80
	str	r3, [sp]
	mov	r2, #0x10
	mov	r3, #0xe0
	bl	_Func_80164d4
	ldr	r0, [sp, #0x58]
	cmp	r0, #1
	bne	.Lade48
	ldr	r0, =0xba1
	ldr	r1, [r5]
	mov	r2, #0x80
	mov	r3, #0x10
	bl	_Func_801e7c0
	b	.Lade78
.Lade48:
	ldr	r1, [sp, #0x58]
	mov	r2, #2
	eor	r2, r1
	neg	r3, r2
	orr	r3, r2
	mov	r2, #0x86
	lsl	r2, #2
	lsr	r3, #31
	add	r3, r2
	mov	r2, r9
	add	r2, #2
	ldrb	r0, [r2, r3]
	mov	r1, #1
	bl	_Func_8019908
	mov	r3, #0x86
	lsl	r3, #1
	add	r3, r9
	ldr	r1, [r3]
	ldr	r0, =0xba0
	mov	r2, #0x80
	mov	r3, #0x10
	bl	_Func_801e7c0
.Lade78:
	ldr	r2, =0xea6
	mov	r3, #1
	add	r2, r10
	strb	r3, [r2]
	mov	r2, r9
	ldr	r0, [r2, #0x24]
	bl	_Func_8016478
	mov	r3, r9
	ldr	r0, [r3, #0x34]
	bl	_Func_8016478
	ldr	r4, [sp, #0x60]
	lsr	r3, r4, #1
	cmp	r3, #0
	beq	.Lade9e
	mov	r0, #1
	bl	WaitFrames
.Lade9e:
	mov	r0, r11
	cmp	r0, #3
	bne	.Ladeac
	mov	r1, #0
	mov	r7, #0
	mov	r8, r1
	b	.Ladebc
.Ladeac:
	mov	r2, r11
	cmp	r2, #2
	bne	.Ladeba
	mov	r3, #0
	mov	r7, #1
	mov	r8, r3
	b	.Ladebc
.Ladeba:
	mov	r7, #2
.Ladebc:
	ldr	r4, [sp, #0x58]
	cmp	r4, #0
	beq	.Ladf64
	cmp	r4, #1
	beq	.Laded0
	mov	r0, r11
	mov	r1, #0
	bl	Func_80aca04
	b	.Ladfb4
.Laded0:
	mov	r0, r11
	cmp	r0, #1
	bne	.Laded8
	mov	r7, #4
.Laded8:
	ldr	r6, =0x21b
	ldr	r2, [sp, #0x58]
	mov	r1, r9
	add	r6, r9
	ldr	r0, [r1, #0x24]
	ldrb	r3, [r6]
	mov	r5, #0
	str	r2, [sp]
	mov	r1, #0
	mov	r2, #0
	str	r5, [sp, #4]
	str	r7, [sp, #8]
	str	r5, [sp, #0xc]
	str	r5, [sp, #0x10]
	bl	Func_80acab8
	ldr	r4, [sp, #0x58]
	mov	r3, r9
	ldr	r0, [r3, #0x34]
	ldr	r1, [sp, #0x18]
	ldrb	r3, [r6]
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r7, [sp, #8]
	ldr	r2, [r1, #4]
	add	r2, #1
	str	r2, [sp, #0xc]
	mov	r1, #0
	mov	r2, #0
	str	r5, [sp, #0x10]
	bl	Func_80acab8
	b	.Ladfb4

	.pool_aligned

.Ladf64:
	mov	r2, r11
	cmp	r2, #1
	bne	.Ladf70
	mov	r3, #0
	mov	r7, #1
	mov	r8, r3
.Ladf70:
	mov	r5, #0x96
	ldr	r1, [sp, #0x58]
	lsl	r5, #2
	mov	r4, r9
	add	r5, r9
	mov	r2, r8
	ldr	r0, [r4, #0x24]
	ldrb	r3, [r5]
	mov	r6, #1
	str	r1, [sp]
	str	r2, [sp, #4]
	str	r1, [sp, #0xc]
	mov	r2, #0
	mov	r1, #0
	str	r7, [sp, #8]
	str	r6, [sp, #0x10]
	bl	Func_80acab8
	ldr	r2, [sp, #0x80]
	mov	r3, r9
	mov	r1, r8
	add	r2, #1
	ldr	r4, [sp, #0x58]
	ldr	r0, [r3, #0x34]
	ldrb	r3, [r5]
	str	r1, [sp, #4]
	str	r2, [sp, #0xc]
	mov	r1, #0
	mov	r2, #0
	str	r4, [sp]
	str	r7, [sp, #8]
	str	r6, [sp, #0x10]
	bl	Func_80acab8
.Ladfb4:
	ldr	r2, =0xea6
	mov	r3, #0
	add	r2, r10
	strb	r3, [r2]
.Ladfbc:
	ldr	r2, [sp, #0x58]
	cmp	r2, #1
	bgt	.Lae050
	ldr	r0, [sp, #0x1c]
	mov	r3, r9
	lsl	r4, r2, #2
	ldr	r7, [r3, #0x34]
	add	r3, r4, r0
	ldr	r2, [r3]
	cmp	r2, #1
	ble	.Lae050
	mov	r5, #0
	cmp	r5, r2
	bge	.Lae012
	mov	r6, r3
.Ladfda:
	ldr	r2, =0xf031
	add	r1, r5, r2
	cmp	r5, #9
	ble	.Ladfe4
	ldr	r1, =0xf030
.Ladfe4:
	ldr	r0, [sp, #0x18]
	ldr	r3, [r4, r0]
	cmp	r5, r3
	bne	.Ladff0
	ldr	r2, =0xfffff000
	add	r1, r2
.Ladff0:
	ldr	r3, [r6]
	ldrh	r2, [r7, #8]
	sub	r2, r3
	add	r2, r5
	mov	r3, #0
	str	r3, [sp]
	sub	r2, #2
	sub	r3, #1
	mov	r0, r7
	str	r4, [sp, #0x14]
	bl	_Func_8019000
	ldr	r3, [r6]
	add	r5, #1
	ldr	r4, [sp, #0x14]
	cmp	r5, r3
	blt	.Ladfda
.Lae012:
	ldr	r0, [sp, #0x1c]
	ldrh	r2, [r7, #8]
	ldr	r3, [r4, r0]
	mov	r6, #1
	neg	r6, r6
	sub	r2, r3
	mov	r5, #0
	mov	r0, r7
	mov	r3, r6
	ldr	r1, =0xf128
	sub	r2, #3
	str	r5, [sp]
	bl	_Func_8019000
	ldrh	r2, [r7, #8]
	ldr	r1, =0xf129
	sub	r2, #2
	mov	r0, r7
	mov	r3, r6
	str	r5, [sp]
	bl	_Func_8019000
	ldr	r1, =0xea3
	ldrh	r2, [r7, #0xe]
	add	r1, r10
	lsr	r2, #2
	mov	r3, #2
	lsl	r3, r2
	ldrb	r2, [r1]
	orr	r3, r2
	strb	r3, [r1]
.Lae050:
	ldr	r1, [sp, #0x5c]
	add	r1, #1
	str	r1, [sp, #0x5c]
	mov	r0, r1
	mov	r1, #0x3c
	bl	__modsi3
	sub	r6, r0, #5
	cmp	r6, #0
	bge	.Lae066
	mov	r6, #0
.Lae066:
	cmp	r6, #0x1d
	ble	.Lae06c
	mov	r6, #0x1d
.Lae06c:
	ldr	r5, =0xffff4000
	mov	r0, #0
	mov	r1, r5
	bl	Func_80ad5f4
	mov	r0, #1
	mov	r1, r5
	bl	Func_80ad5f4
	mov	r2, r11
	cmp	r2, #1
	bhi	.Lae0ec
	mov	r1, #0x1e
	mov	r0, r6
	bl	__modsi3
	mov	r3, r0
	lsl	r0, r3, #4
	add	r0, r3
	lsl	r0, #4
	add	r0, r3
	lsl	r0, #2
	bl	sin
	ldr	r3, =Func_8000888
	mov	r1, r0
	mov	r0, #0x10
	.call_via r3
	mov	r3, #6
	neg	r5, r0
	neg	r3, r3
	cmp	r5, r3
	bge	.Lae0b4
	mov	r5, r3
.Lae0b4:
	cmp	r5, #0xc
	ble	.Lae0ba
	mov	r5, #0xc
.Lae0ba:
	mov	r0, r6
	mov	r1, #0x23
	bl	__modsi3
	lsl	r6, r0, #1
	mov	r1, r6
	mov	r2, r5
	mov	r3, #0
	add	r1, #0x22
	add	r2, #0x14
	mov	r0, #0
	bl	Func_80ad5b4
	mov	r3, r11
	cmp	r3, #0
	bne	.Lae0f8
	mov	r1, #0x63
	mov	r2, #0x24
	sub	r1, r6
	sub	r2, r5
	mov	r0, #1
	mov	r3, #0
	bl	Func_80ad5b4
	b	.Lae0f8
.Lae0ec:
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x1e
	mov	r3, #0
	bl	Func_80ad5b4
.Lae0f8:
	ldr	r4, [sp, #0x60]
	cmp	r4, #0
	beq	.Lae10c
	mov	r0, #0
	str	r0, [sp, #0x60]
	mov	r1, #2
	ldr	r0, [sp, #0x64]
	bl	Func_80aa538
	str	r0, [sp, #0x64]
.Lae10c:
	ldr	r1, [sp, #0x64]
	lsl	r0, r1, #3
	sub	r0, r1
	lsl	r0, #3
	add	r0, #0x50
	mov	r1, #0x10
	bl	Func_80a1a40
	ldr	r2, [sp, #0x5c]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Lae148
	mov	r3, #4
	and	r3, r2
	cmp	r3, #0
	beq	.Lae13c
	ldr	r1, =Data_af26c
	ldr	r3, =Func_8001af8
	ldr	r0, =0x60052c0
	mov	r2, #0x20
	bl	_call_via_r3
	b	.Lae148
.Lae13c:
	ldr	r3, =Func_80008d8
	ldr	r0, =0x60052c0
	mov	r1, #0x20
	ldr	r2, =0x44444444
	bl	_call_via_r3
.Lae148:
	ldr	r4, [sp, #0x24]
	mov	r3, #1
	and	r3, r4
	cmp	r3, #0
	beq	.Lae166
	ldr	r0, [sp, #0x64]
	cmp	r0, #0
	bne	.Lae15a
	b	.Ladb7a
.Lae15a:
	mov	r0, #0x71
	mov	r7, #1
.Lae15e:
	bl	_PlaySound
	neg	r7, r7
	b	.Lae216
.Lae166:
	ldr	r1, [sp, #0x24]
	mov	r3, #8
	and	r3, r1
	cmp	r3, #0
	beq	.Lae172
	b	.Ladbb4
.Lae172:
	mov	r3, #2
	and	r3, r1
	cmp	r3, #0
	bne	.Lae15a
	mov	r3, #0x80
	lsl	r3, #1
	and	r3, r1
	cmp	r3, #0
	beq	.Lae1a2
	mov	r2, r11
	cmp	r2, #1
	bhi	.Lae20e
	ldr	r0, [sp, #0x58]
	mov	r1, #3
	add	r0, #1
	bl	__modsi3
	mov	r3, #2
	str	r0, [sp, #0x58]
	mov	r0, #0x6f
	str	r3, [sp, #0x60]
	bl	_PlaySound
	b	.Lae20e
.Lae1a2:
	ldr	r4, [sp, #0x20]
	mov	r3, #0x20
	and	r3, r4
	cmp	r3, #0
	beq	.Lae1d8
	ldr	r0, [sp, #0x58]
	cmp	r0, #1
	bgt	.Lae20e
	ldr	r1, [sp, #0x18]
	lsl	r3, r0, #2
	add	r5, r3, r1
	ldr	r0, [r5]
	sub	r0, #1
	str	r0, [r5]
	ldr	r2, [sp, #0x1c]
	ldr	r1, [r3, r2]
	bl	Func_80aa538
	str	r0, [r5]
	mov	r0, #0x6f
	bl	_PlaySound
	bl	Func_800352c
	mov	r3, #1
	str	r3, [sp, #0x60]
	b	.Lae20e
.Lae1d8:
	ldr	r4, [sp, #0x20]
	mov	r3, #0x10
	and	r3, r4
	cmp	r3, #0
	beq	.Lae20e
	ldr	r0, [sp, #0x58]
	cmp	r0, #1
	bgt	.Lae20e
	mov	r0, #0x6f
	bl	_PlaySound
	bl	Func_800352c
	ldr	r1, [sp, #0x58]
	ldr	r2, [sp, #0x18]
	lsl	r3, r1, #2
	add	r5, r3, r2
	ldr	r0, [r5]
	add	r0, #1
	str	r0, [r5]
	mov	r4, #1
	str	r4, [sp, #0x60]
	ldr	r2, [sp, #0x1c]
	ldr	r1, [r3, r2]
	bl	Func_80aa538
	str	r0, [r5]
.Lae20e:
	mov	r0, #1
	bl	WaitFrames
	b	.Ladc24
.Lae216:
	mov	r1, #0
	mov	r0, #0
	bl	Func_80ad5f4
	mov	r1, #0
	mov	r0, #1
	bl	Func_80ad5f4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80a19a0
	bl	StartTask
	ldr	r3, =iwram_3001e8c
	mov	r5, #0x86
	ldr	r2, [r3]
	ldr	r6, =0xea6
	lsl	r5, #1
	mov	r8, r3
	add	r5, r9
	mov	r3, #1
	mov	r4, #0
	strb	r3, [r2, r6]
	mov	r0, r5
	mov	r1, #1
	mov	r10, r4
	bl	Func_80a1114
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #5
	str	r3, [sp]
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r2, #0
	mov	r3, #0x11
	mov	r0, r5
	mov	r1, #0xd
	bl	Func_80a10d0
	mov	r1, #1
	ldr	r0, [sp, #0x2c]
	bl	Func_80a1114
	mov	r1, #1
	ldr	r0, [sp, #0x28]
	bl	Func_80a1114
	mov	r1, r9
	ldr	r0, [r1, #0x30]
	bl	_Func_8016498
	mov	r2, r9
	ldr	r0, [r2, #0x28]
	bl	_Func_8016498
	mov	r3, r9
	ldr	r0, [r3, #0x10]
	bl	_Func_8016498
	mov	r4, r8
	ldr	r3, [r4]
	mov	r0, r10
	add	r3, r6
	strb	r0, [r3]
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r7
	add	sp, #0x88
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80ad6d4

.thumb_func_start Func_80ae2f4  @ 0x080ae2f4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	sub	sp, #0x54
	mov	r1, #1
	mov	r2, #0
	mov	r0, #0
	ldr	r3, [r3]
	str	r1, [sp, #0x34]
	str	r0, [sp, #0x38]
	str	r2, [sp, #0x30]
	ldr	r2, [r3, #0x14]
	mov	r9, r3
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r3, sp
	add	r3, #0x4c
	mov	r7, #0
	str	r3, [sp, #0x14]
	str	r7, [sp, #0x4c]
	str	r7, [r3, #4]
	mov	r3, #0xa5
	lsl	r3, #1
	ldr	r1, .Lae334	@ 0xc8
	mov	r2, #3
	add	r3, r9
	b	.Lae33c

	.align	2, 0
.Lae334:
	.word	0xc8
	.pool

.Lae33c:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.Lae33c
	mov	r1, r9
	ldr	r0, [r1, #0x30]
	bl	_Func_80164ac
	mov	r0, #1
	bl	WaitFrames
	add	r2, sp, #0x44
	mov	r7, #1
	str	r7, [sp, #0x44]
	mov	r0, #0x60
	str	r7, [r2, #4]
	mov	r11, r2
	bl	Func_8004970
	mov	r5, r0
	mov	r0, #0xa6
	lsl	r0, #1
	bl	Func_8004970
	ldr	r3, =0x21a
	add	r3, r9
	mov	r6, r0
	ldrb	r0, [r3]
	bl	_GetUnit
	mov	r1, r0
	add	r2, sp, #0x3c
	add	r1, #0x58
	add	r3, sp, #0x40
	str	r2, [sp]
	mov	r0, r1
	mov	r2, r5
	bl	Func_80aae14
	mov	r3, r11
	str	r0, [sp, #0x44]
	str	r0, [r3, #4]
	mov	r0, r6
	bl	free
	mov	r0, r5
	bl	free
	ldr	r0, [sp, #0x44]
	mov	r1, #6
	sub	r0, #1
	bl	__divsi3
	add	r0, #1
	str	r0, [sp, #0x44]
	cmp	r0, #0
	bne	.Lae3b2
	str	r7, [sp, #0x44]
.Lae3b2:
	mov	r1, r11
	ldr	r0, [r1, #4]
	mov	r1, #6
	sub	r0, #1
	bl	__divsi3
	mov	r2, r11
	add	r0, #1
	str	r0, [r2, #4]
	cmp	r0, #0
	bne	.Lae3ca
	str	r7, [r2, #4]
.Lae3ca:
	mov	r3, r9
	add	r3, #0x24
	str	r3, [sp, #0x2c]
	mov	r5, #2
	mov	r6, #0xf
	mov	r0, r3
	mov	r1, #0
	mov	r2, #5
	mov	r3, #0xf
	str	r5, [sp, #4]
	str	r6, [sp]
	bl	Func_80a10d0
	mov	r0, r9
	mov	r2, #5
	mov	r1, #0xf
	add	r0, #0x34
	mov	r3, #0xf
	str	r5, [sp, #4]
	str	r0, [sp, #0x28]
	str	r6, [sp]
	bl	Func_80a10d0
	mov	r3, #0x86
	lsl	r3, #1
	add	r3, r9
	ldr	r0, [r3]
	bl	_Func_8016498
	mov	r1, r9
	ldr	r0, [r1, #0x10]
	bl	_Func_8016498
	ldr	r5, =0xbaa
	mov	r2, r9
	ldr	r1, [r2, #0x10]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	add	r5, #2
	mov	r3, r9
	ldr	r1, [r3, #0x10]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0x10
	bl	_Func_801e7c0
	mov	r2, #0x96
	lsl	r2, #2
	ldr	r1, [sp, #0x14]
	add	r2, r9
	mov	r0, #0
	str	r2, [sp, #0x18]
	mov	r8, r0
	mov	r10, r1
.Lae43c:
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	str	r3, [sp, #0x20]
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	str	r3, [sp, #0x1c]
	ldr	r3, [sp, #0x34]
	cmp	r3, #0
	beq	.Lae4b6
	ldr	r0, [sp, #0x24]
	ldr	r1, =0xea6
	mov	r2, #1
	add	r5, r0, r1
	strb	r2, [r5]
	mov	r3, r9
	ldr	r0, [r3, #0x24]
	bl	_Func_8016478
	mov	r1, r9
	ldr	r0, [r1, #0x34]
	bl	_Func_8016478
	mov	r2, r9
	ldr	r1, [sp, #0x18]
	ldr	r0, [r2, #0x24]
	mov	r2, r8
	ldrb	r3, [r1]
	str	r2, [sp]
	str	r2, [sp, #4]
	str	r2, [sp, #0xc]
	mov	r1, #3
	mov	r2, #1
	str	r1, [sp, #8]
	str	r2, [sp, #0x10]
	mov	r1, #0
	mov	r2, #0
	bl	Func_80acab8
	ldr	r1, [sp, #0x18]
	mov	r2, r8
	mov	r3, r9
	ldr	r0, [r3, #0x34]
	ldrb	r3, [r1]
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r2, [sp, #0x4c]
	add	r2, #1
	mov	r1, #3
	str	r2, [sp, #0xc]
	mov	r2, #1
	str	r1, [sp, #8]
	str	r2, [sp, #0x10]
	mov	r1, #0
	mov	r2, #0
	bl	Func_80acab8
	mov	r3, r8
	strb	r3, [r5]
.Lae4b6:
	mov	r0, #0
	mov	r1, r11
	ldr	r3, [r0, r1]
	cmp	r3, #1
	ble	.Lae54a
	mov	r2, r9
	mov	r5, #0
	ldr	r6, [r2, #0x34]
	cmp	r5, r3
	bge	.Lae506
	mov	r7, #0
	add	r7, r11
.Lae4ce:
	ldr	r3, =0xf031
	add	r1, r5, r3
	cmp	r5, #9
	ble	.Lae4d8
	ldr	r1, =0xf030
.Lae4d8:
	ldr	r2, [sp, #0x14]
	mov	r0, #0
	ldr	r3, [r0, r2]
	cmp	r5, r3
	bne	.Lae4e6
	ldr	r3, =0xfffff000
	add	r1, r3
.Lae4e6:
	ldr	r3, [r7]
	ldrh	r2, [r6, #8]
	sub	r2, r3
	add	r2, r5
	mov	r0, r8
	mov	r3, #1
	str	r0, [sp]
	neg	r3, r3
	sub	r2, #2
	mov	r0, r6
	bl	_Func_8019000
	ldr	r3, [r7]
	add	r5, #1
	cmp	r5, r3
	blt	.Lae4ce
.Lae506:
	mov	r0, r11
	mov	r1, #0
	ldr	r3, [r1, r0]
	ldrh	r2, [r6, #8]
	mov	r5, #1
	neg	r5, r5
	mov	r1, r8
	sub	r2, r3
	str	r1, [sp]
	mov	r0, r6
	mov	r3, r5
	sub	r2, #3
	ldr	r1, =0xf128
	bl	_Func_8019000
	ldrh	r2, [r6, #8]
	mov	r3, r8
	str	r3, [sp]
	sub	r2, #2
	mov	r0, r6
	ldr	r1, =0xf129
	mov	r3, r5
	bl	_Func_8019000
	ldr	r0, [sp, #0x24]
	ldr	r2, =0xea3
	add	r1, r0, r2
	ldrh	r2, [r6, #0xe]
	mov	r3, #2
	lsr	r2, #2
	lsl	r3, r2
	ldrb	r2, [r1]
	orr	r3, r2
	strb	r3, [r1]
.Lae54a:
	ldr	r3, [sp, #0x30]
	add	r3, #1
	mov	r0, r3
	mov	r1, #0x3c
	str	r3, [sp, #0x30]
	bl	__modsi3
	sub	r0, #5
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0xc8
	mov	r3, #0
	bl	Func_80ad5b4
	ldr	r0, [sp, #0x34]
	cmp	r0, #0
	beq	.Lae57a
	mov	r1, #0
	str	r1, [sp, #0x34]
	ldr	r0, [sp, #0x38]
	mov	r1, #2
	bl	Func_80aa538
	str	r0, [sp, #0x38]
.Lae57a:
	ldr	r3, [sp, #0x30]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Lae5a8
	ldr	r0, [sp, #0x30]
	mov	r3, #4
	and	r3, r0
	cmp	r3, #0
	beq	.Lae59c
	ldr	r3, =Func_8001af8
	ldr	r0, =0x60052c0
	ldr	r1, =Data_af26c
	mov	r2, #0x20
	bl	_call_via_r3
	b	.Lae5a8
.Lae59c:
	ldr	r3, =Func_80008d8
	ldr	r0, =0x60052c0
	mov	r1, #0x20
	ldr	r2, =0x44444444
	bl	_call_via_r3
.Lae5a8:
	ldr	r1, [sp, #0x20]
	mov	r3, #8
	and	r3, r1
	cmp	r3, #0
	beq	.Lae5b8
	mov	r0, #0x71
	mov	r7, #2
	b	.Lae5c6
.Lae5b8:
	ldr	r3, =0x303
	ldr	r2, [sp, #0x20]
	and	r3, r2
	cmp	r3, #0
	beq	.Lae5ce
	mov	r0, #0x71
	mov	r7, #1
.Lae5c6:
	bl	_PlaySound
	neg	r7, r7
	b	.Lae638
.Lae5ce:
	ldr	r0, [sp, #0x1c]
	mov	r3, #0x20
	and	r3, r0
	cmp	r3, #0
	beq	.Lae5fe
	mov	r1, r10
	ldr	r0, [r1]
	sub	r0, #1
	str	r0, [r1]
	mov	r2, r8
	mov	r3, r11
	ldr	r1, [r2, r3]
	bl	Func_80aa538
	mov	r1, r10
	str	r0, [r1]
	mov	r0, #0x6f
	bl	_PlaySound
	bl	Func_800352c
	mov	r2, #1
	str	r2, [sp, #0x34]
	b	.Lae630
.Lae5fe:
	ldr	r0, [sp, #0x1c]
	mov	r3, #0x10
	and	r3, r0
	cmp	r3, #0
	beq	.Lae630
	mov	r1, r10
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	mov	r0, #0x6f
	bl	_PlaySound
	bl	Func_800352c
	mov	r2, #1
	str	r2, [sp, #0x34]
	mov	r3, r10
	ldr	r0, [r3]
	mov	r2, r8
	mov	r3, r11
	ldr	r1, [r2, r3]
	bl	Func_80aa538
	mov	r1, r10
	str	r0, [r1]
.Lae630:
	mov	r0, #1
	bl	WaitFrames
	b	.Lae43c
.Lae638:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80a19a0
	bl	StartTask
	ldr	r2, =iwram_3001e8c
	mov	r5, #0x86
	mov	r8, r2
	ldr	r6, =0xea6
	ldr	r2, [r2]
	mov	r3, #0
	lsl	r5, #1
	mov	r10, r3
	add	r5, r9
	mov	r3, #1
	strb	r3, [r2, r6]
	mov	r0, r5
	mov	r1, #1
	bl	Func_80a1114
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #5
	str	r3, [sp]
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r2, #0
	mov	r3, #0x11
	mov	r0, r5
	mov	r1, #0xd
	bl	Func_80a10d0
	mov	r1, #1
	ldr	r0, [sp, #0x2c]
	bl	Func_80a1114
	mov	r1, #1
	ldr	r0, [sp, #0x28]
	bl	Func_80a1114
	mov	r1, r9
	ldr	r0, [r1, #0x30]
	bl	_Func_8016498
	mov	r2, r9
	ldr	r0, [r2, #0x28]
	bl	_Func_8016498
	mov	r3, r9
	ldr	r0, [r3, #0x10]
	bl	_Func_8016498
	mov	r0, r8
	ldr	r3, [r0]
	mov	r1, r10
	add	r3, r6
	strb	r1, [r3]
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r7
	add	sp, #0x54
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80ae2f4

.section .text.after_ae778, "ax", %progbits


.thumb_func_start Func_80ae7fc  @ 0x080ae7fc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r10, r3
	ldr	r3, =0x219
	add	r3, r10
	mov	r2, #0
	ldrb	r3, [r3]
	mov	r8, r2
	mov	r11, r0
	cmp	r8, r3
	bge	.Lae874
	mov	r7, #0x82
	mov	r3, #1
	lsl	r7, #2
	mov	r9, r3
	add	r7, r10
.Lae82a:
	ldrh	r0, [r7]
	bl	_GetUnit
	mov	r6, #0
	mov	r4, #0
	add	r0, #0xf8
.Lae836:
	ldr	r5, [r0, #0x10]
	mov	r1, #0
.Lae83a:
	mov	r2, r9
	lsl	r2, r1
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	bne	.Lae84e
	ldr	r3, [r0]
	and	r3, r2
	cmp	r3, #0
	beq	.Lae850
.Lae84e:
	add	r4, #1
.Lae850:
	add	r1, #1
	cmp	r1, #0x13
	ble	.Lae83a
	add	r6, #1
	add	r0, #4
	cmp	r6, #3
	ble	.Lae836
	mov	r3, r8
	mov	r2, r11
	strb	r4, [r2, r3]
	ldr	r3, =0x219
	add	r3, r10
	mov	r2, #1
	ldrb	r3, [r3]
	add	r8, r2
	add	r7, #2
	cmp	r8, r3
	blt	.Lae82a
.Lae874:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80ae7fc

	.section .rodata
	.global .Laf304
	.global .Laf304

.Laf304:
	.incrom 0xaf304, 0xaf314

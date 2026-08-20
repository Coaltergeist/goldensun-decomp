	.include "macros.inc"
	.include "gba.inc"

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
	bl	alloc_ewram
	mov	r5, r0
	mov	r0, #0xa6
	lsl	r0, #1
	bl	alloc_ewram
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


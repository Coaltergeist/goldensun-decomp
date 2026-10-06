	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a7a34  @ 0x080a7a34
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r1, #0x1c
	ldrsb	r1, [r3, r1]
	mov	r2, #0x1e
	ldrsb	r2, [r3, r2]
	mov	r8, r3
	sub	sp, #0xc
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r10, r1
	mov	r3, #0x88
	mov	r1, #0
	str	r1, [sp, #4]
	lsl	r3, #2
	add	r3, r8
	ldrh	r3, [r3]
	mov	r11, r2
	mov	r1, #0x82
	mov	r2, r10
	lsl	r1, #2
	lsl	r7, r2, #1
	mov	r9, r3
	mov	r2, r8
	add	r3, r7, r1
	ldrh	r0, [r2, r3]
	bl	_GetUnit
	mov	r3, #0x8d
	lsl	r3, #2
	ldr	r0, .La7ab0	@ 0x80
	add	r3, r8
	mov	r1, #0x82
	mov	r2, #3
.La7a86:
	sub	r2, #1
	strh	r1, [r3]
	strh	r0, [r3, #8]
	add	r1, #0x20
	add	r3, #2
	cmp	r2, #0
	bge	.La7a86
	mov	r0, #0xe
	bl	Func_80a2144
	mov	r1, #0xa0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x5000200
	lsl	r1, #19
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #0x1c
	ldr	r0, =0x50001c8
	ldr	r2, =0x80000001
	b	.La7acc

	.align	2, 0
.La7ab0:
	.word	0x80
	.pool

.La7acc:
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #4
	ldr	r0, =0x5000200
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r1, #0x1c
	ldr	r0, =0x50001e8
	ldr	r2, =0x80000001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	b	.La7d26
.La7ae6:
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.La7bac
	mov	r1, #0
	mov	r5, #0x86
	str	r1, [sp, #8]
	lsl	r5, #1
	add	r5, r8
	ldr	r0, [r5]
	bl	_Func_8016498
	ldr	r6, =0xb0d
	ldr	r1, [r5]
	mov	r0, r6
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	mov	r0, #0x30
	bl	_GetFlag
	cmp	r0, #0
	beq	.La7b20
	ldr	r1, [r5]
	ldr	r0, =0xb16
	mov	r2, #0
	mov	r3, #0x10
	bl	_Func_801e7c0
.La7b20:
	ldr	r1, [r5]
	sub	r0, r6, #3
	mov	r2, #0
	mov	r3, #8
	bl	_Func_801e7c0
	mov	r0, r10
	mov	r1, r11
	add	r0, r11
	bl	__modsi3
	mov	r2, #0x82
	lsl	r2, #2
	lsl	r7, r0, #1
	add	r5, r7, r2
	mov	r3, r8
	mov	r10, r0
	ldrh	r0, [r3, r5]
	bl	_GetUnit
	mov	r0, r9
	mov	r1, #3
	add	r0, #3
	bl	__modsi3
	mov	r1, r8
	mov	r9, r0
	ldrh	r0, [r1, r5]
	mov	r1, r9
	bl	Func_80a8088
	mov	r2, r8
	ldrh	r1, [r2, r5]
	mov	r0, r8
	bl	Func_80a1804
	mov	r3, #0xa9
	lsl	r3, #1
	ldr	r1, .La7b8c	@ 0x1e
	mov	r6, r7
	mov	r2, #7
	add	r3, r8
.La7b74:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La7b74
	mov	r3, #0xa2
	lsl	r3, #1
	add	r2, r6, r3
	ldr	r3, .La7b90	@ 0x1a
	mov	r1, r8
	strh	r3, [r1, r2]
	b	.La7bb0

	.align	2, 0
.La7b8c:
	.word	0x1e
.La7b90:
	.word	0x1a
	.pool

.La7bac:
	mov	r2, r10
	lsl	r7, r2, #1
.La7bb0:
	mov	r3, r10
	add	r0, r7, r3
	lsl	r0, #3
	mov	r1, #0x10
	sub	r0, #0xa
	bl	Func_80a1a40
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.La7bdc
	mov	r0, #0x70
	bl	_PlaySound
	mov	r1, #1
	str	r1, [sp, #4]
	b	.La7d38
.La7bdc:
	ldr	r6, [r1]
	mov	r3, #2
	and	r6, r3
	cmp	r6, #0
	beq	.La7bf4
	mov	r0, #0x71
	bl	_PlaySound
	mov	r2, #1
	neg	r2, r2
	str	r2, [sp, #4]
	b	.La7d38
.La7bf4:
	ldr	r7, =gKeyRepeat
	mov	r3, #0x80
	ldr	r5, [r7]
	lsl	r3, #1
	and	r5, r3
	cmp	r5, #0
	beq	.La7c58
	mov	r0, r10
	mov	r1, #1
	bl	Func_80a7f44
	cmp	r0, #0
	beq	.La7cb6
	mov	r0, #0x70
	bl	_PlaySound
	mov	r3, #1
	add	r10, r3
	bl	Func_80a195c
	mov	r1, r8
	ldr	r0, [r1, #0x10]
	mov	r2, #2
	mov	r1, #2
	mov	r3, #8
	str	r6, [sp]
	bl	Func_80a1870
	mov	r3, #0xa9
	lsl	r3, #1
	ldr	r1, .La7c4c	@ 0x1e
	mov	r2, #7
	add	r3, r8
.La7c36:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La7c36
	mov	r2, r10
	mov	r3, #0xa2
	lsl	r3, #1
	lsl	r7, r2, #1
	b	.La7cac

	.align	2, 0
.La7c4c:
	.word	0x1e
	.pool

.La7c58:
	ldr	r2, [r7]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La7ccc
	mov	r0, r10
	mov	r1, #0
	bl	Func_80a7f44
	cmp	r0, #0
	beq	.La7cb6
	mov	r0, #0x70
	bl	_PlaySound
	mov	r2, #1
	neg	r2, r2
	add	r10, r2
	bl	Func_80a195c
	mov	r3, r8
	ldr	r0, [r3, #0x10]
	mov	r1, #2
	mov	r2, #2
	mov	r3, #8
	str	r5, [sp]
	bl	Func_80a1870
	mov	r3, #0xa9
	lsl	r3, #1
	ldr	r1, =0x1e
	mov	r2, #7
	add	r3, r8
.La7c9a:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La7c9a
	mov	r1, r10
	mov	r3, #0xa2
	lsl	r7, r1, #1
	lsl	r3, #1
.La7cac:
	add	r2, r7, r3
	ldr	r3, =0x1a
	mov	r1, r8
	strh	r3, [r1, r2]
	b	.La7cbc
.La7cb6:
	mov	r0, #0x72
	bl	_PlaySound
.La7cbc:
	mov	r0, #1
	bl	WaitFrames
	b	.La7d26

	.pool_aligned

.La7ccc:
	ldr	r2, [r1]
	mov	r3, #4
	and	r2, r3
	cmp	r2, #0
	beq	.La7cea
	mov	r0, #0x30
	bl	_GetFlag
	cmp	r0, #0
	beq	.La7cea
	bl	Func_80a7850
	mov	r2, #1
	str	r2, [sp, #8]
	b	.La7d26
.La7cea:
	ldr	r2, [r7]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	beq	.La7d0a
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r3, r11
	cmp	r3, #1
	ble	.La7d0a
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	str	r2, [sp, #8]
	add	r10, r1
.La7d0a:
	ldr	r2, [r7]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.La7d26
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r3, r11
	cmp	r3, #1
	ble	.La7d26
	mov	r1, #1
	str	r1, [sp, #8]
	add	r10, r1
.La7d26:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La7d34
	b	.La7ae6
.La7d34:
	mov	r2, r10
	lsl	r7, r2, #1
.La7d38:
	mov	r1, r8
	mov	r3, r10
	strb	r3, [r1, #0x1c]
	mov	r3, #0x82
	lsl	r3, #2
	add	r2, r7, r3
	ldrh	r3, [r1, r2]
	str	r3, [r1, #8]
	ldr	r3, =0x21a
	ldrh	r2, [r1, r2]
	add	r3, r8
	strb	r2, [r3]
	ldr	r0, [sp, #4]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a7a34


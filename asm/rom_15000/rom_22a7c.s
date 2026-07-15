	.include "macros.inc"

	.section .text.after_22a7c, "ax", %progbits

.thumb_func_start Func_8022b44  @ 0x08022b44
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x4c
	add	r4, sp, #0x48
	mov	r7, r1
	str	r0, [r4]
	mov	r0, r7
	mov	r10, r4
	mov	r8, r2
	str	r3, [sp, #0x3c]
	bl	_GetUnit
	str	r0, [sp, #0x38]
	mov	r1, r10
	ldr	r0, [r1]
	cmp	r0, #0
	beq	.L22b76
	mov	r1, #1
	bl	CloseUIBox
.L22b76:
	ldr	r2, [sp, #0x3c]
	cmp	r2, #0
	bne	.L22b92
	mov	r3, #6
	str	r3, [sp]
	mov	r0, #0
	mov	r3, #0xb
	mov	r1, #8
	mov	r2, #0x15
	bl	CreateUIBox
	mov	r3, r10
	str	r0, [r3]
	b	.L22ba6
.L22b92:
	mov	r3, #6
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #5
	mov	r2, #0x15
	mov	r3, #0xe
	bl	CreateUIBox
	mov	r4, r10
	str	r0, [r4]
.L22ba6:
	mov	r1, r10
	ldr	r3, [r1]
	mov	r0, #0
	cmp	r3, #0
	bne	.L22bb2
	b	.L23134
.L22bb2:
	mov	r0, #0x80
	bl	Func_8004938
	mov	r5, #0xa6
	lsl	r5, #1
	str	r0, [sp, #0x30]
	mov	r0, r5
	bl	Func_8004938
	str	r0, [sp, #0x34]
	mov	r0, #0x60
	bl	Func_8004970
	mov	r2, r5
	str	r0, [sp, #0x18]
	ldr	r3, =Func_8001af8
	ldr	r1, [sp, #0x38]
	ldr	r0, [sp, #0x34]
	bl	_call_via_r3
	mov	r2, r8
	asr	r5, r2, #8
	mov	r3, #0xf
	mov	r6, #0xff
	and	r5, r3
	and	r6, r2
	mov	r0, r7
	mov	r1, r5
	mov	r2, r6
	bl	_Func_807a2bc
	cmp	r0, #0
	beq	.L22c00
	mov	r0, r7
	mov	r1, r5
	mov	r2, r6
	bl	_Func_807a350
	b	.L22c0a
.L22c00:
	mov	r0, r7
	mov	r1, r5
	mov	r2, r6
	bl	_SetDjinni
.L22c0a:
	mov	r0, r7
	bl	_CalcStats
	ldr	r0, [sp, #0x34]
	ldr	r1, [sp, #0x38]
	add	r2, sp, #0x40
	add	r3, sp, #0x44
	str	r2, [sp]
	add	r1, #0x58
	ldr	r2, [sp, #0x18]
	add	r0, #0x58
	bl	Func_80228e4
	mov	r1, #5
	str	r0, [sp, #0x14]
	sub	r0, #1
	bl	__divsi3
	ldr	r3, [sp, #0x6c]
	add	r0, #1
	str	r0, [r3]
	ldr	r4, [sp, #0x3c]
	lsl	r3, r4, #2
	add	r3, r4
	ldr	r1, [sp, #0x14]
	sub	r3, #5
	cmp	r3, r1
	blt	.L22c44
	str	r0, [sp, #0x3c]
.L22c44:
	ldr	r2, [sp, #0x3c]
	cmp	r2, #0
	beq	.L22c4c
	b	.L22d8c
.L22c4c:
	ldr	r5, =0x8ae
	mov	r3, r10
	ldr	r1, [r3]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #8
	bl	Func_801e7c0
	mov	r4, r10
	ldr	r1, [r4]
	add	r0, r5, #1
	mov	r2, #0
	mov	r3, #0x10
	bl	Func_801e7c0
	mov	r2, r10
	add	r0, r5, #2
	ldr	r1, [r2]
	mov	r3, #0x18
	mov	r2, #0
	bl	Func_801e7c0
	mov	r3, r10
	add	r0, r5, #3
	ldr	r1, [r3]
	mov	r2, #0
	mov	r3, #0x20
	bl	Func_801e7c0
	mov	r4, r10
	ldr	r1, [r4]
	add	r0, r5, #4
	mov	r2, #0
	mov	r3, #0x28
	bl	Func_801e7c0
	add	r5, #5
	mov	r2, r10
	ldr	r1, [r2]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0x30
	bl	Func_801e7c0
	ldr	r3, [sp, #0x34]
	mov	r4, #0x38
	ldrsh	r3, [r3, r4]
	ldr	r0, [sp, #0x30]
	mov	r1, r3
	str	r3, [sp, #0x2c]
	bl	Func_80228bc
	ldr	r5, [sp, #0x30]
	mov	r4, r10
	add	r5, #0xe
	ldr	r1, [r4]
	mov	r2, #5
	mov	r3, #1
	mov	r0, r5
	bl	Func_8017c8c
	ldr	r1, [sp, #0x34]
	mov	r2, #0x3a
	ldrsh	r1, [r1, r2]
	ldr	r0, [sp, #0x30]
	str	r1, [sp, #0x28]
	bl	Func_80228bc
	mov	r2, r10
	ldr	r1, [r2]
	mov	r0, r5
	mov	r2, #5
	mov	r3, #2
	bl	Func_8017c8c
	ldr	r3, [sp, #0x34]
	ldrh	r3, [r3, #0x3c]
	ldr	r0, [sp, #0x30]
	mov	r1, r3
	str	r3, [sp, #0x24]
	bl	Func_80228bc
	ldr	r5, [sp, #0x30]
	mov	r4, r10
	add	r5, #0x10
	ldr	r1, [r4]
	mov	r2, #6
	mov	r3, #3
	mov	r0, r5
	bl	Func_8017c8c
	ldr	r1, [sp, #0x34]
	ldrh	r1, [r1, #0x3e]
	ldr	r0, [sp, #0x30]
	str	r1, [sp, #0x20]
	bl	Func_80228bc
	mov	r2, r10
	ldr	r1, [r2]
	mov	r3, #4
	mov	r2, #6
	mov	r0, r5
	bl	Func_8017c8c
	ldr	r3, [sp, #0x34]
	add	r3, #0x40
	ldrh	r3, [r3]
	ldr	r0, [sp, #0x30]
	mov	r1, r3
	str	r3, [sp, #0x1c]
	bl	Func_80228bc
	mov	r3, r10
	ldr	r1, [r3]
	mov	r2, #6
	mov	r3, #5
	mov	r0, r5
	bl	Func_8017c8c
	ldr	r3, [sp, #0x34]
	add	r3, #0x42
	ldrb	r1, [r3]
	ldr	r0, [sp, #0x30]
	bl	Func_80228bc
	mov	r4, r10
	ldr	r1, [r4]
	mov	r2, #5
	mov	r3, #6
	mov	r0, r5
	bl	Func_8017c8c
	mov	r1, r10
	mov	r3, #8
	ldr	r0, [r1]
	mov	r2, #8
	str	r3, [sp]
	mov	r1, #0
	mov	r3, #0x13
	bl	Func_801e41c
	ldr	r3, [sp, #0x44]
	cmp	r3, #0
	bne	.L22d72
	ldr	r3, [sp, #0x40]
	cmp	r3, #0
	beq	.L22d78
.L22d72:
	mov	r0, #2
	bl	SetTextColor
.L22d78:
	mov	r2, r10
	ldr	r0, =0x8ad
	ldr	r1, [r2]
	mov	r3, #0x40
	mov	r2, #0x18
	bl	Func_801e7c0
	mov	r0, #0xf
	bl	SetTextColor
.L22d8c:
	ldr	r3, [sp, #0x3c]
	cmp	r3, #0
	bgt	.L22d94
	b	.L22f54
.L22d94:
	ldr	r1, [sp, #0x14]
	mov	r4, #0
	str	r4, [sp, #0xc]
	str	r1, [sp, #8]
	cmp	r1, #4
	ble	.L22da4
	mov	r2, #5
	str	r2, [sp, #8]
.L22da4:
	ldr	r4, [sp, #0x3c]
	lsl	r3, r4, #2
	add	r3, r4
	sub	r3, #5
	mov	r8, r3
	ldr	r2, [sp, #0xc]
	ldr	r3, [sp, #8]
	mov	r1, #0
	str	r1, [sp, #0x10]
	cmp	r2, r3
	blt	.L22dbc
	b	.L22ee0
.L22dbc:
	ldr	r4, [sp, #0x14]
	cmp	r8, r4
	blt	.L22dc4
	b	.L22ee0
.L22dc4:
	mov	r1, r8
	ldr	r2, [sp, #0x18]
	mov	r4, #4
	lsl	r3, r1, #1
	neg	r4, r4
	add	r6, r3, r2
	str	r4, [sp, #4]
	mov	r3, #0
	mov	r7, r10
	mov	r9, r3
	mov	r11, r3
.L22dda:
	ldrh	r0, [r6]
	bl	_GetMoveInfo
	mov	r5, r0
	ldrb	r3, [r5, #2]
	cmp	r3, #4
	beq	.L22dfe
	mov	r1, r10
	ldr	r2, =0x5001
	ldr	r0, [r1]
	mov	r1, r3
	mov	r3, #0
	add	r1, r2
	str	r3, [sp]
	mov	r2, #0xf
	mov	r3, r9
	bl	Func_8019000
.L22dfe:
	ldrb	r3, [r5, #8]
	cmp	r3, #0xff
	bne	.L22e08
	mov	r3, #0xb
	b	.L22e0a
.L22e08:
	sub	r3, #1
.L22e0a:
	mov	r4, #0
	ldr	r0, [r7]
	mov	r1, #0x10
	mov	r2, r9
	str	r4, [sp]
	bl	Func_80218dc
	ldrh	r3, [r6]
	ldr	r1, =0x3fff
	ldr	r2, [sp, #4]
	and	r3, r1
	ldr	r0, [r7]
	mov	r1, #0
	bl	Func_8022a38
	ldrh	r2, [r6]
	ldr	r3, .L22e4c	@ 0x8000
	and	r3, r2
	cmp	r3, #0
	beq	.L22e3a
	mov	r0, #4
	bl	SetTextColor
	b	.L22e6e
.L22e3a:
	ldr	r3, .L22e50	@ 0x4000
	and	r3, r2
	cmp	r3, #0
	beq	.L22e68
	mov	r0, #2
	bl	SetTextColor
	b	.L22e6e

	.align	2, 0
.L22e4c:
	.word	0x8000
.L22e50:
	.word	0x4000
	.pool

.L22e68:
	mov	r0, #0xf
	bl	SetTextColor
.L22e6e:
	ldrh	r3, [r6]
	ldr	r0, =0x3fff
	and	r0, r3
	ldr	r3, =0x333
	ldr	r1, [r7]
	add	r0, r3
	mov	r2, #0x10
	mov	r3, r11
	bl	Func_801e7c0
	mov	r2, #0
	ldr	r0, [r7]
	mov	r3, r9
	str	r2, [sp]
	ldr	r1, =0xf01f
	mov	r2, #0xb
	bl	Func_8019000
	mov	r3, #0
	ldr	r0, [r7]
	ldr	r1, =0xf01e
	str	r3, [sp]
	mov	r2, #0xc
	mov	r3, r9
	bl	Func_8019000
	ldrh	r0, [r6]
	bl	_GetMoveInfo
	mov	r4, r11
	ldr	r2, [r7]
	ldrb	r0, [r0, #9]
	mov	r1, #2
	mov	r3, #0x68
	str	r4, [sp]
	bl	Func_801ea08
	mov	r2, #0x10
	ldr	r3, [sp, #4]
	ldr	r4, [sp, #0x10]
	mov	r1, #2
	add	r11, r2
	ldr	r2, [sp, #8]
	add	r9, r1
	add	r3, #0x10
	add	r4, #1
	mov	r1, #1
	str	r3, [sp, #4]
	str	r4, [sp, #0x10]
	add	r6, #2
	add	r8, r1
	cmp	r4, r2
	bge	.L22ee0
	ldr	r3, [sp, #0x14]
	cmp	r8, r3
	bge	.L22ee0
	b	.L22dda
.L22ee0:
	ldr	r3, [sp, #0x44]
	cmp	r3, #0
	beq	.L22efe
	mov	r0, #4
	bl	SetTextColor
	mov	r4, r10
	ldr	r1, [r4]
	ldr	r0, =0xba2
	mov	r2, #0x20
	mov	r3, #0x50
	bl	Func_801e7c0
	mov	r1, #1
	str	r1, [sp, #0xc]
.L22efe:
	ldr	r3, [sp, #0x40]
	cmp	r3, #0
	beq	.L22f22
	mov	r0, #2
	bl	SetTextColor
	ldr	r4, [sp, #0xc]
	mov	r2, r10
	lsl	r3, r4, #3
	ldr	r1, [r2]
	ldr	r0, =0xba3
	add	r3, #0x50
	mov	r2, #0x20
	bl	Func_801e7c0
	ldr	r1, [sp, #0xc]
	add	r1, #1
	str	r1, [sp, #0xc]
.L22f22:
	ldr	r2, [sp, #0xc]
	cmp	r2, #0
	bne	.L22f36
	mov	r3, r10
	ldr	r1, [r3]
	ldr	r0, =0xba8
	mov	r2, #0x20
	mov	r3, #0x50
	bl	Func_801e7c0
.L22f36:
	mov	r0, #0xf
	bl	SetTextColor
	mov	r0, #0xf
	bl	SetTextColor
	mov	r3, #0xa
	mov	r4, r10
	ldr	r0, [r4]
	mov	r1, #0
	str	r3, [sp]
	mov	r2, #0xa
	mov	r3, #0x13
	bl	Func_801e41c
.L22f54:
	ldr	r1, [sp, #0x3c]
	cmp	r1, #0
	beq	.L22f5c
	b	.L23110
.L22f5c:
	ldr	r2, [sp, #0x34]
	ldr	r5, =0x129
	add	r2, r5
	ldrb	r0, [r2]
	ldr	r6, =0x741
	mov	r3, r10
	ldr	r1, [r3]
	mov	r8, r2
	add	r0, r6
	mov	r2, #0
	mov	r3, #0
	bl	Func_801e7c0
	ldr	r4, [sp, #0x38]
	add	r5, r4, r5
	ldrb	r0, [r5]
	mov	r2, r10
	ldr	r1, [r2]
	mov	r3, #0
	mov	r2, #0x50
	add	r0, r6
	bl	Func_801e7c0
	mov	r3, r8
	ldrb	r2, [r3]
	ldrb	r3, [r5]
	cmp	r2, r3
	beq	.L22fa8
	ldr	r2, [sp, #0x3c]
	mov	r4, r10
	ldr	r0, [r4]
	ldr	r1, =0xf728
	str	r2, [sp]
	mov	r3, #0
	mov	r2, #9
	bl	Func_8019000
	b	.L22fba
.L22fa8:
	mov	r3, r10
	ldr	r4, [sp, #0x3c]
	ldr	r0, [r3]
	ldr	r1, =0xf729
	mov	r2, #9
	mov	r3, #0
	str	r4, [sp]
	bl	Func_8019000
.L22fba:
	ldr	r3, [sp, #0x38]
	ldr	r0, [sp, #0x30]
	mov	r2, #0x38
	ldrsh	r1, [r3, r2]
	bl	Func_80228bc
	ldr	r6, [sp, #0x30]
	mov	r4, r10
	add	r6, #0xe
	ldr	r1, [r4]
	mov	r2, #0xb
	mov	r3, #1
	mov	r0, r6
	bl	Func_8017c8c
	ldr	r2, [sp, #0x38]
	ldr	r4, [sp, #0x2c]
	mov	r1, #0x38
	ldrsh	r3, [r2, r1]
	cmp	r3, r4
	beq	.L22ff8
	mov	r2, #0
	cmp	r3, r4
	ble	.L22fec
	mov	r2, #1
.L22fec:
	add	r1, sp, #0x4c
	mov	r9, r1
	mov	r0, #0x50
	mov	r1, #0xe
	bl	Func_8022a7c
.L22ff8:
	ldr	r3, [sp, #0x38]
	ldr	r0, [sp, #0x30]
	mov	r2, #0x3a
	ldrsh	r1, [r3, r2]
	bl	Func_80228bc
	mov	r4, r10
	ldr	r1, [r4]
	mov	r2, #0xb
	mov	r3, #2
	mov	r0, r6
	bl	Func_8017c8c
	ldr	r2, [sp, #0x38]
	ldr	r4, [sp, #0x28]
	mov	r1, #0x3a
	ldrsh	r3, [r2, r1]
	cmp	r3, r4
	beq	.L23032
	mov	r2, #0
	cmp	r3, r4
	ble	.L23026
	mov	r2, #1
.L23026:
	add	r1, sp, #0x4c
	mov	r9, r1
	mov	r0, #0x50
	mov	r1, #0x16
	bl	Func_8022a7c
.L23032:
	ldr	r2, [sp, #0x38]
	ldr	r0, [sp, #0x30]
	ldrh	r1, [r2, #0x3c]
	bl	Func_80228bc
	mov	r3, r10
	ldr	r1, [r3]
	mov	r0, r6
	mov	r3, #3
	mov	r2, #0xb
	bl	Func_8017c8c
	ldr	r4, [sp, #0x38]
	ldr	r1, [sp, #0x24]
	ldrh	r3, [r4, #0x3c]
	cmp	r3, r1
	beq	.L23068
	mov	r2, #0
	cmp	r3, r1
	ble	.L2305c
	mov	r2, #1
.L2305c:
	add	r3, sp, #0x4c
	mov	r9, r3
	mov	r0, #0x50
	mov	r1, #0x1e
	bl	Func_8022a7c
.L23068:
	ldr	r4, [sp, #0x38]
	ldr	r0, [sp, #0x30]
	ldrh	r1, [r4, #0x3e]
	bl	Func_80228bc
	mov	r2, r10
	ldr	r1, [r2]
	mov	r3, #4
	mov	r0, r6
	mov	r2, #0xb
	bl	Func_8017c8c
	ldr	r4, [sp, #0x38]
	ldr	r1, [sp, #0x20]
	ldrh	r3, [r4, #0x3e]
	cmp	r3, r1
	beq	.L2309e
	mov	r2, #0
	cmp	r3, r1
	ble	.L23092
	mov	r2, #1
.L23092:
	add	r3, sp, #0x4c
	mov	r9, r3
	mov	r0, #0x50
	mov	r1, #0x26
	bl	Func_8022a7c
.L2309e:
	ldr	r5, [sp, #0x38]
	add	r5, #0x40
	ldrh	r1, [r5]
	ldr	r0, [sp, #0x30]
	bl	Func_80228bc
	mov	r4, r10
	ldr	r1, [r4]
	mov	r3, #5
	mov	r0, r6
	mov	r2, #0xb
	bl	Func_8017c8c
	ldrh	r3, [r5]
	ldr	r1, [sp, #0x1c]
	cmp	r3, r1
	beq	.L230d4
	mov	r2, #0
	cmp	r3, r1
	ble	.L230c8
	mov	r2, #1
.L230c8:
	add	r3, sp, #0x4c
	mov	r9, r3
	mov	r0, #0x50
	mov	r1, #0x2e
	bl	Func_8022a7c
.L230d4:
	ldr	r5, [sp, #0x38]
	add	r5, #0x42
	ldrb	r1, [r5]
	ldr	r0, [sp, #0x30]
	bl	Func_80228bc
	ldr	r0, [sp, #0x30]
	mov	r4, r10
	ldr	r1, [r4]
	mov	r3, #6
	add	r0, #0x10
	mov	r2, #0xc
	bl	Func_8017c8c
	ldr	r3, [sp, #0x34]
	add	r3, #0x42
	ldrb	r1, [r5]
	ldrb	r3, [r3]
	cmp	r1, r3
	beq	.L23110
	mov	r2, #0
	cmp	r1, r3
	bls	.L23104
	mov	r2, #1
.L23104:
	add	r1, sp, #0x4c
	mov	r9, r1
	mov	r0, #0x50
	mov	r1, #0x36
	bl	Func_8022a7c
.L23110:
	mov	r2, #0xa6
	lsl	r2, #1
	ldr	r3, =Func_8001af8
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x34]
	bl	_call_via_r3
	ldr	r0, [sp, #0x18]
	bl	free
	ldr	r0, [sp, #0x34]
	bl	free
	ldr	r0, [sp, #0x30]
	bl	free
	mov	r2, r10
	ldr	r0, [r2]
.L23134:
	add	sp, #0x4c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8022b44

	.section .rodata

	.global .L313a4
.L313a4:
	.incrom 0x313a4, 0x31424
	.global .L31424
.L31424:
	.incrom 0x31424, 0x317e4

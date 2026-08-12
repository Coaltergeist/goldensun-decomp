	.include "macros.inc"

.thumb_func_start Func_80a9c18  @ 0x080a9c18
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r6, [r3]
	mov	r5, r0
	mov	r7, r6
	sub	sp, #4
	bl	Func_80a9cbc
	mov	r3, #0xe
	mov	r1, #0xd8
	add	r7, #0x48
	mov	r6, r5
	mov	r8, r3
.La9c36:
	ldrh	r2, [r6]
	mov	r3, r2
	add	r6, #2
	cmp	r3, #0
	beq	.La9ca0
	ldr	r3, .La9c68	@ 0x200
	and	r3, r2
	cmp	r3, #0
	beq	.La9ca0
	ldr	r5, [r7]
	cmp	r5, #0
	beq	.La9ca0
	ldr	r0, .La9c6c	@ 0x1ff
	and	r0, r2
	str	r1, [sp]
	bl	_GetItemInfo
	ldrb	r3, [r0, #2]
	ldr	r1, [sp]
	cmp	r3, #2
	beq	.La9c88
	cmp	r3, #2
	bgt	.La9c7a
	b	.La9c74

	.align	2, 0
.La9c68:
	.word	0x200
.La9c6c:
	.word	0x1ff
	.pool

.La9c74:
	cmp	r3, #1
	beq	.La9c84
	b	.La9c96
.La9c7a:
	cmp	r3, #3
	beq	.La9c8c
	cmp	r3, #4
	beq	.La9c90
	b	.La9c96
.La9c84:
	mov	r3, #0x20
	b	.La9c92
.La9c88:
	mov	r3, #0x50
	b	.La9c92
.La9c8c:
	mov	r3, #0x40
	b	.La9c92
.La9c90:
	mov	r3, #0x30
.La9c92:
	strh	r1, [r5, #6]
	strh	r3, [r5, #8]
.La9c96:
	mov	r0, r5
	str	r1, [sp]
	bl	Func_80a17c4
	ldr	r1, [sp]
.La9ca0:
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r3, r8
	add	r7, #4
	cmp	r3, #0
	bge	.La9c36
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a9c18

.thumb_func_start Func_80a9cbc  @ 0x080a9cbc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r2, #0xf8
	mov	r5, r3
	mov	r8, r2
	add	r5, #0x48
	mov	r7, #0xa8
	mov	r6, #0x1f
.La9cd2:
	ldmia	r5!, {r0}
	cmp	r0, #0
	beq	.La9ce2
	mov	r3, r8
	strh	r3, [r0, #6]
	strh	r7, [r0, #8]
	bl	Func_80a17c4
.La9ce2:
	sub	r6, #1
	cmp	r6, #0
	bge	.La9cd2
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a9cbc

.thumb_func_start Func_80a9cf8  @ 0x080a9cf8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r2, #0xa8
	mov	r6, r3
	sub	sp, #4
	mov	r7, r0
	mov	r5, #0
	mov	r8, r2
	add	r6, #0xc8
.La9d10:
	mov	r3, r8
	str	r3, [sp]
	mov	r1, r5
	mov	r0, #2
	mov	r2, r7
	mov	r3, #0xf8
	bl	_Func_801eb64
	add	r5, #1
	stmia	r6!, {r0}
	cmp	r5, #7
	ble	.La9d10
	mov	r0, #1
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a9cf8

.thumb_func_start Func_80a9d3c  @ 0x080a9d3c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r8, r0
	ldr	r5, [r3]
	bl	Func_80a9d84
	mov	r6, #0
	add	r5, #0xc8
	mov	r7, #0x58
.La9d52:
	ldmia	r5!, {r0}
	cmp	r0, #0
	beq	.La9d70
	mov	r2, r8
	ldrb	r3, [r2, r6]
	cmp	r3, #0
	beq	.La9d70
	mov	r3, #8
	strh	r3, [r0, #6]
	mov	r3, #0xf0
	strh	r7, [r0, #8]
	strb	r3, [r0, #0xf]
	bl	Func_80a17c4
	add	r7, #0x10
.La9d70:
	add	r6, #1
	cmp	r6, #4
	ble	.La9d52
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a9d3c

.thumb_func_start Func_80a9d84  @ 0x080a9d84
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r2, #0xf8
	mov	r5, r3
	mov	r8, r2
	add	r5, #0xc8
	mov	r7, #0xa8
	mov	r6, #4
.La9d9a:
	ldmia	r5!, {r0}
	cmp	r0, #0
	beq	.La9dae
	mov	r3, r8
	strh	r3, [r0, #6]
	mov	r3, #0xf0
	strh	r7, [r0, #8]
	strb	r3, [r0, #0xf]
	bl	Func_80a17c4
.La9dae:
	sub	r6, #1
	cmp	r6, #0
	bge	.La9d9a
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a9d84

.thumb_func_start Func_80a9dc4  @ 0x080a9dc4
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r6, [r3]
	mov	r7, r0
	mov	r5, #0
.La9dce:
	ldrb	r3, [r7, r5]
	cmp	r3, #0
	beq	.La9e1c
	cmp	r5, #4
	bhi	.La9e08
	ldr	r3, =.La9de0
	lsl	r2, r5, #2
	ldr	r3, [r2, r3]
	mov	pc, r3
	.align	2, 0
.La9de0:
	.word	.La9df4
	.word	.La9df8
	.word	.La9dfc
	.word	.La9e00
	.word	.La9e04
.La9df4:
	mov	r1, #0x10
	b	.La9e0c
.La9df8:
	mov	r1, #1
	b	.La9e0c
.La9dfc:
	mov	r1, #2
	b	.La9e0c
.La9e00:
	mov	r1, #0xf
	b	.La9e0c
.La9e04:
	mov	r1, #7
	b	.La9e0c
.La9e08:
	mov	r1, #0
	lsl	r2, r5, #2
.La9e0c:
	mov	r3, r2
	add	r3, #0xc8
	ldr	r3, [r6, r3]
	mov	r0, #8
	ldrb	r2, [r3, #0xe]
	mov	r3, #0
	bl	_Func_801bcd4
.La9e1c:
	add	r5, #1
	cmp	r5, #4
	ble	.La9dce
	mov	r0, #1
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a9dc4


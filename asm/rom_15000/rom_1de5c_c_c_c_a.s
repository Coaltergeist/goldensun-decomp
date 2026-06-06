	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801eb90
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	mov	r10, r3
	bl	Func_8004080
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0x60
	beq	.L1ebca
	mov	r1, r7
	mov	r2, r5
	mov	r0, r6
	bl	Func_801a2a4
	ldr	r3, [sp, #0x1c]
	mov	r1, #0x80
	str	r3, [sp]
	lsl	r1, #23
	mov	r0, r5
	mov	r2, r8
	mov	r3, r10
	bl	Func_801eadc
.L1ebca:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801eb90

.thumb_func_start Func_801ebd8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r5, r0
	mov	r7, r1
	mov	r8, r2
	mov	r6, r3
	bl	Func_8004080
	str	r0, [sp, #8]
	cmp	r0, #0x60
	bne	.L1ebf6
	mov	r0, #0
	b	.L1ec18
.L1ebf6:
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r1, #1
	mov	r0, r5
	str	r1, [sp]
	bl	Func_8019ee4
	mov	r1, #0x80
	mov	r3, r8
	ldr	r0, [sp, #8]
	lsl	r1, #23
	mov	r2, r7
	str	r6, [sp]
	bl	Func_801eadc
	mov	r3, #0xfb
	strb	r3, [r0, #0xf]
.L1ec18:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801ebd8

.thumb_func_start Func_801ec24
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #4
	mov	r6, r0
	mov	r8, r1
	mov	r10, r2
	mov	r7, r3
	bl	Func_8004080
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0x60
	beq	.L1ec5c
	mov	r1, #0
	mov	r2, r5
	mov	r0, r6
	bl	Func_801a32c
	mov	r1, #0x80
	lsl	r1, #23
	mov	r0, r5
	mov	r2, r8
	mov	r3, r10
	str	r7, [sp]
	bl	Func_801eadc
.L1ec5c:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801ec24

.thumb_func_start Func_801ec6c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r9, r3
	ldr	r3, =iwram_3001e8c
	mov	r5, r0
	mov	r0, #0x20
	sub	sp, #0x10
	mov	r10, r1
	mov	r6, r2
	ldr	r7, [r3]
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L1ec9a
	cmp	r5, #0
	bne	.L1ec94
	mov	r5, #0x12
.L1ec94:
	cmp	r5, #1
	bne	.L1ec9a
	mov	r5, #0x13
.L1ec9a:
	mov	r0, r5
	bl	Func_8019d2c
	mov	r1, #1
	mov	r5, r0
	neg	r1, r1
	mov	r0, #0
	cmp	r5, r1
	beq	.L1ed1c
	cmp	r6, #1
	bls	.L1ecca
	ldr	r2, =0x12ee
	add	r3, r7, r2
	ldrh	r3, [r3]
	ldr	r2, =0x3e7
	mov	r6, #1
	cmp	r3, r2
	beq	.L1ecca
	ldr	r1, =0x12ec
	add	r3, r7, r1
	ldrh	r3, [r3]
	mov	r6, #0
	cmp	r3, r2
	bne	.L1ed1c
.L1ecca:
	mov	r2, #0xe
	add	r2, r6
	mov	r8, r2
	mov	r1, r8
	str	r1, [sp]
	mov	r1, #0
	add	r2, sp, #0xc
	add	r3, sp, #8
	str	r1, [sp, #4]
	mov	r0, r5
	mov	r1, r10
	bl	Func_801a4fc
	ldr	r3, [sp, #0x30]
	mov	r1, #0x80
	str	r3, [sp]
	ldr	r0, [sp, #0xc]
	lsl	r1, #24
	mov	r2, r9
	ldr	r3, [sp, #0x2c]
	bl	Func_801eadc
	cmp	r0, #0
	beq	.L1ed0c
	mov	r2, r8
	lsl	r1, r2, #4
	ldrb	r2, [r0, #0x19]
	mov	r3, #0xf
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #0x19]
	mov	r3, #2
	strb	r3, [r0, #4]
.L1ed0c:
	ldr	r1, =0x12ec
	lsl	r3, r6, #1
	add	r2, r3, r1
	strh	r5, [r7, r2]
	ldr	r2, =0x12f0
	add	r3, r2
	ldr	r2, [sp, #0xc]
	strh	r2, [r7, r3]
.L1ed1c:
	add	sp, #0x10
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801ec6c

.thumb_func_start Func_801ed40
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e8c
	mov	r6, r0
	mov	r0, #0x20
	sub	sp, #0x10
	mov	r5, r1
	mov	r8, r2
	ldr	r7, [r3]
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L1ed68
	cmp	r5, #0
	bne	.L1ed62
	mov	r5, #0x12
.L1ed62:
	cmp	r5, #1
	bne	.L1ed68
	mov	r5, #0x13
.L1ed68:
	mov	r0, r5
	bl	Func_8019d2c
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.L1edb0
	cmp	r6, #1
	bls	.L1ed92
	ldr	r2, =0x12ee
	add	r3, r7, r2
	ldrh	r3, [r3]
	mov	r6, #1
	cmp	r3, r0
	beq	.L1ed92
	ldr	r2, =0x12ec
	add	r3, r7, r2
	ldrh	r3, [r3]
	cmp	r3, r0
	bne	.L1edb0
	mov	r6, #0
.L1ed92:
	ldr	r2, =0x12f0
	lsl	r3, r6, #1
	add	r3, r2
	mov	r1, r6
	ldrh	r3, [r7, r3]
	add	r1, #0xe
	str	r1, [sp]
	mov	r1, #1
	str	r3, [sp, #0xc]
	str	r1, [sp, #4]
	add	r2, sp, #0xc
	add	r3, sp, #8
	mov	r1, r8
	bl	Func_801a4fc
.L1edb0:
	add	sp, #0x10
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801ed40

.thumb_func_start Func_801edcc
	push	{lr}
	cmp	r0, #0
	beq	.L1edd8
	mov	r3, #0
	strb	r1, [r0, #5]
	strh	r3, [r0, #0xc]
.L1edd8:
	pop	{r0}
	bx	r0
.func_end Func_801edcc


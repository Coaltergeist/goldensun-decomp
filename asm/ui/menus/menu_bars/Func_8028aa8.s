	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8028aa8  @ 0x08028aa8
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f38
	ldr	r6, [r3]
	mov	r0, r6
	mov	r5, r6
	add	r5, #0x8c
	add	r0, #0x96
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	sub	sp, #4
	ldrh	r1, [r5]
	cmp	r2, r3
	beq	.L28b70
	strh	r1, [r0]
	mov	r3, #0x50
	ldr	r0, [r6, #0x7c]
	mov	r2, #0x28
	str	r3, [sp]
	mov	r1, #8
	mov	r3, #0x90
	bl	Func_80164d4
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #1
	beq	.L28b2a
	cmp	r3, #1
	bgt	.L28b54
	cmp	r3, #0
	bne	.L28b54
	ldr	r5, =0xc7b
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x28
	bl	Func_801e7c0
	add	r0, r5, #1
	ldr	r1, [r6, #0x7c]
	mov	r2, #0x12
	mov	r3, #0x30
	bl	Func_801e7c0
	add	r0, r5, #2
	ldr	r1, [r6, #0x7c]
	mov	r2, #0x12
	mov	r3, #0x38
	bl	Func_801e7c0
	add	r0, r5, #3
	ldr	r1, [r6, #0x7c]
	mov	r2, #0x12
	mov	r3, #0x40
	add	r5, #4
	bl	Func_801e7c0
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x48
	bl	Func_801e7c0
	b	.L28b70
.L28b2a:
	ldr	r5, =0xc7b
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x28
	bl	Func_801e7c0
	add	r0, r5, #1
	ldr	r1, [r6, #0x7c]
	mov	r2, #0x12
	mov	r3, #0x30
	add	r5, #2
	bl	Func_801e7c0
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x38
	bl	Func_801e7c0
	b	.L28b70
.L28b54:
	ldr	r5, =0xc7b
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x28
	add	r5, #1
	bl	Func_801e7c0
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x30
	bl	Func_801e7c0
.L28b70:
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8028aa8

	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c1ebc  @ 0x080c1ebc
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e74
	ldr	r6, [r3]
	mov	r3, r6
	add	r3, #0x40
	ldrb	r5, [r3]
	bl	_GetUnit
	ldr	r3, =0x129
	mov	r12, r0
	add	r3, r12
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lc1f42
	mov	r3, #0x94
	lsl	r3, #1
	add	r3, r12
	mov	r1, #0
	ldrb	r0, [r3]
	cmp	r1, r5
	bge	.Lc1efe
	ldrh	r3, [r6, #0x10]
	cmp	r3, r0
	beq	.Lc1efe
	mov	r2, r6
	add	r2, #0x10
.Lc1ef0:
	add	r1, #1
	cmp	r1, r5
	bge	.Lc1efe
	add	r2, #2
	ldrh	r3, [r2]
	cmp	r3, r0
	bne	.Lc1ef0
.Lc1efe:
	cmp	r1, r5
	beq	.Lc1f42
	lsl	r1, #2
	mov	r3, r1
	add	r3, #0x1c
	ldr	r3, [r6, r3]
	cmp	r3, #0
	beq	.Lc1f42
	mov	r2, r12
	ldrb	r3, [r2]
	mov	r4, #0
	cmp	r3, #0
	beq	.Lc1f26
.Lc1f18:
	add	r4, #1
	cmp	r4, #0xd
	bgt	.Lc1f26
	add	r2, #1
	ldrb	r3, [r2]
	cmp	r3, #0
	bne	.Lc1f18
.Lc1f26:
	mov	r0, #0x20
	cmp	r4, #0
	ble	.Lc1f36
	sub	r3, r4, #1
	mov	r2, r12
	ldrb	r3, [r2, r3]
	mov	r0, r3
	sub	r0, #0x31
.Lc1f36:
	add	r1, #0x1c
	ldr	r3, [r6, r1]
	mov	r2, #1
	lsl	r2, r0
	bic	r3, r2
	str	r3, [r6, r1]
.Lc1f42:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80c1ebc


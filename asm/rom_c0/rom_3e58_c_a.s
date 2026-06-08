	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8003fa4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	ldr	r3, =gSpriteSlots
	mov	r8, r2
	lsl	r2, r5, #2
	mov	r6, r1
	add	r7, r2, r3
	mov	r0, #0
	cmp	r5, #0x5f
	bhi	.L4020
	mov	r2, #0x80
	lsl	r2, #6
	cmp	r6, r2
	bhi	.L4020
	ldrh	r3, [r7]
	cmp	r3, #0x10
	bls	.L3fda
	cmp	r3, r6
	beq	.L3fd6
	mov	r0, r5
	bl	Func_8003f3c
	b	.L3fda
.L3fd6:
	ldrh	r5, [r7, #2]
	b	.L3fe4
.L3fda:
	mov	r0, r5
	mov	r1, r6
	bl	Func_8003e58
	mov	r5, r0
.L3fe4:
	mov	r3, #1
	neg	r3, r3
	cmp	r5, r3
	beq	.L401e
	ldr	r2, =0x6010000
	add	r1, r5, r2
	mov	r2, r8
	strh	r6, [r7]
	strh	r5, [r7, #2]
	cmp	r2, #0
	beq	.L401a
	cmp	r8, r3
	bne	.L400a
	mov	r0, r1
	ldr	r3, =Func_80008d4
	mov	r1, r6
	bl	_call_via_r3
	b	.L401a
.L400a:
	mov	r4, #0x84
	lsr	r2, r6, #2
	lsl	r4, #24
	ldr	r3, =REG_DMA3SAD
	mov	r0, r8
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L401a:
	lsr	r0, r5, #5
	b	.L4020
.L401e:
	mov	r0, #0
.L4020:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8003fa4

.thumb_func_start Func_800403c
	push	{lr}
	ldr	r0, =0x1ff
	ldr	r3, =gSpriteAllocTable
	mov	r1, #0
	mov	r2, #0xff
.L4046:
	add	r1, #1
	strb	r2, [r3]
	add	r3, #1
	cmp	r1, r0
	bls	.L4046
	ldr	r2, =gSpriteSlots
	ldr	r4, .L405c	@ 0xffff
	mov	r1, #0
	mov	r0, #0
	b	.L406c

	.align	2, 0
.L405c:
	.word	0xffff
	.pool

.L406c:
	ldrh	r3, [r2, #2]
	add	r1, #1
	orr	r3, r4
	strh	r3, [r2, #2]
	strh	r0, [r2]
	add	r2, #4
	cmp	r1, #0x5f
	bls	.L406c
	pop	{r0}
	bx	r0
.func_end Func_800403c

.thumb_func_start Func_8004080
	push	{lr}
	ldr	r1, =gSpriteSlots
	ldr	r4, =0xffff
	ldrh	r3, [r1, #2]
	mov	r0, #0x60
	mov	r2, #0
	cmp	r3, r4
	bne	.L4094
	mov	r0, #0
	b	.L40a6
.L4094:
	add	r2, #1
	add	r1, #4
	cmp	r2, #0x5f
	bgt	.L40a6
	ldrh	r3, [r1, #2]
	ldr	r4, =0xffff
	cmp	r3, r4
	bne	.L4094
	mov	r0, r2
.L40a6:
	pop	{r1}
	bx	r1
.func_end Func_8004080

.thumb_func_start Func_80040b4
	push	{r5, r6, lr}
	mov	r6, r0
	bl	Func_8004080
	mov	r1, r6
	mov	r2, #0
	mov	r5, r0
	bl	Func_8003fa4
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80040b4


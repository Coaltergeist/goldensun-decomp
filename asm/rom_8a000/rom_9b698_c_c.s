	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_9ba90
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r5, r0
	mov	r6, r2
	mov	r0, sp
	mov	r2, #0
	mov	r4, r1
	mov	r7, r3
	mov	r8, r2
	str	r2, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000012
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r4
	bl	_Func_bc70
	str	r0, [r5]
	cmp	r0, #0
	beq	.L9bac8
	ldrb	r2, [r0, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	strb	r3, [r0, #9]
.L9bac8:
	mov	r1, r6
	mov	r0, r5
	mov	r2, r7
	bl	Func_9ba5c
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x20]
	mov	r2, #0x80
	ldr	r3, [r5]
	lsl	r2, #9
	str	r2, [r5, #0x28]
	str	r2, [r5, #0x2c]
	str	r2, [r5, #0x24]
	add	r3, #0x26
	mov	r2, r8
	str	r6, [r5, #0x14]
	str	r7, [r5, #0x18]
	strb	r2, [r3]
	mov	r3, r5
	mov	r2, #1
	add	r3, #0x41
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	bl	Func_4458
	mov	r3, r5
	add	r3, #0x46
	mov	r2, r5
	strb	r0, [r3]
	add	r2, #0x47
	mov	r3, #4
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #1
	bl	Func_9ba70
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_9ba90

.thumb_func_start Func_9bb34
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, [r5]
	sub	sp, #4
	cmp	r0, #0
	beq	.L9bb44
	bl	_Func_bdd4
.L9bb44:
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000012
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_9bb34

	.section .rodata
	.global .L9c510

.L9c510:
	.incrom 0x9c510, 0x9c610

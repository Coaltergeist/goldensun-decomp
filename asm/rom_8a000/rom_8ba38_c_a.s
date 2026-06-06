	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808d48c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xfa
	ldr	r7, [r3]
	ldr	r3, =ewram_2000240
	lsl	r2, #1
	add	r3, r2
	mov	r11, r0
	ldr	r0, [r3]
	ldr	r6, [r7, #0x10]
	mov	r9, r1
	bl	Func_808ba1c
	mov	r3, #1
	ldrh	r0, [r0, #6]
	ldr	r5, [r6]
	neg	r3, r3
	mov	r8, r0
	cmp	r5, r3
	beq	.L8d56e
	ldr	r2, =0x3ffe
	mov	r10, r2
.L8d4c4:
	mov	r3, #0xf
	and	r3, r5
	cmp	r3, r11
	bne	.L8d560
	ldrb	r3, [r6, #4]
	cmp	r3, r9
	bne	.L8d560
	ldr	r1, [r6, #8]
	mov	r0, r5
	bl	Func_808d458
	cmp	r0, #0
	bne	.L8d4ec
	mov	r3, #6
	ldrsh	r0, [r6, r3]
	bl	Func_808d428
	cmp	r0, #0
	beq	.L8d560
	ldr	r5, [r6]
.L8d4ec:
	mov	r3, #0x80
	lsl	r3, #4
	and	r3, r5
	mov	r4, #0
	mov	r0, #0xc
	cmp	r3, #0
	beq	.L8d4fc
	mov	r0, #2
.L8d4fc:
	mov	r1, #0xc0
	lsl	r1, #3
	mov	r3, r5
	mov	r2, #0x80
	and	r3, r1
	lsl	r2, #2
	cmp	r3, r2
	beq	.L8d524
	cmp	r3, r2
	bgt	.L8d516
	cmp	r3, #0
	beq	.L8d558
	b	.L8d55a
.L8d516:
	mov	r2, #0x80
	lsl	r2, #3
	cmp	r3, r2
	beq	.L8d542
	cmp	r3, r1
	beq	.L8d534
	b	.L8d55a
.L8d524:
	mov	r2, #0xce
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, r0
	ble	.L8d55a
	b	.L8d558
.L8d534:
	mov	r2, #0xce
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, r0
	ble	.L8d55a
.L8d542:
	mov	r3, #0xf0
	lsl	r3, #8
	mov	r2, r8
	and	r5, r3
	sub	r3, r5, r2
	ldr	r2, =0x1fff
	add	r3, r2
	lsl	r3, #16
	lsr	r3, #16
	cmp	r3, r10
	bhi	.L8d55a
.L8d558:
	mov	r4, #1
.L8d55a:
	mov	r0, r6
	cmp	r4, #0
	bne	.L8d570
.L8d560:
	add	r6, #0xc
	ldr	r3, [r6]
	mov	r2, #1
	neg	r2, r2
	mov	r5, r3
	cmp	r3, r2
	bne	.L8d4c4
.L8d56e:
	mov	r0, #0
.L8d570:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808d48c


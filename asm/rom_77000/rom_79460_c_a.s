	.include "macros.inc"

.thumb_func_start Func_807961c
	push	{r5, r6, lr}
	mov	r6, r0
	bl	Func_80795fc
	mov	r5, r0
	mov	r0, r6
	bl	Func_8079358
	mov	r2, #0
	cmp	r2, r5
	bge	.L7964e
	ldr	r0, =ewram_2000240
	mov	r3, #0xfc
	lsl	r3, #1
	add	r1, r0, r3
.L7963a:
	ldrb	r3, [r1]
	add	r1, #1
	cmp	r3, r6
	beq	.L7964a
	add	r2, #1
	cmp	r2, r5
	blt	.L7963a
	b	.L79650
.L7964a:
	mov	r0, r5
	b	.L7965a
.L7964e:
	ldr	r0, =ewram_2000240
.L79650:
	mov	r1, #0xfc
	lsl	r1, #1
	add	r3, r2, r1
	strb	r6, [r0, r3]
	add	r0, r5, #1
.L7965a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_807961c

.thumb_func_start Func_8079664
	push	{r5, r6, lr}
	mov	r5, r0
	bl	Func_80795fc
	mov	r6, r0
	mov	r0, r5
	bl	Func_8079374
	mov	r1, #0
	cmp	r1, r6
	bge	.L79696
	ldr	r0, =ewram_2000240
	mov	r2, #0xfc
	lsl	r2, #1
	ldrb	r3, [r0, r2]
	cmp	r3, r5
	beq	.L79696
	add	r2, r0, r2
.L79688:
	add	r1, #1
	cmp	r1, r6
	bge	.L79696
	add	r2, #1
	ldrb	r3, [r2]
	cmp	r3, r5
	bne	.L79688
.L79696:
	sub	r0, r6, #1
	cmp	r1, r0
	bge	.L796b4
	ldr	r3, =ewram_2000240
	mov	r4, #0xfc
	add	r3, r1, r3
	lsl	r4, #1
	add	r2, r3, r4
	sub	r1, r0, r1
.L796a8:
	ldrb	r3, [r2, #1]
	sub	r1, #1
	strb	r3, [r2]
	add	r2, #1
	cmp	r1, #0
	bne	.L796a8
.L796b4:
	bl	Func_80795fc
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8079664

.thumb_func_start Func_80796c4
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0
	beq	.L796f2
	bl	Func_80795fc
	mov	r1, #0
	cmp	r0, #0
	beq	.L796ee
	ldr	r3, =ewram_2000240
	mov	r4, #0xfc
	lsl	r4, #1
	add	r2, r3, r4
.L796e0:
	ldrb	r3, [r2]
	add	r1, #1
	strh	r3, [r5]
	add	r2, #1
	add	r5, #2
	cmp	r1, r0
	bne	.L796e0
.L796ee:
	ldr	r3, .L796f8	@ 0xff
	strh	r3, [r5]
.L796f2:
	pop	{r5}
	pop	{r1}
	bx	r1
	.align	2, 0
.L796f8:
	.word	0xff
.func_end Func_80796c4

.thumb_func_start Func_8079700
	push	{lr}
	ldr	r1, =ewram_2000240
	ldr	r3, [r1, #0x10]
	ldr	r2, =0xf423f
	add	r3, r0
	cmp	r3, r2
	ble	.L79710
	mov	r3, r2
.L79710:
	cmp	r3, #0
	bge	.L79716
	mov	r3, #0
.L79716:
	str	r3, [r1, #0x10]
	mov	r0, r3
	pop	{r1}
	bx	r1
.func_end Func_8079700


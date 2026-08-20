	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_2008064
	push	{r5, lr}
	mov	r5, r0
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	beq	.Lm882_a2
	cmp	r3, #2
	bgt	.Lm882_7c
	cmp	r3, #0
	beq	.Lm882_b6
	b	.Lm882_cc
.Lm882_7c:
	cmp	r3, #4
	beq	.Lm882_94
	cmp	r3, #6
	bne	.Lm882_cc
	ldr	r3, [r0, #0x18]
	ldr	r2, =0xffffc000
	add	r3, r2
	str	r3, [r0, #0x18]
	mov	r2, #0x80
	ldr	r3, [r0, #0x1c]
	lsl	r2, #6
	b	.Lm882_b0
.Lm882_94:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #6
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffff000
	b	.Lm882_ae
.Lm882_a2:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffff800
.Lm882_ae:
	ldr	r3, [r0, #0x1c]
.Lm882_b0:
	add	r3, r2
	str	r3, [r0, #0x1c]
	b	.Lm882_cc
.Lm882_b6:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	add	r0, #0x3c
	strh	r0, [r5]
.Lm882_cc:
	ldrh	r3, [r5]
	sub	r3, #1
	strh	r3, [r5]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_882_2008064


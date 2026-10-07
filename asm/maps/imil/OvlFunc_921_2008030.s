	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_921_2008030
	push	{r5, lr}
	mov	r5, r0
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	beq	.Lm921_6e
	cmp	r3, #2
	bgt	.Lm921_48
	cmp	r3, #0
	beq	.Lm921_82
	b	.Lm921_bc
.Lm921_48:
	cmp	r3, #4
	beq	.Lm921_60
	cmp	r3, #6
	bne	.Lm921_bc
	ldr	r3, [r0, #0x18]
	ldr	r2, =0xffffc000
	add	r3, r2
	str	r3, [r0, #0x18]
	mov	r2, #0x80
	ldr	r3, [r0, #0x1c]
	lsl	r2, #6
	b	.Lm921_7c
.Lm921_60:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #6
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffff000
	b	.Lm921_7a
.Lm921_6e:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffff800
.Lm921_7a:
	ldr	r3, [r0, #0x1c]
.Lm921_7c:
	add	r3, r2
	str	r3, [r0, #0x1c]
	b	.Lm921_bc
.Lm921_82:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffff800
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	mov	r3, r0
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.Lm921_ae
	bl	__Random
	mov	r1, #0x28
	bl	_umodsi3_RAM
	add	r0, #0x28
	b	.Lm921_ba
.Lm921_ae:
	bl	__Random
	mov	r1, #0x14
	bl	_umodsi3_RAM
	add	r0, #0x14
.Lm921_ba:
	strh	r0, [r5]
.Lm921_bc:
	ldrh	r3, [r5]
	sub	r3, #1
	strh	r3, [r5]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_921_2008030


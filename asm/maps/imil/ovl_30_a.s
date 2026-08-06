	.include "macros.inc"

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

.thumb_func_start OvlFunc_921_20080d8
	push	{r5, lr}
	mov	r5, r0
	ldr	r1, [r5, #0x68]
	cmp	r1, #0
	beq	.Lm921_122
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r0, [r1, #0x10]
	ldr	r3, [r5, #0x10]
	ldr	r1, [r1, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	__atan2
	ldrh	r3, [r5, #6]
	lsl	r0, #16
	lsr	r0, #16
	sub	r0, r3
	lsl	r0, #16
	asr	r0, #16
	cmp	r0, #0
	beq	.Lm921_122
	mov	r2, #0x80
	lsl	r2, #5
	cmp	r0, r2
	ble	.Lm921_116
	mov	r0, r2
.Lm921_116:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.Lm921_11e
	mov	r0, r2
.Lm921_11e:
	add	r3, r0
	strh	r3, [r5, #6]
.Lm921_122:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_921_20080d8

.thumb_func_start Imil_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x33
	cmp	r2, r3
	bne	.Lm921_148
	ldr	r0, =.Lm921_28a0
	b	.Lm921_14a
.Lm921_148:
	ldr	r0, =.Lm921_2798
.Lm921_14a:
	pop	{r1}
	bx	r1
.func_end Imil_GetEntrances


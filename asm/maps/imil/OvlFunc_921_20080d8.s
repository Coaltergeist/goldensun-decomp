	.include "macros.inc"
	.include "gba.inc"

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


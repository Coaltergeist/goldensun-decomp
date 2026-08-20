	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200dc48
	push	{r5, lr}
	ldr	r5, =.Lm945_7f84
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lm945_5c6a
	sub	r3, #1
	str	r3, [r5]
	cmp	r3, #0x46
	bne	.Lm945_5c94
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	b	.Lm945_5c94
.Lm945_5c6a:
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	cmp	r3, #0
	bne	.Lm945_5c94
	mov	r0, #0xb5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r3, #0x50
	str	r3, [r5]
.Lm945_5c94:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200dc48


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_969_200d9f0
	push	{r5, lr}
	mov	r3, r0
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lm969_5a20
	mov	r5, r0
	add	r5, #0x62
	ldrb	r2, [r5]
	ldr	r3, [r0, #0x4c]
	lsr	r2, #2
	lsl	r2, #16
	add	r3, r2
	str	r3, [r0, #0xc]
	bl	OvlFunc_969_200d688
	ldrb	r3, [r5]
	mov	r2, r3
	cmp	r2, #0
	beq	.Lm969_5a20
	cmp	r2, #0x1f
	bhi	.Lm969_5a20
	add	r3, #1
	strb	r3, [r5]
.Lm969_5a20:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200d9f0


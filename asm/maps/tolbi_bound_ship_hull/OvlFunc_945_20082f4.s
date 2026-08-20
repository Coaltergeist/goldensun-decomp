	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_20082f4
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x59
	mov	r3, #8
	ldr	r5, [r6, #0x50]
	mov	r1, #0
	strb	r3, [r2]
	bl	__Actor_SetSpriteFlags
	mov	r2, #0xd
	ldrb	r1, [r5, #9]
	neg	r2, r2
	mov	r3, r2
	and	r3, r1
	mov	r1, #4
	orr	r3, r1
	strb	r3, [r5, #9]
	ldrb	r3, [r5, #0x15]
	and	r2, r3
	orr	r2, r1
	mov	r1, r6
	add	r1, #0x23
	strb	r2, [r5, #0x15]
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r0, r6
	mov	r1, #0xf
	bl	__Func_80929d8
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_20082f4


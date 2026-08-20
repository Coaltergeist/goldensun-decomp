	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_2009a50
	push	{r5, r6, r7, lr}
	mov	r7, r0
	ldr	r1, [r7, #0x50]
	ldrb	r2, [r1, #9]
	mov	r3, #0xc
	and	r3, r2
	cmp	r3, #0xc
	bne	.Lm968_1a92
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r5, #0
	mov	r2, #0x80
	lsl	r2, #18
	mov	r1, #0
	mov	r3, #0xdf
	str	r5, [r7, #0x44]
	ldr	r0, [r7, #8]
	bl	OvlFunc_968_2008058
	mov	r6, r0
	mov	r0, r7
	bl	OvlFunc_968_200894c
	str	r5, [r7, #8]
	str	r5, [r7, #0x10]
	mov	r0, r6
	bl	__DeleteActor
	b	.Lm968_1a96
.Lm968_1a92:
	bl	OvlFunc_968_20099c0
.Lm968_1a96:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009a50


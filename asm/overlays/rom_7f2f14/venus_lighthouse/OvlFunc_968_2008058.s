	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_2008058
	push	{r5, r6, lr}
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	mov	r0, r3
	mov	r2, r5
	mov	r1, r4
	mov	r3, r6
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm968_90
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #0xe
	bl	OvlFunc_968_2008030
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c548
	mov	r0, r5
	b	.Lm968_92
.Lm968_90:
	mov	r0, #0
.Lm968_92:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_2008058


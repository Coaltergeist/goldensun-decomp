	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_20085ac
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Lm968_5c2
	mov	r1, #7
	bl	__Func_80929d8
	b	.Lm968_5c8
.Lm968_5c2:
	mov	r1, #0
	bl	__Func_80929d8
.Lm968_5c8:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.Lm968_5da
	mov	r0, #0x8a
	bl	__PlaySound
.Lm968_5da:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_20085ac


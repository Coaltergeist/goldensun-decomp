	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_919_200826c
	push	{lr}
	ldr	r3, =REG_VCOUNT
	ldrh	r2, [r3]
	ldr	r3, =.Lm919_610
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.Lm919_27e
	ldr	r3, =.Lm919_614
	b	.Lm919_280
.Lm919_27e:
	ldr	r3, =.Lm919_616
.Lm919_280:
	ldrh	r2, [r3]
	ldr	r3, =REG_BG3HOFS
	strh	r2, [r3]
	pop	{r0}
	bx	r0
.func_end OvlFunc_919_200826c


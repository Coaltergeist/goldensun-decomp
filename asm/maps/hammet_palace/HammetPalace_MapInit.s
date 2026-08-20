	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start HammetPalace_MapInit
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	ldr	r3, =0x209
	lsl	r2, #1
	str	r3, [r1, r2]
	ldr	r3, =gState
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x67
	cmp	r2, r3
	bne	.Lm938_24c
	bl	OvlFunc_938_2008264
.Lm938_24c:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end HammetPalace_MapInit


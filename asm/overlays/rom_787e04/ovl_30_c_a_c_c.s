	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_887_2009580
	push	{r5, r6, lr}
	ldr	r5, =iwram_3001e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L15a2
	ldr	r0, [r5]
	mov	r1, #6
	lsr	r0, #1
	bl	_umodsi3_RAM
	mov	r1, r0
	mov	r0, r6
	bl	__Actor_SetColorswap
.L15a2:
	ldr	r3, [r5]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L15b2
	mov	r0, r6
	bl	OvlFunc_887_200968c
.L15b2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2009580


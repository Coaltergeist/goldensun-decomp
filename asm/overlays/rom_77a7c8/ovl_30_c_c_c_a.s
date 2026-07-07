	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200bf4c
	push	{r5, r6, lr}
	ldr	r5, =iwram_3001e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L3f6e
	ldr	r0, [r5]
	mov	r1, #6
	lsr	r0, #1
	bl	_umodsi3_RAM
	mov	r1, r0
	mov	r0, r6
	bl	__Actor_SetColorswap
.L3f6e:
	ldr	r3, [r5]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L3f7e
	mov	r0, r6
	bl	OvlFunc_881_200c058
.L3f7e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200bf4c


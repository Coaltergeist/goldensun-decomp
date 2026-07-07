	.include "macros.inc"

.thumb_func_start OvlFunc_883_200dc5c
	push	{r5, r6, lr}
	ldr	r5, =iwram_3001e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L5c7e
	ldr	r0, [r5]
	mov	r1, #6
	lsr	r0, #1
	bl	_umodsi3_RAM
	mov	r1, r0
	mov	r0, r6
	bl	__Actor_SetColorswap
.L5c7e:
	ldr	r3, [r5]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L5c8e
	mov	r0, r6
	bl	OvlFunc_883_200dd68
.L5c8e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200dc5c


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_2009578
	push	{r5, r6, lr}
	ldr	r3, =REG_VCOUNT
	ldrh	r3, [r3]
	ldr	r5, =iwram_3001ad4
	ldr	r6, =REG_BG1HOFS
	cmp	r3, #0xe3
	beq	.L158a
	cmp	r3, #0x2e
	bhi	.L159e
.L158a:
	bl	__Random
	mov	r3, #0x64
	mul	r3, r0
	ldr	r2, =.L3738
	ldr	r2, [r2]
	lsr	r3, #16
	cmp	r3, r2
	bcs	.L159e
	ldr	r5, =.L372c
.L159e:
	ldmia	r5!, {r3}
	str	r3, [r6]
	ldr	r6, =REG_BG2HOFS
	ldmia	r5!, {r3}
	stmia	r6!, {r3}
	ldr	r3, [r5]
	str	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2009578

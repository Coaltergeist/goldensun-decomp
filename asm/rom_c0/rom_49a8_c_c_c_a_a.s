	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MatrixPop  @ 0x08004a5c
	push	{lr}
	ldr	r2, =gMatrixStackSize
	ldr	r3, [r2]
	cmp	r3, #0
	ble	.L4a7c
	sub	r3, #1
	str	r3, [r2]
	ldr	r3, =gMatrixStack
	ldr	r0, [r3]
	sub	r0, #0x30
	str	r0, [r3]
	ldr	r1, =Data_8000ac0
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x8400000c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L4a7c:
	pop	{r0}
	bx	r0
.func_end MatrixPop


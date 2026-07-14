	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_970_20080b0
	push	{r5, lr}
	ldr	r5, =.L181c
	mov	r1, #6
	ldrh	r0, [r5]
	bl	_udivsi3_RAM
	ldr	r2, =.L14ac
	lsl	r0, #16
	lsr	r0, #15
	add	r0, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x50000e8
	ldr	r2, =0x80000006
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldrh	r3, [r5]
	mov	r2, #0x8c
	add	r3, #1
	strh	r3, [r5]
	lsl	r2, #14
	lsl	r3, #16
	cmp	r3, r2
	bls	.Le2
	ldr	r3, .Le8	@ 0
	strh	r3, [r5]
.Le2:
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.Le8:
	.word	0
.func_end OvlFunc_970_20080b0

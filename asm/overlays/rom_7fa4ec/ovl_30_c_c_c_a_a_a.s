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

.thumb_func_start OvlFunc_970_2008100
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x64
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	ldrh	r3, [r2]
	cmp	r1, #0
	beq	.L132
	sub	r3, #1
	strh	r3, [r2]
	bl	__Random
	mov	r5, r0
	bl	__Random
	ldr	r3, [r6, #8]
	sub	r5, r0
	add	r3, r5
	str	r3, [r6, #8]
	ldr	r2, =0xcccc
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	b	.L158
.L132:
	mov	r2, r6
	add	r2, #0x66
	mov	r0, #0
	ldrsh	r3, [r2, r0]
	cmp	r3, #0
	beq	.L158
	strh	r1, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r2, r6
	add	r2, #0x5e
	mov	r3, #0x14
	strh	r3, [r2]
	ldr	r1, =gScript_970__020094c4
	mov	r0, r6
	bl	__Actor_SetScript
.L158:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_2008100

	.include "macros.inc"

.thumb_func_start Func_80f95a0
	push	{r5, r6, lr}
	ldr	r6, =ewram_2003000
	mov	r5, #0
.Lf95a6:
	ldrb	r3, [r6]
	cmp	r3, #0
	beq	.Lf95ba
	mov	r0, #1
	bl	Func_80030f8
	ldr	r3, =0x12b
	add	r5, #1
	cmp	r5, r3
	ble	.Lf95a6
.Lf95ba:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80f95a0

.thumb_func_start Func_80f95c8
	push	{lr}
	cmp	r0, #0x46
	beq	.Lf95d6
	cmp	r0, #0x4b
	beq	.Lf95d6
	cmp	r0, #0x43
	bne	.Lf95da
.Lf95d6:
	mov	r0, #3
	b	.Lf95dc
.Lf95da:
	mov	r0, #2
.Lf95dc:
	pop	{r1}
	bx	r1
.func_end Func_80f95c8

	.section .rodata
	.global .Lfb794

.Lfb794:
	.incrom 0xfb794, 0xfb7a0

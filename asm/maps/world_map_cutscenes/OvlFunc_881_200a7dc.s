	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200a7dc
	push	{r5, r6, r7, lr}
	ldr	r0, =gOvl_0200e3f4
	mov	r3, #0x21
	mov	r4, #1
	mov	r7, r0
	mov	r6, #1
	add	r1, r0, #4
	mov	r2, #0
	mov	r12, r3
	neg	r4, r4
.Lm881_27f0:
	ldr	r3, [r2, r0]
	cmp	r3, #2
	bne	.Lm881_2806
	mov	r5, #0
	ldrsh	r3, [r1, r5]
	cmp	r3, #0x8a
	bne	.Lm881_2806
	mov	r3, r12
	str	r6, [r2, r7]
	str	r3, [r1, #4]
	b	.Lm881_2812
.Lm881_2806:
	ldr	r3, [r2, r0]
	cmp	r3, r4
	beq	.Lm881_2812
	add	r1, #0xc
	add	r2, #0xc
	b	.Lm881_27f0
.Lm881_2812:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a7dc


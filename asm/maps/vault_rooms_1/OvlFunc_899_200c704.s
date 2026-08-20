	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_899_200c704
	push	{r5, lr}
	ldr	r3, [r0]
	ldr	r2, =0xffc00000
	add	r3, r2
	asr	r4, r3, #19
	ldr	r2, =0xfd900000
	ldr	r3, [r0, #8]
	add	r3, r2
	ldr	r2, =.Lm899_4f2c
	asr	r1, r3, #19
	mov	r5, #0
	mov	r0, #0
	b	.Lm899_4722
.Lm899_471e:
	add	r0, #1
	add	r2, #0x10
.Lm899_4722:
	cmp	r0, #0x24
	bhi	.Lm899_4740
	ldrb	r3, [r2]
	cmp	r3, r4
	beq	.Lm899_4732
	add	r3, #1
	cmp	r3, r4
	bne	.Lm899_471e
.Lm899_4732:
	ldrb	r3, [r2, #1]
	cmp	r3, r1
	beq	.Lm899_473e
	add	r3, #1
	cmp	r3, r1
	bne	.Lm899_471e
.Lm899_473e:
	mov	r5, r2
.Lm899_4740:
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200c704


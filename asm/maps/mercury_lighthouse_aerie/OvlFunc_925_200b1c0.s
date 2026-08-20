	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_925_200b1c0
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, r1
	asr	r2, #20
	ldr	r1, [r3]
	mov	r3, #0x40
	sub	r2, r3, r2
	mov	r6, r2
	mov	r5, r2
	mov	r4, #0
	add	r6, #8
	add	r5, #0xb
	add	r1, #0x14
.Lm925_31da:
	ldmia	r1!, {r3}
	cmp	r3, #0
	beq	.Lm925_31f8
	ldr	r2, [r3, #8]
	ldr	r3, [r3, #0x10]
	asr	r2, #20
	sub	r2, #4
	asr	r3, #20
	cmp	r2, #4
	bhi	.Lm925_31f8
	cmp	r6, r3
	bgt	.Lm925_31f8
	cmp	r3, r5
	bge	.Lm925_31f8
	stmia	r0!, {r4}
.Lm925_31f8:
	add	r4, #1
	cmp	r4, #0x41
	bls	.Lm925_31da
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_925_200b1c0


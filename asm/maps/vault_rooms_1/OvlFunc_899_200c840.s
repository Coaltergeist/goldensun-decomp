	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_899_200c840
	push	{r5, r6, lr}
	cmp	r0, #0
	bne	.Lm899_484a
	mov	r0, #1
	b	.Lm899_489e
.Lm899_484a:
	ldrb	r3, [r0]
	mov	r2, #0x90
	lsl	r3, #19
	lsl	r2, #15
	add	r6, r3, r2
	ldrb	r3, [r0, #1]
	mov	r2, #0x9e
	lsl	r2, #18
	lsl	r3, #19
	add	r5, r3, r2
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	bl	OvlFunc_899_200c7fc
	cmp	r0, #0
	bne	.Lm899_4896
	mov	r0, r6
	mov	r1, r5
	mov	r2, #2
	bl	OvlFunc_899_200c7bc
	cmp	r0, #0
	bne	.Lm899_4896
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0x18
	bl	OvlFunc_899_200c7bc
	cmp	r0, #0
	bne	.Lm899_4896
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0x19
	bl	OvlFunc_899_200c7bc
	cmp	r0, #0
	beq	.Lm899_489c
.Lm899_4896:
	mov	r0, #1
	neg	r0, r0
	b	.Lm899_489e
.Lm899_489c:
	mov	r0, #0
.Lm899_489e:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200c840


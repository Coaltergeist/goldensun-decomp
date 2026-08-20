	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_916_2008b8c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r5, r1
	mov	r4, #1
	mov	r1, r2
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	neg	r4, r4
	cmp	r3, r4
	beq	.Lm916_bd8
	mov	r8, r4
.Lm916_ba4:
	mov	r3, #2
	ldrsh	r4, [r0, r3]
	mov	r6, #4
	ldrsh	r2, [r0, r6]
	mov	r6, #6
	ldrsh	r3, [r0, r6]
	mov	r12, r4
	mov	r14, r2
	cmp	r3, #0
	bne	.Lm916_bbc
	add	r4, #3
	b	.Lm916_bbe
.Lm916_bbc:
	add	r2, #3
.Lm916_bbe:
	cmp	r5, r12
	blt	.Lm916_bce
	cmp	r5, r4
	bgt	.Lm916_bce
	cmp	r1, r14
	blt	.Lm916_bce
	cmp	r1, r2
	ble	.Lm916_bda
.Lm916_bce:
	add	r0, #0xc
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, r8
	bne	.Lm916_ba4
.Lm916_bd8:
	mov	r0, #0
.Lm916_bda:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_916_2008b8c


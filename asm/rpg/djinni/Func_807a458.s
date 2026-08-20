	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_807a458  @ 0x0807a458
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r1
	mov	r7, r2
	bl	Func_807a3a8
	mov	r0, #0
	cmp	r5, #7
	bls	.L7a46c
	mov	r0, #1
.L7a46c:
	bl	Func_8077330
	mov	r1, #0x84
	mov	r3, r0
	lsl	r1, #1
	add	r0, r3, r1
	ldr	r1, [r0]
	mov	r2, r3
	add	r2, #8
	lsl	r3, r1, #2
	strb	r6, [r2, r3]
	add	r1, #1
	add	r2, r3
	mov	r3, #0xff
	strb	r7, [r2, #1]
	strb	r5, [r2, #2]
	strb	r3, [r2, #3]
	str	r1, [r0]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a458


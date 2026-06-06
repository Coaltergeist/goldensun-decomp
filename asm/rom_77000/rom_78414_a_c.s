	.include "macros.inc"

.thumb_func_start Func_807842c
	push	{r5, r6, lr}
	mov	r5, r1
	bl	Func_8077394
	mov	r6, r0
	mov	r0, r5
	bl	Func_8078414
	mov	r3, #0x94
	lsl	r3, #1
	add	r6, r3
	ldrb	r3, [r6]
	ldrh	r0, [r0, #4]
	cmp	r3, #7
	bls	.L7844e
	mov	r0, #0
	b	.L78456
.L7844e:
	ldrb	r3, [r6]
	asr	r0, r3
	mov	r3, #1
	and	r0, r3
.L78456:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_807842c


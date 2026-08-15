	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800eba0  @ 0x0800eba0
	push	{r5, r6, lr}
	ldmia	r0!, {r4}
	ldmia	r2!, {r5}
	sub	r4, r5
	asr	r6, r4, #16
	ldmia	r2!, {r5}
	ldmia	r0!, {r4}
	ldr	r2, [r2]
	ldr	r0, [r0]
	add	r1, r3
	mov	r3, #0x80
	sub	r4, r5
	sub	r0, r2
	lsl	r3, #15
	asr	r4, #16
	asr	r0, #16
	cmp	r6, r3
	bgt	.Lebe2
	cmp	r0, r3
	bgt	.Lebe2
	mov	r2, r4
	mul	r2, r4
	mov	r3, r6
	mul	r3, r6
	add	r3, r2
	mov	r2, r0
	mul	r2, r0
	add	r3, r2
	mov	r2, r1
	mul	r2, r1
	mov	r0, #0
	cmp	r3, r2
	blt	.Lebe6
.Lebe2:
	mov	r0, #1
	neg	r0, r0
.Lebe6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_800eba0

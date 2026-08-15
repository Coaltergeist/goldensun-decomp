	.include "macros.inc"

.arm_func_start Func_800a418  @ 0x0800a418
	bics	r1, #7
	bicnes	r2, #7
	bxeq	lr
	push	{r5, r6, r7, r8, r9, r10, r11}
.La428:
	mov	r12, r1
.La42c:
	ldm	r0, {r4, r5}
	add	r0, r1
	ldm	r0, {r6, r7}
	add	r0, r1
	ldm	r0, {r8, r9}
	add	r0, r1
	ldm	r0, {r10, r11}
	add	r0, r1
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r10, r11}
	ldm	r0, {r4, r5}
	add	r0, r1
	ldm	r0, {r6, r7}
	add	r0, r1
	ldm	r0, {r8, r9}
	add	r0, r1
	ldm	r0!, {r10, r11}
	add	r0, r1
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r10, r11}
	subs	r12, #8
	subgt	r0, r1, lsl #3
	bgt	.La42c
	sub	r0, r1
	subs	r2, #8
	bgt	.La428
	pop	{r5, r6, r7, r8, r9, r10, r11}
	bx	lr
.func_end Func_800a418


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c0eb8
	push	{r5, r6, lr}
	mov	r5, r0
	ldr	r6, [r5]
	mov	r0, r5
	mov	r1, #0x80
	mov	r2, #0
	mov	r3, #0
	mov	r4, #0
	lsl	r1, #9
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	stmia	r0!, {r1, r2, r3, r4}
	ldr	r3, [r5]
	add	r6, r3
	str	r6, [r5, #4]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80c0eb8


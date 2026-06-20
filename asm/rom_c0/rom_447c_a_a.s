	.include "macros.inc"

.thumb_func_start vec3_translate  @ 0x0800447c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r10, r0
	mov	r0, #0x80
	mov	r8, r1
	lsl	r0, #7
	add	r0, r8
	mov	r5, r2
	bl	sin
	ldr	r6, =Func_8000888
	mov	r1, r0
	mov	r0, r10
	.call_via r6
	ldr	r3, [r5]
	add	r3, r0
	stmia	r5!, {r3}
	mov	r0, r8
	bl	sin
	add	r5, #4
	mov	r1, r0
	mov	r0, r10
	.call_via r6
	ldr	r3, [r5]
	add	r3, r0
	str	r3, [r5]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end vec3_translate


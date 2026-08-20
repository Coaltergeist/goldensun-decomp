	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_944_20090a0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r3, =iwram_3001e70
	ldr	r6, =.Lm944_1940
	ldr	r3, [r3]
	ldr	r0, [r6]
	ldr	r5, [r3]
	bl	__cos
	ldr	r2, =.Lm944_1928
	mov	r10, r0
	ldr	r0, [r2]
	mov	r8, r2
	bl	__sin
	ldr	r3, [r5]
	add	r3, r10
	stmia	r5!, {r3}
	ldr	r3, [r5]
	lsl	r0, #2
	add	r3, r0
	str	r3, [r5]
	ldr	r2, =.Lm944_1924
	ldr	r3, [r2]
	add	r3, r10
	str	r3, [r2]
	ldr	r2, =.Lm944_1920
	ldr	r3, [r2]
	add	r3, r0
	str	r3, [r2]
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r2, [r6]
	lsl	r3, #7
	lsr	r3, #16
	add	r2, r3
	str	r2, [r6]
	bl	__Random
	mov	r2, r8
	ldr	r3, [r2]
	lsl	r0, #9
	ldrh	r2, [r6]
	lsr	r0, #16
	ldr	r1, =0xffff
	add	r3, r0
	str	r2, [r6]
	and	r3, r1
	mov	r2, r8
	str	r3, [r2]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_944_20090a0


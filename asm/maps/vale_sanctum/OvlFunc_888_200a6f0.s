	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_888_200a6f0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	mov	r2, #0x64
	add	r2, r5
	ldrh	r6, [r2]
	ldr	r1, [r5, #0x68]
	mov	r0, r6
	mov	r8, r2
	mov	r10, r1
	bl	__cos
	mov	r1, r10
	lsl	r2, r0, #3
	ldr	r3, [r1, #8]
	sub	r2, r0
	lsl	r2, #1
	add	r3, r2
	str	r3, [r5, #8]
	mov	r0, r6
	bl	__sin
	mov	r1, r10
	lsl	r3, r0, #2
	ldr	r2, [r1, #0x10]
	add	r3, r0
	lsl	r3, #1
	add	r2, r3
	ldr	r3, [r5, #8]
	str	r2, [r5, #0x10]
	str	r2, [r5, #0x40]
	str	r3, [r5, #0x38]
	mov	r2, r8
	add	r5, #0x66
	ldrh	r3, [r2]
	ldrh	r2, [r5]
	mov	r1, r8
	add	r3, r2
	strh	r3, [r1]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200a6f0


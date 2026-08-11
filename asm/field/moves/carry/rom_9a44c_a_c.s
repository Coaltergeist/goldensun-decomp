	.include "macros.inc"

.thumb_func_start Func_809a738  @ 0x0809a738
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	bl	Random
	ldrh	r2, [r7, #6]
	mov	r1, #0x80
	mov	r8, r2
	lsl	r1, #10
	mov	r6, r0
	mov	r0, r8
	add	r6, r1
	bl	cos
	ldr	r5, =Func_8000888
	mov	r1, r0
	mov	r0, r6
	.call_via r5
	mov	r10, r0
	mov	r0, r8
	bl	sin
	mov	r1, r0
	mov	r0, r6
	.call_via r5
	ldr	r3, [r7, #8]
	add	r3, r10
	str	r3, [r7, #8]
	ldr	r3, [r7, #0x10]
	add	r3, r0
	str	r3, [r7, #0x10]
	ldr	r1, =0xfff0
	ldrh	r3, [r7, #6]
	add	r3, r1
	strh	r3, [r7, #6]
	mov	r5, r7
	add	r5, #0x66
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0
	beq	.L9a7a6
	sub	r3, r2, #1
	strh	r3, [r5]
	ldrh	r3, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #4
	add	r3, r2
	strh	r3, [r7, #6]
	b	.L9a7be
.L9a7a6:
	bl	Random
	lsl	r0, #5
	lsr	r0, #16
	cmp	r0, #0
	bne	.L9a7be
	bl	Random
	lsl	r0, #4
	lsr	r0, #16
	add	r0, #8
	strh	r0, [r5]
.L9a7be:
	mov	r2, r7
	add	r2, #0x64
	ldrh	r3, [r2]
	mov	r1, #0xca
	add	r3, #1
	strh	r3, [r2]
	lsl	r1, #15
	lsl	r3, #16
	cmp	r3, r1
	bne	.L9a7da
	ldr	r1, =Data_9f0b0
	mov	r0, r7
	bl	_Actor_SetScript
.L9a7da:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809a738

.thumb_func_start Func_809a7f4  @ 0x0809a7f4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	ldr	r0, [r7, #0x68]
	ldrh	r6, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #12
	mov	r9, r0
	mov	r0, r6
	mov	r10, r2
	bl	cos
	ldr	r5, =Func_8000888
	mov	r1, r0
	mov	r0, r10
	.call_via r5
	mov	r8, r0
	mov	r0, r6
	bl	sin
	mov	r1, r0
	mov	r0, r10
	.call_via r5
	mov	r2, r9
	ldr	r3, [r2, #8]
	add	r3, r8
	str	r3, [r7, #8]
	ldr	r3, [r2, #0x10]
	add	r3, r0
	str	r3, [r7, #0x10]
	mov	r0, #0x80
	ldrh	r3, [r7, #6]
	lsl	r0, #4
	add	r3, r0
	strh	r3, [r7, #6]
	mov	r2, r7
	add	r2, #0x64
	ldrh	r3, [r2]
	mov	r0, #0xf2
	add	r3, #1
	strh	r3, [r2]
	lsl	r0, #15
	lsl	r3, #16
	mov	r1, #0
	cmp	r3, r0
	bne	.L9a876
	ldr	r3, =Func_809a738
	str	r3, [r7, #0x6c]
	mov	r3, r7
	add	r3, #0x66
	strh	r1, [r2]
	strh	r1, [r3]
	ldr	r3, =0x1999
	str	r3, [r7, #0x48]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r7, #0x28]
	bl	Random
	strh	r0, [r7, #6]
.L9a876:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809a7f4


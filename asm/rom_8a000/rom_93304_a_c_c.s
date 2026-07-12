	.include "macros.inc"

.thumb_func_start Func_809397c  @ 0x0809397c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	ldr	r1, [r6, #0x68]
	cmp	r1, #0
	beq	.L93a00
	ldr	r2, [r1, #8]
	ldr	r3, [r6, #8]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L93998
	ldr	r2, =0xffff
	add	r0, r2
.L93998:
	ldr	r2, [r1, #0x10]
	ldr	r3, [r6, #0x10]
	asr	r5, r0, #16
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L939a8
	ldr	r3, =0xffff
	add	r0, r3
.L939a8:
	asr	r0, #16
	mov	r8, r0
	mov	r2, r8
	mov	r3, r8
	mul	r3, r2
	mov	r0, r5
	mul	r0, r5
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	mov	r3, r6
	add	r3, #0x64
	mov	r2, #0
	ldrsh	r7, [r3, r2]
	cmp	r0, r7
	blt	.L939f8
	lsl	r0, r5, #20
	mov	r1, r7
	bl	__divsi3
	ldr	r5, [r6, #8]
	mov	r3, r8
	add	r5, r0
	mov	r1, r7
	lsl	r0, r3, #20
	bl	__divsi3
	ldr	r3, [r6, #0x10]
	mov	r1, r5
	add	r3, r0
	ldr	r2, [r6, #0xc]
	mov	r0, r6
	bl	_Actor_TravelTo
	mov	r0, r6
	mov	r1, #2
	bl	_Actor_SetAnim
	b	.L93a00
.L939f8:
	mov	r0, r6
	mov	r1, #1
	bl	_Actor_SetAnim
.L93a00:
	mov	r0, #1
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_809397c

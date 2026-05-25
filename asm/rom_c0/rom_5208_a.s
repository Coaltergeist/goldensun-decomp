	.include "macros.inc"

.thumb_func_start Func_8005208
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	lsr	r3, r5, #31
	add	r5, r3
	asr	r5, #1
	mov	r0, r5
	mov	r10, r2
	mov	r8, r1
	bl	Func_8002322
	mov	r6, r0
	mov	r0, r5
	bl	Func_800231c
	lsl	r1, r0, #2
	add	r1, r0
	lsl	r1, #4
	ldr	r3, =Func_80008ac
	mov	r0, r6
	bl	_call_via_r3
	ldr	r3, =iwram_3001ce0
	mov	r2, r8
	str	r2, [r3, #4]
	mov	r2, r10
	str	r0, [r3]
	str	r2, [r3, #8]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8005208


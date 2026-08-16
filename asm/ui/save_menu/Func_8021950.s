	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8021950  @ 0x08021950
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r3
	sub	sp, #8
	neg	r3, r6
	str	r0, [sp, #4]
	mov	r7, r2
	mov	r0, #0
	lsl	r3, #2
	lsl	r2, r6, #2
	str	r1, [sp]
	mov	r12, r0
	mov	r8, r3
	mov	r14, r2
.L2196e:
	ldr	r0, [sp]
	ldmia	r0!, {r4}
	mov	r3, r0
	str	r3, [sp]
	ldr	r0, [sp, #4]
	ldmia	r0!, {r1}
	mov	r3, r0
	mov	r2, #0
	str	r3, [sp, #4]
	cmp	r6, #0
	bge	.L2198a
	mov	r3, r8
	lsr	r4, r3
	b	.L2198e
.L2198a:
	mov	r0, r14
	lsl	r4, r0
.L2198e:
	ldr	r5, =0xfffffff
	mov	r0, #7
.L21992:
	lsl	r2, #4
	cmp	r4, r5
	bls	.L2199c
	lsr	r3, r4, #28
	b	.L2199e
.L2199c:
	lsr	r3, r1, #28
.L2199e:
	add	r2, r3
	sub	r0, #1
	lsl	r4, #4
	lsl	r1, #4
	cmp	r0, #0
	bge	.L21992
	stmia	r7!, {r2}
	mov	r2, #1
	add	r12, r2
	mov	r3, r12
	cmp	r3, #7
	ble	.L2196e
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8021950

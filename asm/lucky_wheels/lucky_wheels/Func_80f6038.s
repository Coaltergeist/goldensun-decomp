	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f6038  @ 0x080f6038
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	cmp	r3, #0
	ble	.Lf6094
	mov	r1, #0x1f
	mov	r8, r1
	mov	r2, #0xf8
	mov	r1, #0xf8
	lsl	r2, #2
	lsl	r1, #7
	mov	r14, r2
	mov	r12, r1
	mov	r0, r3
.Lf605a:
	ldrh	r4, [r7]
	mov	r2, r8
	mov	r3, r4
	and	r3, r2
	mov	r1, r14
	mov	r2, r4
	and	r2, r1
	mul	r3, r5
	mov	r1, r12
	mul	r2, r5
	and	r1, r4
	mul	r1, r5
	lsr	r4, r3, #16
	mov	r3, r8
	and	r4, r3
	lsr	r2, #16
	mov	r3, r14
	and	r2, r3
	orr	r4, r2
	lsr	r1, #16
	mov	r2, r12
	and	r1, r2
	orr	r4, r1
	sub	r0, #1
	strh	r4, [r6]
	add	r7, #2
	add	r6, #2
	cmp	r0, #0
	bne	.Lf605a
.Lf6094:
	mov	r0, #0
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80f6038


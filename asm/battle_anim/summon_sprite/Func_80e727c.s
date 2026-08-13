	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80e727c  @ 0x080e727c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r5, =0x5000002
	ldr	r7, .Le72b4	@ 0x1f
	mov	r8, r0
	mov	r14, r1
	mov	r12, r2
	mov	r6, #0
.Le728e:
	ldrh	r2, [r5]
	lsl	r3, r2, #16
	lsr	r1, r3, #26
	and	r1, r7
	lsr	r4, r3, #21
	mov	r0, #0x1f
	and	r4, r7
	and	r0, r2
	add	r1, r8
	add	r4, r14
	add	r0, r12
	cmp	r1, #0x1f
	ble	.Le72aa
	mov	r1, #0x1f
.Le72aa:
	cmp	r4, #0x1f
	ble	.Le72bc
	mov	r4, #0x1f
	b	.Le72bc

	.align	2, 0
.Le72b4:
	.word	0x1f
	.pool

.Le72bc:
	cmp	r0, #0x1f
	ble	.Le72c2
	mov	r0, #0x1f
.Le72c2:
	lsl	r3, r1, #10
	lsl	r2, r4, #5
	orr	r3, r2
	orr	r3, r0
	add	r6, #1
	strh	r3, [r5]
	add	r5, #2
	cmp	r6, #0x3f
	bne	.Le728e
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80e727c

	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f6148  @ 0x080f6148
	push	{r5, r6, r7, lr}
	ldr	r5, =0x5000140
	ldr	r7, .Lf617c	@ 0x1f
	mov	r6, #0
.Lf6150:
	ldrh	r2, [r5]
	lsl	r3, r2, #16
	lsr	r0, r3, #26
	and	r0, r7
	lsr	r1, r3, #21
	mov	r4, #0x1f
	and	r1, r7
	and	r4, r2
	sub	r0, #1
	sub	r1, #1
	sub	r4, #1
	cmp	r0, #0
	bge	.Lf616c
	mov	r0, #0
.Lf616c:
	cmp	r1, #0
	bge	.Lf6172
	mov	r1, #0
.Lf6172:
	cmp	r4, #0
	bge	.Lf6184
	mov	r4, #0
	b	.Lf6184

	.align	2, 0
.Lf617c:
	.word	0x1f
	.pool

.Lf6184:
	lsl	r3, r0, #10
	lsl	r2, r1, #5
	orr	r3, r2
	orr	r3, r4
	add	r6, #1
	strh	r3, [r5]
	add	r5, #2
	cmp	r6, #0x10
	bne	.Lf6150
	ldr	r5, =0x5000202
	ldr	r7, .Lf61c8	@ 0x1f
	mov	r6, #0
.Lf619c:
	ldrh	r2, [r5]
	lsl	r3, r2, #16
	lsr	r0, r3, #26
	and	r0, r7
	lsr	r1, r3, #21
	mov	r4, #0x1f
	and	r1, r7
	and	r4, r2
	sub	r0, #1
	sub	r1, #1
	sub	r4, #1
	cmp	r0, #0
	bge	.Lf61b8
	mov	r0, #0
.Lf61b8:
	cmp	r1, #0
	bge	.Lf61be
	mov	r1, #0
.Lf61be:
	cmp	r4, #0
	bge	.Lf61d0
	mov	r4, #0
	b	.Lf61d0

	.align	2, 0
.Lf61c8:
	.word	0x1f
	.pool

.Lf61d0:
	lsl	r3, r0, #10
	lsl	r2, r1, #5
	orr	r3, r2
	orr	r3, r4
	add	r6, #1
	strh	r3, [r5]
	add	r5, #2
	cmp	r6, #0xef
	bne	.Lf619c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80f6148


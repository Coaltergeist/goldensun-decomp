	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801965c  @ 0x0801965c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e8c
	ldr	r6, [r3]
	ldr	r3, =0x12b2
	mov	r5, r2
	add	r2, r6, r3
	mov	r3, #0
	mov	r7, r1
	strh	r3, [r2]
	mov	r1, #1
	bl	BufferString
	sub	r5, #1
	mov	r0, #0
	cmp	r0, r5
	bcs	.L196a8
	mov	r2, #0xeb
	lsl	r2, #4
	ldrh	r3, [r6, r2]
	strh	r3, [r7]
	lsl	r3, #16
	cmp	r3, #0
	beq	.L196a8
	mov	r12, r5
	add	r2, r6, r2
	mov	r4, #0
.L19690:
	add	r0, #1
	add	r4, #2
	cmp	r0, r12
	bcs	.L196ac
	add	r2, #2
	ldrh	r3, [r2]
	mov	r1, r4
	strh	r3, [r1, r7]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L19690
	b	.L196ae
.L196a8:
	mov	r1, #0
	b	.L196ae
.L196ac:
	lsl	r1, r0, #1
.L196ae:
	ldr	r3, .L196b8	@ 0
	strh	r3, [r1, r7]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
	.align	2, 0
.L196b8:
	.word	0
.func_end Func_801965c


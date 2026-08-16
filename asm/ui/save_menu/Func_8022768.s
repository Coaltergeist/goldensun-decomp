	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8022768  @ 0x08022768
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r4, r0
	mov	r0, r3
	ldr	r3, =iwram_3001e8c
	mov	r7, r2
	ldr	r2, [sp, #0x1c]
	ldr	r3, [r3]
	mov	r12, r2
	mov	r5, r12
	mov	r8, r3
	mov	r3, #1
	and	r5, r3
	lsl	r5, #12
	mov	r12, r5
	cmp	r4, #0
	bge	.L22794
	add	r7, r4
	mov	r4, #0
.L22794:
	add	r3, r4, r7
	cmp	r3, #0x1d
	ble	.L2279e
	mov	r3, #0x1e
	sub	r7, r3, r4
.L2279e:
	cmp	r1, #0
	bge	.L227a6
	add	r0, r1
	mov	r1, #0
.L227a6:
	add	r3, r1, r0
	cmp	r3, #0x1d
	ble	.L227b0
	mov	r3, #0x14
	sub	r0, r3, r1
.L227b0:
	cmp	r7, #0
	ble	.L22802
	cmp	r0, #0
	ble	.L22802
	ldr	r2, =0xea3
	add	r2, r8
	lsl	r3, r4, #1
	mov	r14, r2
	lsl	r2, r1, #6
	add	r6, r2, r3
	mov	r3, #2
	mov	r10, r3
.L227c8:
	mov	r5, r8
	mov	r2, r7
	add	r4, r6, r5
	cmp	r2, #0
	beq	.L227ea
	ldr	r3, =0xffffefff
	mov	r9, r3
.L227d6:
	ldrh	r3, [r4]
	mov	r5, r9
	and	r3, r5
	mov	r5, r12
	orr	r3, r5
	sub	r2, #1
	strh	r3, [r4]
	add	r4, #2
	cmp	r2, #0
	bne	.L227d6
.L227ea:
	lsr	r3, r1, #2
	mov	r4, r14
	mov	r2, r10
	lsl	r2, r3
	ldrb	r3, [r4]
	orr	r2, r3
	strb	r2, [r4]
	sub	r0, #1
	add	r6, #0x40
	add	r1, #1
	cmp	r0, #0
	bne	.L227c8
.L22802:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8022768

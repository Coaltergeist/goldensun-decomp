	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8002f4c
	push	{r5, r6, r7, lr}
	asr	r7, r1, #1
	mov	r6, #1
	add	r0, #2
	cmp	r6, r7
	bge	.L2fa4
	mov	r3, #0xf8
	lsl	r3, #8
	mov	r12, r3
	mov	r3, #0xf0
	lsl	r3, #8
	ldr	r5, =0x7ff
	mov	r14, r3
	sub	r0, #4
.L2f68:
	ldrh	r2, [r0, #4]
	mov	r3, r12
	mov	r1, r2
	and	r1, r3
	add	r0, #2
	cmp	r1, r12
	bne	.L2f9e
	ldrh	r3, [r0]
	mov	r4, r3
	and	r4, r1
	cmp	r4, r14
	bne	.L2f9e
	and	r3, r5
	and	r2, r5
	lsl	r2, #1
	lsl	r3, #12
	orr	r3, r2
	lsl	r2, r6, #1
	sub	r3, r2
	lsr	r2, r3, #12
	lsr	r3, #1
	and	r2, r5
	and	r3, r5
	orr	r2, r4
	orr	r3, r1
	strh	r2, [r0]
	strh	r3, [r0, #2]
.L2f9e:
	add	r6, #1
	cmp	r6, r7
	blt	.L2f68
.L2fa4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8002f4c

.thumb_func_start Func_8002fb0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r8, r1
	bl	GetFile
	mov	r1, r8
	bl	Func_8005340
	mov	r10, r0
	ldr	r5, =0x7c
	mov	r0, r5
	bl	Func_8004938
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_8002d5c
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r8
	mov	r1, r10
	bl	_call_via_r6
	mov	r0, r6
	bl	Func_8002df0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8002fb0


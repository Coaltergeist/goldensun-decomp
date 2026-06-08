	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start StopTask
	push	{r5, lr}
	mov	r5, #1
	ldr	r4, =gTasks
	neg	r5, r5
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	strh	r3, [r3]
	mov	r1, #0
	ldr	r3, [r4]
	cmp	r3, r0
	bne	.L4298
	ldr	r3, =0x7fff
	str	r1, [r4]
	strh	r3, [r4, #4]
	mov	r5, #0
	b	.L42b0
.L4298:
	add	r1, #1
	add	r4, #8
	cmp	r1, #0x13
	bgt	.L42b0
	ldr	r3, [r4]
	cmp	r3, r0
	bne	.L4298
	mov	r3, #0
	str	r3, [r4]
	ldr	r3, =0x7fff
	strh	r3, [r4, #4]
	mov	r5, r1
.L42b0:
	ldr	r3, =REG_IME
	strh	r2, [r3]
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end StopTask

.thumb_func_start Func_80042c8
	push	{r5, r6, lr}
	mov	r5, #1
	ldr	r4, =gTasks
	neg	r5, r5
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	mov	r6, r2
	strh	r3, [r3]
	mov	r1, #0
	mov	r2, #1
.L42dc:
	cmp	r0, #0
	beq	.L42e6
	ldr	r3, [r4]
	cmp	r3, r0
	bne	.L42ee
.L42e6:
	ldrb	r3, [r4, #5]
	orr	r3, r2
	strb	r3, [r4, #5]
	mov	r5, r1
.L42ee:
	add	r1, #1
	add	r4, #8
	cmp	r1, #0x13
	ble	.L42dc
	ldr	r3, =REG_IME
	strh	r6, [r3]
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80042c8

.thumb_func_start Func_800430c
	push	{r5, r6, r7, lr}
	mov	r5, #1
	ldr	r1, =gTasks
	neg	r5, r5
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	mov	r6, r2
	strh	r3, [r3]
	mov	r4, #0
	mov	r7, #1
.L4320:
	ldrb	r3, [r1, #3]
	cmp	r3, #2
	bne	.L433a
	ldrb	r2, [r1, #6]
	mov	r3, r7
	and	r3, r2
	mov	r0, #1
	cmp	r3, #0
	bne	.L433a
	ldrb	r3, [r1, #5]
	orr	r3, r0
	strb	r3, [r1, #5]
	mov	r5, r4
.L433a:
	add	r4, #1
	add	r1, #8
	cmp	r4, #0x13
	ble	.L4320
	ldr	r3, =REG_IME
	strh	r6, [r3]
	mov	r0, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_800430c

.thumb_func_start Func_8004358
	push	{r5, r6, lr}
	mov	r6, r1
	mov	r5, #1
	ldr	r1, =gTasks
	neg	r5, r5
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	strh	r3, [r3]
	mov	r4, #0
	ldr	r3, [r1]
	cmp	r3, r0
	bne	.L4376
	strb	r6, [r1, #6]
	mov	r5, #0
	b	.L4388
.L4376:
	add	r4, #1
	add	r1, #8
	cmp	r4, #0x13
	bgt	.L4388
	ldr	r3, [r1]
	cmp	r3, r0
	bne	.L4376
	strb	r6, [r1, #6]
	mov	r5, r4
.L4388:
	ldr	r3, =REG_IME
	strh	r2, [r3]
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8004358

.thumb_func_start Func_800439c
	push	{r5, r6, r7, lr}
	mov	r5, #1
	ldr	r4, =gTasks
	neg	r5, r5
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	mov	r7, r2
	strh	r3, [r3]
	mov	r1, #0
	mov	r6, #0xfe
.L43b0:
	cmp	r0, #0
	beq	.L43ba
	ldr	r3, [r4]
	cmp	r3, r0
	bne	.L43c4
.L43ba:
	ldrb	r2, [r4, #5]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r4, #5]
	mov	r5, r1
.L43c4:
	add	r1, #1
	add	r4, #8
	cmp	r1, #0x13
	ble	.L43b0
	ldr	r3, =REG_IME
	strh	r7, [r3]
	mov	r0, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_800439c

.thumb_func_start Func_80043e0
	push	{r5, r6, lr}
	mov	r0, #1
	ldr	r4, =gTasks
	neg	r0, r0
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	mov	r6, r2
	strh	r3, [r3]
	mov	r1, #0
	mov	r5, #0xfe
.L43f4:
	ldrb	r3, [r4, #3]
	cmp	r3, #2
	bne	.L4404
	ldrb	r2, [r4, #5]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r4, #5]
	mov	r0, r1
.L4404:
	add	r1, #1
	add	r4, #8
	cmp	r1, #0x13
	ble	.L43f4
	ldr	r3, =REG_IME
	strh	r6, [r3]
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80043e0

.thumb_func_start Func_8004420
	push	{r5, r6, r7, lr}
	ldr	r3, =gTasksEnabled
	ldrb	r3, [r3]
	mov	r7, r0
	ldr	r6, =gTasks
	asr	r7, #8
	cmp	r3, #1
	bne	.L444a
	mov	r5, #0x15
	sub	r6, #8
.L4434:
	sub	r5, #1
	cmp	r5, #0
	beq	.L444a
	add	r6, #8
	ldrb	r3, [r6, #5]
	cmp	r3, r7
	bne	.L4434
	ldr	r0, [r6]
	bl	_call_via_r0
	b	.L4434
.L444a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8004420

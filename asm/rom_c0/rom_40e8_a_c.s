	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SortTasks
	push	{r5, r6, lr}
	sub	sp, #8
	ldr	r2, =gTasks
	mov	r4, #0x13
	b	.L4150
.L414e:
	ldr	r2, =gTasks
.L4150:
	mov	r1, r2
	cmp	r4, #0
	ble	.L4184
	mov	r0, r4
.L4158:
	mov	r3, #0xc
	ldrsh	r2, [r1, r3]
	mov	r5, #4
	ldrsh	r3, [r1, r5]
	cmp	r2, r3
	ble	.L417c
	mov	r3, r1
	mov	r2, sp
	ldmia	r3!, {r5, r6}
	stmia	r2!, {r5, r6}
	mov	r2, r1
	mov	r1, r3
	ldmia	r3!, {r5, r6}
	stmia	r2!, {r5, r6}
	mov	r3, sp
	ldmia	r3!, {r5, r6}
	stmia	r2!, {r5, r6}
	b	.L417e
.L417c:
	add	r1, #8
.L417e:
	sub	r0, #1
	cmp	r0, #0
	bne	.L4158
.L4184:
	sub	r4, #1
	cmp	r4, #1
	bgt	.L414e
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end SortTasks

.thumb_func_start GetTaskIndex
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
	bne	.L41b2
	mov	r5, #0
	b	.L41c2
.L41b2:
	add	r1, #1
	add	r4, #8
	cmp	r1, #0x13
	bgt	.L41c2
	ldr	r3, [r4]
	cmp	r3, r0
	bne	.L41b2
	mov	r5, r1
.L41c2:
	ldr	r3, =REG_IME
	strh	r2, [r3]
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end GetTaskIndex

.thumb_func_start StartTask
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001a10
	mov	r5, #1
	ldr	r4, =gTasks
	ldrb	r3, [r3]
	neg	r5, r5
	ldr	r3, =REG_IME
	ldrh	r2, [r3]
	mov	r6, r2
	strh	r3, [r3]
	mov	r2, #0
	ldr	r3, [r4]
	cmp	r3, r0
	bne	.L41fa
	strh	r1, [r4, #4]
	mov	r5, #0
	b	.L420c
.L41fa:
	add	r2, #1
	add	r4, #8
	cmp	r2, #0x13
	bgt	.L420c
	ldr	r3, [r4]
	cmp	r3, r0
	bne	.L41fa
	strh	r1, [r4, #4]
	mov	r5, r2
.L420c:
	mov	r3, #1
	neg	r3, r3
	ldr	r4, =gTasks
	cmp	r5, r3
	bne	.L4254
	ldr	r3, [r4]
	mov	r2, #0
	cmp	r3, #0
	bne	.L423c
	ldr	r3, .L422c	@ 0
	str	r0, [r4]
	strh	r1, [r4, #4]
	strb	r3, [r4, #6]
	mov	r5, #0
	b	.L4254

	.align	2, 0
.L422c:
	.word	0
	.pool

.L423c:
	add	r2, #1
	add	r4, #8
	cmp	r2, #0x13
	bgt	.L4254
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L423c
	ldr	r3, .L4260	@ 0
	str	r0, [r4]
	strh	r1, [r4, #4]
	strb	r3, [r4, #6]
	mov	r5, r2
.L4254:
	bl	SortTasks
	ldr	r3, =REG_IME
	strh	r6, [r3]
	mov	r0, r5
	b	.L4268

	.align	2, 0
.L4260:
	.word	0
	.pool

.L4268:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end StartTask


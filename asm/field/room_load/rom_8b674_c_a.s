	.include "macros.inc"

.thumb_func_start Func_808b868  @ 0x0808b868
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e70
	mov	r5, r0
	ldr	r7, =0x165
	mov	r0, #0xb2
	lsl	r0, #1
	ldr	r6, [r3]
	bl	_ClearFlag
	mov	r0, r7
	bl	_SetFlag
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r2, #1
	neg	r2, r2
	cmp	r3, r2
	beq	.L8b8d8
	mov	r4, r6
	mov	r0, r7
	mov	r12, r2
	add	r4, #0xec
.L8b894:
	mov	r2, #2
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.L8b8ce
	ldr	r2, [r5, #8]
	ldr	r3, [r4]
	ldr	r1, [r5, #0x10]
	cmp	r3, r2
	bgt	.L8b8cc
	mov	r3, r6
	add	r3, #0xf4
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L8b8cc
	mov	r3, r6
	add	r3, #0xf0
	ldr	r3, [r3]
	cmp	r3, r1
	bgt	.L8b8cc
	mov	r3, r6
	add	r3, #0xf8
	ldr	r3, [r3]
	cmp	r1, r3
	bgt	.L8b8cc
	mov	r3, #0xb2
	lsl	r3, #1
	strh	r3, [r5, #2]
	b	.L8b8ce
.L8b8cc:
	strh	r0, [r5, #2]
.L8b8ce:
	add	r5, #0x18
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, r12
	bne	.L8b894
.L8b8d8:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808b868

.thumb_func_start Func_808b8e8  @ 0x0808b8e8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xf0
	ldr	r1, [r3]
	lsl	r0, #1
	add	r3, r1, r0
	ldr	r2, [r3]
	ldr	r0, =0xff600000
	ldr	r3, [r2, #8]
	add	r0, r3
	mov	r9, r0
	mov	r0, #0xa0
	lsl	r0, #16
	add	r0, r3
	ldr	r3, [r2, #0x10]
	ldr	r2, =0xff380000
	mov	r5, r1
	mov	r10, r0
	mov	r1, #2
	mov	r0, #0xc8
	add	r2, r3
	lsl	r0, #15
	neg	r1, r1
	mov	r8, r2
	add	r7, r3, r0
	add	r5, #0x34
	mov	r11, r1
	mov	r6, #0x39
.L8b92c:
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L8b968
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x10]
	cmp	r3, #0
	bne	.L8b93e
	cmp	r2, #0
	beq	.L8b968
.L8b93e:
	cmp	r3, r9
	blt	.L8b94e
	cmp	r3, r10
	bgt	.L8b94e
	cmp	r2, r8
	blt	.L8b94e
	cmp	r2, r7
	ble	.L8b968
.L8b94e:
	mov	r2, r0
	add	r2, #0x54
	mov	r3, #1
	strb	r3, [r2]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #0x1d]
	mov	r1, r11
	and	r3, r1
	strb	r3, [r2, #0x1d]
	bl	_DeleteActor
	mov	r2, #0
	str	r2, [r5]
.L8b968:
	sub	r6, #1
	add	r5, #4
	cmp	r6, #0
	bge	.L8b92c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808b8e8

.thumb_func_start Func_808b98c  @ 0x0808b98c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001ebc
	ldr	r5, [r3]
	mov	r3, #2
	mov	r1, #0
	neg	r3, r3
	mov	r10, r1
	mov	r6, #0x34
	mov	r8, r3
	mov	r7, #0x39
.L8b9a6:
	ldr	r0, [r6, r5]
	cmp	r0, #0
	beq	.L8b9c6
	mov	r2, r0
	add	r2, #0x54
	mov	r3, #1
	strb	r3, [r2]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #0x1d]
	mov	r1, r8
	and	r3, r1
	strb	r3, [r2, #0x1d]
	bl	_DeleteActor
	mov	r3, r10
	str	r3, [r6, r5]
.L8b9c6:
	sub	r7, #1
	add	r6, #4
	cmp	r7, #0
	bge	.L8b9a6
	ldr	r6, [r5, #4]
	mov	r3, #0
	str	r3, [r5, #4]
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	cmp	r6, #0
	beq	.L8b9e8
	bl	FindMapActorSlot
	mov	r1, r0
	mov	r0, r6
	bl	LoadMapActors
.L8b9e8:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808b98c


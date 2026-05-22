	.include "macros.inc"

.thumb_func_start Func_92950
	push	{r5, lr}
	mov	r5, r1
	bl	Func_8ba1c
	cmp	r0, #0
	beq	.L92974
	mov	r3, #0x80
	lsl	r3, #1
	and	r3, r5
	cmp	r3, #0
	beq	.L9296c
	ldr	r3, =Func_92980
	str	r3, [r0, #0x6c]
	b	.L92974
.L9296c:
	str	r3, [r0, #0x6c]
	mov	r1, r5
	bl	Func_929d8
.L92974:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_92950

.thumb_func_start Func_92980
	push	{lr}
	mov	r3, r0
	add	r3, #0x54
	ldrb	r2, [r3]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #1
	bne	.L929cc
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	ldr	r0, [r0, #0x50]
	ldr	r1, =.L9ed80
	lsr	r3, #1
	mov	r2, #3
	and	r3, r2
	mov	r12, r0
	ldrb	r4, [r1, r3]
	mov	r3, r12
	add	r3, #0x27
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L929c4
	add	r0, #0x28
	mov	r1, r3
.L929b0:
	ldmia	r0!, {r2}
	cmp	r2, #0
	beq	.L929be
	ldr	r3, [r2, #0x10]
	cmp	r3, #0
	beq	.L929be
	strb	r4, [r2, #5]
.L929be:
	sub	r1, #1
	cmp	r1, #0
	bne	.L929b0
.L929c4:
	mov	r2, r12
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
.L929cc:
	pop	{r0}
	bx	r0
.func_end Func_92980

.thumb_func_start Func_929d8
	push	{lr}
	mov	r3, r0
	add	r3, #0x54
	ldrb	r2, [r3]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #1
	bne	.L92a18
	ldr	r0, [r0, #0x50]
	mov	r12, r0
	mov	r3, r12
	add	r3, #0x27
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L92a10
	mov	r4, r12
	add	r4, #0x28
	mov	r0, r3
.L929fc:
	ldmia	r4!, {r2}
	cmp	r2, #0
	beq	.L92a0a
	ldr	r3, [r2, #0x10]
	cmp	r3, #0
	beq	.L92a0a
	strb	r1, [r2, #5]
.L92a0a:
	sub	r0, #1
	cmp	r0, #0
	bne	.L929fc
.L92a10:
	mov	r2, r12
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
.L92a18:
	pop	{r0}
	bx	r0
.func_end Func_929d8

.thumb_func_start Func_92a1c
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	Func_8ba1c
	mov	r5, r0
	mov	r0, #0xff
	and	r0, r6
	bl	Func_8ba1c
	cmp	r5, #0
	beq	.L92a6c
	cmp	r0, #0
	beq	.L92a6c
	mov	r3, #0x80
	lsl	r3, #9
	and	r3, r6
	str	r0, [r5, #0x68]
	cmp	r3, #0
	bne	.L92a5e
	mov	r2, r5
	mov	r3, #0x28
	add	r2, #0x64
	strh	r3, [r2]
	ldr	r3, [r0, #0x34]
	lsl	r3, #1
	str	r3, [r5, #0x34]
	ldr	r3, [r0, #0x30]
	ldr	r1, =0
	str	r3, [r5, #0x30]
	mov	r3, r5
	add	r3, #0x59
	strb	r1, [r3]
.L92a5e:
	mov	r0, r5
	mov	r1, r7
	bl	_Func_c2d8
	b	.L92a6c

	.pool_aligned

.L92a6c:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_92a1c

.thumb_func_start Func_92a74
	push	{lr}
	mov	r2, r0
	mov	r0, #0
	cmp	r2, #0
	beq	.L92aa8
	mov	r3, r2
	add	r3, #0x64
	ldrh	r3, [r3]
	ldrh	r1, [r2, #6]
	sub	r3, r1
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0
	beq	.L92aa8
	mov	r3, #0x80
	lsl	r3, #5
	cmp	r0, r3
	ble	.L92a9c
	mov	r0, #0x80
	lsl	r0, #4
.L92a9c:
	ldr	r3, =0xfffff000
	cmp	r0, r3
	bge	.L92aa4
	ldr	r0, =0xfffff800
.L92aa4:
	add	r3, r1, r0
	strh	r3, [r2, #6]
.L92aa8:
	pop	{r1}
	bx	r1
.func_end Func_92a74

.thumb_func_start Func_92ab4
	push	{r5, lr}
	bl	Func_8ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L92ad6
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x40]
	bl	_Func_c4ac
	mov	r0, r5
	mov	r1, #1
	bl	_Func_c300
.L92ad6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_92ab4

.thumb_func_start Func_92adc
	push	{r5, r6, lr}
	mov	r5, r1
	mov	r6, r2
	bl	Func_8ba1c
	cmp	r0, #0
	beq	.L92afc
	mov	r3, r0
	add	r3, #0x64
	strh	r5, [r3]
	ldr	r1, =Data_9fc1c
	bl	_Func_c2d8
	mov	r0, r6
	bl	Func_9163c
.L92afc:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_92adc

.thumb_func_start Func_92b08
	push	{r5, r6, lr}
	mov	r5, r1
	bl	Func_8ba1c
	mov	r6, r0
	cmp	r6, #0
	beq	.L92b4e
	mov	r3, r6
	add	r3, #0x54
	ldrb	r2, [r3]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #1
	bne	.L92b4e
	ldr	r1, [r6, #0x50]
	mov	r2, #0xd
	ldrb	r0, [r1, #9]
	mov	r3, #3
	neg	r2, r2
	and	r5, r3
	mov	r3, r2
	lsl	r4, r5, #2
	and	r3, r0
	orr	r3, r4
	strb	r3, [r1, #9]
	ldrb	r3, [r1, #0x15]
	and	r2, r3
	orr	r2, r4
	strb	r2, [r1, #0x15]
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
.L92b4e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_92b08

.thumb_func_start Func_92b54
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r8, r0
	mov	r0, r1
	bl	Func_92054
	ldr	r0, [r0, #0x50]
	ldrb	r6, [r0, #0x1c]
	ldrh	r5, [r0, #8]
	mov	r0, r8
	bl	Func_92054
	ldr	r0, [r0, #0x50]
	ldr	r3, =0xfffffc00
	ldrh	r2, [r0, #8]
	lsl	r5, #22
	lsr	r5, #22
	and	r3, r2
	orr	r3, r5
	strb	r6, [r0, #0x1c]
	strh	r3, [r0, #8]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_92b54


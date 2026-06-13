	.include "macros.inc"

.thumb_func_start LoadMapActors  @ 0x0808b3ec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r9, r3
	ldr	r3, [r3]
	mov	r7, r0
	mov	r11, r1
	sub	sp, #8
	mov	r1, #0
	cmp	r3, r7
	beq	.L8b42e
	cmp	r3, #0
	bne	.L8b418
	mov	r0, r9
	str	r7, [r0]
	b	.L8b42e
.L8b418:
	add	r1, #1
	cmp	r1, #3
	bgt	.L8b42e
	lsl	r2, r1, #2
	mov	r0, r9
	ldr	r3, [r0, r2]
	cmp	r3, r7
	beq	.L8b42e
	cmp	r3, #0
	bne	.L8b418
	str	r7, [r0, r2]
.L8b42e:
	mov	r0, #1
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	neg	r0, r0
	ldrh	r2, [r7]
	b	.L8b618
.L8b43a:
	lsl	r3, r2, #16
	asr	r3, #16
	cmp	r3, #7
	bgt	.L8b446
	str	r3, [sp, #4]
	b	.L8b454
.L8b446:
	ldr	r2, =0x2705
	cmp	r3, r2
	bgt	.L8b454
	mov	r3, r11
	mov	r0, #1
	str	r3, [sp, #4]
	add	r11, r0
.L8b454:
	mov	r1, #2
	ldrsh	r5, [r7, r1]
	mov	r0, r5
	bl	Func_808d428
	cmp	r0, #0
	bne	.L8b464
	b	.L8b60a
.L8b464:
	mov	r3, r5
	sub	r3, #0x30
	cmp	r3, #0x4f
	bhi	.L8b488
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r9
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	beq	.L8b488
	mov	r0, r5
	add	r0, #0x50
	bl	Func_808d428
	cmp	r0, #0
	bne	.L8b488
	b	.L8b60a
.L8b488:
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	bl	Func_808b398
	mov	r10, r0
	ldr	r0, [sp, #4]
	bl	GetFieldActor
	mov	r6, r0
	cmp	r6, #0
	bne	.L8b512
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, r10
	bl	_CreateActor
	ldrb	r2, [r7, #0x17]
	mov	r3, #1
	and	r3, r2
	mov	r6, r0
	mov	r1, #1
	cmp	r3, #0
	beq	.L8b4f6
	ldr	r0, [sp, #4]
	sub	r0, #1
	str	r1, [sp]
	bl	GetFieldActor
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	ldr	r1, [sp]
	cmp	r3, #1
	bne	.L8b4f6
	mov	r3, r6
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L8b4f6
	ldr	r0, [r0, #0x50]
	ldrb	r3, [r0, #0x1d]
	orr	r3, r1
	strb	r3, [r0, #0x1d]
	ldrb	r5, [r0, #0x1c]
	ldr	r0, [r6, #0x50]
	ldrb	r3, [r0, #0x1d]
	orr	r3, r1
	mov	r8, r0
	strb	r3, [r0, #0x1d]
	ldrb	r0, [r0, #0x1c]
	bl	Func_8003f3c
	mov	r1, r8
	strb	r5, [r1, #0x1c]
.L8b4f6:
	mov	r0, #0x21
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8b528
	mov	r3, r10
	sub	r3, #0x12
	cmp	r3, #1
	bhi	.L8b528
	mov	r0, r6
	mov	r1, #0xe2
	bl	_Actor_AddSpriteLayer
	b	.L8b528
.L8b512:
	ldr	r0, =0x109
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8b528
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, r6
	bl	_Actor_SetPos
.L8b528:
	cmp	r6, #0
	beq	.L8b600
	mov	r0, r6
	mov	r1, #1
	bl	_Actor_SetAnim
	mov	r3, r6
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L8b556
	ldr	r2, [r6, #0x50]
	mov	r8, r2
	cmp	r2, #0
	beq	.L8b556
	bl	Random
	mov	r1, #0x1e
	bl	__umodsi3
	mov	r3, r8
	add	r3, #0x24
	strb	r0, [r3]
.L8b556:
	ldrh	r3, [r7, #0x14]
	mov	r2, r6
	strh	r3, [r6, #6]
	add	r2, #0x59
	mov	r3, #1
	strb	r3, [r2]
	ldr	r1, [r7, #4]
	mov	r0, r6
	bl	Actor_SetBehavior
	mov	r0, r6
	mov	r1, #1
	bl	_Actor_SetAnim
	ldr	r2, [r6, #8]
	cmp	r2, #0
	bge	.L8b57c
	ldr	r3, =0xffff
	add	r2, r3
.L8b57c:
	mov	r3, r6
	add	r3, #0x64
	asr	r2, #16
	strh	r2, [r3]
	ldr	r3, [r6, #0x10]
	cmp	r3, #0
	bge	.L8b58e
	ldr	r0, =0xffff
	add	r3, r0
.L8b58e:
	mov	r2, r6
	asr	r3, #16
	add	r2, #0x66
	strh	r3, [r2]
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	beq	.L8b5ac
	mov	r3, #4
	sub	r2, #0x11
	strb	r3, [r2]
	mov	r1, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r1, #8
	add	r3, r1
	str	r3, [r6, #0xc]
.L8b5ac:
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r9
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L8b5e6
	mov	r1, r6
	add	r1, #0x55
	ldrb	r3, [r1]
	mov	r2, #0xfe
	and	r2, r3
	strb	r2, [r1]
	mov	r0, #0x21
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8b5f8
	mov	r1, r8
	ldr	r0, [r1, #0x18]
	mov	r1, #0xc0
	ldr	r3, =Func_8000888
	lsl	r1, #8
	.call_via r3
	mov	r2, r8
	str	r0, [r2, #0x18]
	b	.L8b5f8
.L8b5e6:
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	mov	r0, #0
	bl	_Func_8011f54
	ldr	r3, [r6, #0xc]
	add	r3, r0
	str	r0, [r6, #0x14]
	str	r3, [r6, #0xc]
.L8b5f8:
	mov	r2, r6
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.L8b600:
	ldr	r0, [sp, #4]
	lsl	r3, r0, #2
	add	r3, #0x14
	mov	r1, r9
	str	r6, [r1, r3]
.L8b60a:
	add	r7, #0x18
	ldrh	r3, [r7]
	mov	r2, r3
	lsl	r3, r2, #16
	mov	r0, #1
	asr	r3, #16
	neg	r0, r0
.L8b618:
	cmp	r3, r0
	beq	.L8b624
	mov	r1, r11
	cmp	r1, #0x41
	bgt	.L8b624
	b	.L8b43a
.L8b624:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end LoadMapActors


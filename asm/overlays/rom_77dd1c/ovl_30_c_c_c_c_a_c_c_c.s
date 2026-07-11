	.include "macros.inc"

.thumb_func_start OvlFunc_882_200c378
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L4398
	mov	r0, r5
	bl	__DeleteActor
	b	.L43c2
.L4398:
	lsl	r0, #10
	bl	__sin
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #0x10]
.L43c2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200c378

.thumb_func_start OvlFunc_882_200c3c8
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L43e8
	mov	r0, r5
	bl	__DeleteActor
	b	.L4414
.L43e8:
	lsl	r0, #10
	bl	__sin
	neg	r3, r0
	str	r0, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	sub	r3, r2
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0x10]
.L4414:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200c3c8

.thumb_func_start OvlFunc_882_200c41c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	mov	r6, r0
	mov	r0, #0x98
	sub	sp, #8
	mov	r11, r3
	bl	__PlaySound
	mov	r1, #0x3f
	mov	r7, #0
	mov	r10, sp
	mov	r9, r1
.L4442:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, #0x1a
	bl	__CreateActor
	lsl	r3, r7, #2
	mov	r2, r10
	str	r0, [r3, r2]
	cmp	r0, #0
	beq	.L44f0
	ldr	r3, [r6, #0x14]
	str	r3, [r0, #0x14]
	mov	r3, r0
	ldr	r5, [r0, #0x50]
	add	r3, #0x55
	mov	r2, #0
	ldr	r1, .L4478	@ 0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r8, r1
	str	r6, [r0, #0x68]
	cmp	r5, #0
	beq	.L44f0
	b	.L4480

	.align	2, 0
.L4478:
	.word	0
	.pool

.L4480:
	mov	r1, #0
	mov	r0, r5
	bl	__Sprite_SetAnim
	mov	r3, r5
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r0, [r5, #0x1c]
	bl	__Func_8003f3c
	mov	r3, r11
	add	r3, #0x46
	ldrh	r3, [r3]
	strb	r3, [r5, #0x1c]
	ldrb	r3, [r5, #0x1d]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r5, #0x1d]
	ldrb	r3, [r5, #0x1c]
	ldr	r2, =gSpriteSlots
	lsl	r3, #2
	add	r3, r2
	ldrh	r1, [r3, #2]
	ldr	r2, .L44e8	@ 0xfffffc00
	ldrh	r3, [r5, #8]
	lsl	r1, #17
	lsr	r1, #22
	and	r3, r2
	orr	r3, r1
	mov	r1, #0x21
	neg	r1, r1
	strh	r3, [r5, #8]
	ldrb	r3, [r5, #5]
	mov	r2, r1
	and	r3, r2
	mov	r2, r9
	and	r3, r2
	mov	r2, #0x40
	orr	r3, r2
	ldrb	r2, [r5, #7]
	strb	r3, [r5, #5]
	mov	r3, r9
	and	r3, r2
	mov	r2, #0x80
	orr	r3, r2
	strb	r3, [r5, #7]
	ldr	r3, [r5, #0x28]
	mov	r1, r8
	strb	r1, [r3, #0x16]
	b	.L44f0

	.align	2, 0
.L44e8:
	.word	0xfffffc00
	.pool

.L44f0:
	add	r7, #1
	cmp	r7, #1
	ble	.L4442
	ldr	r2, [sp]
	ldr	r3, =OvlFunc_882_200c3c8
	str	r3, [r2, #0x6c]
	ldr	r3, [r6, #0x50]
	ldr	r4, [r2, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xd
	ldrb	r0, [r4, #9]
	neg	r2, r2
	mov	r1, #0xc
	and	r1, r3
	mov	r3, r2
	and	r3, r0
	orr	r3, r1
	strb	r3, [r4, #9]
	mov	r3, r10
	ldr	r0, [r3, #4]
	ldr	r3, [r6, #0x50]
	ldr	r4, [r0, #0x50]
	ldrb	r1, [r3, #9]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r4, #9]
	and	r2, r1
	orr	r2, r3
	ldr	r3, =OvlFunc_882_200c378
	str	r3, [r0, #0x6c]
	add	r0, #0x23
	mov	r3, #2
	strb	r2, [r4, #9]
	strb	r3, [r0]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200c41c


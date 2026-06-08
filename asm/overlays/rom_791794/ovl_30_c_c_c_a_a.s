	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_897_200add0
	push	{r5, r6, lr}
	ldr	r5, =iwram_3001e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L2df2
	ldr	r0, [r5]
	mov	r1, #6
	lsr	r0, #1
	bl	_Func_8000b50
	mov	r1, r0
	mov	r0, r6
	bl	__Func_800c598
.L2df2:
	ldr	r3, [r5]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L2e02
	mov	r0, r6
	bl	OvlFunc_897_200aeb0
.L2e02:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200add0

.thumb_func_start OvlFunc_897_200ae0c
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
	ble	.L2e2c
	mov	r0, r5
	bl	__Func_800c0f4
	b	.L2e56
.L2e2c:
	lsl	r0, #10
	bl	__Func_8002322
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
.L2e56:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200ae0c

.thumb_func_start OvlFunc_897_200ae5c
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
	ble	.L2e7c
	mov	r0, r5
	bl	__Func_800c0f4
	b	.L2ea8
.L2e7c:
	lsl	r0, #10
	bl	__Func_8002322
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
.L2ea8:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200ae5c

.thumb_func_start OvlFunc_897_200aeb0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	mov	r6, r0
	ldr	r3, [r3]
	mov	r0, #0x92
	lsl	r0, #1
	sub	sp, #8
	mov	r11, r3
	bl	__Func_80f9080
	mov	r1, #0x3f
	mov	r7, #0
	mov	r10, sp
	mov	r9, r1
.L2ed8:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, #0x1a
	bl	__Func_800c150
	lsl	r3, r7, #2
	mov	r2, r10
	str	r0, [r3, r2]
	cmp	r0, #0
	beq	.L2f84
	ldr	r3, [r6, #0x14]
	str	r3, [r0, #0x14]
	mov	r3, r0
	ldr	r5, [r0, #0x50]
	add	r3, #0x55
	mov	r2, #0
	ldr	r1, .L2f0c	@ 0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r8, r1
	str	r6, [r0, #0x68]
	cmp	r5, #0
	beq	.L2f84
	b	.L2f14

	.align	2, 0
.L2f0c:
	.word	0
	.pool

.L2f14:
	mov	r1, #0
	mov	r0, r5
	bl	__Func_800ba30
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
	ldr	r2, .L2f7c	@ 0
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
	b	.L2f84

	.align	2, 0
.L2f7c:
	.word	0xfffffc00
	.pool

.L2f84:
	add	r7, #1
	cmp	r7, #1
	ble	.L2ed8
	ldr	r2, [sp]
	ldr	r3, =OvlFunc_897_200ae5c
	mov	r0, #0xf
	str	r3, [r2, #0x6c]
	bl	__MapActor_GetActor
	ldr	r3, [sp]
	ldr	r4, [r3, #0x50]
	ldr	r3, [r0, #0x50]
	mov	r5, #0xd
	ldrb	r3, [r3, #9]
	ldrb	r1, [r4, #9]
	neg	r5, r5
	mov	r2, #0xc
	and	r2, r3
	mov	r3, r5
	and	r3, r1
	orr	r3, r2
	strb	r3, [r4, #9]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r2, r10
	ldr	r1, [r2, #4]
	ldr	r3, [r0, #0x50]
	ldr	r4, [r1, #0x50]
	ldrb	r2, [r3, #9]
	mov	r3, #0xc
	and	r3, r2
	ldrb	r2, [r4, #9]
	and	r5, r2
	orr	r5, r3
	ldr	r3, =OvlFunc_897_200ae0c
	str	r3, [r1, #0x6c]
	add	r1, #0x23
	mov	r3, #2
	strb	r5, [r4, #9]
	strb	r3, [r1]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200aeb0


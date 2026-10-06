	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800b388  @ 0x0800b388
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	str	r1, [sp, #0x14]
	mov	r1, #1
	str	r2, [sp, #0x10]
	str	r1, [sp]
	mov	r6, r3
	ldr	r3, =iwram_3001e68
	ldr	r3, [r3]
	mov	r2, #4
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #0
	beq	.Lb3b2
	b	.Lb658
.Lb3b2:
	add	r3, sp, #0x20
	mov	r10, r3
	mov	r1, r10
	ldr	r0, [sp, #0x14]
	bl	PhysMove
	mov	r1, r10
	ldr	r3, [r1, #8]
	mov	r5, r0
	cmp	r3, #0
	bne	.Lb3ca
	b	.Lb658
.Lb3ca:
	mov	r2, #0x20
	ldr	r3, [r1]
	neg	r2, r2
	cmp	r3, r2
	bge	.Lb3d6
	b	.Lb658
.Lb3d6:
	mov	r1, #0x88
	lsl	r1, #1
	cmp	r3, r1
	ble	.Lb3e0
	b	.Lb658
.Lb3e0:
	mov	r1, r10
	ldr	r3, [r1, #4]
	cmp	r3, r2
	bge	.Lb3ea
	b	.Lb658
.Lb3ea:
	cmp	r3, #0xd0
	ble	.Lb3f0
	b	.Lb658
.Lb3f0:
	ldrb	r2, [r7, #0x1d]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb3fe
	ldr	r5, [r7, #0x18]
	b	.Lb40a
.Lb3fe:
	ldr	r3, =Func_8000888
	mov	r0, r5
	ldr	r1, [r7, #0x18]
	.call_via r3
	mov	r5, r0
.Lb40a:
	mov	r3, r7
	add	r3, #0x20
	ldrb	r3, [r3]
	mov	r2, #0x21
	add	r2, r7
	lsr	r3, #1
	mov	r11, r3
	ldrb	r3, [r2]
	lsl	r1, r6, #16
	lsr	r3, #1
	str	r3, [sp, #8]
	lsr	r1, #16
	mov	r3, #8
	mov	r0, r7
	mov	r9, r2
	str	r3, [sp, #4]
	bl	UpdateSpriteAnim
	mov	r1, #0x80
	lsl	r1, #3
	ldr	r3, =0xfffff800
	add	r4, r5, r1
	str	r0, [sp, #0xc]
	and	r4, r3
	ldr	r3, [sp, #0x10]
	ldmia	r3!, {r1}
	mov	r2, r3
	ldr	r6, =Func_8000888
	mov	r0, r4
	str	r2, [sp, #0x10]
	.call_via r6
	mov	r5, r0
	ldr	r1, [r3]
	mov	r0, r4
	.call_via r6
	ldr	r3, =0x1f7ff
	mov	r14, r0
	cmp	r5, r3
	ble	.Lb464
	mov	r5, #0xfc
	lsl	r5, #9
.Lb464:
	cmp	r14, r3
	ble	.Lb46e
	mov	r1, #0xfc
	lsl	r1, #9
	mov	r14, r1
.Lb46e:
	mov	r3, r7
	add	r3, #0x22
	mov	r0, #0
	ldrsb	r0, [r3, r0]
	mov	r1, r5
	.call_via r6
	mov	r2, r9
	mov	r8, r0
	add	r3, #1
	ldrb	r0, [r2]
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	lsr	r0, #1
	sub	r0, r3
	mov	r1, r14
	.call_via r6
	mov	r3, #0x80
	lsl	r3, #9
	neg	r6, r0
	cmp	r5, r3
	bgt	.Lb4a2
	cmp	r14, r3
	ble	.Lb4b8
.Lb4a2:
	ldr	r2, [sp, #8]
	mov	r3, #3
	mov	r1, r11
	str	r3, [sp]
	lsl	r1, #1
	lsl	r2, #1
	mov	r3, #0x10
	mov	r11, r1
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	b	.Lb4ca
.Lb4b8:
	cmp	r5, r3
	bne	.Lb4ca
	ldrh	r3, [r7, #0x1e]
	cmp	r3, #0
	bne	.Lb4ca
	cmp	r14, r5
	bne	.Lb4ca
	mov	r1, #0
	str	r1, [sp]
.Lb4ca:
	ldr	r2, [sp]
	cmp	r2, #0
	beq	.Lb520
	add	r0, sp, #0x18
	ldr	r2, [r0, #4]
	ldr	r1, =0xffff0000
	ldrh	r3, [r7, #0x1e]
	and	r2, r1
	orr	r2, r3
	str	r2, [r0, #4]
	ldr	r4, [sp, #0x18]
	lsl	r3, r5, #8
	lsr	r3, #16
	and	r4, r1
	orr	r4, r3
	ldr	r3, [sp, #0xc]
	str	r4, [sp, #0x18]
	cmp	r3, #0
	beq	.Lb506
	ldrh	r3, [r0]
	neg	r3, r3
	mov	r2, r1
	lsl	r3, #16
	lsr	r3, #16
	and	r2, r4
	mov	r1, r8
	orr	r2, r3
	neg	r1, r1
	str	r2, [sp, #0x18]
	mov	r8, r1
.Lb506:
	mov	r2, r14
	lsl	r3, r2, #8
	ldr	r1, =0xffff
	ldr	r2, [sp, #0x18]
	lsr	r3, #16
	lsl	r3, #16
	and	r2, r1
	orr	r2, r3
	str	r2, [sp, #0x18]
	bl	Func_8003d28
	mov	r5, r0
	b	.Lb54a
.Lb520:
	ldr	r3, [sp, #0xc]
	cmp	r3, #0
	beq	.Lb548
	mov	r1, r8
	neg	r1, r1
	mov	r5, #8
	mov	r8, r1
	b	.Lb54a

	.pool_aligned

.Lb548:
	mov	r5, #0
.Lb54a:
	mov	r3, r10
	ldr	r2, [r3]
	mov	r1, r11
	sub	r2, r1
	ldr	r3, =0x1ff
	add	r2, r8
	ldrh	r1, [r7, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #6]
	mov	r2, r10
	ldr	r1, [sp, #8]
	ldr	r3, [r2, #4]
	sub	r3, r1
	add	r3, r6
	strb	r3, [r7, #4]
	ldrb	r2, [r7, #5]
	mov	r3, #4
	neg	r3, r3
	and	r3, r2
	ldr	r2, [sp]
	orr	r3, r2
	strb	r3, [r7, #5]
	mov	r2, r5
	mov	r3, #0x1f
	and	r2, r3
	ldrb	r1, [r7, #7]
	mov	r3, #0x3f
	neg	r3, r3
	lsl	r2, #1
	and	r3, r1
	b	.Lb598

	.pool_aligned

.Lb598:
	orr	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [sp, #0x58]
	cmp	r3, #0
	bne	.Lb5c4
	mov	r1, r10
	ldr	r3, [r1, #8]
	mov	r2, #0x80
	lsl	r2, #2
	sub	r2, r3
	lsr	r3, r2, #31
	add	r2, r3
	asr	r2, #1
	mov	r1, r2
	add	r1, #0x80
	cmp	r1, #0
	bgt	.Lb5bc
	mov	r1, #1
.Lb5bc:
	mov	r0, r7
	bl	Func_8003dec
	b	.Lb5cc
.Lb5c4:
	mov	r0, r7
	ldr	r1, [sp, #0x58]
	bl	Func_8003dec
.Lb5cc:
	mov	r3, r7
	add	r3, #0x26
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lb670
	ldr	r2, [sp, #0x14]
	ldr	r3, [r2]
	add	r0, sp, #0x2c
	str	r3, [r0]
	mov	r3, #0
	str	r3, [r0, #4]
	ldr	r3, [r2, #8]
	mov	r1, r10
	str	r3, [r0, #8]
	bl	PhysMove
	mov	r3, r10
	ldr	r1, [sp, #4]
	ldr	r2, [r3]
	mov	r0, r7
	ldr	r3, =0x1ff
	add	r0, #0xc
	sub	r2, r1
	and	r2, r3
	ldrh	r1, [r0, #6]
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r0, #6]
	ldr	r1, [sp, #4]
	mov	r2, r10
	ldr	r3, [r2, #4]
	lsr	r2, r1, #1
	sub	r3, r2
	add	r3, #2
	strb	r3, [r0, #4]
	ldrb	r2, [r0, #5]
	mov	r3, #4
	neg	r3, r3
	and	r3, r2
	ldr	r2, [sp]
	orr	r3, r2
	strb	r3, [r0, #5]
	mov	r3, #0x1f
	and	r5, r3
	ldrb	r2, [r0, #7]
	mov	r3, #0x3f
	neg	r3, r3
	lsl	r1, r5, #1
	b	.Lb63c

	.pool_aligned

.Lb63c:
	and	r3, r2
	orr	r3, r1
	strb	r3, [r0, #7]
	ldr	r3, [sp, #0x58]
	cmp	r3, #0
	bne	.Lb650
	mov	r1, #0
	bl	Func_8003dec
	b	.Lb670
.Lb650:
	ldr	r1, [sp, #0x58]
	bl	Func_8003dec
	b	.Lb670
.Lb658:
	ldrb	r2, [r7, #0x1d]
	mov	r5, #1
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	bne	.Lb670
	ldrb	r0, [r7, #0x1c]
	bl	Func_8003f78
	mov	r3, r7
	add	r3, #0x25
	strb	r5, [r3]
.Lb670:
	add	sp, #0x38
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_800b388


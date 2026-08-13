	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Unused_ScreenMelt  @ 0x080d0468
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, =0x5000040
	mov	r5, #0
.Ld0476:
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	lsl	r2, r5, #10
	lsl	r1, r3, #5
	orr	r2, r1
	orr	r2, r3
	add	r5, #1
	strh	r2, [r0]
	add	r0, #2
	cmp	r5, #0x20
	bne	.Ld0476
	ldr	r3, =iwram_3001ef4
	mov	r2, #0x10
	ldr	r3, [r3]
	mov	r1, #0
	mov	r10, r2
	mov	r2, #0xf0
	mov	r9, r3
	mov	r8, r1
	ldr	r3, =Func_8001af8
	ldr	r0, =gBuffer
	ldr	r1, =0x6008000
	lsl	r2, #7
	bl	_call_via_r3
	mov	r6, #0x80
	lsl	r6, #1
	mov	r7, #0x3f
	mov	r5, r9
	add	r6, r9
.Ld04b4:
	bl	Random
	and	r0, r7
	strb	r0, [r5]
	add	r5, #1
	cmp	r5, r6
	bne	.Ld04b4
	mov	r6, #0
	mov	r5, #0
.Ld04c6:
	mov	r3, r10
	cmp	r3, #0
	bge	.Ld04ce
	add	r3, #3
.Ld04ce:
	asr	r3, #2
	add	r8, r3
	mov	r3, #1
	add	r10, r3
	cmp	r6, r8
	beq	.Ld0576
	ldr	r7, .Ld04fc	@ 0x1f
.Ld04dc:
	mov	r0, #0
.Ld04de:
	mov	r1, r9
	ldrb	r3, [r1, r0]
	sub	r1, r6, r3
	cmp	r1, #0
	blt	.Ld0566
	cmp	r1, #0x77
	bgt	.Ld0566
	mov	r4, #7
	mov	r3, r0
	and	r3, r4
	mov	r2, r0
	cmp	r0, #0
	bge	.Ld0514
	add	r2, r0, #7
	b	.Ld0514

	.align	2, 0
.Ld04fc:
	.word	0x1f
	.pool

.Ld0514:
	asr	r2, #3
	lsl	r2, #6
	add	r2, r3, r2
	mov	r3, r1
	and	r3, r4
	lsl	r3, #3
	add	r2, r3
	mov	r3, r1
	cmp	r3, #0
	bge	.Ld052a
	add	r3, #7
.Ld052a:
	asr	r3, #3
	lsl	r3, #11
	add	r3, r2, r3
	ldr	r2, =gBuffer
	add	r4, r3, r2
	ldrb	r3, [r4]
	mov	r1, #0xa0
	lsl	r1, #19
	lsl	r3, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	mov	r3, #0xf8
	lsl	r2, #16
	lsl	r3, #13
	and	r3, r2
	lsr	r1, r3, #16
	lsr	r3, r2, #21
	and	r3, r7
	lsr	r2, #26
	and	r2, r7
	cmp	r1, r3
	bge	.Ld055a
	mov	r1, r3
.Ld055a:
	cmp	r1, r2
	bge	.Ld0560
	mov	r1, r2
.Ld0560:
	mov	r3, #0x3f
	sub	r3, r1
	strb	r3, [r4]
.Ld0566:
	mov	r2, #0x80
	add	r0, #1
	lsl	r2, #1
	cmp	r0, r2
	bne	.Ld04de
	add	r6, #1
	cmp	r6, r8
	bne	.Ld04dc
.Ld0576:
	mov	r2, #0xf0
	ldr	r3, =Func_8001af8
	ldr	r1, =gBuffer
	lsl	r2, #7
	ldr	r0, =0x6008000
	bl	_call_via_r3
	mov	r0, #1
	bl	WaitFrames
	mov	r3, r8
	cmp	r3, #0xf8
	bgt	.Ld0596
	add	r5, #1
	cmp	r5, #0x1b
	bne	.Ld04c6
.Ld0596:
	ldr	r0, =0x50000c0
	mov	r5, #0
.Ld059a:
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	lsl	r2, r5, #10
	lsl	r1, r3, #5
	orr	r2, r1
	orr	r2, r3
	add	r5, #1
	strh	r2, [r0]
	add	r0, #2
	cmp	r5, #0x20
	bne	.Ld059a
	mov	r1, #0xf0
	ldr	r2, =gBuffer
	mov	r5, #0
	lsl	r1, #7
.Ld05ba:
	ldrb	r3, [r2]
	add	r5, #1
	add	r3, #0x40
	strb	r3, [r2]
	add	r2, #1
	cmp	r5, r1
	bne	.Ld05ba
	mov	r2, #0xf0
	ldr	r3, =Func_8001af8
	ldr	r1, =gBuffer
	lsl	r2, #7
	ldr	r0, =0x6008000
	bl	_call_via_r3
	mov	r0, #1
	bl	WaitFrames
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Unused_ScreenMelt

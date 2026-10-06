	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SoundMainRAM  @ 0x080f9674
	ldrb	r3, [r0, #5]
	cmp	r3, #0
	beq	.Lf96d4
	adr	r1, .Lf9680
	bx	r1

	.align	2, 0
	.arm
.Lf9680:
	cmp	r4, #2
	addeq	r7, r0, #0x350
	addne	r7, r5, r8
	mov	r4, r8
.Lf9690:
	ldrsb	r0, [r5, r6]
	ldrsb	r1, [r5]
	add	r0, r1
	ldrsb	r1, [r7, r6]
	add	r0, r1
	ldrsb	r1, [r7], #1
	add	r0, r1
	mul	r1, r0, r3
	asr	r0, r1, #9
	tst	r0, #0x80
	addne	r0, #1
	strb	r0, [r5, r6]
	strb	r0, [r5], #1
	subs	r4, #1
	bgt	.Lf9690
	adr	r0, .Lf9702 + 1
	bx	r0

	.thumb
.Lf96d4:
	mov	r0, #0
	mov	r1, r8
	add	r6, r5
	lsr	r1, #3
	bcc	.Lf96e2
	stmia	r5!, {r0}
	stmia	r6!, {r0}
.Lf96e2:
	lsr	r1, #1
	bcc	.Lf96ee
	stmia	r5!, {r0}
	stmia	r6!, {r0}
	stmia	r5!, {r0}
	stmia	r6!, {r0}
.Lf96ee:
	stmia	r5!, {r0}
	stmia	r6!, {r0}
	stmia	r5!, {r0}
	stmia	r6!, {r0}
	stmia	r5!, {r0}
	stmia	r6!, {r0}
	stmia	r5!, {r0}
	stmia	r6!, {r0}
	sub	r1, #1
	bgt	.Lf96ee

.Lf9702:
	ldr	r4, [sp, #0x18]
	ldr	r0, [r4, #0x18]
	mov	r12, r0
	ldrb	r0, [r4, #6]
	add	r4, #0x50
.Lf970c:
	str	r0, [sp, #4]
	ldr	r3, [r4, #0x24]
	ldr	r0, [sp, #0x14]
	cmp	r0, #0
	beq	.Lf972c
	ldr	r1, =REG_VCOUNT
	ldrb	r1, [r1]
	cmp	r1, #0xa0
	bcs	.Lf9720
	add	r1, #0xe4
.Lf9720:
	cmp	r1, r0
	bcc	.Lf972c
	b	.Lf99fe

	.pool_aligned

.Lf972c:
	ldrb	r6, [r4]
	mov	r0, #0xc7
	tst	r0, r6
	bne	.Lf9736
	b	.Lf99f4
.Lf9736:
	mov	r0, #0x80
	tst	r0, r6
	beq	.Lf9766
	mov	r0, #0x40
	tst	r0, r6
	bne	.Lf9776
	mov	r6, #3
	strb	r6, [r4]
	mov	r0, r3
	add	r0, #0x10
	str	r0, [r4, #0x28]
	ldr	r0, [r3, #0xc]
	str	r0, [r4, #0x18]
	mov	r5, #0
	strb	r5, [r4, #9]
	str	r5, [r4, #0x1c]
	ldrb	r2, [r3, #3]
	mov	r0, #0xc0
	tst	r0, r2
	beq	.Lf97be
	mov	r0, #0x10
	orr	r6, r0
	strb	r6, [r4]
	b	.Lf97be
.Lf9766:
	ldrb	r5, [r4, #9]
	mov	r0, #4
	tst	r0, r6
	beq	.Lf977c
	ldrb	r0, [r4, #0xd]
	sub	r0, #1
	strb	r0, [r4, #0xd]
	bhi	.Lf97cc
.Lf9776:
	mov	r0, #0
	strb	r0, [r4]
	b	.Lf99f4
.Lf977c:
	mov	r0, #0x40
	tst	r0, r6
	beq	.Lf979c
	ldrb	r0, [r4, #7]
	mul	r5, r0
	lsr	r5, #8
	ldrb	r0, [r4, #0xc]
	cmp	r5, r0
	bhi	.Lf97cc
.Lf978e:
	ldrb	r5, [r4, #0xc]
	cmp	r5, #0
	beq	.Lf9776
	mov	r0, #4
	orr	r6, r0
	strb	r6, [r4]
	b	.Lf97cc
.Lf979c:
	mov	r2, #3
	and	r2, r6
	cmp	r2, #2
	bne	.Lf97ba
	ldrb	r0, [r4, #5]
	mul	r5, r0
	lsr	r5, #8
	ldrb	r0, [r4, #6]
	cmp	r5, r0
	bhi	.Lf97cc
	mov	r5, r0
	beq	.Lf978e
	sub	r6, #1
	strb	r6, [r4]
	b	.Lf97cc
.Lf97ba:
	cmp	r2, #3
	bne	.Lf97cc
.Lf97be:
	ldrb	r0, [r4, #4]
	add	r5, r0
	cmp	r5, #0xff
	bcc	.Lf97cc
	mov	r5, #0xff
	sub	r6, #1
	strb	r6, [r4]
.Lf97cc:
	strb	r5, [r4, #9]
	ldr	r0, [sp, #0x18]
	ldrb	r0, [r0, #7]
	add	r0, #1
	mul	r0, r5
	lsr	r5, r0, #4
	ldrb	r0, [r4, #2]
	mul	r0, r5
	lsr	r0, #8
	strb	r0, [r4, #0xa]
	ldrb	r0, [r4, #3]
	mul	r0, r5
	lsr	r0, #8
	strb	r0, [r4, #0xb]
	mov	r0, #0x10
	and	r0, r6
	str	r0, [sp, #0x10]
	beq	.Lf9800
	mov	r0, r3
	add	r0, #0x10
	ldr	r1, [r3, #8]
	add	r0, r1
	str	r0, [sp, #0xc]
	ldr	r0, [r3, #0xc]
	sub	r0, r1
	str	r0, [sp, #0x10]
.Lf9800:
	ldr	r5, [sp, #8]
	ldr	r2, [r4, #0x18]
	ldr	r3, [r4, #0x28]
	adr	r0, .Lf980c
	bx	r0

	.align	2, 0
	.arm
.Lf980c:
	str	r8, [sp]
	ldrb	r10, [r4, #0xa]
	ldrb	r11, [r4, #0xb]
	lsl	r10, #16
	lsl	r11, #16
	ldrb	r0, [r4, #1]
	tst	r0, #8
	beq	.Lf994c
.Lf982c:
	cmp	r2, #4
	ble	.Lf989c
	subs	r2, r8
	movgt	r14, #0
	bgt	.Lf9858
	mov	r14, r8
	add	r2, r8
	sub	r8, r2, #4
	sub	r14, r8
	ands	r2, #3
	moveq	r2, #4
.Lf9858:
	ldr	r6, [r5]
	ldr	r7, [r5, #0x630]
.Lf9860:
	ldrsb	r0, [r3], #1
	mul	r1, r10, r0
	bic	r1, #0xff0000
	add	r6, r1, r6, ror #8
	mul	r1, r11, r0
	bic	r1, #0xff0000
	add	r7, r1, r7, ror #8
	adds	r5, #0x40000000
	bcc	.Lf9860
	str	r7, [r5, #0x630]
	str	r6, [r5], #4
	subs	r8, #4
	bgt	.Lf9858
	adds	r8, r14
	beq	.Lf99e0
.Lf989c:
	ldr	r6, [r5]
	ldr	r7, [r5, #0x630]
.Lf98a4:
	ldrsb	r0, [r3], #1
	mul	r1, r10, r0
	bic	r1, #0xff0000
	add	r6, r1, r6, ror #8
	mul	r1, r11, r0
	bic	r1, #0xff0000
	add	r7, r1, r7, ror #8
	subs	r2, #1
	beq	.Lf9914
.Lf98c8:
	adds	r5, #0x40000000
	bcc	.Lf98a4
	str	r7, [r5, #0x630]
	str	r6, [r5], #4
	subs	r8, #4
	bgt	.Lf982c
	b	.Lf99e0
.Lf98e4:
	ldr	r0, [sp, #0x18]
	cmp	r0, #0
	beq	.Lf9908
	ldr	r3, [sp, #0x14]
	rsb	r9, r2, #0
.Lf98f8:
	adds	r2, r0, r2
	bgt	.Lf99b0
	sub	r9, r0
	b	.Lf98f8
.Lf9908:
	pop	{r4, r12}
	mov	r2, #0
	b	.Lf9924
.Lf9914:
	ldr	r2, [sp, #0x10]
	cmp	r2, #0
	ldrne	r3, [sp, #0xc]
	bne	.Lf98c8
.Lf9924:
	strb	r2, [r4]
	lsr	r0, r5, #30
	bic	r5, #0xc0000000
	rsb	r0, #3
	lsl	r0, #3
	ror	r6, r0
	ror	r7, r0
	str	r7, [r5, #0x630]
	str	r6, [r5], #4
	b	.Lf99e8
.Lf994c:
	push	{r4, r12}
	ldr	r14, [r4, #0x1c]
	ldr	r1, [r4, #0x20]
	mul	r4, r12, r1
	ldrsb	r0, [r3]
	ldrsb	r1, [r3, #1]!
	sub	r1, r0
.Lf9968:
	ldr	r6, [r5]
	ldr	r7, [r5, #0x630]
.Lf9970:
	mul	r9, r14, r1
	add	r9, r0, r9, asr #23
	mul	r12, r10, r9
	bic	r12, #0xff0000
	add	r6, r12, r6, ror #8
	mul	r12, r11, r9
	bic	r12, #0xff0000
	add	r7, r12, r7, ror #8
	add	r14, r4
	lsrs	r9, r14, #23
	beq	.Lf99bc
	bic	r14, #0x3f800000
	subs	r2, r9
	ble	.Lf98e4
	subs	r9, #1
	addeq	r0, r1
.Lf99b0:
	ldrnesb	r0, [r3, r9]!
	ldrsb	r1, [r3, #1]!
	sub	r1, r0
.Lf99bc:
	adds	r5, #0x40000000
	bcc	.Lf9970
	str	r7, [r5, #0x630]
	str	r6, [r5], #4
	subs	r8, #4
	bgt	.Lf9968
	sub	r3, #1
	pop	{r4, r12}
	str	r14, [r4, #0x1c]
.Lf99e0:
	str	r2, [r4, #0x18]
	str	r3, [r4, #0x28]
.Lf99e8:
	ldr	r8, [sp]
	add	r0, pc, #1
	bx	r0

	.thumb
.Lf99f4:
	ldr	r0, [sp, #4]
	sub	r0, #1
	ble	.Lf99fe
	add	r4, #0x40
	b	.Lf970c
.Lf99fe:
	ldr	r0, [sp, #0x18]
	ldr	r3, .Lf9a14	@ 0x68736d53
	str	r3, [r0]
	add	sp, #0x1c
	pop	{r0, r1, r2, r3, r4, r5, r6, r7}
	mov	r8, r0
	mov	r9, r1
	mov	r10, r2
	mov	r11, r3
	pop	{r3}

.Lf9a12:
	bx	r3

.Lf9a14:
	.word	0x68736d53
.func_end SoundMainRAM


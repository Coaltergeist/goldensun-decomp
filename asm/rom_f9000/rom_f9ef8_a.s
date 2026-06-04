	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f9ef8
	push	{r4, r5, r6, lr}
	mov	r5, r1
	ldrb	r1, [r5]
	mov	r0, #0x80
	tst	r0, r1
	beq	.Lf9f30
	ldr	r4, [r5, #0x20]
	cmp	r4, #0
	beq	.Lf9f2e
	mov	r6, #0
.Lf9f0c:
	ldrb	r0, [r4]
	cmp	r0, #0
	beq	.Lf9f26
	ldrb	r0, [r4, #1]
	mov	r3, #7
	and	r0, r3
	beq	.Lf9f24
	ldr	r3, =iwram_3007ff0
	ldr	r3, [r3]
	ldr	r3, [r3, #0x2c]
	bl	Func_80f9ee8
.Lf9f24:
	strb	r6, [r4]
.Lf9f26:
	str	r6, [r4, #0x2c]
	ldr	r4, [r4, #0x34]
	cmp	r4, #0
	bne	.Lf9f0c
.Lf9f2e:
	str	r4, [r5, #0x20]
.Lf9f30:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80f9ef8

.thumb_func_start Func_80f9f3c
	ldrb	r1, [r4, #0x12]
	mov	r0, #0x14
	ldrsb	r2, [r4, r0]
	mov	r3, #0x80
	add	r3, r2
	mul	r3, r1
	ldrb	r0, [r5, #0x10]
	mul	r0, r3
	asr	r0, #14
	cmp	r0, #0xff
	bls	.Lf9f54
	mov	r0, #0xff
.Lf9f54:
	strb	r0, [r4, #2]
	mov	r3, #0x7f
	sub	r3, r2
	mul	r3, r1
	ldrb	r0, [r5, #0x11]
	mul	r0, r3
	asr	r0, #14
	cmp	r0, #0xff
	bls	.Lf9f68
	mov	r0, #0xff
.Lf9f68:
	strb	r0, [r4, #3]
	bx	lr
.func_end Func_80f9f3c

.thumb_func_start Func_80f9f6c
	push	{r4, r5, r6, r7, lr}
	mov	r4, r8
	mov	r5, r9
	mov	r6, r10
	mov	r7, r11
	push	{r4, r5, r6, r7}
	sub	sp, #0x18
	str	r1, [sp]
	mov	r5, r2
	ldr	r1, =iwram_3007ff0
	ldr	r1, [r1]
	str	r1, [sp, #4]
	ldr	r1, =Data_fba14
	add	r0, r1
	ldrb	r0, [r0]
	strb	r0, [r5, #4]
	ldr	r3, [r5, #0x40]
	ldrb	r0, [r3]
	cmp	r0, #0x80
	bcs	.Lf9fb2
	strb	r0, [r5, #5]
	add	r3, #1
	ldrb	r0, [r3]
	cmp	r0, #0x80
	bcs	.Lf9fb0
	strb	r0, [r5, #6]
	add	r3, #1
	ldrb	r0, [r3]
	cmp	r0, #0x80
	bcs	.Lf9fb0
	ldrb	r1, [r5, #4]
	add	r1, r0
	strb	r1, [r5, #4]
	add	r3, #1
.Lf9fb0:
	str	r3, [r5, #0x40]
.Lf9fb2:
	mov	r0, #0
	str	r0, [sp, #0x14]
	mov	r4, r5
	add	r4, #0x24
	ldrb	r2, [r4]
	mov	r0, #0xc0
	tst	r0, r2
	beq	.Lfa004
	ldrb	r3, [r5, #5]
	mov	r0, #0x40
	tst	r0, r2
	beq	.Lf9fd2
	ldr	r1, [r5, #0x2c]
	add	r1, r3
	ldrb	r0, [r1]
	b	.Lf9fd4
.Lf9fd2:
	mov	r0, r3
.Lf9fd4:
	lsl	r1, r0, #1
	add	r1, r0
	lsl	r1, #2
	ldr	r0, [r5, #0x28]
	add	r1, r0
	mov	r9, r1
	mov	r6, r9
	ldrb	r1, [r6]
	mov	r0, #0xc0
	tst	r0, r1
	beq	.Lf9fec
	b	.Lfa152
.Lf9fec:
	mov	r0, #0x80
	tst	r0, r2
	beq	.Lfa008
	ldrb	r1, [r6, #3]
	mov	r0, #0x80
	tst	r0, r1
	beq	.Lfa000
	sub	r1, #0xc0
	lsl	r1, #1
	str	r1, [sp, #0x14]
.Lfa000:
	ldrb	r3, [r6, #1]
	b	.Lfa008
.Lfa004:
	mov	r9, r4
	ldrb	r3, [r5, #5]
.Lfa008:
	str	r3, [sp, #8]
	ldr	r6, [sp]
	ldrb	r1, [r6, #9]
	ldrb	r0, [r5, #0x1d]
	add	r0, r1
	cmp	r0, #0xff
	bls	.Lfa018
	mov	r0, #0xff
.Lfa018:
	str	r0, [sp, #0x10]
	mov	r6, r9
	ldrb	r0, [r6]
	mov	r6, #7
	and	r6, r0
	str	r6, [sp, #0xc]
	beq	.Lfa058
	ldr	r0, [sp, #4]
	ldr	r4, [r0, #0x1c]
	cmp	r4, #0
	bne	.Lfa030
	b	.Lfa152
.Lfa030:
	sub	r6, #1
	lsl	r0, r6, #6
	add	r4, r0
	ldrb	r1, [r4]
	mov	r0, #0xc7
	tst	r0, r1
	beq	.Lfa0ac
	mov	r0, #0x40
	tst	r0, r1
	bne	.Lfa0ac
	ldrb	r1, [r4, #0x13]
	ldr	r0, [sp, #0x10]
	cmp	r1, r0
	bcc	.Lfa0ac
	beq	.Lfa050
	b	.Lfa152
.Lfa050:
	ldr	r0, [r4, #0x2c]
	cmp	r0, r5
	bcs	.Lfa0ac
	b	.Lfa152
.Lfa058:
	ldr	r6, [sp, #0x10]
	mov	r7, r5
	mov	r2, #0
	mov	r8, r2
	ldr	r4, [sp, #4]
	ldrb	r3, [r4, #6]
	add	r4, #0x50
.Lfa066:
	ldrb	r1, [r4]
	mov	r0, #0xc7
	tst	r0, r1
	beq	.Lfa0ac
	mov	r0, #0x40
	tst	r0, r1
	beq	.Lfa080
	cmp	r2, #0
	bne	.Lfa084
	add	r2, #1
	ldrb	r6, [r4, #0x13]
	ldr	r7, [r4, #0x2c]
	b	.Lfa09e
.Lfa080:
	cmp	r2, #0
	bne	.Lfa0a0
.Lfa084:
	ldrb	r0, [r4, #0x13]
	cmp	r0, r6
	bcs	.Lfa090
	mov	r6, r0
	ldr	r7, [r4, #0x2c]
	b	.Lfa09e
.Lfa090:
	bhi	.Lfa0a0
	ldr	r0, [r4, #0x2c]
	cmp	r0, r7
	bls	.Lfa09c
	mov	r7, r0
	b	.Lfa09e
.Lfa09c:
	bcc	.Lfa0a0
.Lfa09e:
	mov	r8, r4
.Lfa0a0:
	add	r4, #0x40
	sub	r3, #1
	bgt	.Lfa066
	mov	r4, r8
	cmp	r4, #0
	beq	.Lfa152
.Lfa0ac:
	mov	r0, r4
	bl	Func_80fa678
	mov	r1, #0
	str	r1, [r4, #0x30]
	ldr	r3, [r5, #0x20]
	str	r3, [r4, #0x34]
	cmp	r3, #0
	beq	.Lfa0c0
	str	r4, [r3, #0x30]
.Lfa0c0:
	str	r4, [r5, #0x20]
	str	r5, [r4, #0x2c]
	ldrb	r0, [r5, #0x1b]
	strb	r0, [r5, #0x1c]
	cmp	r0, r1
	beq	.Lfa0d2
	mov	r1, r5
	bl	Func_80fa1ac
.Lfa0d2:
	ldr	r0, [sp]
	mov	r1, r5
	bl	Func_80fac44
	ldr	r0, [r5, #4]
	str	r0, [r4, #0x10]
	ldr	r0, [sp, #0x10]
	strb	r0, [r4, #0x13]
	ldr	r0, [sp, #8]
	strb	r0, [r4, #8]
	ldr	r0, [sp, #0x14]
	strb	r0, [r4, #0x14]
	mov	r6, r9
	ldrb	r0, [r6]
	strb	r0, [r4, #1]
	ldr	r7, [r6, #4]
	str	r7, [r4, #0x24]
	ldr	r0, [r6, #8]
	str	r0, [r4, #4]
	ldrh	r0, [r5, #0x1e]
	strh	r0, [r4, #0xc]
	bl	Func_80f9f3c
	ldrb	r1, [r4, #8]
	mov	r0, #8
	ldrsb	r0, [r5, r0]
	add	r3, r1, r0
	bpl	.Lfa10c
	mov	r3, #0
.Lfa10c:
	ldr	r6, [sp, #0xc]
	cmp	r6, #0
	beq	.Lfa13a
	mov	r6, r9
	ldrb	r0, [r6, #2]
	strb	r0, [r4, #0x1e]
	ldrb	r1, [r6, #3]
	mov	r0, #0x80
	tst	r0, r1
	bne	.Lfa126
	mov	r0, #0x70
	tst	r0, r1
	bne	.Lfa128
.Lfa126:
	mov	r1, #8
.Lfa128:
	strb	r1, [r4, #0x1f]
	ldrb	r2, [r5, #9]
	mov	r1, r3
	ldr	r0, [sp, #0xc]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #0x30]
	bl	Func_80f9ee8
	b	.Lfa144
.Lfa13a:
	ldrb	r2, [r5, #9]
	mov	r1, r3
	mov	r0, r7
	bl	Func_80fa1fc
.Lfa144:
	str	r0, [r4, #0x20]
	mov	r0, #0x80
	strb	r0, [r4]
	ldrb	r1, [r5]
	mov	r0, #0xf0
	and	r0, r1
	strb	r0, [r5]
.Lfa152:
	add	sp, #0x18
	pop	{r0, r1, r2, r3, r4, r5, r6, r7}
	mov	r8, r0
	mov	r9, r1
	mov	r10, r2
	mov	r11, r3
	pop	{r0}
	bx	r0
.func_end Func_80f9f6c

.thumb_func_start Func_80fa16c
	push	{r4, r5}
	ldr	r2, [r1, #0x40]
	ldrb	r3, [r2]
	cmp	r3, #0x80
	bcs	.Lfa17e
	strb	r3, [r1, #5]
	add	r2, #1
	str	r2, [r1, #0x40]
	b	.Lfa180
.Lfa17e:
	ldrb	r3, [r1, #5]
.Lfa180:
	ldr	r1, [r1, #0x20]
	cmp	r1, #0
	beq	.Lfa1a8
	mov	r4, #0x83
	mov	r5, #0x40
.Lfa18a:
	ldrb	r2, [r1]
	tst	r2, r4
	beq	.Lfa1a2
	tst	r2, r5
	bne	.Lfa1a2
	ldrb	r0, [r1, #0x11]
	cmp	r0, r3
	bne	.Lfa1a2
	mov	r0, #0x40
	orr	r2, r0
	strb	r2, [r1]
	b	.Lfa1a8
.Lfa1a2:
	ldr	r1, [r1, #0x34]
	cmp	r1, #0
	bne	.Lfa18a
.Lfa1a8:
	pop	{r4, r5}
	bx	lr
.func_end Func_80fa16c

.thumb_func_start Func_80fa1ac
	mov	r2, #0
	strb	r2, [r1, #0x16]
	strb	r2, [r1, #0x1a]
	ldrb	r2, [r1, #0x18]
	cmp	r2, #0
	bne	.Lfa1bc
	mov	r2, #0xc
	b	.Lfa1be
.Lfa1bc:
	mov	r2, #3
.Lfa1be:
	ldrb	r3, [r1]
	orr	r3, r2
	strb	r3, [r1]
	bx	lr
.func_end Func_80fa1ac

.thumb_func_start Func_80fa1c8
	ldr	r2, [r1, #0x40]
	add	r3, r2, #1
	str	r3, [r1, #0x40]
	ldrb	r3, [r2]
	bx	lr
.func_end Func_80fa1c8

.thumb_func_start Func_80fa1d4
	mov	r12, lr
	bl	Func_80fa1c8
	strb	r3, [r1, #0x19]
	cmp	r3, #0
	bne	.Lfa1e4
	bl	Func_80fa1ac
.Lfa1e4:
	bx	r12
.func_end Func_80fa1d4

.thumb_func_start Func_80fa1e8
	mov	r12, lr
	bl	Func_80fa1c8
	strb	r3, [r1, #0x17]
	cmp	r3, #0
	bne	.Lfa1f8
	bl	Func_80fa1ac
.Lfa1f8:
	bx	r12
.func_end Func_80fa1e8


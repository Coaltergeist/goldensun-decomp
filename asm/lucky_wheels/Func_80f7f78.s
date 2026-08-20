	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f7f78  @ 0x080f7f78
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x2c
	ldr	r5, =ewram_2004c00
	ldr	r3, =gBuffer
	str	r0, [sp, #0x28]
	mov	r0, #0
	str	r1, [sp, #0x24]
	str	r0, [sp, #0x20]
	str	r3, [r5]
	mov	r6, r2
	bl	Func_80f7db4
	ldr	r2, [r5]
	ldr	r1, =0x4440
	add	r3, r2, r1
	str	r6, [r3]
	ldr	r6, =0x4434
	ldr	r4, [sp, #0x20]
	ldr	r7, =0x4438
	add	r3, r2, r6
	ldr	r0, =0x443c
	str	r4, [r3]
	add	r3, r2, r7
	str	r4, [r3]
	add	r3, r2, r0
	str	r4, [r3]
	mov	r3, #0xd0
	lsl	r3, #6
	ldr	r4, =0x4408
	add	r7, sp, #0x20
	add	r1, r2, r3
	ldrb	r7, [r7]
	mov	r3, #0x80
	str	r3, [r1]
	sub	r0, #0x38
	add	r3, r2, r4
	strb	r7, [r3]
	add	r2, r0
	mov	r3, #1
	str	r3, [r2]
	mov	r1, #0xa8
	lsl	r1, #2
	ldr	r2, [sp, #0x28]
	mov	r0, #0
	bl	Func_80f7e60
	ldr	r2, [r5]
	ldr	r3, [r2, r6]
	ldr	r1, =0x3404
	lsl	r3, #2
	add	r3, r1
	ldr	r3, [r2, r3]
	mov	r2, #1
	neg	r2, r2
	cmp	r3, r2
	bne	.Lf7ff6
	b	.Lf868a
.Lf7ff6:
	ldr	r0, =ewram_2004c00
	ldr	r4, =0x4434
	ldr	r1, [r0]
	add	r3, r1, r4
	ldr	r3, [r3]
	ldr	r5, =0x4430
	mov	r12, r3
	add	r2, r1, r5
	mov	r3, #1
	str	r3, [r2]
	mov	r7, r12
	ldr	r2, =0x3404
	lsl	r3, r7, #2
	add	r3, r2
	mov	r4, #1
	ldr	r3, [r1, r3]
	neg	r4, r4
	cmp	r3, r4
	bne	.Lf801e
	b	.Lf816e
.Lf801e:
	mov	r5, #0xc0
	lsl	r3, #2
	lsl	r5, #6
	add	r3, r5
	ldr	r6, [r1, r3]
	mov	r3, #0x88
	lsl	r3, #1
	ldr	r7, =0x3ff
	add	r3, r12
	cmp	r3, r7
	ble	.Lf80d4
	cmp	r6, #0
	bne	.Lf803a
	b	.Lf816e
.Lf803a:
	ldr	r2, [r6, #8]
	mov	r0, r12
	ldr	r1, =0x3ff
	sub	r7, r0, r2
	and	r7, r1
	sub	r3, r7, #1
	cmp	r3, #0x3e
	bhi	.Lf80cc
	ldr	r3, =ewram_2004c00
	ldr	r0, =0x3ff
	mov	r5, r2
	mov	r2, r12
	add	r2, #1
	ldr	r1, [r3]
	mov	r14, r3
	and	r2, r0
	ldr	r3, =0x3404
	lsl	r2, #2
	add	r3, r2
	mov	r8, r3
	add	r3, r5, #1
	and	r3, r0
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r2, r3
	mov	r10, r2
	mov	r3, r8
	ldr	r2, [r1, r3]
	mov	r3, r10
	ldr	r1, [r1, r3]
	mov	r4, #1
	cmp	r2, r1
	bne	.Lf80ae
.Lf807c:
	ldr	r1, =0x10f
	add	r4, #1
	cmp	r4, r1
	bgt	.Lf80ae
	mov	r2, r14
	mov	r3, r12
	ldr	r1, [r2]
	add	r2, r3, r4
	and	r2, r0
	ldr	r3, =0x3404
	lsl	r2, #2
	add	r3, r2
	mov	r8, r3
	add	r3, r5, r4
	and	r3, r0
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r2, r3
	mov	r10, r2
	mov	r3, r8
	ldr	r2, [r1, r3]
	mov	r3, r10
	ldr	r1, [r1, r3]
	cmp	r2, r1
	beq	.Lf807c
.Lf80ae:
	ldr	r5, =ewram_2004c00
	ldr	r0, =0x4430
	ldr	r2, [r5]
	add	r1, r2, r0
	ldr	r3, [r1]
	cmp	r3, r4
	bge	.Lf80cc
	ldr	r5, =0x442c
	add	r3, r2, r5
	str	r7, [r3]
	mov	r7, #0x88
	lsl	r7, #1
	str	r4, [r1]
	cmp	r4, r7
	beq	.Lf816e
.Lf80cc:
	ldr	r6, [r6]
	cmp	r6, #0
	bne	.Lf803a
	b	.Lf816e
.Lf80d4:
	cmp	r6, #0
	beq	.Lf816e
	mov	r2, r12
	ldr	r4, =0x3408
	lsl	r3, r2, #2
	ldr	r0, =0x3ff
	ldr	r1, =ewram_2004c00
	add	r4, r3, r4
	mov	r2, r3
	str	r4, [sp, #8]
	mov	r9, r0
	mov	r10, r1
	mov	r11, r2
.Lf80ee:
	ldr	r0, [r6, #8]
	mov	r7, r12
	sub	r5, r7, r0
	mov	r1, r9
	and	r5, r1
	sub	r3, r5, #1
	cmp	r3, #0x3e
	bhi	.Lf8168
	mov	r2, r10
	mov	r7, r9
	add	r3, r0, #1
	ldr	r1, [r2]
	and	r3, r7
	ldr	r2, =0x3404
	lsl	r3, #2
	ldr	r7, [sp, #8]
	add	r3, r2
	ldr	r3, [r1, r3]
	ldr	r2, [r1, r7]
	mov	r4, #1
	cmp	r2, r3
	bne	.Lf814a
	ldr	r1, =ewram_2004c00
	mov	r7, r0
	ldr	r2, =0x3ff
	ldr	r0, =0x3408
	mov	r8, r1
	mov	r14, r2
	add	r0, r11
.Lf8128:
	ldr	r3, =0x10f
	add	r4, #1
	add	r0, #4
	cmp	r4, r3
	bgt	.Lf814a
	mov	r2, r8
	ldr	r1, [r2]
	add	r3, r7, r4
	mov	r2, r14
	and	r3, r2
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r3, r2
	ldr	r3, [r1, r3]
	ldr	r2, [r1, r0]
	cmp	r2, r3
	beq	.Lf8128
.Lf814a:
	mov	r3, r10
	ldr	r2, [r3]
	ldr	r7, =0x4430
	add	r1, r2, r7
	ldr	r3, [r1]
	cmp	r3, r4
	bge	.Lf8168
	ldr	r0, =0x442c
	add	r3, r2, r0
	str	r5, [r3]
	str	r4, [r1]
	mov	r1, #0x88
	lsl	r1, #1
	cmp	r4, r1
	beq	.Lf816e
.Lf8168:
	ldr	r6, [r6]
	cmp	r6, #0
	bne	.Lf80ee
.Lf816e:
	ldr	r2, [sp, #0x20]
	cmp	r2, #0
	beq	.Lf8176
	b	.Lf84fe
.Lf8176:
	ldr	r3, =ewram_2004c00
	ldr	r4, =0x4430
	ldr	r2, [r3]
	add	r1, r2, r4
	ldr	r5, [r1]
	str	r5, [sp, #0x1c]
	cmp	r5, #1
	bgt	.Lf8188
	b	.Lf85ee
.Lf8188:
	ldr	r7, =0x442c
	add	r3, r2, r7
	ldr	r3, [r3]
	ldr	r0, =0x4434
	str	r3, [sp, #0x18]
	str	r5, [sp, #0x14]
	add	r3, r2, r0
	ldr	r3, [r3]
	ldr	r4, =0x3ff
	add	r3, #1
	and	r3, r4
	mov	r12, r3
	mov	r5, r12
	mov	r3, #1
	ldr	r7, =0x3404
	str	r3, [r1]
	lsl	r3, r5, #2
	add	r3, r7
	mov	r0, #1
	ldr	r3, [r2, r3]
	neg	r0, r0
	cmp	r3, r0
	bne	.Lf81b8
	b	.Lf833e
.Lf81b8:
	mov	r1, #0xc0
	lsl	r3, #2
	lsl	r1, #6
	add	r3, r1
	ldr	r6, [r2, r3]
	mov	r3, #0x88
	lsl	r3, #1
	add	r3, r12
	cmp	r3, r4
	ble	.Lf82a4
	cmp	r6, #0
	bne	.Lf81d2
	b	.Lf833e
.Lf81d2:
	ldr	r2, [r6, #8]
	mov	r3, r12
	ldr	r4, =0x3ff
	sub	r7, r3, r2
	and	r7, r4
	sub	r3, r7, #1
	cmp	r3, #0x3e
	bhi	.Lf8266
	ldr	r5, =ewram_2004c00
	mov	r14, r5
	mov	r5, r2
	mov	r2, r14
	ldr	r1, [r2]
	ldr	r0, =0x3ff
	mov	r2, r12
	add	r2, #1
	and	r2, r0
	ldr	r3, =0x3404
	lsl	r2, #2
	add	r3, r2
	mov	r8, r3
	add	r3, r5, #1
	and	r3, r0
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r2, r3
	mov	r10, r2
	mov	r3, r8
	ldr	r2, [r1, r3]
	mov	r3, r10
	ldr	r1, [r1, r3]
	mov	r4, #1
	cmp	r2, r1
	bne	.Lf8248
.Lf8216:
	ldr	r1, =0x10f
	add	r4, #1
	cmp	r4, r1
	bgt	.Lf8248
	mov	r2, r14
	mov	r3, r12
	ldr	r1, [r2]
	add	r2, r3, r4
	and	r2, r0
	ldr	r3, =0x3404
	lsl	r2, #2
	add	r3, r2
	mov	r8, r3
	add	r3, r5, r4
	and	r3, r0
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r2, r3
	mov	r10, r2
	mov	r3, r8
	ldr	r2, [r1, r3]
	mov	r3, r10
	ldr	r1, [r1, r3]
	cmp	r2, r1
	beq	.Lf8216
.Lf8248:
	ldr	r5, =ewram_2004c00
	ldr	r0, =0x4430
	ldr	r2, [r5]
	add	r1, r2, r0
	ldr	r3, [r1]
	cmp	r3, r4
	bge	.Lf8266
	ldr	r5, =0x442c
	add	r3, r2, r5
	str	r7, [r3]
	mov	r7, #0x88
	lsl	r7, #1
	str	r4, [r1]
	cmp	r4, r7
	beq	.Lf833e
.Lf8266:
	ldr	r6, [r6]
	cmp	r6, #0
	bne	.Lf81d2
	b	.Lf833e

	.pool_aligned

.Lf82a4:
	cmp	r6, #0
	beq	.Lf833e
	mov	r2, r12
	ldr	r4, =0x3408
	lsl	r3, r2, #2
	ldr	r0, =0x3ff
	ldr	r1, =ewram_2004c00
	add	r4, r3, r4
	mov	r2, r3
	str	r4, [sp, #4]
	mov	r9, r0
	mov	r10, r1
	mov	r11, r2
.Lf82be:
	ldr	r0, [r6, #8]
	mov	r7, r12
	sub	r5, r7, r0
	mov	r1, r9
	and	r5, r1
	sub	r3, r5, #1
	cmp	r3, #0x3e
	bhi	.Lf8338
	mov	r2, r10
	mov	r7, r9
	add	r3, r0, #1
	ldr	r1, [r2]
	and	r3, r7
	ldr	r2, =0x3404
	lsl	r3, #2
	ldr	r7, [sp, #4]
	add	r3, r2
	ldr	r3, [r1, r3]
	ldr	r2, [r1, r7]
	mov	r4, #1
	cmp	r2, r3
	bne	.Lf831a
	ldr	r1, =ewram_2004c00
	mov	r7, r0
	ldr	r2, =0x3ff
	ldr	r0, =0x3408
	mov	r8, r1
	mov	r14, r2
	add	r0, r11
.Lf82f8:
	ldr	r3, =0x10f
	add	r4, #1
	add	r0, #4
	cmp	r4, r3
	bgt	.Lf831a
	mov	r2, r8
	ldr	r1, [r2]
	add	r3, r7, r4
	mov	r2, r14
	and	r3, r2
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r3, r2
	ldr	r3, [r1, r3]
	ldr	r2, [r1, r0]
	cmp	r2, r3
	beq	.Lf82f8
.Lf831a:
	mov	r3, r10
	ldr	r2, [r3]
	ldr	r7, =0x4430
	add	r1, r2, r7
	ldr	r3, [r1]
	cmp	r3, r4
	bge	.Lf8338
	ldr	r0, =0x442c
	add	r3, r2, r0
	str	r5, [r3]
	str	r4, [r1]
	mov	r1, #0x88
	lsl	r1, #1
	cmp	r4, r1
	beq	.Lf833e
.Lf8338:
	ldr	r6, [r6]
	cmp	r6, #0
	bne	.Lf82be
.Lf833e:
	ldr	r3, =ewram_2004c00
	ldr	r4, =0x4430
	ldr	r2, [r3]
	add	r1, r2, r4
	ldr	r3, [r1]
	cmp	r3, #2
	bgt	.Lf834e
	b	.Lf84ea
.Lf834e:
	ldr	r5, =0x4434
	add	r3, #1
	str	r3, [sp, #0xc]
	add	r3, r2, r5
	ldr	r3, [r3]
	ldr	r7, [sp, #0x1c]
	add	r3, r7
	mov	r12, r3
	ldr	r3, =0x3ff
	mov	r0, r12
	and	r0, r3
	ldr	r4, =0x3404
	mov	r3, #1
	str	r3, [r1]
	lsl	r3, r0, #2
	add	r3, r4
	mov	r5, #1
	ldr	r3, [r2, r3]
	neg	r5, r5
	mov	r12, r0
	cmp	r3, r5
	bne	.Lf837c
	b	.Lf84ce
.Lf837c:
	mov	r7, #0xc0
	lsl	r3, #2
	lsl	r7, #6
	add	r3, r7
	ldr	r6, [r2, r3]
	mov	r3, #0x88
	lsl	r3, #1
	ldr	r0, =0x3ff
	add	r3, r12
	cmp	r3, r0
	ble	.Lf8434
	cmp	r6, #0
	bne	.Lf8398
	b	.Lf84ce
.Lf8398:
	ldr	r2, [r6, #8]
	ldr	r3, =0x3ff
	mov	r1, r12
	sub	r7, r1, r2
	and	r7, r3
	sub	r3, r7, #1
	cmp	r3, #0x3e
	bhi	.Lf842c
	ldr	r5, =ewram_2004c00
	mov	r14, r5
	mov	r5, r2
	mov	r2, r14
	ldr	r1, [r2]
	ldr	r0, =0x3ff
	mov	r2, r12
	add	r2, #1
	and	r2, r0
	ldr	r3, =0x3404
	lsl	r2, #2
	add	r3, r2
	mov	r8, r3
	add	r3, r5, #1
	and	r3, r0
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r2, r3
	mov	r10, r2
	mov	r3, r8
	ldr	r2, [r1, r3]
	mov	r3, r10
	ldr	r1, [r1, r3]
	mov	r4, #1
	cmp	r2, r1
	bne	.Lf840e
.Lf83dc:
	ldr	r1, =0x10f
	add	r4, #1
	cmp	r4, r1
	bgt	.Lf840e
	mov	r2, r14
	mov	r3, r12
	ldr	r1, [r2]
	add	r2, r3, r4
	and	r2, r0
	ldr	r3, =0x3404
	lsl	r2, #2
	add	r3, r2
	mov	r8, r3
	add	r3, r5, r4
	and	r3, r0
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r2, r3
	mov	r10, r2
	mov	r3, r8
	ldr	r2, [r1, r3]
	mov	r3, r10
	ldr	r1, [r1, r3]
	cmp	r2, r1
	beq	.Lf83dc
.Lf840e:
	ldr	r5, =ewram_2004c00
	ldr	r0, =0x4430
	ldr	r2, [r5]
	add	r1, r2, r0
	ldr	r3, [r1]
	cmp	r3, r4
	bge	.Lf842c
	ldr	r5, =0x442c
	add	r3, r2, r5
	str	r7, [r3]
	mov	r7, #0x88
	lsl	r7, #1
	str	r4, [r1]
	cmp	r4, r7
	beq	.Lf84ce
.Lf842c:
	ldr	r6, [r6]
	cmp	r6, #0
	bne	.Lf8398
	b	.Lf84ce
.Lf8434:
	cmp	r6, #0
	beq	.Lf84ce
	mov	r2, r12
	ldr	r4, =0x3408
	lsl	r3, r2, #2
	ldr	r0, =0x3ff
	ldr	r1, =ewram_2004c00
	add	r4, r3, r4
	mov	r2, r3
	str	r4, [sp]
	mov	r9, r0
	mov	r10, r1
	mov	r11, r2
.Lf844e:
	ldr	r0, [r6, #8]
	mov	r7, r12
	sub	r5, r7, r0
	mov	r1, r9
	and	r5, r1
	sub	r3, r5, #1
	cmp	r3, #0x3e
	bhi	.Lf84c8
	mov	r2, r10
	mov	r7, r9
	add	r3, r0, #1
	ldr	r1, [r2]
	and	r3, r7
	ldr	r2, =0x3404
	lsl	r3, #2
	ldr	r7, [sp]
	add	r3, r2
	ldr	r3, [r1, r3]
	ldr	r2, [r1, r7]
	mov	r4, #1
	cmp	r2, r3
	bne	.Lf84aa
	ldr	r1, =ewram_2004c00
	mov	r7, r0
	ldr	r2, =0x3ff
	ldr	r0, =0x3408
	mov	r8, r1
	mov	r14, r2
	add	r0, r11
.Lf8488:
	ldr	r3, =0x10f
	add	r4, #1
	add	r0, #4
	cmp	r4, r3
	bgt	.Lf84aa
	mov	r2, r8
	ldr	r1, [r2]
	add	r3, r7, r4
	mov	r2, r14
	and	r3, r2
	ldr	r2, =0x3404
	lsl	r3, #2
	add	r3, r2
	ldr	r3, [r1, r3]
	ldr	r2, [r1, r0]
	cmp	r2, r3
	beq	.Lf8488
.Lf84aa:
	mov	r3, r10
	ldr	r2, [r3]
	ldr	r7, =0x4430
	add	r1, r2, r7
	ldr	r3, [r1]
	cmp	r3, r4
	bge	.Lf84c8
	ldr	r0, =0x442c
	add	r3, r2, r0
	str	r5, [r3]
	str	r4, [r1]
	mov	r1, #0x88
	lsl	r1, #1
	cmp	r4, r1
	beq	.Lf84ce
.Lf84c8:
	ldr	r6, [r6]
	cmp	r6, #0
	bne	.Lf844e
.Lf84ce:
	ldr	r2, =ewram_2004c00
	ldr	r4, =0x4430
	ldr	r3, [r2]
	add	r3, r4
	ldr	r3, [r3]
	ldr	r5, [sp, #0x1c]
	ldr	r7, [sp, #0xc]
	add	r3, r5
	str	r3, [sp, #0x10]
	cmp	r7, r3
	blt	.Lf84ea
	mov	r0, #1
	str	r0, [sp, #0x14]
	str	r0, [sp, #0x20]
.Lf84ea:
	ldr	r1, =ewram_2004c00
	ldr	r4, =0x442c
	ldr	r2, [r1]
	ldr	r5, [sp, #0x18]
	add	r3, r2, r4
	str	r5, [r3]
	ldr	r7, =0x4430
	ldr	r0, [sp, #0x14]
	add	r2, r7
	str	r0, [r2]
.Lf84fe:
	ldr	r1, =ewram_2004c00
	ldr	r2, =0x4430
	ldr	r5, [r1]
	add	r6, r5, r2
	ldr	r3, [r6]
	cmp	r3, #1
	ble	.Lf85ee
	mov	r3, #0
	ldr	r4, =0x4408
	mov	r7, #0xd0
	str	r3, [sp, #0x20]
	lsl	r7, #6
	add	r1, r5, r4
	add	r3, r5, r7
	ldr	r3, [r3]
	ldrb	r2, [r1]
	orr	r3, r2
	strb	r3, [r1]
	ldr	r0, [r6]
	cmp	r0, #0x10
	bgt	.Lf8594
	ldr	r1, =0x442c
	add	r3, r5, r1
	ldr	r2, [r3]
	ldr	r3, .Lf8564	@ 0xfffff000
	lsl	r1, r2, #4
	and	r1, r3
	mov	r3, #0xff
	and	r2, r3
	orr	r1, r2
	sub	r3, r0, #1
	ldr	r2, .Lf8568	@ 0xf00
	lsl	r3, #8
	and	r3, r2
	ldr	r2, =0x4404
	add	r0, r5, r2
	ldr	r2, [r0]
	orr	r1, r3
	lsl	r1, #16
	ldr	r7, =0x4408
	add	r3, r2, r4
	add	r2, #1
	asr	r4, r1, #16
	lsr	r1, #24
	strb	r1, [r5, r3]
	str	r2, [r0]
	add	r3, r2, r7
	add	r2, #1
	strb	r4, [r5, r3]
	str	r2, [r0]
	b	.Lf8618

	.align	2, 0
.Lf8564:
	.word	0xfffff000
.Lf8568:
	.word	0xf00
	.pool

.Lf8594:
	ldr	r0, =0x442c
	add	r3, r5, r0
	ldr	r1, [r3]
	ldr	r2, .Lf85d8	@ 0xfffff000
	lsl	r3, r1, #4
	and	r3, r2
	mov	r2, #0xff
	and	r1, r2
	orr	r3, r1
	ldr	r1, =0x4404
	lsl	r3, #16
	add	r0, r5, r1
	ldr	r2, [r0]
	asr	r4, r3, #16
	ldr	r3, =0x4408
	ldr	r7, =0x4408
	add	r1, r2, r3
	add	r2, #1
	lsr	r3, r4, #8
	strb	r3, [r5, r1]
	add	r3, r2, r7
	add	r1, r2, #1
	str	r2, [r0]
	strb	r4, [r5, r3]
	str	r1, [r0]
	ldr	r3, =0x4409
	add	r2, r3
	ldr	r3, [r6]
	add	r1, #1
	sub	r3, #0x11
	strb	r3, [r5, r2]
	str	r1, [r0]
	b	.Lf85ec

	.align	2, 0
.Lf85d8:
	.word	0xfffff000
	.pool

.Lf85ec:
	b	.Lf8618
.Lf85ee:
	ldr	r4, =ewram_2004c00
	ldr	r5, =0x4404
	ldr	r2, [r4]
	add	r4, r2, r5
	add	r5, #0x30
	ldr	r1, [r4]
	ldr	r7, =0x4408
	add	r3, r2, r5
	ldr	r3, [r3]
	add	r0, r1, r7
	ldr	r7, =0x3404
	lsl	r3, #2
	add	r3, r7
	ldr	r3, [r2, r3]
	strb	r3, [r2, r0]
	ldr	r0, =0x4430
	add	r1, #1
	add	r2, r0
	mov	r3, #1
	str	r1, [r4]
	str	r3, [r2]
.Lf8618:
	ldr	r7, =ewram_2004c00
	ldr	r5, =0x4434
	ldr	r3, [r7]
	ldr	r6, =0x4430
	ldr	r0, [r3, r5]
	mov	r1, #0xa8
	lsl	r1, #2
	add	r0, r1
	ldr	r2, [sp, #0x28]
	ldr	r1, [r3, r6]
	bl	Func_80f7e60
	ldr	r1, [r7]
	add	r5, r1, r5
	ldr	r2, [r1, r6]
	ldr	r3, [r5]
	add	r3, r2
	ldr	r2, =0x3ff
	and	r3, r2
	str	r3, [r5]
	mov	r3, #0xd0
	lsl	r3, #6
	add	r1, r3
	ldr	r3, [r1]
	asr	r5, r3, #1
	str	r5, [r1]
	cmp	r5, #0
	bne	.Lf8670
	ldr	r0, [sp, #0x24]
	bl	Func_80f7f30
	ldr	r2, [r7]
	mov	r4, #0xd0
	lsl	r4, #6
	add	r1, r2, r4
	mov	r3, #0x80
	ldr	r0, =0x4408
	str	r3, [r1]
	ldr	r1, =0x4404
	add	r3, r2, r0
	strb	r5, [r3]
	add	r2, r1
	mov	r3, #1
	str	r3, [r2]
.Lf8670:
	ldr	r2, [r7]
	ldr	r4, =0x4434
	add	r3, r2, r4
	ldr	r3, [r3]
	ldr	r5, =0x3404
	lsl	r3, #2
	add	r3, r5
	mov	r7, #1
	ldr	r3, [r2, r3]
	neg	r7, r7
	cmp	r3, r7
	beq	.Lf868a
	b	.Lf7ff6
.Lf868a:
	ldr	r6, =ewram_2004c00
	ldr	r0, =0x4408
	ldr	r4, [r6]
	mov	r2, #0xd0
	lsl	r2, #6
	add	r1, r4, r0
	add	r3, r4, r2
	ldr	r3, [r3]
	ldrb	r2, [r1]
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, =0x4404
	add	r1, r4, r3
	ldr	r3, [r1]
	mov	r5, #0
	add	r2, r3, r0
	add	r3, #1
	strb	r5, [r4, r2]
	add	r0, r3, r0
	str	r3, [r1]
	add	r3, #1
	strb	r5, [r4, r0]
	str	r3, [r1]
	ldr	r0, [sp, #0x24]
	bl	Func_80f7f30
	ldr	r3, [r6]
	ldr	r4, =0x443c
	add	r3, r4
	ldr	r0, [r3]
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80f7f78

	.section .rodata

.Lf86f8:
	.incrom	0xf86f8, 0xf870c
.Lf870c:
	.incrom 0xf870c, 0xf8712
.Lf8712:
	.incrom 0xf8712, 0xf871a
.Lf871a:
	.incrom 0xf871a, 0xf8728
.Lf8728:
	.incrom 0xf8728, 0xf8736
.Lf8736:
	.incrom 0xf8736, 0xf873e

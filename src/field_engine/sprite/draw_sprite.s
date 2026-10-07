	.include "macros.inc"

	.incdata Data_92b8, 0x92b8, 0x97b8
	.incdata Data_97b8, 0x97b8, 0x9bb8

.arm_func_start _DrawSprite  @ 0x08009bb8
	cmp	r2, #0
	bne	.L9cd0
.L9bc0:
	mov	r4, #0xff
	ands	r2, r0, #3
	ldm	r0!, {r3}
	add	r2, r2, lsl #2
	add	pc, r2, lsl #2
	nop
.L9bd8:
	ands	r2, r4, r3
	bxeq	lr
	subs	r12, r2, #0xdf
	addhi	r1, r12
	strlsb	r2, [r1], #1
	ands	r2, r4, r3, lsr #8
	bxeq	lr
	subs	r12, r2, #0xdf
	addhi	r1, r12
	strlsb	r2, [r1], #1
	ands	r2, r4, r3, lsr #16
	bxeq	lr
	subs	r12, r2, #0xdf
	addhi	r1, r12
	strlsb	r2, [r1], #1
	ands	r2, r4, r3, lsr #24
	bxeq	lr
	subs	r12, r2, #0xdf
	addhi	r1, r12
	strlsb	r2, [r1], #1
	ldm	r0!, {r3}
	and	r2, r3, r3, lsr #16
	ands	r2, r2, lsr #8
	beq	.L9bd8
.L9c38:
	ands	r2, r4, r3
	subs	r12, r2, #0xdf
	addhi	r1, r12
	strlsb	r2, [r1], #1
	ands	r2, r4, r3, lsr #8
	subs	r12, r2, #0xdf
	addhi	r1, r12
	strlsb	r2, [r1], #1
	ands	r2, r4, r3, lsr #16
	subs	r12, r2, #0xdf
	addhi	r1, r12
	strlsb	r2, [r1], #1
	ands	r2, r4, r3, lsr #24
	subs	r12, r2, #0xdf
	addhi	r1, r12
	strlsb	r2, [r1], #1
	ldm	r0!, {r3}
	and	r2, r3, r3, lsr #16
	ands	r2, r2, lsr #8
	bne	.L9c38
	b	.L9bd8

.L9c8c:
	.word	iwram_3001c90

.L9c90:
	ldr	r2, .L9c8c
	ldrb	r2, [r2]
	b	.L9cc0
.L9c9c:
	mov	r2, #0
	b	.L9cc0
.L9ca4:
	mov	r2, #1
	b	.L9cc0
.L9cac:
	mov	r2, #0xf
	b	.L9cc0
.L9cb4:
	subs	r3, #0xdf
	addhi	r1, r3
	strlsb	r2, [r1], #1
.L9cc0:
	ldrb	r3, [r0], #1
	cmp	r3, #0
	bne	.L9cb4
	bx	lr
.L9cd0:
	add	r4, r2, r2
	ldrsh	r4, [pc, r4]
	add	pc, r4

.L9cdc:
	.2byte	.L9bc0 - .L9cdc - 4
	.2byte	.L9d00 - .L9cdc - 4
	.2byte	.L9d00 - .L9cdc - 4
	.2byte	.L9d00 - .L9cdc - 4
	.2byte	.L9d00 - .L9cdc - 4
	.2byte	.L9d00 - .L9cdc - 4
	.2byte	.L9d00 - .L9cdc - 4
	.2byte	.L9cac - .L9cdc - 4
	.2byte	.L9cac - .L9cdc - 4
	.2byte	.L9cfc - .L9cdc - 4
	.2byte	.L9cfc - .L9cdc - 4
	.2byte	.L9cfc - .L9cdc - 4
	.2byte	.L9cfc - .L9cdc - 4
	.2byte	.L9c90 - .L9cdc - 4
	.2byte	.L9ca4 - .L9cdc - 4
	.2byte	.L9c9c - .L9cdc - 4

.L9cfc:
	sub	r2, #2

.L9d00:
	ldr	r4, .L9d90
	cmp	r4, r2
	beq	.L9d64
	str	r2, .L9d90
	ldr	r3, .L9d98
	add	r2, r3, r2, lsl #8
	adr	r3, Data_8009d9c
	push	{r5, r6, r7, r8, r9}
	ldm	r2!, {r4, r5, r6, r7, r8, r9, r12}
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r12}
	ldm	r2!, {r4, r5, r6, r7, r8, r9, r12}
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r12}
	ldm	r2!, {r4, r5, r6, r7, r8, r9, r12}
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r12}
	ldm	r2!, {r4, r5, r6, r7, r8, r9, r12}
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r12}
	ldm	r2!, {r4, r5, r6, r7, r8, r9, r12}
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r12}
	ldm	r2!, {r4, r5, r6, r7, r8, r9, r12}
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r12}
	ldm	r2!, {r4, r5, r6, r7, r8, r9, r12}
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r12}
	ldm	r2!, {r4, r5, r6, r7, r8, r9, r12}
	stmia	r3!, {r4, r5, r6, r7, r8, r9, r12}
	pop	{r5, r6, r7, r8, r9}
.L9d64:
	adr	r2, Data_8009d9c
	b	.L9d70
.L9d6c:
	add	r1, r4
.L9d70:
	ldrb	r3, [r0], #1
	subs	r4, r3, #0xdf
	bhi	.L9d6c
	cmp	r3, #0
	ldrneb	r3, [r2, r3]
	strneb	r3, [r1], #1
	bne	.L9d70
	bx	lr

.L9d90:
	.space	4
	.word	Data_92b8 - 0xe0
.L9d98:
	.word	Data_92b8 - 0x100

	.global	Data_8009d9c
Data_8009d9c:
	.space	0xe0
	.ssize	Data_8009d9c
.func_end _DrawSprite

.arm_func_start Func_8009e7c  @ 0x08009e7c
	push	{r5, r6, r7, r8, r9, r10, r11, lr}
	mov	r4, #0xa00000
	orr	r4, #0x38
	orr	r4, #0xff000000
.L9e8c:
	ldrsh	r6, [r0, #4]
	ldr	r7, [r0, #8]
	ldr	r8, [r0, #0xc]
	ldrsh	r5, [r0], #0x20
	lsl	r7, #15
	lsl	r8, #15
	add	r4, #0x1e000000
.L9ea8:
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r12, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r12, #0
	ldrneb	r12, [r10, r12, lsl #6]
	cmp	r12, #0
	subeq	r11, #0x1000
	ldreqb	r12, [r11]
	subeq	r10, #0x4000
	ldreqb	r12, [r10, r12, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r9, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r9, #0
	ldrneb	r9, [r10, r9, lsl #6]
	cmp	r9, #0
	subeq	r11, #0x1000
	ldreqb	r9, [r11]
	subeq	r10, #0x4000
	ldreqb	r9, [r10, r9, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	orr	r9, r12, r9, lsl #8
	strh	r9, [r1], #2
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r12, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r12, #0
	ldrneb	r12, [r10, r12, lsl #6]
	cmp	r12, #0
	subeq	r11, #0x1000
	ldreqb	r12, [r11]
	subeq	r10, #0x4000
	ldreqb	r12, [r10, r12, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r9, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r9, #0
	ldrneb	r9, [r10, r9, lsl #6]
	cmp	r9, #0
	subeq	r11, #0x1000
	ldreqb	r9, [r11]
	subeq	r10, #0x4000
	ldreqb	r9, [r10, r9, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	orr	r9, r12, r9, lsl #8
	strh	r9, [r1], #2
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r12, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r12, #0
	ldrneb	r12, [r10, r12, lsl #6]
	cmp	r12, #0
	subeq	r11, #0x1000
	ldreqb	r12, [r11]
	subeq	r10, #0x4000
	ldreqb	r12, [r10, r12, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r9, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r9, #0
	ldrneb	r9, [r10, r9, lsl #6]
	cmp	r9, #0
	subeq	r11, #0x1000
	ldreqb	r9, [r11]
	subeq	r10, #0x4000
	ldreqb	r9, [r10, r9, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	orr	r9, r12, r9, lsl #8
	strh	r9, [r1], #2
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r12, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r12, #0
	ldrneb	r12, [r10, r12, lsl #6]
	cmp	r12, #0
	subeq	r11, #0x1000
	ldreqb	r12, [r11]
	subeq	r10, #0x4000
	ldreqb	r12, [r10, r12, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	lsr	r10, r8, #26
	add	r11, r3, r7, lsr #26
	ldrb	r9, [r11, r10, lsl #6]!
	and	r10, r4, r8, lsr #20
	lsl	r14, r7, #6
	add	r10, r14, lsr #29
	add	r10, r2
	cmp	r9, #0
	ldrneb	r9, [r10, r9, lsl #6]
	cmp	r9, #0
	subeq	r11, #0x1000
	ldreqb	r9, [r11]
	subeq	r10, #0x4000
	ldreqb	r9, [r10, r9, lsl #6]
	add	r7, r5, lsl #15
	add	r8, r6, lsl #15
	orr	r9, r12, r9, lsl #8
	strh	r9, [r1], #2
	add	r1, #0x38
	subs	r4, #0x1000000
	bpl	.L9ea8
	sub	r1, #0x780
	add	r1, #8
	sub	r4, #0x10000
	tst	r4, #0x70000
	addeq	r1, #0x740
	tst	r4, #0xff0000
	bne	.L9e8c
	pop	{r5, r6, r7, r8, r9, r10, r11, lr}
	bx	lr
.func_end Func_8009e7c

.arm_func_start Func_800a0f8  @ 0x0800a0f8
	push	{r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r1
	ldr	r9, =Exports_c0
	sub	sp, #8
	ldr	r1, [r5]
	ldr	r12, [r5, #8]
	mov	r7, r2
	ldr	r2, [r0, #8]
	mov	r6, r3
	ldr	r3, [r0]
	rsb	r4, r2, r12
	rsb	r1, r3, r1
	asr	r0, r1, #4
	asr	r1, r4, #4
	ldr	r12, [r9, #0x44]
	mov	lr, pc
	bx	r12
	lsl	r0, #16
	lsr	r8, r0, #16
	mov	r1, #0x8000
	ldr	r3, [r5]
	smull	r0, r3, r1, r3
	lsl	r3, #16
	orr	r2, r3, r0, lsr #16
	str	r2, [sp, #4]
	ldr	r2, [r5, #8]
	smull	r3, r2, r1, r2
	lsl	r2, #16
	orr	r1, r2, r3, lsr #16
	str	r1, [sp]
	ldr	r2, =iwram_3001f60
	ldr	r3, [r2]
	cmp	r8, r3
	beq	.La294
	mov	r0, r8
	str	r8, [r2]
	ldr	r12, [r9, #0x5c]
	mov	lr, pc
	bx	r12
	mov	r10, r0
	mov	r0, r8
	ldr	r12, [r9, #0x64]
	mov	lr, pc
	bx	r12
	mov	r5, r0
	rsb	r9, r10, #0
	mov	r8, #0x9f
.La1b4:
	ldm	r7, {r2, r4}
	smull	r1, r3, r5, r2
	lsl	r3, #16
	orr	r3, r1, lsr #16
	cmp	r3, #0
	addlt	r3, #0xff
	asr	r3, #8
	rsb	r3, #0
	lsl	r1, r3, #16
	strh	r3, [r7, #0x10]
	asr	r14, r1, #16
	strh	r3, [r6]
	smull	r1, r2, r10, r2
	lsl	r2, #16
	orr	r2, r1, lsr #16
	cmp	r2, #0
	addlt	r2, #0xff
	asr	r2, #8
	strh	r2, [r7, #0x12]
	strh	r2, [r6, #4]
	ldr	r3, =iwram_3001cec
	ldr	r0, [r3]
	lsl	r3, r14, #8
	mul	r14, r0, r3
	lsl	r2, #16
	asr	r2, #8
	rsb	r0, #0
	mul	r12, r0, r2
	smull	r3, r1, r4, r9
	lsl	r1, #16
	orr	r1, r3, lsr #16
	add	r1, r14, r1
	rsb	r1, #0
	str	r1, [r7, #8]
	smull	r2, r3, r4, r5
	lsl	r3, #16
	orr	r3, r2, lsr #16
	add	r12, r3
	str	r12, [r7, #0xc]
	ldr	r2, [sp, #4]
	add	r1, r2, r1
	asr	r1, #8
	str	r1, [r6, #8]
	ldr	r1, [sp]
	subs	r8, #1
	ldr	r3, [r7, #0xc]
	add	r12, r6, #0x10
	add	r3, r1, r3
	asr	r3, #8
	str	r3, [r6, #0xc]
	add	r7, #0x14
	ldm	r6, {r0, r1, r2, r3}
	add	r6, #0x20
	stm	r12, {r0, r1, r2, r3}
	bpl	.La1b4
	b	.La370
.La294:
	mov	r8, #0x9f
	ldr	r14, =iwram_3001e40
.La29c:
	ldr	r3, [r14]
	tst	r3, #1
	beq	.La31c
	ldr	r1, [r7, #8]
	ldr	r2, [sp, #4]
	ldrsh	r3, [r7, #0x12]
	add	r1, r2, r1
	cmp	r3, #0
	addlt	r3, #3
	asr	r3, #2
	ldrsh	r2, [r7, #0x10]
	add	r3, r1, asr #8
	add	r2, r2, lsr #31
	add	r3, r2, asr #1
	str	r3, [r6, #8]
	ldrsh	r3, [r7, #0x10]
	ldr	r2, [sp]
	cmp	r3, #0
	addlt	r3, #3
	ldr	r1, [r7, #0xc]
	asr	r3, #2
	add	r1, r2, r1
	ldrsh	r2, [r7, #0x12]
	add	r3, r1, asr #8
	add	r2, r2, lsr #31
	add	r3, r2, asr #1
	str	r3, [r6, #0xc]
	b	.La344

	.pool

.La31c:
	ldr	r3, [r7, #8]
	ldr	r1, [sp, #4]
	add	r3, r1, r3
	asr	r3, #8
	str	r3, [r6, #8]
	ldr	r3, [sp]
	ldr	r2, [r7, #0xc]
	add	r2, r3, r2
	asr	r2, #8
	str	r2, [r6, #0xc]
.La344:
	ldrh	r1, [r7, #0x10]
	strh	r1, [r6]
	add	r12, r6, #0x10
	ldrh	r2, [r7, #0x12]
	subs	r8, #1
	strh	r2, [r6, #4]
	add	r7, #0x14
	ldm	r6, {r0, r1, r2, r3}
	add	r6, #0x20
	stm	r12, {r0, r1, r2, r3}
	bpl	.La29c
.La370:
	add	sp, #8
	pop	{r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.func_end Func_800a0f8


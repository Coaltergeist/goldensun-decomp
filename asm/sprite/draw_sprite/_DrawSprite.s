	.include "macros.inc"

	.incdata Data_92b8, 0x92b8, 0x97b8
	.incdata Data_97b8, 0x97b8, 0x9bb8

.arm_func_start Func_8009bb8  @ 0x08009bb8
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
.func_end Func_8009bb8


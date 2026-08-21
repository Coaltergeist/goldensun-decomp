	.include "macros.inc"

.arm_func_start DecompressLZ1_ROM  @ 0x08001b70
	push	{r1, r5, r6, r7, lr}
.L1b74:
	ldrb	r14, [r0], #1
	lsls	r14, #24
	bne	.L1c2c
	ands	r2, r0, #3
	ldmeq	r0!, {r4, r5}
	beq	.L1bac
	ldm	r0, {r4, r5, r6}
	lsl	r2, #3
	rsb	r7, r2, #0x20
	lsr	r4, r2
	orr	r4, r5, lsl r7
	lsr	r5, r2
	orr	r5, r6, lsl r7
	add	r0, #8
.L1bac:
	strb	r4, [r1], #1
	lsr	r4, #8
	strb	r4, [r1], #1
	lsr	r4, #8
	strb	r4, [r1], #1
	lsr	r4, #8
	strb	r4, [r1], #1
	strb	r5, [r1], #1
	lsr	r5, #8
	strb	r5, [r1], #1
	lsr	r5, #8
	strb	r5, [r1], #1
	lsr	r5, #8
	strb	r5, [r1], #1
	b	.L1b74
	ldrb	r3, [r0], #1
	strb	r3, [r1], #1
	ldrb	r2, [r0], #1
	strb	r2, [r1], #1
	ldrb	r3, [r0], #1
	strb	r3, [r1], #1
	ldrb	r2, [r0], #1
	strb	r2, [r1], #1
	ldrb	r3, [r0], #1
	strb	r3, [r1], #1
	ldrb	r2, [r0], #1
	strb	r2, [r1], #1
	ldrb	r3, [r0], #1
	strb	r3, [r1], #1
	ldrb	r2, [r0], #1
	strb	r2, [r1], #1
	b	.L1b74
.L1c2c:
	orr	r14, #0x800000
	lsls	r14, #1
	bcs	.L1c4c
.L1c38:
	ldrb	r3, [r0], #1
	strb	r3, [r1], #1
	lsls	r14, #1
	bcc	.L1c38
	beq	.L1b74
.L1c4c:
	ldrb	r12, [r0], #1
	ldrb	r3, [r0], #1
	and	r2, r12, #0xf0
	rsb	r3, r1
	sub	r4, r3, r2, lsl #4
	ands	r12, #0xf
	beq	.L1d04
	rsb	r12, #0xf
	add	pc, r12, lsl #3
	nop
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	ldrb	r3, [r4], #1
	strb	r3, [r1], #1
	lsls	r14, #1
	bcc	.L1c38
	beq	.L1b74
	b	.L1c4c
.L1d04:
	cmp	r4, r1
	beq	.L1dbc
	ldrb	r3, [r0], #1
	add	r3, #0x10
	and	r12, r3, #0xf
	rsb	r12, #0xf
	add	pc, r12, lsl #3
	nop
.L1d24:
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	ldrb	r2, [r4], #1
	strb	r2, [r1], #1
	subs	r3, #0x10
	bge	.L1d24
	lsls	r14, #1
	bcc	.L1c38
	beq	.L1b74
	b	.L1c4c
.L1dbc:
	pop	{r0, r5, r6, r7, r12}
	sub	r0, r1, r0
	bx	r12
.func_end_emit_size DecompressLZ1_ROM, _DECOMPRESS_LZ1_SIZE

.arm_func_start Func_8001dc8  @ 0x08001dc8
	push	{r5, r6, r7, r8, r9, lr}
	ldr	r2, =iwram_3001800
	mov	r12, #0x40
	mov	r1, #0x80
	mov	r9, r0
.L1ddc:
	ldmdb	r2!, {r3, r4, r5, r6}
	movs	r6, r6
	blne	.L1e20
	movs	r6, r5
	blne	.L1e20
	movs	r6, r4
	blne	.L1e20
	movs	r6, r3
	blne	.L1e20
	subs	r12, #1
	bne	.L1ddc
	mov	r2, #0xc0
	orr	r2, #0xc00000
	lsl	r1, #3
	ldr	r4, =Func_80008d8
	adr	r14, .L1e54
	bx	r4
.L1e20:
	ldm	r6, {r6, r7, r8}
	stmia	r0!, {r7, r8}
	subs	r1, #1
	beq	.L1e54
	cmp	r6, #0
	bxeq	lr
	ldm	r6, {r6, r7, r8}
	stmia	r0!, {r7, r8}
	subs	r1, #1
	beq	.L1e54
	cmp	r6, #0
	bxeq	lr
	b	.L1e20
.L1e54:
	add	r0, r9, #6
	ldr	r2, =sOamMatrixCount
	ldrb	r4, [r2]
	ldr	r1, =sOamMatrices
	cmp	r4, #0
	beq	.L1e90
.L1e6c:
	ldm	r1!, {r2, r3}
	strh	r2, [r0], #0x20
	lsr	r2, #16
	strh	r2, [r0, #-0x18]
	strh	r3, [r0, #-0x10]
	lsr	r3, #16
	strh	r3, [r0, #-8]
	subs	r4, #1
	bne	.L1e6c
.L1e90:
	pop	{r5, r6, r7, r8, r9, lr}
	bx	lr
.func_end_emit_size Func_8001dc8, _Func_8001dc8_SIZE


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801f088  @ 0x0801f088
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	str	r1, [sp, #0x10]
	mov	r9, r3
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r6, r0
	ldr	r1, =0xea5
	mov	r0, r9
	str	r3, [sp, #8]
	str	r0, [sp, #4]
	add	r3, r1
	ldrb	r3, [r3]
	mov	r5, r2
	cmp	r3, #0
	bne	.L1f0ca
	bl	GetSpritePalette
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x50001c0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x50001e8
	ldr	r2, =0x50001dc
	ldrh	r3, [r3]
	strh	r3, [r2]
.L1f0ca:
	ldrh	r3, [r6, #0xc]
	ldr	r2, [sp, #0x10]
	add	r2, r3
	str	r2, [sp, #0x10]
	ldrh	r3, [r6, #0xe]
	add	r5, r3
	lsl	r5, #5
	mov	r3, #4
	str	r5, [sp]
	str	r3, [sp, #0xc]
.L1f0de:
	ldr	r0, [sp]
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #8]
	add	r3, r0, r1
	lsl	r3, #1
	ldrh	r3, [r2, r3]
	mov	r10, r3
	ldr	r3, =0x22222222
	mov	r8, r3
	ldr	r3, =0x3ff
	mov	r1, r10
	ldr	r0, =0xcccccccc
	and	r1, r3
	mov	r2, r9
	mov	r12, r0
	mov	r10, r1
	cmp	r2, #7
	ble	.L1f10a
	ldr	r3, =0x88888888
	ldr	r0, =0xdddddddd
	mov	r8, r3
	b	.L1f134
.L1f10a:
	mov	r1, r9
	cmp	r1, #0
	blt	.L1f136
	lsl	r1, #2
	mov	r2, r8
	lsl	r2, r1
	mov	r8, r2
	ldr	r3, =0x88888888
	mov	r2, #0x20
	sub	r2, r1
	lsr	r3, r2
	mov	r0, r8
	orr	r0, r3
	mov	r3, r12
	lsl	r3, r1
	mov	r12, r3
	ldr	r3, =0xdddddddd
	mov	r8, r0
	lsr	r3, r2
	mov	r0, r12
	orr	r0, r3
.L1f134:
	mov	r12, r0
.L1f136:
	ldr	r2, =0x600001c
	mov	r1, #0
	mov	r14, r1
	mov	r11, r2
	mov	r7, #0
	b	.L1f190
.L1f142:
	mov	r3, r10
	lsl	r6, r3, #5
	mov	r0, r11
	sub	r3, r6, r7
	ldr	r4, [r3, r0]
	mov	r1, #0
	mov	r0, #0
	mov	r5, #0xf
.L1f152:
	mov	r2, r4
	and	r2, r5
	cmp	r2, #0xe
	bne	.L1f164
	lsl	r2, r1, #2
	mov	r3, r5
	lsl	r3, r2
	mov	r2, r8
	b	.L1f170
.L1f164:
	cmp	r2, #1
	bne	.L1f176
	lsl	r2, r1, #2
	mov	r3, r5
	lsl	r3, r2
	mov	r2, r12
.L1f170:
	and	r3, r2
	orr	r0, r3
	b	.L1f17c
.L1f176:
	lsl	r3, r1, #2
	lsl	r2, r3
	orr	r0, r2
.L1f17c:
	add	r1, #1
	lsr	r4, #4
	cmp	r1, #7
	ble	.L1f152
	sub	r3, r6, r7
	mov	r1, r11
	mov	r2, #1
	str	r0, [r3, r1]
	add	r7, #4
	add	r14, r2
.L1f190:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L1f19e
	mov	r0, r14
	cmp	r0, #2
	ble	.L1f142
	b	.L1f1a4
.L1f19e:
	mov	r1, r14
	cmp	r1, #0
	ble	.L1f142
.L1f1a4:
	ldr	r3, [sp, #0xc]
	ldr	r0, [sp, #0x10]
	mov	r2, #8
	neg	r2, r2
	sub	r3, #1
	add	r0, #1
	add	r9, r2
	str	r3, [sp, #0xc]
	str	r0, [sp, #0x10]
	cmp	r3, #0
	bge	.L1f0de
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801f088


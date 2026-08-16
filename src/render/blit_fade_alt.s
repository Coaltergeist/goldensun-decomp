	.include "macros.inc"

.arm_func_start BlitFadeAlt_Div4_ROM  @ 0x0800203c
	push	{r5, r6}
	add	r2, r0
	mov	r12, #0x3f00
	add	r12, #0x3f
	orr	r12, r12, lsl #16
.L2050:
	ldm	r0!, {r3, r4, r5, r6}
	stmia	r1!, {r3, r4, r5, r6}
	adds	r3, r3, lsl #1
	andne	r3, r12, r3, lsr #2
	strne	r3, [r0, #-0x10]
	adds	r4, r4, lsl #1
	andne	r4, r12, r4, lsr #2
	strne	r4, [r0, #-0xc]
	adds	r5, r5, lsl #1
	andne	r5, r12, r5, lsr #2
	strne	r5, [r0, #-8]
	adds	r6, r6, lsl #1
	andne	r6, r12, r6, lsr #2
	strne	r6, [r0, #-4]
	cmp	r0, r2
	bne	.L2050
	pop	{r5, r6}
	bx	lr
.func_end_emit_size BlitFadeAlt_Div4_ROM, _BLITFADE_ALT_DIV4_SIZE

.arm_func_start BlitFadeAlt_Div2_ROM  @ 0x08002098
	push	{r5, r6}
	add	r2, r0
	mov	r12, #0x3f00
	add	r12, #0x3f
	orr	r12, r12, lsl #16
.L20ac:
	ldm	r0!, {r3, r4, r5, r6}
	stmia	r1!, {r3, r4, r5, r6}
	cmp	r3, #0
	andne	r3, r12, r3, lsr #1
	strne	r3, [r0, #-0x10]
	cmp	r4, #0
	andne	r4, r12, r4, lsr #1
	strne	r4, [r0, #-0xc]
	cmp	r5, #0
	andne	r5, r12, r5, lsr #1
	strne	r5, [r0, #-8]
	cmp	r6, #0
	andne	r6, r12, r6, lsr #1
	strne	r6, [r0, #-4]
	cmp	r0, r2
	bne	.L20ac
	pop	{r5, r6}
	bx	lr
.func_end_emit_size BlitFadeAlt_Div2_ROM, _BLITFADE_ALT_DIV2_SIZE

.arm_func_start BlitFadeAlt_Sub_ROM  @ 0x080020f4
	rsb	r12, r1, #0x80000000
	add	r12, #0x800000
	add	r12, #0x8000
	add	r12, #0x80
	mov	r1, #0x100
	add	r1, #1
	orr	r1, r1, lsl #16
	push	{r5, r6, r7, r8, lr}
	add	r14, r0, r3
.L2118:
	ldm	r0!, {r4, r5, r6, r7}
	stmia	r2!, {r4, r5, r6, r7}
	cmp	r4, #0
	bne	.L214c
	cmp	r5, #0
	bne	.L2168
	cmp	r6, #0
	bne	.L2184
	cmp	r7, #0
	bne	.L21a0
	cmp	r0, lr
	bne	.L2118
	b	.L21bc
.L214c:
	add	r8, r4, r12
	and	r3, r1, r8, lsr #7
	rsb	r3, r3, lsl #7
	and	r3, r8, r3
	strne	r3, [r0, #-0x10]
	cmp	r5, #0
	beq	.L217c
.L2168:
	add	r8, r5, r12
	and	r3, r1, r8, lsr #7
	rsb	r3, r3, lsl #7
	and	r3, r8, r3
	strne	r3, [r0, #-0xc]
.L217c:
	cmp	r6, #0
	beq	.L2198
.L2184:
	add	r8, r6, r12
	and	r3, r1, r8, lsr #7
	rsb	r3, r3, lsl #7
	and	r3, r8, r3
	strne	r3, [r0, #-8]
.L2198:
	cmp	r7, #0
	beq	.L21b4
.L21a0:
	add	r8, r7, r12
	and	r3, r1, r8, lsr #7
	rsb	r3, r3, lsl #7
	and	r3, r8, r3
	strne	r3, [r0, #-4]
.L21b4:
	cmp	r0, lr
	bne	.L2118
.L21bc:
	pop	{r5, r6, r7, r8, r12}
	bx	r12
.func_end_emit_size BlitFadeAlt_Sub_ROM, _BLITFADE_ALT_SUB_SIZE

.arm_func_start BlitFadeAlt_Add_ROM  @ 0x080021c4
	push	{r5, r6, r7, r8, r9}
	mov	r8, #0x40
	orr	r8, r8, lsl #8
	orr	r8, r8, lsl #16
	sub	r12, r8, r8, lsr #6
	add	r3, r0, r3
.L21dc:
	ldm	r0!, {r4, r5, r6, r7}
	stmia	r2!, {r4, r5, r6, r7}
	cmp	r4, r12
	bne	.L2210
	cmp	r5, r12
	bne	.L2230
	cmp	r6, r12
	bne	.L2250
	cmp	r7, r12
	bne	.L2270
	cmp	r0, r3
	bne	.L21dc
	b	.L2290
.L2210:
	add	r4, r1
	and	r9, r4, r8
	bic	r4, r9
	sub	r9, r9, lsr #6
	orr	r4, r9
	str	r4, [r0, #-0x10]
	cmp	r5, r12
	beq	.L2248
.L2230:
	add	r5, r1
	and	r9, r5, r8
	bic	r5, r9
	sub	r9, r9, lsr #6
	orr	r5, r9
	str	r5, [r0, #-0xc]
.L2248:
	cmp	r6, r12
	beq	.L2268
.L2250:
	add	r6, r1
	and	r9, r6, r8
	bic	r6, r9
	sub	r9, r9, lsr #6
	orr	r6, r9
	str	r6, [r0, #-8]
.L2268:
	cmp	r7, r12
	beq	.L2288
.L2270:
	add	r7, r1
	and	r9, r7, r8
	bic	r7, r9
	sub	r9, r9, lsr #6
	orr	r7, r9
	str	r7, [r0, #-4]
.L2288:
	cmp	r0, r3
	bne	.L21dc
.L2290:
	pop	{r5, r6, r7, r8, r9}
	bx	lr
.func_end_emit_size BlitFadeAlt_Add_ROM, _BLITFADE_ALT_ADD_SIZE


	.include "macros.inc"

.arm_func_start BlitFade_Div4_ROM  @ 0x08001ea8
	push	{r5, r6}
	add	r2, r0
	mov	r12, #0x3f00
	add	r12, #0x3f
	orr	r12, r12, lsl #16
.L1ebc:
	ldm	r0, {r3, r4, r5, r6}
	stmia	r1!, {r3, r4, r5, r6}
	adds	r3, r3, lsl #1
	andne	r3, r12, r3, lsr #2
	adds	r4, r4, lsl #1
	andne	r4, r12, r4, lsr #2
	adds	r5, r5, lsl #1
	andne	r5, r12, r5, lsr #2
	adds	r6, r6, lsl #1
	andne	r6, r12, r6, lsr #2
	stmia	r0!, {r3, r4, r5, r6}
	cmp	r0, r2
	bne	.L1ebc
	pop	{r5, r6}
	bx	lr
.func_end_emit_size BlitFade_Div4_ROM, _BLITFADE_DIV4_SIZE

.arm_func_start BlitFade_Div2_ROM  @ 0x08001ef8
	push	{r5, r6}
	add	r2, r0
	mov	r12, #0x3f00
	add	r12, #0x3f
	orr	r12, r12, lsl #16
.L1f0c:
	ldm	r0, {r3, r4, r5, r6}
	stmia	r1!, {r3, r4, r5, r6}
	and	r3, r12, r3, lsr #1
	and	r4, r12, r4, lsr #1
	and	r5, r12, r5, lsr #1
	and	r6, r12, r6, lsr #1
	stmia	r0!, {r3, r4, r5, r6}
	cmp	r0, r2
	bne	.L1f0c
	pop	{r5, r6}
	bx	lr
.func_end_emit_size BlitFade_Div2_ROM, _BLITFADE_DIV2_SIZE

.arm_func_start BlitFade_Sub_ROM  @ 0x08001f38
	rsb	r12, r1, #0x80000000
	add	r12, #0x800000
	add	r12, #0x8000
	add	r12, #0x80
	mov	r1, #0x100
	add	r1, #1
	orr	r1, r1, lsl #16
	push	{r5, r6, r7, r8, lr}
	add	r14, r0, r3
.L1f5c:
	ldm	r0, {r4, r5, r6, r7}
	stmia	r2!, {r4, r5, r6, r7}
	add	r8, r4, r12
	and	r3, r1, r8, lsr #7
	rsb	r3, r3, lsl #7
	and	r4, r8, r3
	add	r8, r5, r12
	and	r3, r1, r8, lsr #7
	rsb	r3, r3, lsl #7
	and	r5, r8, r3
	add	r8, r6, r12
	and	r3, r1, r8, lsr #7
	rsb	r3, r3, lsl #7
	and	r6, r8, r3
	add	r8, r7, r12
	and	r3, r1, r8, lsr #7
	rsb	r3, r3, lsl #7
	and	r7, r8, r3
	stmia	r0!, {r4, r5, r6, r7}
	cmp	r0, r14
	bne	.L1f5c
	pop	{r5, r6, r7, r8, r12}
	bx	r12
.func_end_emit_size BlitFade_Sub_ROM, _BLITFADE_SUB_SIZE

.arm_func_start BlitFade_Add_ROM  @ 0x08001fb8
	push	{r5, r6, r7, r8, r9}
	mov	r8, #0x40
	orr	r8, r8, lsl #8
	orr	r8, r8, lsl #16
	sub	r12, r8, r8, lsr #6
	add	r3, r0, r3
.L1fd0:
	ldm	r0, {r4, r5, r6, r7}
	stmia	r2!, {r4, r5, r6, r7}
	add	r4, r1
	and	r9, r4, r8
	bic	r4, r9
	sub	r9, r9, lsr #6
	orr	r4, r9
	add	r5, r1
	and	r9, r5, r8
	bic	r5, r9
	sub	r9, r9, lsr #6
	orr	r5, r9
	add	r6, r1
	and	r9, r6, r8
	bic	r6, r9
	sub	r9, r9, lsr #6
	orr	r6, r9
	add	r7, r1
	and	r9, r7, r8
	bic	r7, r9
	sub	r9, r9, lsr #6
	orr	r7, r9
	stmia	r0!, {r4, r5, r6, r7}
	cmp	r0, r3
	bne	.L1fd0
	pop	{r5, r6, r7, r8, r9}
	bx	lr
.func_end_emit_size BlitFade_Add_ROM, _BLITFADE_ADD_SIZE


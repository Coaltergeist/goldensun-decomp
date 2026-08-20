	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a6614  @ 0x080a6614
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =gState
	mov	r1, #0x88
	lsl	r1, #2
	add	r3, r2, r1
	ldrh	r3, [r3]
	sub	sp, #0x14
	mov	r5, r0
	cmp	r3, #0
	beq	.La664e
	add	r1, #2
	add	r3, r2, r1
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.La664e
	mov	r3, #8
	ldr	r0, =0xae4
	neg	r3, r3
	mov	r1, r5
	mov	r2, #0
	bl	_Func_801e7c0
	b	.La665c
.La664e:
	mov	r3, #8
	ldr	r0, =0xae0
	neg	r3, r3
	mov	r1, r5
	mov	r2, #0
	bl	_Func_801e7c0
.La665c:
	ldr	r3, =gState
	mov	r2, #0x88
	lsl	r2, #2
	add	r3, r2
	ldrh	r3, [r3]
	ldr	r0, =0x3ff
	and	r0, r3
	ldr	r3, =0x333
	add	r0, r3
	add	r3, sp, #0x10
	mov	r1, #0xc
	mov	r2, #8
	add	r1, sp
	add	r2, sp
	mov	r10, r3
	add	r3, sp, #4
	mov	r9, r1
	mov	r11, r2
	str	r3, [sp]
	mov	r8, r3
	mov	r1, r10
	mov	r3, r11
	mov	r2, r9
	bl	_TextBox
	ldr	r3, [sp, #8]
	mov	r6, #1
	cmp	r3, #0xa
	bhi	.La6698
	mov	r6, #0
.La6698:
	ldr	r3, =gState
	mov	r1, #0x88
	lsl	r1, #2
	add	r7, r3, r1
	ldrh	r2, [r7]
	mov	r3, r2
	cmp	r3, #0
	beq	.La66d6
	ldr	r0, =0x3ff
	mov	r1, #4
	and	r0, r2
	bl	_Func_8019908
	ldr	r0, =0xae7
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	cmp	r6, #0
	bne	.La66e2
	ldrh	r0, [r7]
	lsr	r0, #10
	bl	_GetUnit
	mov	r1, r5
	mov	r2, #0x50
	mov	r3, #0
	bl	_Func_801e8b0
	b	.La66e2
.La66d6:
	ldr	r0, =0xae5
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
.La66e2:
	ldr	r3, =gState
	ldr	r2, =0x222
	add	r3, r2
	ldrh	r3, [r3]
	ldr	r0, =0x3ff
	and	r0, r3
	ldr	r3, =0x333
	add	r0, r3
	mov	r3, r8
	str	r3, [sp]
	mov	r1, r10
	mov	r3, r11
	mov	r2, r9
	bl	_TextBox
	ldr	r3, [sp, #8]
	mov	r6, #1
	cmp	r3, #0xa
	bhi	.La670a
	mov	r6, #0
.La670a:
	ldr	r3, =gState
	ldr	r1, =0x222
	add	r7, r3, r1
	ldrh	r2, [r7]
	mov	r3, r2
	cmp	r3, #0
	beq	.La674c
	ldr	r0, =0x3ff
	mov	r1, #4
	and	r0, r2
	bl	_Func_8019908
	ldr	r0, =0xae8
	mov	r1, r5
	mov	r2, #0
	mov	r3, #8
	bl	_Func_801e7c0
	cmp	r6, #0
	bne	.La6744
	ldrh	r0, [r7]
	lsr	r0, #10
	bl	_GetUnit
	mov	r1, r5
	mov	r2, #0x50
	mov	r3, #8
	bl	_Func_801e8b0
.La6744:
	mov	r0, #0xf
	bl	_SetTextColor
	b	.La6758
.La674c:
	ldr	r0, =0xae6
	mov	r1, r5
	mov	r2, #0
	mov	r3, #8
	bl	_Func_801e7c0
.La6758:
	mov	r0, #1
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a6614


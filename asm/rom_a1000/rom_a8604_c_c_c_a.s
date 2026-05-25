	.include "macros.inc"

.thumb_func_start Func_80a9e48
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	mov	r11, r0
	mov	r0, r7
	sub	sp, #4
	mov	r9, r2
	bl	_Func_8077394
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r1, r11
	str	r3, [sp]
	ldr	r2, =0x1ff
	lsl	r3, r1, #1
	mov	r5, r0
	add	r3, #0xd8
	mov	r10, r2
	mov	r8, r3
	ldrh	r3, [r5, r3]
	mov	r1, r10
	and	r1, r3
	mov	r10, r1
	mov	r0, r10
	bl	_Func_8078414
	mov	r6, r0
	ldrh	r3, [r6, #0x28]
	ldr	r0, =0x3fff
	mov	r2, r9
	and	r0, r3
	mov	r1, r7
	mov	r3, #1
	bl	Func_80a9f10
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.La9eee
	mov	r3, r8
	ldrh	r0, [r5, r3]
	bl	_Func_8078414
	mov	r6, r0
	ldrb	r2, [r6, #0xc]
	mov	r3, r2
	cmp	r3, #1
	bne	.La9ed6
	mov	r1, r11
	mov	r0, r7
	bl	_Func_80788c4
	mov	r3, #0xe4
	ldr	r2, [sp]
	lsl	r3, #1
	add	r1, r2, r3
	mov	r0, r5
	mov	r2, #0
	bl	Func_80a3ddc
	mov	r2, #0x86
	ldr	r1, [sp]
	lsl	r2, #2
	add	r3, r1, r2
	strb	r0, [r3]
	ldrb	r2, [r6, #0xc]
.La9ed6:
	mov	r3, r2
	cmp	r3, #4
	bne	.La9eec
	mov	r3, r10
	cmp	r3, #0xb8
	bne	.La9ee6
	mov	r1, #0xb9
	mov	r10, r1
.La9ee6:
	mov	r3, r10
	mov	r2, r8
	strh	r3, [r5, r2]
.La9eec:
	mov	r0, #0
.La9eee:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a9e48


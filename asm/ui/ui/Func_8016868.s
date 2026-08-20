	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8016868  @ 0x08016868
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e8c
	mov	r2, #0xc4
	ldr	r3, [r3]
	lsl	r2, #3
	add	r5, r3, r2
	mov	r3, #1
	mov	r7, #0
	mov	r8, r3
.L1687e:
	ldr	r2, [r5]
	cmp	r2, #0
	beq	.L168dc
	ldr	r3, [r2, #0x18]
	cmp	r3, #0
	bne	.L168dc
	ldrh	r3, [r2, #0x16]
	cmp	r3, #0
	bne	.L16894
	str	r3, [r5]
	b	.L168dc
.L16894:
	ldrh	r6, [r2, #0x12]
	cmp	r6, #0
	beq	.L168a2
	mov	r0, r5
	bl	Func_8019854
	b	.L168dc
.L168a2:
	mov	r0, r5
	bl	AdvanceMsgText
	cmp	r0, #8
	beq	.L168b2
	cmp	r0, #9
	beq	.L168b8
	b	.L168dc
.L168b2:
	ldr	r3, [r5]
	mov	r2, r8
	b	.L168da
.L168b8:
	ldr	r0, [r5]
	ldrh	r3, [r0, #0x16]
	mov	r1, #2
	and	r1, r3
	lsl	r1, #16
	lsr	r1, #16
	bl	CloseUIBox
	ldr	r3, [r5]
	mov	r2, r8
	strh	r6, [r5, #4]
	strh	r6, [r5, #6]
	strh	r6, [r5, #0x12]
	strh	r6, [r5, #0x14]
	strh	r6, [r5, #0x16]
	strh	r6, [r5, #0x18]
	strh	r6, [r5, #0x1a]
.L168da:
	strh	r2, [r3, #0x14]
.L168dc:
	add	r7, #1
	add	r5, #0x28
	cmp	r7, #3
	bne	.L1687e
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8016868


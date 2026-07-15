	.include "macros.inc"

.thumb_func_start OvlFunc_928_2008408
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r11, r1
	mov	r1, #0
	str	r2, [sp, #4]
	mov	r5, r0
	str	r1, [sp]
	mov	r2, #0x5b
	add	r2, r5
	mov	r6, r3
	ldrb	r3, [r2]
	mov	r10, r2
	cmp	r3, #1
	bne	.L448
	mov	r3, #0x64
	add	r3, r5
	mov	r9, r3
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L44e
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r0, #1
	b	.L4ea
.L448:
	mov	r2, #0x64
	add	r2, r5
	mov	r9, r2
.L44e:
	mov	r3, #8
	add	r3, r5
	mov	r7, r11
	mov	r8, r3
	add	r7, #8
	mov	r1, r8
	mov	r0, r7
	bl	OvlFunc_928_20083cc
	ldr	r1, [sp, #4]
	cmp	r0, r1
	blt	.L46a
	cmp	r6, #0
	beq	.L4d8
.L46a:
	mov	r2, r11
	ldr	r0, [r2, #0x10]
	ldr	r3, [r5, #0x10]
	mov	r2, r8
	sub	r0, r3
	ldr	r1, [r7]
	ldr	r3, [r2]
	sub	r1, r3
	bl	__atan2
	ldr	r3, =0xfffff000
	lsl	r0, #16
	mov	r2, #0x80
	lsr	r0, #16
	lsl	r2, #5
	add	r4, r0, r3
	add	r1, r0, r2
	mov	r3, #0xf0
	ldrh	r2, [r5, #6]
	lsl	r3, #8
	and	r4, r3
	and	r1, r3
	and	r0, r3
	and	r3, r2
	cmp	r0, r3
	beq	.L4bc
	cmp	r1, r3
	beq	.L4bc
	cmp	r4, r3
	beq	.L4bc
	cmp	r6, #0
	bne	.L4bc
	mov	r3, r10
	mov	r1, #2
	strb	r6, [r3]
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r1, r9
	strh	r6, [r1]
	b	.L4e8
.L4bc:
	mov	r3, #1
	mov	r2, r10
	strb	r3, [r2]
	mov	r1, #1
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r3, #1
	str	r3, [sp]
	mov	r1, sp
	ldrh	r1, [r1]
	mov	r2, r9
	strh	r1, [r2]
	b	.L4e8
.L4d8:
	mov	r2, r10
	strb	r6, [r2]
	mov	r0, r5
	mov	r1, #2
	bl	__Actor_SetAnim
	mov	r3, r9
	strh	r6, [r3]
.L4e8:
	ldr	r0, [sp]
.L4ea:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_928_2008408

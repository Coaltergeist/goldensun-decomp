	.include "macros.inc"

.thumb_func_start OvlFunc_901_2008350
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r8, r1
	mov	r7, r8
	mov	r5, r6
	add	r7, #8
	add	r5, #8
	mov	r10, r2
	mov	r0, r7
	mov	r2, #0
	mov	r1, r5
	mov	r11, r3
	mov	r9, r2
	bl	OvlFunc_901_2008314
	cmp	r0, r10
	blt	.L384
	mov	r3, r11
	cmp	r3, #0
	beq	.L3da
.L384:
	mov	r2, r8
	ldr	r0, [r2, #0x10]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r7]
	sub	r0, r3
	ldr	r3, [r5]
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
	ldrh	r2, [r6, #6]
	lsl	r3, #8
	and	r4, r3
	and	r1, r3
	and	r0, r3
	and	r3, r2
	cmp	r0, r3
	beq	.L3c4
	cmp	r1, r3
	beq	.L3c4
	cmp	r4, r3
	beq	.L3c4
	mov	r3, r11
	cmp	r3, #0
	beq	.L3ea
.L3c4:
	mov	r2, r6
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r2, #1
	mov	r9, r2
	b	.L3ea
.L3da:
	mov	r3, r6
	add	r3, #0x5b
	mov	r2, r9
	strb	r2, [r3]
	mov	r0, r6
	mov	r1, #2
	bl	__Actor_SetAnim
.L3ea:
	mov	r0, r9
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_901_2008350

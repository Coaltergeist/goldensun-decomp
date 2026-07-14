	.include "macros.inc"

.thumb_func_start Func_800bf34  @ 0x0800bf34
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	str	r0, [sp]
	mov	r11, r1
	mov	r7, #0
.Lbf4a:
	mov	r3, r11
	cmp	r3, #0
	ble	.Lbf86
	add	r3, r7, #1
	mov	r9, r3
	add	r3, r7, #2
	mov	r10, r3
	ldr	r5, [sp]
	add	r3, r7, #3
	mov	r8, r3
	mov	r6, r11
.Lbf60:
	ldr	r0, [r5]
	mov	r1, r7
	bl	Func_800be70
	ldr	r0, [r5]
	mov	r1, r9
	bl	Func_800be70
	ldr	r0, [r5]
	mov	r1, r10
	bl	Func_800be70
	sub	r6, #1
	ldmia	r5!, {r0}
	mov	r1, r8
	bl	Func_800be70
	cmp	r6, #0
	bne	.Lbf60
.Lbf86:
	mov	r0, #1
	add	r7, #4
	bl	WaitFrames
	cmp	r7, #0x7f
	bls	.Lbf4a
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_800bf34


	.section .rodata
	.global .L1314c

.L1314c:
	.incrom 0x1314c, 0x13190

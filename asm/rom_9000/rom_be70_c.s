	.include "macros.inc"

.thumb_func_start Func_800bf34
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

.thumb_func_start Func_800bfa4
	push	{r5, lr}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	add	r3, #0xe4
	ldr	r4, =0xffff0000
	mov	r5, r1
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r0, #8]
	and	r1, r4
	sub	r1, r3, r1
	ldr	r3, [r0, #0x10]
	ldr	r0, =0x1fffff
	and	r2, r4
	sub	r2, r3, r2
	add	r3, r1, r0
	ldr	r0, =0x12ffffe
	cmp	r3, r0
	bhi	.Lbfe2
	cmp	r2, #0
	ble	.Lbfe2
	mov	r3, #0xe0
	lsl	r3, #16
	cmp	r2, r3
	bge	.Lbfe2
	asr	r3, r1, #16
	stmia	r5!, {r3}
	asr	r3, r2, #16
	str	r3, [r5]
	mov	r0, #0
	b	.Lbfec
.Lbfe2:
	mov	r3, #0
	stmia	r5!, {r3}
	mov	r0, #1
	str	r3, [r5]
	neg	r0, r0
.Lbfec:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_800bfa4

	.section .rodata
	.global .L1314c

.L1314c:
	.incrom 0x1314c, 0x13190

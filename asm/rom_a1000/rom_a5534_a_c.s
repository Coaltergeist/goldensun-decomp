	.include "macros.inc"

	.section .text.after_a5578, "ax", %progbits

.thumb_func_start Func_80a5614  @ 0x080a5614
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r8, r2
	ldr	r3, =iwram_3001f2c
	ldr	r2, [r2, #8]
	mov	r1, r8
	ldr	r7, [r3]
	lsl	r3, r2, #2
	add	r3, r2
	ldr	r2, [r1, #0x10]
	add	r3, r2
	str	r3, [r1, #0x18]
	ldr	r0, [r7, #0x2c]
	sub	sp, #8
	bl	_Func_8016498
	mov	r0, #1
	bl	WaitFrames
	mov	r2, r8
	ldr	r3, [r2, #0x18]
	mov	r1, #0xe4
	lsl	r3, #1
	lsl	r1, #1
	add	r3, r1
	ldrh	r2, [r7, r3]
	mov	r3, r2
	cmp	r3, #0
	beq	.La5664
	ldr	r0, =0x1ff
	ldr	r3, =0x75
	and	r0, r2
	add	r0, r3
	ldr	r1, [r7, #0x2c]
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
.La5664:
	mov	r2, #1
	mov	r6, #0
	mov	r10, r2
	mov	r5, #1
.La566c:
	mov	r1, r8
	ldr	r3, [r1, #0x10]
	cmp	r6, r3
	bne	.La5688
	mov	r2, r10
	ldr	r0, [r7, #0x20]
	mov	r3, #0xe
	str	r2, [sp]
	mov	r1, #1
	mov	r2, r5
	str	r3, [sp, #4]
	bl	Func_80a2268
	b	.La569c
.La5688:
	mov	r3, r10
	ldr	r0, [r7, #0x20]
	str	r3, [sp]
	mov	r3, #0xf
	str	r3, [sp, #4]
	mov	r1, #1
	mov	r2, r5
	mov	r3, #0xe
	bl	Func_80a2268
.La569c:
	add	r6, #1
	add	r5, #2
	cmp	r6, #4
	ble	.La566c
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #1
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a5614

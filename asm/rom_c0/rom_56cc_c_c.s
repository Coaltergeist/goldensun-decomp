	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8005c68
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f1c
	mov	r2, #0x82
	ldr	r3, [r3]
	lsl	r2, #5
	sub	sp, #4
	add	r5, r3, r2
	mov	r6, #0
	mov	r3, #0
	mov	r8, r3
	mov	r7, sp
	mov	r10, r6
.L5c86:
	mov	r2, r10
	str	r2, [r7]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r7
	mov	r1, r5
	ldr	r2, =0x85000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r6
	bl	Func_8005b24
	cmp	r0, #0xf
	bhi	.L5cb2
	lsl	r0, #16
	mov	r3, #0x40
	lsr	r0, #16
	mov	r1, #0
	mov	r2, r5
	bl	Func_8006ba8
	mov	r3, #1
	add	r8, r3
.L5cb2:
	add	r0, r6, #3
	bl	Func_8005b24
	cmp	r0, #0xf
	bhi	.L5cd0
	lsl	r0, #16
	mov	r2, r5
	mov	r1, #0x88
	lsr	r0, #16
	add	r2, #0x38
	lsl	r1, #1
	mov	r3, #4
	bl	Func_8006ba8
	b	.L5cd4
.L5cd0:
	mov	r2, r10
	str	r2, [r5, #0x38]
.L5cd4:
	add	r6, #1
	add	r5, #0x40
	cmp	r6, #2
	bls	.L5c86
	mov	r0, r8
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8005c68

	.section .rodata
	.global .L79b0
	.global .L79b8

.L79b0:
	.incrom 0x79b0, 0x79b8
.L79b8:
	.incrom 0x79b8, 0x7a0c

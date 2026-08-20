	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start DrawSmallText  @ 0x0801e74c
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	mov	r11, r3
	ldr	r3, =iwram_3001e8c
	mov	r9, r2
	ldr	r5, [r3]
	ldr	r2, =0x12b2
	mov	r3, #0
	mov	r8, r3
	add	r6, r5, r2
	mov	r2, r8
	mov	r10, r1
	strh	r2, [r6]
	mov	r1, #1
	bl	BufferString
	ldrh	r3, [r6]
	mov	r1, #0xeb
	lsl	r1, #4
	lsl	r3, #1
	add	r3, r1
	mov	r2, r8
	strh	r2, [r5, r3]
	ldrh	r3, [r6]
	ldr	r2, .L1e7a0	@ 0x1ff
	add	r3, #1
	and	r3, r2
	add	r5, r1
	strh	r3, [r6]
	mov	r0, r5
	mov	r1, r10
	mov	r2, r9
	mov	r3, r11
	bl	Func_8017aa4
	b	.L1e7ac

	.align	2, 0
.L1e7a0:
	.word	0x1ff
	.pool

.L1e7ac:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end DrawSmallText


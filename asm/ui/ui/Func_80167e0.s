	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80167e0  @ 0x080167e0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r6, =0x6002520
	lsl	r1, r3, #1
	lsl	r3, #3
	mov	r8, r3
	add	r5, r3, r6
	ldr	r3, =0x6002500
	sub	sp, #8
	str	r3, [sp]
	mov	r3, #0x20
	mov	r2, #0x18
	mov	r4, #0x84
	sub	r3, r1
	sub	r2, r1
	lsl	r4, #24
	lsl	r3, #2
	mov	r9, r2
	mov	r11, r4
	mov	r10, r3
	mov	r7, #0x1d
.L16818:
	mov	r2, r9
	mov	r4, r11
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	mov	r1, r6
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, [sp]
	ldr	r3, =Func_80008d8
	add	r0, r10
	mov	r1, r8
	mov	r2, #0
	bl	_call_via_r3
	ldr	r3, [sp]
	sub	r7, #1
	add	r3, #0x80
	add	r6, #0x80
	add	r5, #0x80
	str	r3, [sp]
	cmp	r7, #0
	bge	.L16818
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80167e0


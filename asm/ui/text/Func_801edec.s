	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801edec  @ 0x0801edec
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e8c
	ldr	r7, [r3]
	sub	sp, #4
	mov	r8, r0
	cmp	r7, #0
	bne	.L1ee24
	mov	r0, sp
	ldr	r3, .L1ee14	@ 0xe0e0
	add	r0, #2
	strh	r3, [r0]
	mov	r1, r8
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x810000a0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	b	.L1ee4e

	.align	2, 0
.L1ee14:
	.word	0xe0e0
	.pool

.L1ee24:
	ldr	r5, =0x214
	mov	r0, r5
	bl	alloc_iwram
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_80158e8
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r8
	mov	r1, r7
	bl	_call_via_r6
	mov	r0, r6
	bl	free
.L1ee4e:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801edec


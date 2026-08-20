	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80907b0  @ 0x080907b0
	push	{r5, lr}
	ldr	r3, =iwram_3001ecc
	sub	sp, #4
	ldr	r5, [r3]
	ldr	r3, =0xf000f000
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	ldr	r1, =0x6002000
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000140
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #1
	neg	r2, r2
	cmp	r4, r2
	beq	.L90802
	mov	r1, #0
	mov	r3, #7
.L907d6:
	lsl	r1, #4
	sub	r3, #1
	orr	r1, r4
	cmp	r3, #0
	bge	.L907d6
	mov	r3, #0xa1
	lsl	r3, #3
	add	r2, r5, r3
	mov	r3, #7
.L907e8:
	sub	r3, #1
	stmia	r2!, {r1}
	cmp	r3, #0
	bge	.L907e8
	mov	r2, #0xa1
	lsl	r2, #3
	mov	r1, #0xc0
	add	r0, r5, r2
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.L90802:
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80907b0


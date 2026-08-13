	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8012388  @ 0x08012388
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r6, =ewram_201c000
	mov	r8, r0
	mov	r10, r1
	ldr	r5, =0x27c
	mov	r0, #0x31
	mov	r1, r5
	bl	galloc_iwram
	mov	r2, #0x84
	lsr	r5, #2
	lsl	r2, #24
	mov	r1, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_8009e7c
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =gPtrs
	mov	r1, #0x80
	lsl	r1, #5
	add	r6, r1
	add	r3, #0xc4
	ldr	r4, [r3]
	ldr	r2, =ewram_203c000
	mov	r0, r8
	mov	r1, r10
	mov	r3, r6
	bl	_call_via_r4
	mov	r0, #0x31
	bl	gfree
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8012388

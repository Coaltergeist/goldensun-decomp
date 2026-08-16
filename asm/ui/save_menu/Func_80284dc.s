	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80284dc  @ 0x080284dc
	push	{r5, lr}
	mov	r1, #0x98
	mov	r0, #0x3a
	sub	sp, #4
	bl	galloc_ewram
	mov	r3, #0
	mov	r5, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000026
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r1, =0xc76
	ldr	r0, =Func_8028194
	bl	StartTask
	mov	r0, r5
	add	sp, #4
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80284dc

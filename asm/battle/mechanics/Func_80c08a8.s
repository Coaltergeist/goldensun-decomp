	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c08a8  @ 0x080c08a8
	push	{r5, lr}
	mov	r1, #0xa8
	lsl	r1, #2
	mov	r0, #0xa
	sub	sp, #4
	bl	galloc_ewram
	ldr	r3, =iwram_3001f00
	mov	r1, r0
	mov	r4, #0
	mov	r0, sp
	ldr	r5, [r3]
	str	r4, [r0]
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x850000a8
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	str	r4, [r5, #8]
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80c08a8

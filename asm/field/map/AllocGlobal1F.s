	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AllocGlobal1F  @ 0x0808fecc
	push	{lr}
	mov	r1, #0xa8
	lsl	r1, #3
	mov	r0, #0x1f
	sub	sp, #4
	bl	galloc_ewram
	mov	r3, #0
	mov	r4, r0
	mov	r0, sp
	str	r3, [r0]
	mov	r1, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000150
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r4
	add	sp, #4
	pop	{r1}
	bx	r1
.func_end AllocGlobal1F


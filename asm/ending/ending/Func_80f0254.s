	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f0254  @ 0x080f0254
	push	{r5, lr}
	sub	sp, #4
	cmp	r0, #0
	bne	.Lf0268
	mov	r1, #0xc0
	mov	r5, #0xa0
	ldr	r3, =0x1010101
	lsl	r1, #19
	lsl	r5, #19
	b	.Lf026e
.Lf0268:
	ldr	r3, =0x81818181
	ldr	r1, =0x6008000
	ldr	r5, =0x5000100
.Lf026e:
	mov	r4, sp
	str	r3, [r4]
	mov	r0, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85001e00
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, #0
	str	r3, [r4]
	mov	r0, r4
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	sp, #4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80f0254


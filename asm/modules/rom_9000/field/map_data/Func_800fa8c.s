	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800fa8c  @ 0x0800fa8c
	push	{r5, r6, lr}
	mov	r4, #0x80
	mov	r0, #1
	ldr	r5, =gBuffer
	ldr	r6, =0xfff
	lsl	r4, #7
	neg	r0, r0
.Lfa9a:
	ldmia	r5!, {r1}
	mov	r2, r1
	and	r2, r6
	cmp	r2, r6
	bne	.Lfab2
	cmp	r0, r2
	beq	.Lfaaa
	add	r0, #1
.Lfaaa:
	add	r3, r1, r0
	sub	r1, r3, r2
	sub	r3, r5, #4
	str	r1, [r3]
.Lfab2:
	sub	r4, #1
	cmp	r4, #0
	bne	.Lfa9a
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_800fa8c

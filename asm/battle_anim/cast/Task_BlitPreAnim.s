	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Task_BlitPreAnim  @ 0x080c1438
	push	{lr}
	ldr	r3, =gPtrs
	mov	r2, r3
	add	r2, #0xa0
	ldr	r0, [r2]
	add	r3, #0x9c
	ldr	r3, [r3]
	cmp	r0, #0
	beq	.Lc1464
	mov	r1, #0x9e
	lsl	r1, #5
	add	r2, r3, r1
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.Lc1464
	mov	r3, #0
	str	r3, [r2]
	mov	r2, #0x80
	ldr	r1, =0x6004000
	lsl	r2, #7
	bl	BlitFade_Div4
.Lc1464:
	pop	{r1}
	bx	r1
.func_end Task_BlitPreAnim


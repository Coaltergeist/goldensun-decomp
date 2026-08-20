	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80958a8  @ 0x080958a8
	push	{lr}
	mov	r1, #0xe4
	lsl	r1, #3
	mov	r0, #0x38
	sub	sp, #4
	bl	galloc_iwram
	mov	r3, #0
	mov	r1, r0
	mov	r0, sp
	str	r3, [r0]
	ldr	r2, =0x850001c8
	ldr	r3, =REG_DMA3SAD
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_8095884
	bl	StartTask
	add	sp, #4
	pop	{r0}
	bx	r0
.func_end Func_80958a8


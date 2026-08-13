	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800d304  @ 0x0800d304
	push	{r5, r6, lr}
	ldr	r5, =0x4e8
	mov	r0, r5
	bl	alloc_iwram
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_800a494
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bl	_call_via_r6
	mov	r0, r6
	bl	free
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_800d304

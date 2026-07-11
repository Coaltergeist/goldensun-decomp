	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8003e10  @ 0x08003e10
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r8, r0
	ldr	r5, =0xe0
	mov	r0, r5
	bl	Func_8004938
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_8001dc8
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r8
	bl	_call_via_r6
	mov	r0, r6
	bl	free
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8003e10

	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start UnpackTilemap  @ 0x0800fac8
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r5, #0x80
	lsl	r5, #8
	mov	r0, r5
	bl	alloc_ewram
	ldr	r3, =Func_8001af8
	ldr	r1, =gBuffer
	mov	r2, r5
	mov	r8, r0
	bl	_call_via_r3
	ldr	r5, =0x9c
	mov	r0, r5
	bl	alloc_iwram
	mov	r2, #0x84
	mov	r6, r0
	lsr	r5, #2
	lsl	r2, #24
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =Func_800a37c
	mov	r1, r6
	orr	r2, r5
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =ewram_2018000
	ldr	r1, =gBuffer
	mov	r2, r8
	bl	_call_via_r6
	mov	r0, r6
	bl	free
	mov	r0, r8
	bl	free
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end UnpackTilemap

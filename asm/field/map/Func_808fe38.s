	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808fe38  @ 0x0808fe38
	push	{r5, r6, lr}
	mov	r1, #0xa8
	mov	r6, r0
	lsl	r1, #3
	mov	r0, #0x1f
	sub	sp, #4
	bl	galloc_ewram
	mov	r5, #0
	mov	r4, r0
	mov	r0, sp
	str	r5, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r4
	ldr	r2, =0x85000150
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0xa5
	lsl	r2, #3
	add	r3, r4, r2
	add	r2, #2
	strh	r6, [r3]
	add	r3, r4, r2
	strh	r5, [r3]
	ldr	r3, =0x534
	add	r2, r4, r3
	ldr	r3, =0x3f3f
	strh	r3, [r2]
	ldr	r2, =0x536
	mov	r3, #1
	add	r4, r2
	mov	r1, #0xc8
	strh	r3, [r4]
	lsl	r1, #4
	ldr	r0, =Task_ScreenWindowTransition
	bl	StartTask
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_808f498
	bl	StartTask
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_808fe38


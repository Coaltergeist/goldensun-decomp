	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_2009680
	push	{lr}
	mov	r1, #1
	mov	r2, #0xd9
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x15ec0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6cc0000
	mov	r3, #1
	ldr	r0, =0x15e40000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6c40000
	mov	r3, #1
	ldr	r0, =0x15ec0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6cc0000
	mov	r3, #1
	ldr	r0, =0x15ec0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6c40000
	mov	r3, #1
	ldr	r0, =0x15e40000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	mov	r2, #0xd9
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x15e80000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	mov	r2, #0xd9
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x15ea0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6ca0000
	mov	r3, #1
	ldr	r0, =0x15e60000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6c60000
	mov	r3, #1
	ldr	r0, =0x15ea0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6ca0000
	mov	r3, #1
	ldr	r0, =0x15ea0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6c60000
	mov	r3, #1
	ldr	r0, =0x15e60000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	mov	r2, #0xd9
	ldr	r0, =0x15e80000
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2009680


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200955c
	push	{lr}
	mov	r1, #1
	mov	r2, #0xdf
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x160c0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6fc0000
	mov	r3, #1
	ldr	r0, =0x16040000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6f40000
	mov	r3, #1
	ldr	r0, =0x160c0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6fc0000
	mov	r3, #1
	ldr	r0, =0x160c0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6f40000
	mov	r3, #1
	ldr	r0, =0x16040000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	mov	r2, #0xdf
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x16080000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	mov	r2, #0xdf
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	ldr	r0, =0x160a0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6fa0000
	mov	r3, #1
	ldr	r0, =0x16060000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6f60000
	mov	r3, #1
	ldr	r0, =0x160a0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6fa0000
	mov	r3, #1
	ldr	r0, =0x160a0000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x6f60000
	mov	r3, #1
	ldr	r0, =0x16060000
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #1
	mov	r2, #0xdf
	ldr	r0, =0x16080000
	neg	r1, r1
	lsl	r2, #19
	mov	r3, #1
	bl	__Func_80933f8
	mov	r0, #4
	bl	__WaitFrames
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200955c


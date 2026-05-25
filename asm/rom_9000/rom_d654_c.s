	.include "macros.inc"

.thumb_func_start Func_800d8f4
	ldrh	r3, [r0, #4]
	add	r3, #2
	strh	r3, [r0, #4]
	mov	r0, #1
	bx	lr
.func_end Func_800d8f4

.thumb_func_start Func_800d900
	push	{r5, lr}
	mov	r5, r0
	mov	r2, #4
	ldrsh	r3, [r5, r2]
	ldr	r2, [r5]
	lsl	r3, #2
	add	r3, r2
	ldr	r0, [r3, #4]
	bl	_Func_80f9080
	ldrh	r3, [r5, #4]
	add	r3, #2
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_800d900

	.section .rodata
	.global .L13240

.L13240:
	.incrom 0x13240, 0x13254

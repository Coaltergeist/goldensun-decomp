	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_897_200ac1c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r8, r1
	mov	r6, r0
	bl	__Func_8093554
	mov	r3, r8
	lsl	r3, #16
	mov	r8, r3
	lsl	r6, #16
	mov	r1, #1
	mov	r2, r8
	mov	r5, r0
	mov	r3, #1
	mov	r0, r6
	neg	r1, r1
	bl	__Func_80933f8
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r3, r8
	str	r3, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x40]
	mov	r3, #0
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x2c]
	mov	r0, #5
	str	r6, [r5, #8]
	bl	__WaitFrames
	bl	__Func_800fe9c
	mov	r0, #5
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x1e
	bl	__WaitFrames
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200ac1c


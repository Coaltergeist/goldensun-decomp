	.include "macros.inc"
.thumb_func_start OvlFunc_941_2008384
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r3, #0x3b
	str	r3, [sp, #4]
	mov	r5, #0x15
	mov	r1, #0x57
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x29
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__WaitFrames
	mov	r3, #0x18
	mov	r10, r3
	mov	r3, #0x3e
	mov	r9, r3
	mov	r3, r10
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #2
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_80105d4
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r8, r3
	mov	r0, #2
	mov	r1, #0x5e
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r6, #0x3a
	mov	r1, #0x57
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x2b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__WaitFrames
	mov	r3, r10
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #3
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_80105d4
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #1
	mov	r1, #0x5e
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r0, #0x29
	mov	r1, #0x57
	mov	r2, #2
	mov	r3, #5
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0xb
	mov	r2, #2
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_2008384

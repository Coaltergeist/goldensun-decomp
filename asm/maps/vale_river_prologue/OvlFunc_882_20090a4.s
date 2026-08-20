	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_20090a4
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #8
	mov	r2, #0xf
	str	r2, [sp]
	mov	r10, r2
	mov	r5, #0x35
	mov	r0, #0x1d
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r6, #0xe
	mov	r0, #0x1d
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xd
	str	r3, [sp]
	mov	r8, r3
	mov	r0, #0x1d
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x34
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	mov	r2, r8
	str	r2, [sp]
	mov	r5, #0x36
	mov	r0, #0x19
	mov	r1, #0x15
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, r10
	str	r3, [sp]
	mov	r0, #0x19
	mov	r1, #0x15
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xe
	mov	r1, #0x35
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r2, r10
	mov	r3, #0x37
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0xd
	mov	r1, #0x37
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_20090a4


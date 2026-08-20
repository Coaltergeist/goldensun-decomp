	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_20092f0
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r3, #3
	str	r3, [sp]
	mov	r5, #0x2a
	mov	r0, #0x1d
	mov	r1, #0x16
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r6, #2
	mov	r0, #0x1d
	mov	r1, #0x15
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #4
	str	r3, [sp]
	mov	r0, #0x1d
	mov	r1, #0x15
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x2b
	str	r3, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x14
	mov	r2, #3
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_20092f0


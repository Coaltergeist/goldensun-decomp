	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_897_200ac9c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r3, #0xa
	str	r3, [sp]
	mov	r5, #0
	mov	r0, #0xe
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xb
	str	r3, [sp]
	mov	r0, #0xe
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xc
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xd
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r5, #0xe
	mov	r8, r3
	mov	r0, #0xd
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r6, #0x1c
	mov	r0, #0xd
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r5, #0x2c
	mov	r0, #0x2b
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #0x2b
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200ac9c


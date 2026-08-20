	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_939_2008fa0
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #7
	str	r3, [sp]
	mov	r5, #0xb
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #8
	str	r3, [sp]
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #9
	str	r3, [sp]
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	mov	r0, #6
	str	r5, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x241
	bl	__SetFlag
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008fa0


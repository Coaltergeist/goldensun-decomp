	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ab1f4  @ 0x080ab1f4
	push	{r5, r6, lr}
	mov	r4, r0
	ldrh	r0, [r4, #0xc]
	add	r0, r1
	ldrh	r1, [r4, #0xe]
	sub	sp, #4
	ldr	r5, [sp, #0x14]
	mov	r6, r3
	add	r1, r2
	add	r0, #1
	ldr	r3, [sp, #0x10]
	add	r1, #1
	mov	r2, r6
	str	r5, [sp]
	bl	_Func_8022768
	add	sp, #4
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80ab1f4


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_950_200809c
	push	{lr}
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	sub	r3, #0x39
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_950_200809c


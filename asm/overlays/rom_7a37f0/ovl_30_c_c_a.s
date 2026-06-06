	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_916_2008054
	push	{r5, lr}
	ldr	r5, =.L12c0
	ldr	r0, [r5]
	sub	sp, #8
	bl	OvlFunc_916_2008c2c
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #0x20
	mov	r3, #0x20
	mov	r0, #0
	mov	r1, #0x40
	bl	__Func_8010704
	mov	r1, #0xff
	ldr	r0, [r5]
	bl	OvlFunc_916_2008b3c
	bl	OvlFunc_916_2008150
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_916_2008054


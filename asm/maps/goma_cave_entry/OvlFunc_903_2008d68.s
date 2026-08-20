	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_903_2008d68
	push	{r5, lr}
	ldr	r3, =iwram_3001f30
	mov	r0, #0x4e
	mov	r1, #1
	ldr	r5, [r3]
	bl	__Func_8096fb0
	mov	r1, #0xf
	mov	r0, #2
	bl	__Func_80970f8
	ldr	r3, =0x71c
	add	r5, r3
	ldrb	r2, [r5]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r5]
	bl	__Func_809728c
	mov	r0, #1
	bl	__FieldMove
	bl	__Func_8097174
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_903_2008d68


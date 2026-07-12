	.include "macros.inc"

.thumb_func_start OvlFunc_884_20088ac
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L3eb4
	mov	r1, #0x33
	mov	r2, #0x27
	bl	__Func_8010560
	mov	r1, #0xb3
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x29e
	bl	__Func_809218c
	mov	r0, #7
	bl	OvlFunc_884_2008714
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20088ac


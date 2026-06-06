	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_970_200804c
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8091e9c
	mov	r2, #0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_200804c


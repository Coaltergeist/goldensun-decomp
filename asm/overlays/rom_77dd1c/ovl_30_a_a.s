	.include "macros.inc"

.thumb_func_start OvlFunc_882_2008030
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, r6
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r0, r3
	cmp	r3, #0
	bne	.L56
	bl	__Random
	strh	r0, [r6, #6]
	bl	__Random
	mov	r1, #0x14
	bl	_umodsi3_RAM
	add	r0, #0x14
	strh	r0, [r5]
.L56:
	sub	r3, r0, #1
	strh	r3, [r5]
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_882_2008030

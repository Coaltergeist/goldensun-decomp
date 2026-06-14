	.include "macros.inc"

.thumb_func_start OvlFunc_899_200c658
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	mov	r0, #0x8d
	mov	r1, #1
	bl	__Func_8096fb0
	mov	r0, r5
	mov	r1, r6
	bl	__Func_80970f8
	bl	__Func_809728c
	mov	r0, #1
	bl	__FieldMove
	mov	r0, #1
	bl	__WaitFrames
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200c658


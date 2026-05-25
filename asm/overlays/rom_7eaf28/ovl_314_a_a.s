	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_314
	push	{lr}
	mov	r0, #0xf
	mov	r1, #0x2d
	bl	__Func_91f14
	pop	{r0}
	bx	r0
.func_end OvlFunc_314

.thumb_func_start OvlFunc_324
	push	{r5, lr}
	mov	r1, #0
	mov	r5, r0
	bl	__Func_c528
	add	r5, #0x59
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_324


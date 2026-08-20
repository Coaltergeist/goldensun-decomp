	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_941_200833c
	push	{lr}
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm941_372
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm941_372
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_801776c
	mov	r0, #0x9d
	bl	__PlaySound
	bl	OvlFunc_941_2008210
	ldr	r0, =0x201
	bl	__SetFlag
	ldr	r0, =0x202
	bl	__ClearFlag
.Lm941_372:
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_200833c


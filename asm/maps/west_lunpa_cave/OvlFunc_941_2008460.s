	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_941_2008460
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm941_496
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm941_496
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_801776c
	mov	r0, #0x9d
	bl	__PlaySound
	bl	OvlFunc_941_2008384
	ldr	r0, =0x202
	bl	__SetFlag
	ldr	r0, =0x201
	bl	__ClearFlag
.Lm941_496:
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_2008460


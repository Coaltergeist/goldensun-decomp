	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_890_20081ec
	push	{lr}
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_21a
	mov	r1, #1
	ldr	r0, =0x202db1
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	ldr	r0, =0x202
	bl	__SetFlag
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x201
	bl	__ClearFlag
.Lm890_21a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_20081ec


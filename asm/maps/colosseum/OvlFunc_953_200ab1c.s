	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_953_200ab1c
	push	{lr}
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_8092950
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0x10
	mov	r1, #5
	bl	__Func_8092950
	mov	r0, #0x11
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x12
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0xd
	mov	r1, #0xa
	bl	__MapActor_SetAnimSpeed
	mov	r0, #0xe
	mov	r1, #0x14
	bl	__MapActor_SetAnimSpeed
	mov	r0, #0xf
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x10
	mov	r1, #0x28
	bl	__MapActor_SetAnimSpeed
	mov	r0, #0x11
	mov	r1, #0x32
	bl	__MapActor_SetAnimSpeed
	mov	r0, #0x12
	mov	r1, #0x3c
	bl	__MapActor_SetAnimSpeed
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200ab1c


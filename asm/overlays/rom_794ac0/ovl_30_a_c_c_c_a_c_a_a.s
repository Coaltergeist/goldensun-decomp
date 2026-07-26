	.include "macros.inc"

.thumb_func_start OvlFunc_899_20099a4
	push	{lr}
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0xb6
	mov	r2, #0xcc
	lsl	r1, #2
	mov	r0, #0
	lsl	r2, #1
	bl	__Func_809218c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, #0x7b
	bl	__PlaySound
	mov	r0, #0xf
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20099a4


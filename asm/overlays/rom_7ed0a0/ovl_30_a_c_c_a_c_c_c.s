	.include "macros.inc"

.thumb_func_start OvlFunc_964_2009938
	push	{lr}
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80924d4
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x201
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009938


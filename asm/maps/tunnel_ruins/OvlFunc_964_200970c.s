	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_964_200970c
	push	{lr}
	mov	r0, #0x14
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #2
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_200970c


	.include "macros.inc"

.thumb_func_start OvlFunc_882_200c56c
	push	{lr}
	mov	r0, #0x20
	bl	__MapActor_GetActor
	bl	OvlFunc_882_200c304
	mov	r0, #0x21
	bl	__MapActor_GetActor
	bl	OvlFunc_882_200c304
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	bl	OvlFunc_882_200c304
	ldr	r3, =.L57f8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L459e
	mov	r0, #0x1d
	bl	__MapActor_GetActor
	bl	OvlFunc_882_200c304
.L459e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200c56c


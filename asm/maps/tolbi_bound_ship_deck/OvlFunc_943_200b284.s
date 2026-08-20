	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200b284
	push	{r5, r6, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #8
	bl	OvlFunc_943_200b380
	mov	r0, #9
	bl	OvlFunc_943_200b380
	mov	r0, #0xa
	bl	OvlFunc_943_200b380
	mov	r0, #0xb
	bl	OvlFunc_943_200b380
	mov	r0, #0xc
	bl	OvlFunc_943_200b380
	mov	r0, #0xd
	bl	OvlFunc_943_200b380
	mov	r0, #0xe
	bl	OvlFunc_943_200b380
	mov	r0, #0xf
	bl	OvlFunc_943_200b380
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r6, =.Lm943_5b90
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd
	str	r3, [r6]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xe
	str	r3, [r6, #4]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xf
	str	r3, [r6, #8]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x10
	str	r3, [r6, #0xc]
	bl	OvlFunc_943_200b380
	mov	r0, #0x11
	bl	OvlFunc_943_200b380
	mov	r0, #0x12
	bl	OvlFunc_943_200b380
	mov	r0, #0x13
	bl	OvlFunc_943_200b380
	mov	r0, #0x10
	bl	__MapActor_GetActor
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #0x10
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x11
	str	r3, [r6, #0x10]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x12
	str	r3, [r6, #0x14]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	str	r3, [r6, #0x18]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	str	r3, [r6, #0x1c]
	bl	OvlFunc_943_200b3b8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200b284


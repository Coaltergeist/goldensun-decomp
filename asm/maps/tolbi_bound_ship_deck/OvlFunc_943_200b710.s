	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200b710
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r1, =0xc000
	ldr	r3, =.Lm943_5b40
	mov	r2, #0
	b	.Lm943_3728

	.pool_aligned

.Lm943_3728:
	add	r2, #1
	strh	r1, [r3]
	add	r3, #2
	cmp	r2, #7
	bls	.Lm943_3728
	mov	r0, #8
	bl	OvlFunc_943_200b380
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_SetPos
	mov	r0, #0xd
	bl	OvlFunc_943_200b380
	mov	r0, #0xe
	bl	OvlFunc_943_200b380
	mov	r0, #0xf
	bl	OvlFunc_943_200b380
	ldr	r2, =.Lm943_5b70
	mov	r6, #0
	str	r6, [r2]
	str	r6, [r2, #4]
	str	r6, [r2, #8]
	str	r6, [r2, #0xc]
	mov	r0, #8
	mov	r8, r2
	bl	__MapActor_GetActor
	ldr	r3, =.Lm943_5b90
	mov	r10, r3
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #4]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #8]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #0xc]
	mov	r0, #0x10
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
	mov	r3, r8
	str	r5, [r0, #0x18]
	str	r6, [r3, #0x10]
	str	r6, [r3, #0x14]
	str	r6, [r3, #0x18]
	str	r6, [r3, #0x1c]
	mov	r0, #0x10
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #0x10]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #0x14]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #0x18]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	str	r3, [r2, #0x1c]
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm943_383c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__MapActor_SetPos
.Lm943_383c:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xd
	mov	r1, #8
	bl	__Func_8092b54
	mov	r0, #0xe
	mov	r1, #8
	bl	__Func_8092b54
	mov	r0, #0xf
	mov	r1, #8
	bl	__Func_8092b54
	mov	r0, #0x10
	mov	r1, #8
	bl	__Func_8092b54
	mov	r0, #0x11
	mov	r1, #8
	bl	__Func_8092b54
	mov	r0, #0x12
	mov	r1, #8
	bl	__Func_8092b54
	mov	r1, #8
	mov	r0, #0x13
	bl	__Func_8092b54
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #1
	add	r0, #0x5c
	strb	r5, [r0]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	add	r0, #0x5c
	strb	r5, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x5c
	strb	r5, [r0]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	add	r0, #0x5c
	strb	r5, [r0]
	mov	r0, #0x10
	bl	__MapActor_GetActor
	add	r0, #0x5c
	strb	r5, [r0]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	add	r0, #0x5c
	strb	r5, [r0]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	add	r0, #0x5c
	strb	r5, [r0]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	add	r0, #0x5c
	strb	r5, [r0]
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0x84
	mov	r2, #0x9e
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_943_200b5ec
	mov	r0, #0xd
	mov	r1, #1
	mov	r2, #2
	bl	OvlFunc_943_200b5ec
	mov	r0, #0xe
	mov	r1, #2
	mov	r2, #2
	bl	OvlFunc_943_200b5ec
	mov	r0, #0xf
	mov	r1, #3
	mov	r2, #2
	bl	OvlFunc_943_200b5ec
	mov	r0, #0x10
	mov	r1, #4
	mov	r2, #3
	bl	OvlFunc_943_200b5ec
	mov	r0, #0x11
	mov	r1, #5
	mov	r2, #3
	bl	OvlFunc_943_200b5ec
	mov	r0, #0x12
	mov	r1, #6
	mov	r2, #3
	bl	OvlFunc_943_200b5ec
	mov	r0, #0x13
	mov	r1, #7
	mov	r2, #3
	bl	OvlFunc_943_200b5ec
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200b710


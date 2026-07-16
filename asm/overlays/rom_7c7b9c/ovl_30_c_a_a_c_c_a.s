	.include "macros.inc"

	.section .text.after_b558, "ax", %progbits

.thumb_func_start OvlFunc_943_200b5ec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r1
	mov	r9, r2
	mov	r7, r0
	bl	__MapActor_GetActor
	mov	r3, #2
	ldr	r1, [r0, #0x50]
	mov	r2, r9
	and	r3, r2
	mov	r10, r0
	mov	r11, r1
	cmp	r3, #0
	bne	.L3684
	ldr	r3, =.L5b70
	lsl	r1, r5, #2
	ldr	r3, [r3, r1]
	mov	r8, r1
	cmp	r3, #2
	beq	.L3648
	cmp	r3, #2
	bhi	.L362a
	cmp	r3, #1
	beq	.L3634
	b	.L3688
.L362a:
	cmp	r3, #3
	beq	.L365c
	cmp	r3, #4
	beq	.L3670
	b	.L3688
.L3634:
	ldr	r2, =.L5b30
	ldr	r3, =.L5b40
	ldrh	r2, [r2]
	lsl	r6, r5, #1
	strh	r2, [r3, r6]
	mov	r0, r7
	mov	r1, #8
	bl	__Func_8092b54
	b	.L368a
.L3648:
	ldr	r2, =.L5b30
	ldr	r3, =.L5b40
	ldrh	r2, [r2, #2]
	lsl	r6, r5, #1
	strh	r2, [r3, r6]
	mov	r0, r7
	mov	r1, #9
	bl	__Func_8092b54
	b	.L368a
.L365c:
	ldr	r2, =.L5b30
	ldr	r3, =.L5b40
	ldrh	r2, [r2, #4]
	lsl	r6, r5, #1
	strh	r2, [r3, r6]
	mov	r0, r7
	mov	r1, #0xa
	bl	__Func_8092b54
	b	.L368a
.L3670:
	ldr	r2, =.L5b30
	ldr	r3, =.L5b40
	ldrh	r2, [r2, #6]
	lsl	r6, r5, #1
	strh	r2, [r3, r6]
	mov	r0, r7
	mov	r1, #0xb
	bl	__Func_8092b54
	b	.L368a
.L3684:
	lsl	r2, r5, #2
	mov	r8, r2
.L3688:
	lsl	r6, r5, #1
.L368a:
	mov	r3, #1
	mov	r1, r9
	and	r3, r1
	cmp	r3, #0
	beq	.L36c0
	ldr	r5, =.L5b40
	ldrh	r0, [r5, r6]
	bl	__sin
	mov	r2, #0x80
	mov	r7, r0
	ldrh	r0, [r5, r6]
	lsl	r2, #8
	add	r0, r2
	bl	__sin
	mov	r3, r11
	asr	r0, #5
	strh	r0, [r3, #0x1e]
	ldr	r3, =gOvl943ActorXPositions
	mov	r1, r8
	ldr	r3, [r3, r1]
	lsl	r2, r7, #2
	sub	r3, r2
	lsl	r2, r7, #1
	sub	r3, r2
	b	.L36ea
.L36c0:
	ldr	r5, =.L5b40
	mov	r3, #0x80
	ldrh	r0, [r5, r6]
	lsl	r3, #8
	add	r0, r3
	bl	__sin
	mov	r7, r0
	ldrh	r0, [r5, r6]
	bl	__sin
	mov	r1, r11
	asr	r0, #5
	strh	r0, [r1, #0x1e]
	ldr	r3, =gOvl943ActorXPositions
	mov	r1, r8
	ldr	r3, [r3, r1]
	lsl	r2, r7, #2
	add	r3, r2
	lsl	r2, r7, #1
	add	r3, r2
.L36ea:
	mov	r2, r10
	str	r3, [r2, #0x10]
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200b5ec

.thumb_func_start OvlFunc_943_200b710
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r1, =0xc000
	ldr	r3, =.L5b40
	mov	r2, #0
	b	.L3728

	.pool_aligned

.L3728:
	add	r2, #1
	strh	r1, [r3]
	add	r3, #2
	cmp	r2, #7
	bls	.L3728
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
	ldr	r2, =.L5b70
	mov	r6, #0
	str	r6, [r2]
	str	r6, [r2, #4]
	str	r6, [r2, #8]
	str	r6, [r2, #0xc]
	mov	r0, #8
	mov	r8, r2
	bl	__MapActor_GetActor
	ldr	r3, =gOvl943ActorXPositions
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
	beq	.L383c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__MapActor_SetPos
.L383c:
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

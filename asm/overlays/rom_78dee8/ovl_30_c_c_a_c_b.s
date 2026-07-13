.include "macros.inc"

.thumb_func_start OvlFunc_895_200867c
	push	{r5, lr}
	mov	r0, #0xb
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L6b8
	ldr	r3, [r0, #8]
	mov	r0, #0xc5
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x315
	bl	__ClearFlag
	cmp	r5, #0x6b
	bne	.L6a6
	ldr	r0, =0x315
	bl	__SetFlag
	b	.L6b2
.L6a6:
	cmp	r5, #0x6d
	bne	.L6b2
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__SetFlag
.L6b2:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.L6b8:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_200867c

.thumb_func_start OvlFunc_895_20086c4
	push	{r5, lr}
	mov	r0, #0xc
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L6fc
	ldr	r3, [r0, #8]
	ldr	r0, =0x316
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x317
	bl	__ClearFlag
	cmp	r5, #0x6f
	bne	.L6ec
	ldr	r0, =0x317
	bl	__SetFlag
	b	.L6f6
.L6ec:
	cmp	r5, #0x71
	bne	.L6f6
	ldr	r0, =0x316
	bl	__SetFlag
.L6f6:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.L6fc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_20086c4

.thumb_func_start OvlFunc_895_200870c
	push	{r5, lr}
	mov	r0, #0xd
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L748
	ldr	r3, [r0, #8]
	mov	r0, #0xc6
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x319
	bl	__ClearFlag
	cmp	r5, #0x73
	bne	.L736
	ldr	r0, =0x319
	bl	__SetFlag
	b	.L742
.L736:
	cmp	r5, #0x75
	bne	.L742
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__SetFlag
.L742:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.L748:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_200870c

.thumb_func_start OvlFunc_895_2008754
	push	{r5, lr}
	mov	r0, #0xe
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L78c
	ldr	r3, [r0, #8]
	ldr	r0, =0x31a
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x31b
	bl	__ClearFlag
	cmp	r5, #0x77
	bne	.L77c
	ldr	r0, =0x31b
	bl	__SetFlag
	b	.L786
.L77c:
	cmp	r5, #0x79
	bne	.L786
	ldr	r0, =0x31a
	bl	__SetFlag
.L786:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.L78c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008754

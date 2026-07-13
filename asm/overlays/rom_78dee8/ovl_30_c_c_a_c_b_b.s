.include "macros.inc"

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

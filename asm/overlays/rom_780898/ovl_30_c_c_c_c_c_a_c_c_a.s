	.include "macros.inc"

.thumb_func_start OvlFunc_883_200da40
	push	{r5, lr}
	ldr	r0, =0x241
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5a6c
	mov	r0, #0x83
	lsl	r0, #1
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	bne	.L5a8a
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x5b
	strb	r5, [r0]
	ldr	r0, =0x241
	bl	__ClearFlag
	b	.L5a8a
.L5a6c:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5a8a
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	ldr	r0, =0x241
	bl	__SetFlag
.L5a8a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200da40

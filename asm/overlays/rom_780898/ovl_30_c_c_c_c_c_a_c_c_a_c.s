	.include "macros.inc"

.thumb_func_start OvlFunc_883_200da94
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5ab0
	mov	r0, #0x15
	bl	__MapActor_GetActor
	b	.L5ab6
.L5ab0:
	mov	r0, #0x14
	bl	__MapActor_GetActor
.L5ab6:
	cmp	r0, #0
	beq	.L5ad4
	mov	r2, #0xc8
	ldr	r3, [r5, #0xc]
	lsl	r2, #16
	cmp	r3, r2
	ble	.L5acc
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #3
	b	.L5ad2
.L5acc:
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #1
.L5ad2:
	strb	r3, [r2]
.L5ad4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200da94


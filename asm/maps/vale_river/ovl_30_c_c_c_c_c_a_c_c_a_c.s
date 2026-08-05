	.include "macros.inc"

.thumb_func_start OvlFunc_883_200da94
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm883_5ab0
	mov	r0, #0x15
	bl	__MapActor_GetActor
	b	.Lm883_5ab6
.Lm883_5ab0:
	mov	r0, #0x14
	bl	__MapActor_GetActor
.Lm883_5ab6:
	cmp	r0, #0
	beq	.Lm883_5ad4
	mov	r2, #0xc8
	ldr	r3, [r5, #0xc]
	lsl	r2, #16
	cmp	r3, r2
	ble	.Lm883_5acc
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #3
	b	.Lm883_5ad2
.Lm883_5acc:
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #1
.Lm883_5ad2:
	strb	r3, [r2]
.Lm883_5ad4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200da94


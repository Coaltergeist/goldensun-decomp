	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_967_2008234
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.Lm967_25c
	mov	r0, r5
	bl	__UI_Sanctum
	b	.Lm967_292
.Lm967_25c:
	ldr	r0, =0x9a7
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm967_284
	ldr	r0, =0x28fc
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm967_292

	.pool_aligned

.Lm967_284:
	ldr	r0, =0x26f6
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.Lm967_292:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_2008234


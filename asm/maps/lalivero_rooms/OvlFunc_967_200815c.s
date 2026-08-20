	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_967_200815c
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
	bne	.Lm967_18c
	mov	r0, #0x21
	mov	r1, r5
	bl	__Func_80b0278
	b	.Lm967_1b4

	.pool_aligned

.Lm967_18c:
	ldr	r0, =0x9a7
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm967_1a6
	ldr	r0, =0x28f2
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm967_1b4
.Lm967_1a6:
	ldr	r0, =0x26e7
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.Lm967_1b4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_200815c


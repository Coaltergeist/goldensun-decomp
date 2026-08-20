	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_962_200816c
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
	bne	.Lm962_194
	mov	r0, r5
	bl	__UI_Sanctum
	b	.Lm962_1ca
.Lm962_194:
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm962_1bc
	ldr	r0, =0x262c
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm962_1ca

	.pool_aligned

.Lm962_1bc:
	ldr	r0, =0x25d5
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.Lm962_1ca:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_962_200816c


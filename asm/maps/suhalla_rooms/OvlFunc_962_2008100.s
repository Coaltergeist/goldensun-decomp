	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_962_2008100
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
	bne	.Lm962_130
	mov	r0, #0xa
	mov	r1, r5
	bl	__Func_80b3284
	b	.Lm962_158

	.pool_aligned

.Lm962_130:
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm962_14a
	ldr	r0, =0x2620
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm962_158
.Lm962_14a:
	ldr	r0, =0x25d1
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.Lm962_158:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_962_2008100


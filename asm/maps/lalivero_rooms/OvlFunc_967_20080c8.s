	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_967_20080c8
	push	{r5, r6, lr}
	mov	r6, r0
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
	bne	.Lm967_f8
	mov	r0, #0x20
	mov	r1, r6
	bl	__Func_80b0278
	b	.Lm967_14a

	.pool_aligned

.Lm967_f8:
	ldr	r0, =0x9a7
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm967_112
	ldr	r0, =0x28f0
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm967_14a
.Lm967_112:
	ldr	r5, =0x26e3
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm967_13c
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	b	.Lm967_142
.Lm967_13c:
	add	r0, r5, #2
	bl	__MessageID
.Lm967_142:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
.Lm967_14a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_967_20080c8


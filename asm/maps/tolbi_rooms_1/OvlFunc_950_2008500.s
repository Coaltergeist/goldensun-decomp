	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_950_2008500
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
	mov	r2, #0x80
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bne	.Lm950_52a
	mov	r0, #0x1c
	mov	r1, r6
	bl	__Func_80b0278
	b	.Lm950_596
.Lm950_52a:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm950_544
	ldr	r0, =0x238d
	b	.Lm950_550

	.pool_aligned

.Lm950_544:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm950_55e
	ldr	r0, =0x221b
.Lm950_550:
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm950_596
.Lm950_55e:
	ldr	r5, =0x1fd5
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm950_588
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	b	.Lm950_58e
.Lm950_588:
	add	r0, r5, #2
	bl	__MessageID
.Lm950_58e:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
.Lm950_596:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_950_2008500


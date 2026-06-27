	.include "macros.inc"

.thumb_func_start OvlFunc_929_200835c
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L37e
	mov	r0, #0x10
	mov	r1, #0xe
	bl	__Func_80b0278
	b	.L39e
.L37e:
	ldr	r0, =0x895
	bl	__GetFlag
	cmp	r0, #0
	bne	.L390
	ldr	r0, =0x1817
	bl	__MessageID
	b	.L396
.L390:
	ldr	r0, =0x1a46
	bl	__MessageID
.L396:
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
.L39e:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_929_200835c


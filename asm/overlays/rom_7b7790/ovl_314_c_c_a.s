	.include "macros.inc"

.thumb_func_start OvlFunc_929_2008328
	push	{r5, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	bne	.L33e
	ldr	r0, =.L9c8
	b	.L348
.L33e:
	ldr	r5, =.L890
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
.L348:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_929_2008328

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


	.include "macros.inc"

.thumb_func_start OvlFunc_929_200841c
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L43e
	mov	r0, #0x12
	mov	r1, #0x10
	bl	__Func_80b0278
	b	.L466
.L43e:
	ldr	r0, =0x895
	bl	__GetFlag
	cmp	r0, #0
	bne	.L458
	ldr	r0, =0x181b
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
	b	.L466
.L458:
	ldr	r0, =0x1a4a
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093054
.L466:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_929_200841c

.thumb_func_start OvlFunc_929_2008484
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffffe000
	add	r5, r3
	mov	r3, #0xc0
	lsl	r3, #8
	cmp	r5, r3
	bls	.L4a8
	mov	r0, #5
	mov	r1, #0x11
	bl	__Func_80b3284
	b	.L4c8
.L4a8:
	ldr	r0, =0x895
	bl	__GetFlag
	cmp	r0, #0
	bne	.L4ba
	ldr	r0, =0x181d
	bl	__MessageID
	b	.L4c0
.L4ba:
	ldr	r0, =0x1a4e
	bl	__MessageID
.L4c0:
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage
.L4c8:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_929_2008484


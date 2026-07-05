	.include "macros.inc"

.thumb_func_start OvlFunc_899_200813c
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L15e
	mov	r0, #4
	mov	r1, #0x13
	bl	__Func_80b0278
	b	.L17e
.L15e:
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.L170
	ldr	r0, =_MSG_1280
	bl	__MessageID
	b	.L176
.L170:
	ldr	r0, =0x1370
	bl	__MessageID
.L176:
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
.L17e:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200813c

.thumb_func_start OvlFunc_899_200819c
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L1be
	mov	r0, #5
	mov	r1, #0x14
	bl	__Func_80b0278
	b	.L1de
.L1be:
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1d0
	ldr	r0, =0x1282
	bl	__MessageID
	b	.L1d6
.L1d0:
	ldr	r0, =0x1372
	bl	__MessageID
.L1d6:
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
.L1de:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200819c

.thumb_func_start OvlFunc_899_20081fc
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L21e
	mov	r0, #1
	mov	r1, #0x17
	bl	__Func_80b3284
	b	.L23e
.L21e:
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.L230
	ldr	r0, =0x128d
	bl	__MessageID
	b	.L236
.L230:
	ldr	r0, =0x137b
	bl	__MessageID
.L236:
	mov	r0, #0x17
	mov	r1, #0
	bl	__ActorMessage
.L23e:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20081fc


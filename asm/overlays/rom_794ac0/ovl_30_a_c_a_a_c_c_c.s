	.include "macros.inc"

.thumb_func_start OvlFunc_899_2008428
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1253
	bl	__MessageID
	mov	r0, #0xf
	bl	OvlFunc_899_20083bc
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008428

.thumb_func_start OvlFunc_899_2008454
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r5, [r0, #6]
	bl	__CutsceneStart
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L476
	mov	r0, #6
	mov	r1, #0x15
	bl	__Func_80b0278
	b	.L49c
.L476:
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.L48e
	ldr	r0, =0x1284
	bl	__MessageID
	mov	r0, #0x15
	bl	OvlFunc_899_20083bc
	b	.L49c
.L48e:
	ldr	r0, =0x1374
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
.L49c:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008454

.thumb_func_start OvlFunc_899_20084bc
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.L4d4
	ldr	r0, =0x1243
	bl	__MessageID
	b	.L4da
.L4d4:
	ldr	r0, =0x1353
	bl	__MessageID
.L4da:
	mov	r0, #9
	bl	OvlFunc_899_2008354
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_20084bc


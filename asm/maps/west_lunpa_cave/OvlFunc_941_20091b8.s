	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_941_20091b8
	push	{r5, lr}
	ldr	r5, =0x2547
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	add	r5, #1
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #1
	bl	__ShowActorMessage_NoWait
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
.Lm941_120c:
	bl	OvlFunc_941_20092ac
	lsl	r0, #24
	cmp	r0, #0
	beq	.Lm941_124e
.Lm941_1216:
	bl	OvlFunc_941_2009320
	lsl	r0, #24
	cmp	r0, #0
	beq	.Lm941_1290
	bl	OvlFunc_941_200941c
	lsl	r0, #24
	mov	r5, #0
	cmp	r0, #0
	bne	.Lm941_123e
.Lm941_122c:
	mov	r5, #1
.Lm941_122e:
	bl	OvlFunc_941_200934c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm941_1290
.Lm941_123e:
	bl	OvlFunc_941_2009394
	lsl	r0, #24
	cmp	r0, #0
	bne	.Lm941_1296
	cmp	r5, #0
	bne	.Lm941_122e
	b	.Lm941_1296
.Lm941_124e:
	bl	OvlFunc_941_20092c4
	lsl	r0, #24
	cmp	r0, #0
	beq	.Lm941_1264
	bl	OvlFunc_941_20092f0
	lsl	r0, #24
	cmp	r0, #0
	beq	.Lm941_122c
	b	.Lm941_1296
.Lm941_1264:
	bl	OvlFunc_941_2009368
	lsl	r0, #24
	cmp	r0, #0
	bne	.Lm941_1216
	ldr	r5, =0x254b
	mov	r0, r5
	bl	__MessageID
	add	r5, #1
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, r5
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
	b	.Lm941_120c
.Lm941_1290:
	bl	OvlFunc_941_2009760
	b	.Lm941_129e
.Lm941_1296:
	bl	OvlFunc_941_200931c
	bl	OvlFunc_941_2009448
.Lm941_129e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_20091b8


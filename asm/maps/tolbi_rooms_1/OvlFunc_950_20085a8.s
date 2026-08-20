	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_950_20085a8
	push	{r5, r6, lr}
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
	bne	.Lm950_5d8
	mov	r0, #0x1a
	mov	r1, r5
	bl	__Func_80b0278
	b	.Lm950_654

	.pool_aligned

.Lm950_5d8:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm950_612
	ldr	r6, =0x2389
	mov	r0, r6
	bl	__MessageID
	mov	r1, #0
	mov	r0, r5
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm950_60a
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r6, #1
	b	.Lm950_61e
.Lm950_60a:
	add	r0, r6, #2
	bl	__MessageID
	b	.Lm950_622
.Lm950_612:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm950_62c
	ldr	r0, =0x2219
.Lm950_61e:
	bl	__MessageID
.Lm950_622:
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm950_654
.Lm950_62c:
	ldr	r0, =0x1fd2
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x83
	lsl	r1, #1
	mov	r0, r5
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.Lm950_654:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_950_20085a8


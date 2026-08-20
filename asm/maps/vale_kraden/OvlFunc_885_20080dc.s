	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_885_20080dc
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm885_fc
	ldr	r0, =0x11c4
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm885_15a
.Lm885_fc:
	ldr	r5, =0xf76
	mov	r0, r5
	bl	__MessageID
	mov	r2, #0xa
	mov	r0, #0xc
	mov	r1, #0
	bl	__MapActor_Face
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm885_138
	add	r0, r5, #1
	bl	__MessageID
	b	.Lm885_13e
.Lm885_138:
	add	r0, r5, #2
	bl	__MessageID
.Lm885_13e:
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
.Lm885_15a:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_885_20080dc


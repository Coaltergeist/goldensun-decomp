	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_886_200855c
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.Lm886_57a
	mov	r0, #2
	mov	r1, #0x16
	bl	__Func_80b0278
	b	.Lm886_5b4
.Lm886_57a:
	bl	__CutsceneStart
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm886_590
	ldr	r0, =0x1c09
	bl	__MessageID
	b	.Lm886_5a8
.Lm886_590:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm886_5a2
	ldr	r0, =0x11a3
	bl	__MessageID
	b	.Lm886_5a8
.Lm886_5a2:
	ldr	r0, =0xf54
	bl	__MessageID
.Lm886_5a8:
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
.Lm886_5b4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_200855c


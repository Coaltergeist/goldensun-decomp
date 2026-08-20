	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_886_20084dc
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.Lm886_4fa
	mov	r0, #1
	mov	r1, #0x15
	bl	__Func_80b0278
	b	.Lm886_53c
.Lm886_4fa:
	bl	__CutsceneStart
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm886_518
	ldr	r0, =0x1c06
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093054
	b	.Lm886_538
.Lm886_518:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm886_52a
	ldr	r0, =0x11a2
	bl	__MessageID
	b	.Lm886_530
.Lm886_52a:
	ldr	r0, =0xf53
	bl	__MessageID
.Lm886_530:
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
.Lm886_538:
	bl	__CutsceneEnd
.Lm886_53c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_20084dc


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_884_2008634
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_64c
	ldr	r0, =0x1be4
	bl	__MessageID
	b	.Lm884_658
.Lm884_64c:
	ldr	r0, =0x1be3
	bl	__MessageID
	ldr	r0, =0x302
	bl	__SetFlag
.Lm884_658:
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2008634


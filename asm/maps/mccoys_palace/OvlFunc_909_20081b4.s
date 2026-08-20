	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_909_20081b4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1750
	bl	__MessageID
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_1d0
	ldr	r0, =0x1768
	bl	__MessageID
.Lm909_1d0:
	mov	r1, #0
	mov	r0, #0xf
	bl	__ActorMessage
	ldr	r0, =0x302
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_20081b4


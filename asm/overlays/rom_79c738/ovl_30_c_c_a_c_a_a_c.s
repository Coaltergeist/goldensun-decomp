	.include "macros.inc"

.thumb_func_start OvlFunc_909_200828c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1756
	bl	__MessageID
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2a8
	ldr	r0, =0x176c
	bl	__MessageID
.L2a8:
	mov	r1, #0
	mov	r0, #0xf
	bl	__ActorMessage
	ldr	r0, =0x303
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_200828c


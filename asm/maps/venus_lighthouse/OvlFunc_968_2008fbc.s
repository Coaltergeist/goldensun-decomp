	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_2008fbc
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x2670
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2008fbc


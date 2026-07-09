	.include "macros.inc"

.thumb_func_start OvlFunc_908_200835c
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3be
	ldr	r0, =0x16ff
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x16
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
.L3be:
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_809280c
	ldr	r0, =0x1702
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_908_200835c


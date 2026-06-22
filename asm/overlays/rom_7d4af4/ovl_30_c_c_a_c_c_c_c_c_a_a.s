	.include "macros.inc"

.thumb_func_start OvlFunc_949_2008528
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =_MSG_1fa0
	bl	__MessageID
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0x19
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x19
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x19
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x19
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_2008528

.thumb_func_start OvlFunc_949_2008568
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x1a
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x1a
	bl	__Func_809259c
	ldr	r0, =0x1fa2
	bl	__MessageID
	mov	r0, #0x1a
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_2008568


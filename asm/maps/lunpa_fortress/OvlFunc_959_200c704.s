	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_200c704
	push	{r5, lr}
	mov	r0, #0x15
	ldr	r1, =0x101
	mov	r2, #0x1e
	bl	__MapActor_Emote
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__CutsceneWait
	ldr	r5, =0x2411
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_8092adc
	add	r5, #1
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200c704


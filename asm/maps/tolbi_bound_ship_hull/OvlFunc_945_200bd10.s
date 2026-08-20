	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200bd10
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r2, #1
	mov	r0, #0xf
	mov	r1, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xea
	mov	r0, #8
	lsl	r1, #1
	ldr	r2, =0x266
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xec
	mov	r2, #0x95
	mov	r0, #8
	lsl	r1, #1
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_Jump
	bl	OvlFunc_945_200c5d0
	mov	r5, r0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xd6
	bl	__PlaySound
	ldr	r1, =gScript_945__0200e738
	mov	r0, r5
	bl	__Actor_SetScript
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xe9
	mov	r2, #0x9c
	lsl	r2, #2
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	ldr	r0, =0x1e3b
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #9
	mov	r1, #0xb
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200bd10


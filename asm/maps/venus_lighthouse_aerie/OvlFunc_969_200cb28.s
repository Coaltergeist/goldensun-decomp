	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_969_200cb28
	push	{lr}
	ldr	r0, =0x2829
	bl	__MessageID
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r0, #0x3e
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #9
	lsl	r1, #9
	bl	__Func_8012330
	ldr	r0, =0x4cccc
	ldr	r1, =0x9999
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0xc0
	mov	r2, #0xee
	mov	r3, #1
	lsl	r2, #16
	ldr	r1, =0xffc00000
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x28
	ldr	r0, =0x2015
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #6
	bl	__Func_80925cc
	mov	r0, #6
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x50
	ldr	r0, =0x2015
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #6
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #6
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #6
	bl	OvlFunc_969_2008894
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200cb28


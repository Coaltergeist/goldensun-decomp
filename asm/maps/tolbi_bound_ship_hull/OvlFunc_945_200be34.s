	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200be34
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0x96
	mov	r0, #0x10
	lsl	r1, #16
	ldr	r2, =0x24a0000
	bl	__MapActor_SetPos
	mov	r0, #0x9c
	mov	r1, #1
	mov	r2, #0x86
	ldr	r3, =0x1000001
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #18
	bl	OvlFunc_945_200c8ac
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x10
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x10
	mov	r1, #0xa8
	ldr	r2, =0x242
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x10
	mov	r1, #0xa8
	ldr	r2, =0x22a
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_809259c
	ldr	r0, =0x1e3c
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #9
	mov	r1, #0xc
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200be34


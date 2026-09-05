	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_899_200cb2c
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0xa8
	mov	r1, #1
	mov	r2, #0xa4
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0xae
	mov	r0, #0
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xf8
	mov	r2, #0xae
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xf8
	mov	r2, #0xae
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r2, #0xae
	mov	r0, #0
	mov	r1, #0xc8
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r2, #0xb2
	mov	r0, #1
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r2, #0xae
	mov	r1, #0xe8
	lsl	r2, #2
	mov	r0, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0xc
	bl	__MapActor_SetAnim
	bl	OvlFunc_899_2009e80
	mov	r0, #0xc0
	mov	r1, #0x90
	mov	r2, #0x90
	mov	r3, #0xb8
	lsl	r3, #18
	lsl	r0, #14
	lsl	r1, #18
	lsl	r2, #17
	bl	__Func_80935b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #2
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r0, #0x18
	lsl	r1, #9
	ldr	r2, =0x13333
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0x19
	lsl	r1, #9
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	ldr	r3, =.Lm899_64f8
	ldr	r2, .Lm899_4c48	@ 0
	ldr	r1, =0xc94
	strh	r2, [r3]
	ldr	r0, =OvlFunc_899_200c8c8
	bl	__StartTask
	ldr	r0, =0x1ff
	bl	__ClearFlag
	bl	__CutsceneEnd
	mov	r0, #9
	bl	__PlaySound
	b	.Lm899_4c68

	.align	2, 0
.Lm899_4c48:
	.word	0
	.pool

.Lm899_4c68:
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_200cb2c


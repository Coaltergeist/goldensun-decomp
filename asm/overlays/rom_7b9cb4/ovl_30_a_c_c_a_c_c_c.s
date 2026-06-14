	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200af10
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r0, #0xa4
	mov	r1, #1
	mov	r2, #0xae
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0xa4
	mov	r2, #0x74
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0x94
	bl	__PlaySound
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_932_200aeec
	bl	__StartTask
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #8
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__MapActor_SetSpeed
	ldr	r2, =0xccc
	mov	r0, #9
	ldr	r1, =0x1999
	bl	__MapActor_SetSpeed
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #0xa4
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x68
	bl	__MapActor_TravelTo
	mov	r1, #0xa4
	lsl	r1, #1
	mov	r2, #0x6c
	mov	r0, #9
	bl	__MapActor_TravelTo
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0
	bl	__Func_809259c
	mov	r0, #8
	bl	__MapActor_WaitMovement
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0x56
	mov	r1, #0x63
	bl	__Func_8091f90
	mov	r0, #0x35
	mov	r1, #3
	bl	__Func_8091eb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200af10


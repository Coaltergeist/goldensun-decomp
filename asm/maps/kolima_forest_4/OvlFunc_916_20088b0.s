	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_916_20088b0
	push	{r5, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r1, #8
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0xef
	bl	__PlaySound
	mov	r1, #0x80
	ldr	r2, =0x3333
	mov	r0, #8
	lsl	r1, #8
	bl	__MapActor_SetSpeed
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #0xb0
	mov	r1, #0x68
	mov	r0, #8
	bl	__MapActor_TravelTo
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	ldr	r1, =0x4ccc
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0
	bl	__MapActor_TravelBy
	mov	r0, #0x18
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xd5
	bl	__PlaySound
	mov	r5, #9
	mov	r3, #4
	mov	r0, #5
	mov	r1, #9
	mov	r2, #1
	str	r3, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #6
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_8010704
	ldr	r3, =.Lm916_12c4
	ldr	r2, [r3]
	ldr	r3, .Lm916_970	@ 0
	strh	r3, [r2]
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.Lm916_970:
	.word	0
.func_end OvlFunc_916_20088b0


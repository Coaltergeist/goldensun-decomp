	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_934_20094ac
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	ldr	r2, =0x1999
	mov	r0, #0
	lsl	r1, #8
	bl	__MapActor_SetSpeed
	mov	r1, #8
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_TravelBy
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xef
	bl	__PlaySound
	mov	r1, #0x80
	ldr	r2, =0x1999
	mov	r0, #9
	lsl	r1, #8
	bl	__MapActor_SetSpeed
	mov	r1, #2
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r6, #0
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r2, #0
	str	r6, [r0, #0x44]
	mov	r1, #0xc
	mov	r0, #9
	bl	__MapActor_TravelBy
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xd5
	bl	__PlaySound
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r2, #0
	mov	r1, #6
	mov	r0, #9
	bl	__MapActor_TravelBy
	mov	r0, #9
	bl	__MapActor_GetActor
	bl	OvlFunc_934_2008cd0
	mov	r0, #9
	mov	r1, #8
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092b08
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r5, #4
	mov	r1, #0xc
	mov	r2, #0x10
	mov	r3, #1
	mov	r0, #0
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	OvlFunc_934_2008528
	mov	r1, #0xd
	mov	r2, #0x10
	mov	r3, #1
	mov	r0, #0
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	OvlFunc_934_2008528
	ldr	r0, =0x202
	bl	__SetFlag
	mov	r0, #0xf0
	bl	__PlaySound
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_934_20094ac


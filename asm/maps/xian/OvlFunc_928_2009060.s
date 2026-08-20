	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_928_2009060
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r1, #1
	mov	r0, #0x12
	bl	__MapActor_SetBehavior
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r6, #0
	str	r6, [r0, #0x6c]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #24
	str	r5, [r0, #0x38]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r5, [r0, #0x40]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r6, [r0, #0x24]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r6, [r0, #0x2c]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r6, [r0, #0x30]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r2, #0
	str	r6, [r0, #0x34]
	ldr	r1, =0x103
	mov	r0, #0x12
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0x12
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x8c
	mov	r0, #0x12
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__MapActor_TravelToAnim
	mov	r1, #0x94
	lsl	r1, #1
	mov	r2, #0xe8
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x12
	bl	__MapActor_WaitMovement
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	ldr	r1, =gScript_928__020095b0
	mov	r0, #0x12
	bl	__MapActor_SetBehavior
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_928_2008500
	str	r3, [r0, #0x6c]
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2009060


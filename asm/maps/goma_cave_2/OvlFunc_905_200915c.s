	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_905_200915c
	push	{lr}
	ldr	r0, =OvlFunc_905_20090c8
	bl	__StopTask
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0xd
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	ldr	r0, =0x132f
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r1, #10
	mov	r0, #0xd
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x96
	mov	r0, #0xd
	lsl	r1, #2
	mov	r2, #0xd8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x96
	mov	r0, #0xd
	lsl	r1, #2
	mov	r2, #0xf8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x8e
	mov	r2, #0x94
	mov	r0, #0xd
	lsl	r1, #2
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xd
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x869
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_905_200915c


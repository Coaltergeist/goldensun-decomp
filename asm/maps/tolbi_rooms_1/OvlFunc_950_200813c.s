	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_950_200813c
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x2394
	bl	__MessageID
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x8e
	mov	r1, #0x96
	mov	r3, #0xce
	lsl	r3, #18
	mov	r2, #0
	lsl	r1, #18
	lsl	r0, #1
	bl	__CreateActor
	mov	r1, #0
	mov	r5, r0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #6
	bl	__Actor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, r5
	bl	__DeleteActor
	mov	r0, #2
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x19
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x96
	mov	r2, #0xd4
	mov	r0, #0x19
	lsl	r1, #2
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x19
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x19
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #2
	mov	r0, #0x19
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x8e
	mov	r2, #0xd4
	mov	r0, #0x19
	lsl	r1, #2
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x19
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x84
	lsl	r1, #1
	mov	r2, #0x32
	mov	r0, #0x19
	bl	__MapActor_Emote
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_8092304
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x19
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x19
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x19
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x32
	ldr	r1, =0x101
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x19
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x19
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0x19
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0x19
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x19
	ldr	r1, =0x16666
	ldr	r2, =0xb333
	bl	__MapActor_SetSpeed
	mov	r0, #0x19
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_8092304
	mov	r2, #0x20
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_8092304
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x19
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x19
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x19
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__MapActor_SetSpeed
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0x30
	bl	__Func_8092304
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_950_200813c


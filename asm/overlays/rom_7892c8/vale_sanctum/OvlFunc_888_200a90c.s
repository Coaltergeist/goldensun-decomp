	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_888_200a90c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #8
	mov	r0, #1
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_Face
	mov	r1, #1
	mov	r0, #0
	bl	__Func_809259c
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r2, #0
	mov	r8, r2
	strb	r3, [r0]
	mov	r1, #0xb8
	mov	r2, #0xa8
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	mov	r2, #0xa8
	mov	r1, #0xc8
	strb	r5, [r0]
	mov	r0, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Jump
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #5
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #2
	mov	r0, #1
	bl	__MapActor_Jump
	mov	r0, #0x19
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #5
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #5
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xb8
	mov	r2, #0xd8
	mov	r3, #0xa8
	lsl	r3, #16
	lsl	r1, #16
	lsl	r2, #13
	mov	r0, #0xde
	bl	OvlFunc_888_200b098
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r6, #1
	add	r0, #0x64
	strh	r6, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_888_2008030
	str	r5, [r0, #0x6c]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x64
	strh	r6, [r0]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0xc4
	str	r5, [r0, #0x6c]
	mov	r2, #0xb4
	mov	r0, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	mov	r1, #0xb8
	mov	r2, #0xb8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	mov	r1, #0xb4
	mov	r2, #0xb4
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	mov	r1, #0xa8
	mov	r2, #0xa8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	mov	r1, #0xb4
	mov	r2, #0x9c
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	mov	r1, #0xc8
	mov	r2, #0x68
	bl	__MapActor_TravelToAnim
	mov	r0, #0
	mov	r1, #0xc0
	mov	r2, #0xa8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r3, r8
	str	r3, [r0, #0x6c]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r2, r8
	str	r2, [r0, #0x6c]
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Jump
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Jump
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0xd0
	mov	r2, #0xa8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r1, =ActorCmd_ARRAY_888__0200b740
	mov	r0, #0
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_888__0200b81c
	mov	r0, #1
	bl	__MapActor_SetBehavior
	mov	r0, #0
	bl	__MapActor_WaitScript
	mov	r0, #1
	bl	__MapActor_WaitScript
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0xb
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #9
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xc0
	mov	r2, #0xa8
	bl	__MapActor_TravelToAnim
	mov	r1, #0xd0
	mov	r2, #0xa8
	mov	r0, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	b	.Lm888_308c

	.pool_aligned

.Lm888_308c:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200a90c


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_887_2008578
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r2, =iwram_3001ebc
	mov	r9, r2
	ldr	r3, [r2]
	sub	r2, #0x4c
	ldr	r7, [r2]
	mov	r2, #0xf0
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0x11
	ldr	r6, [r3]
	bl	__MapActor_GetActor
	ldr	r0, [r0, #0x50]
	mov	r8, r0
	bl	__CutsceneStart
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x10
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x12
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r3, #0
	mov	r10, r3
	ldr	r3, =0x555
	mov	r2, r8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r5, .Lm887_63c	@ 0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x90
	lsl	r1, #18
	ldr	r2, =0x28a0000
	mov	r0, #0x11
	bl	__MapActor_SetPos
	mov	r0, #7
	bl	__Func_80118a8
	mov	r2, #0xac
	ldr	r1, =0x2160000
	lsl	r2, #18
	mov	r0, #8
	bl	__MapActor_SetPos
	bl	__Func_800c5b4
	mov	r0, #8
	b	.Lm887_650

	.align	2, 0
.Lm887_63c:
	.word	0
	.pool

.Lm887_650:
	bl	__Func_8093304
	ldr	r5, =0xe52
	mov	r1, #1
	mov	r0, r5
	mov	r2, #0
	bl	__Func_8019aa0
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #8
	bl	__Func_8093304
	mov	r1, #1
	add	r0, r5, #1
	mov	r2, #0
	bl	__Func_8019aa0
	bl	__Func_800c5fc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, r7
	mov	r3, #0xa4
	add	r2, #0xec
	lsl	r3, #17
	str	r3, [r2]
	mov	r3, #0x96
	add	r2, #4
	lsl	r3, #18
	str	r3, [r2]
	mov	r3, #0x9c
	add	r2, #4
	lsl	r3, #18
	str	r3, [r2]
	mov	r3, #0xcc
	add	r2, #4
	lsl	r3, #18
	str	r3, [r2]
	mov	r3, #0x8d
	lsl	r3, #18
	str	r3, [r6, #8]
	mov	r3, r10
	str	r3, [r6, #0xc]
	ldr	r3, =0x2b30000
	str	r3, [r6, #0x10]
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, r9
	ldr	r1, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x49
	str	r3, [r2]
	sub	r3, #0x41
	add	r2, r1, r3
	mov	r3, #0x40
	str	r3, [r2]
	bl	__StartThunder
	mov	r2, r9
	ldr	r3, [r2, #0xc]
	ldr	r2, =0x1f84
	add	r3, r2
	mov	r2, #1
	strh	r2, [r3]
	bl	__Func_8095240
	mov	r0, #0x1e
	bl	__WaitFrames
	add	r5, #2
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	__Func_8095268
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	__MessageID
	mov	r2, #0x3c
	ldr	r0, =0x9008
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x9008
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #7
	bl	__Func_80118c0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	bl	__Func_80118a8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0x13
	bl	__MapActor_SetAnim
	ldr	r1, =0x22d
	ldr	r2, =0x2a7
	mov	r0, #0
	bl	__MapActor_TravelToWait
	mov	r0, #8
	bl	__Func_80118c0
	mov	r0, #9
	bl	__Func_80118a8
	mov	r2, #0xaa
	ldr	r1, =0x22b
	lsl	r2, #2
	mov	r0, #0
	bl	__MapActor_TravelToWait
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	ldr	r2, =0x2a2
	mov	r0, #0
	ldr	r1, =0x21f
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x9008
	mov	r1, #0
	bl	__ActorMessage
	bl	OvlFunc_887_20097e4
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x9008
	bl	__ActorMessage_Wait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r2, #0xaa
	lsl	r2, #2
	strb	r3, [r0]
	ldr	r1, =0x21e
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0xe2
	bl	__Actor_AddSpriteLayer
	mov	r0, #0x21
	bl	__SetFlag
	mov	r0, #0x7e
	bl	__PlaySound
	mov	r1, #7
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0xac
	and	r5, r3
	ldr	r1, =0x216
	lsl	r2, #2
	strb	r5, [r0]
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, #1
	mov	r0, #8
	bl	__SetCameraTarget
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	ldr	r5, =ActorCmd_ARRAY_887__02009ab4
	orr	r6, r3
	mov	r1, r5
	strb	r6, [r0]
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #8
	bl	__MapActor_WaitScript
	mov	r0, #8
	ldr	r1, =0x1a3
	ldr	r2, =0x295
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xcc
	ldr	r2, =0x295
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0
	ldr	r0, =0x8008
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm887_95a
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm887_95a:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_887__02009b04
	mov	r0, #8
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_887__02009b34
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, r9
	ldr	r1, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	sub	r3, #0x39
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__Func_8091e9c
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008578


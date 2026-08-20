	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_944_2008e78
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r0, =gOvl_0200976c
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #9
	bl	OvlFunc_944_2008a84
	mov	r0, #0xa
	bl	OvlFunc_944_2008a84
	mov	r0, #0xb
	bl	OvlFunc_944_2008a84
	mov	r0, #0xc
	bl	OvlFunc_944_2008a84
	mov	r0, #0xd
	bl	OvlFunc_944_2008a84
	mov	r0, #0xe
	bl	OvlFunc_944_2008a84
	mov	r0, #0xf
	bl	OvlFunc_944_2008a84
	ldr	r1, =gScript_944__0200939c
	mov	r0, #8
	bl	__MapActor_SetBehavior
	ldr	r5, =iwram_3001ebc
	ldr	r3, =0x203
	ldr	r2, [r5]
	mov	r6, #0xe0
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0xc8
	lsl	r0, #1
	bl	__CutsceneWait
	mov	r0, #9
	bl	__MapActor_SetIdle
	mov	r0, #0xa
	bl	__MapActor_SetIdle
	mov	r0, #0xb
	bl	__MapActor_SetIdle
	mov	r0, #0xc
	bl	__MapActor_SetIdle
	mov	r0, #0xd
	bl	__MapActor_SetIdle
	mov	r0, #0xe
	bl	__MapActor_SetIdle
	mov	r0, #0xf
	bl	__MapActor_SetIdle
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #9
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xa
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xb
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xc
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xd
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xe
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #9
	mov	r0, #0xf
	lsl	r1, #10
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_944__02009450
	mov	r0, #9
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_944__02009480
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_944__020094b0
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_944__020094e0
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_944__02009510
	mov	r0, #0xd
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_944__02009540
	mov	r0, #0xe
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_944__02009570
	mov	r0, #0xf
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Surprise
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xac
	mov	r0, #8
	mov	r1, #0xa4
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0xa
	bl	__MapActor_Jump
	mov	r1, #6
	mov	r2, #0x14
	mov	r0, #8
	bl	__MapActor_Jump
	ldr	r0, =0x1ee4
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	ldr	r2, [r5]
	ldr	r3, =0x202
	str	r3, [r2, r6]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r1, =gState
	mov	r0, #0xe2
	ldr	r2, =0x6f
	lsl	r0, #1
	add	r3, r1, r0
	strh	r2, [r3]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #2
	strh	r3, [r2]
	bl	OvlFunc_944_2009130
	cmp	r0, #0xb
	bne	.Lm944_1054
	mov	r0, #0xf
	bl	__Func_8091e9c
	b	.Lm944_105a
.Lm944_1054:
	mov	r0, #0xe
	bl	__Func_8091e9c
.Lm944_105a:
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_944_2008e78


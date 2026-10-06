	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_2009f90
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r0, =.Lm943_5160
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =.Lm943_5268
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r0, #0x1f
	bl	__MapActor_SetAnim
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1c
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1d
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x80
	mov	r2, #0xa0
	lsl	r2, #18
	mov	r0, #0x16
	lsl	r1, #17
	bl	__MapActor_SetPos
	ldr	r5, =gScript_943__0200c80c
	mov	r0, #0x16
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, #0x86
	mov	r2, #0xad
	lsl	r2, #18
	mov	r0, #0x15
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r1, r5
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r1, #0xf2
	mov	r2, #0x97
	mov	r0, #0x18
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x84
	mov	r2, #0x96
	mov	r0, #0x19
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xfe
	mov	r2, #0xa7
	mov	r0, #0x1a
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x8d
	ldr	r2, =0x2920000
	lsl	r1, #17
	mov	r0, #0x1b
	bl	__MapActor_SetPos
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r6, #0
	add	r0, #0x63
	strb	r6, [r0]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r5, #1
	add	r0, #0x63
	strb	r5, [r0]
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	add	r0, #0x63
	strb	r6, [r0]
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	add	r0, #0x63
	strb	r5, [r0]
	ldr	r5, =gScript_943__0200c7a8
	mov	r0, #0x18
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	ldr	r5, =gScript_943__0200c764
	mov	r0, #0x1a
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1b
	bl	__MapActor_SetBehavior
	mov	r1, #0
	mov	r0, #0x14
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0xc8
	lsl	r0, #1
	bl	__CutsceneWait
	mov	r1, #0xfe
	mov	r2, #0xb9
	mov	r0, #0x1c
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #0x1d
	lsl	r1, #13
	ldr	r2, =0x24a0000
	bl	__MapActor_SetPos
	mov	r0, #0x1c
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #0x1d
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xa1
	mov	r0, #0x1d
	mov	r1, #0xac
	lsl	r2, #2
	bl	__MapActor_TravelTo
	mov	r2, #0xa5
	mov	r0, #0x1c
	mov	r1, #0xc8
	lsl	r2, #2
	bl	__MapActor_TravelToWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r2, #0x9b
	mov	r0, #0
	mov	r1, #0xae
	lsl	r2, #2
	bl	__MapActor_TravelTo
	mov	r2, #0x91
	lsl	r2, #2
	mov	r1, #0xb4
	mov	r0, #0x1c
	bl	__MapActor_TravelToWait
	mov	r0, #0x92
	bl	__PlaySound
	ldr	r5, =gScript_943__0200c7ec
	mov	r0, #0x1c
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1d
	bl	__MapActor_SetBehavior
	mov	r0, #0xf0
	bl	__PlaySound
	mov	r1, #0x86
	ldr	r2, =0x2520000
	mov	r0, #0x1f
	lsl	r1, #16
	bl	__MapActor_SetPos
	ldr	r1, =gScript_943__0200c814
	mov	r0, #0x1f
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x86
	mov	r2, #0x92
	mov	r0, #0x1e
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, #0x1e
	bl	__MapActor_SetSpeed
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #12
	mov	r2, #0x99
	str	r3, [r0, #0x28]
	lsl	r2, #2
	mov	r1, #0xba
	mov	r0, #0x1e
	bl	__MapActor_TravelToWait
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1e
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0x96
	lsl	r2, #2
	mov	r0, #0x1e
	mov	r1, #0xd8
	bl	__MapActor_TravelToWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r0, #0x1e
	bl	OvlFunc_943_200ba00
	bl	OvlFunc_943_2008bb8
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r5, =gScript_943__0200c888
	mov	r0, #0x1e
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0x1c
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0x1d
	bl	__MapActor_RunScript
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x93
	bl	__PlaySound
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x18
	bl	__MapActor_SetIdle
	mov	r0, #0x19
	bl	__MapActor_SetIdle
	mov	r0, #0x1a
	bl	__MapActor_SetIdle
	mov	r0, #0x1b
	bl	__MapActor_SetIdle
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__Func_800c5b4
	mov	r0, #0x15
	bl	__Func_8093304
	ldr	r0, =0x1e45
	mov	r1, #1
	mov	r2, #0
	bl	__Func_8019aa0
	bl	__Func_800c5fc
	mov	r0, #0xd
	bl	__Func_8091e9c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2009f90


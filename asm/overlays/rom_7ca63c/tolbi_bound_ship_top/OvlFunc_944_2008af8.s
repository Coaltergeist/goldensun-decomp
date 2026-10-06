	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_944_2008af8
	push	{r5, r6, r7, lr}
	bl	__CutsceneStart
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =gOvl_0200976c
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =.Lm944_1844
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
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x43
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x96
	lsl	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x93
	bl	__PlaySound
	mov	r0, #0x64
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
	mov	r0, #0xf
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x64
	bl	__MapActor_TravelTo
	mov	r0, #0xa
	mov	r1, #0x3c
	mov	r2, #0x64
	bl	__MapActor_TravelTo
	mov	r0, #0xb
	mov	r1, #0x78
	mov	r2, #0x64
	bl	__MapActor_TravelTo
	mov	r0, #0xc
	mov	r1, #0xb4
	mov	r2, #0x64
	bl	__MapActor_TravelTo
	mov	r0, #0xd
	mov	r1, #0xf0
	mov	r2, #0x64
	bl	__MapActor_TravelTo
	mov	r1, #0xa0
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x64
	bl	__MapActor_TravelTo
	mov	r1, #0xbe
	lsl	r1, #1
	mov	r2, #0x64
	mov	r0, #0xf
	bl	__MapActor_TravelTo
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
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
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xf
	bl	__MapActor_SetPos
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, =0x1999
	mov	r5, r0
	mov	r1, #0xac
	mov	r2, #0xaa
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	lsl	r2, #17
	lsl	r1, #16
	mov	r0, #0x12
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1d
	bl	__PlaySound
	mov	r0, #0x8f
	lsl	r0, #4
	bl	__SetFlag
	ldr	r7, =0xccc
	mov	r6, #0
.Lm944_d12:
	ldr	r3, [r5, #0x18]
	add	r3, r7
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r7
	str	r3, [r5, #0x1c]
	mov	r0, #1
	add	r6, #1
	bl	__WaitFrames
	cmp	r6, #0x1f
	bls	.Lm944_d12
	mov	r2, #0x3c
	mov	r0, #8
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xaa
	mov	r0, #8
	mov	r1, #0xa8
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xaa
	mov	r0, #8
	mov	r1, #0xc8
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r3, =0x12666
	mov	r5, r0
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, #0xac
	lsl	r3, #16
	str	r3, [r5, #8]
	mov	r3, #0xa0
	lsl	r3, #16
	str	r3, [r5, #0xc]
	mov	r3, #0xaa
	lsl	r3, #17
	str	r3, [r5, #0x10]
	mov	r3, #0
	strh	r3, [r5, #6]
	ldr	r3, =0x6666
	str	r3, [r5, #0x44]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x48]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_Jump
	mov	r0, #0x93
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_944__020093ac
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_8092b08
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0x11
	bl	__MapActor_SetSpeed
	ldr	r3, =0x1999
	str	r3, [r5, #0x44]
	ldr	r3, =0xb333
	mov	r0, #0x99
	str	r3, [r5, #0x48]
	bl	__PlaySound
	mov	r3, #0x80
	lsl	r3, #12
	mov	r2, #0xb4
	str	r3, [r5, #0x28]
	mov	r0, #0x11
	mov	r1, #0x84
	lsl	r2, #1
	bl	__MapActor_TravelTo
	mov	r2, #0xb4
	mov	r1, #0x84
	lsl	r2, #1
	mov	r0, #0x12
	bl	__MapActor_TravelTo
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x11
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r0, #0x28
	strh	r3, [r5, #6]
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xd
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_944_2008af8


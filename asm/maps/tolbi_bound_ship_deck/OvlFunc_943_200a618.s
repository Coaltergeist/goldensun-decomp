	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200a618
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =.Lm943_5418
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #1
	mov	r0, #0x19
	bl	__SetCameraTarget
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #5
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r0, #6]
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xe0
	ldr	r3, [r3]
	ldr	r2, =0x202
	lsl	r0, #1
	add	r3, r0
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_943_2008bb8
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xd8
	mov	r0, #0
	lsl	r1, #16
	ldr	r2, =0x24a0000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	ldr	r2, =0x256
	mov	r1, #0xd8
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_943_200ba00
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0xa
	bl	__MapActor_Jump
	mov	r0, #0
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0x9c
	mov	r1, #0xc2
	lsl	r2, #2
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xb5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x19
	bl	__MapActor_GetActor
	ldr	r5, .Lm943_275c	@ 0
	add	r0, #0x55
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r5, [r0]
	lsl	r1, #10
	mov	r0, #0x19
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0x99
	lsl	r2, #2
	mov	r1, #0xd8
	mov	r0, #0x19
	bl	__MapActor_TravelTo
	mov	r0, #0x95
	bl	__PlaySound
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_8092b08
	mov	r1, #5
	mov	r0, #0x16
	bl	__MapActor_SetAnim
	mov	r0, #0x16
	bl	__MapActor_GetActor
	b	.Lm943_2780

	.align	2, 0
.Lm943_275c:
	.word	0
	.pool

.Lm943_2780:
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r0, #0x28]
	ldr	r3, =0xb333
	str	r3, [r0, #0x48]
	mov	r3, #0xd0
	lsl	r3, #9
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r5, #0x80
	ldr	r3, =OvlFunc_943_20088c0
	lsl	r5, #8
	mov	r1, #0xc0
	mov	r2, #0xc0
	str	r3, [r0, #0x6c]
	str	r5, [r0, #0x44]
	lsl	r1, #11
	mov	r0, #0x16
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	ldr	r2, =0x26a
	mov	r1, #0xb6
	mov	r0, #0x16
	bl	__MapActor_TravelToWait
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_943_200ba00
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0x50
	bl	__MapActor_Jump
	mov	r2, #0x8d
	mov	r0, #0x19
	mov	r1, #0xe8
	lsl	r2, #2
	bl	__MapActor_TravelTo
	mov	r0, #0
	mov	r1, #0xcc
	ldr	r2, =0x262
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0xd0
	ldr	r2, =0x256
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0xf8
	ldr	r2, =0x256
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm943_2812
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm943_2812:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm943_2826
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Lm943_2826:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm943_283a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.Lm943_283a:
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #1
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #2
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #3
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0x92
	mov	r0, #0
	mov	r1, #0xfa
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r2, #0x96
	mov	r0, #1
	mov	r1, #0xf0
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r2, #0x96
	mov	r0, #2
	mov	r1, #0xfe
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r2, #0x9a
	lsl	r2, #2
	mov	r0, #3
	mov	r1, #0xf8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x95
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0x8d
	mov	r0, #0
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r2, #0x8d
	mov	r1, #0xf8
	lsl	r2, #2
	mov	r0, #1
	bl	__MapActor_TravelToAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x8d
	mov	r0, #2
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r2, #0x8d
	mov	r1, #0xf8
	lsl	r2, #2
	mov	r0, #3
	bl	__MapActor_TravelToAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r2, =gState
	mov	r0, #0xe2
	ldr	r1, =0x6f
	lsl	r0, #1
	add	r3, r2, r0
	strh	r1, [r3]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r1, r2, r3
	mov	r3, #0x1e
	strh	r3, [r1]
	add	r0, #0x67
	add	r2, r0
	mov	r3, #3
	strb	r3, [r2]
	ldr	r0, =0x6d
	mov	r1, #0x10
	bl	__Func_8091f90
	mov	r0, #0x3e
	mov	r1, #3
	bl	__StartMapBattle
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200a618


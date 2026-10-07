	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_2009db0
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =.Lm943_5160
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =.Lm943_5208
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xf8
	mov	r2, #0xb6
	lsl	r2, #18
	mov	r0, #0x15
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionIn
	mov	r0, #0x15
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xad
	mov	r0, #0x15
	mov	r1, #0xf2
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x15
	mov	r1, #0xc4
	ldr	r2, =0x2a6
	bl	__MapActor_TravelToAnimWait
	ldr	r2, =0x28e
	mov	r0, #0x15
	mov	r1, #0xb6
	bl	__MapActor_TravelToAnimWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	ldr	r0, =0x1e44
	bl	__MessageID
	ldr	r0, =0xa015
	bl	OvlFunc_943_200b9ec
	mov	r0, #0
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__MapActor_SetSpeed
	mov	r1, #0x9a
	ldr	r2, =0x261
	mov	r0, #0
	bl	__MapActor_TravelTo
	mov	r0, #0x92
	bl	__PlaySound
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x64
	strh	r5, [r0]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	add	r0, #0x64
	strh	r5, [r0]
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	mov	r1, #0x80
	add	r0, #0x64
	mov	r2, #0xf2
	strh	r5, [r0]
	lsl	r1, #14
	mov	r0, #0x18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xa8
	mov	r2, #0xf8
	mov	r0, #0x19
	lsl	r1, #15
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x95
	mov	r0, #0x1a
	lsl	r1, #13
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0x18
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__MapActor_SetSpeed
	mov	r0, #0x19
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__MapActor_SetSpeed
	ldr	r2, =0x13333
	mov	r0, #0x1a
	ldr	r1, =0x26666
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_943__0200c4ec
	mov	r0, #0x18
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x19
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x1a
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x18
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x1a
	mov	r1, #3
	bl	__Func_8092950
.Lm943_1ef4:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x18
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Lm943_1ef4
	bl	OvlFunc_943_2008bb8
	mov	r0, #0x15
	mov	r2, #0x99
	mov	r1, #0xc4
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r0, #0x18
	bl	__MapActor_WaitScript
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
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
	mov	r0, #0xc
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2009db0


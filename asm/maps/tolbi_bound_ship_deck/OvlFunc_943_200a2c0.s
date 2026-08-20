	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_200a2c0
	push	{r5, r6, r7, lr}
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
	ldr	r0, =.Lm943_5340
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xb0
	mov	r2, #0xae
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r1, #0x84
	strh	r3, [r0, #6]
	lsl	r1, #17
	ldr	r2, =0x2960000
	mov	r0, #0x15
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r1, #0xb8
	mov	r2, #0xa8
	strh	r3, [r0, #6]
	lsl	r1, #16
	mov	r0, #0x18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xca
	mov	r2, #0xad
	mov	r0, #0x19
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xfc
	mov	r0, #0x1a
	lsl	r1, #16
	ldr	r2, =0x2860000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0x1b
	lsl	r1, #17
	ldr	r2, =0x2ae0000
	bl	__MapActor_SetPos
	mov	r1, #0xac
	mov	r2, #0x9e
	mov	r0, #0x1c
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x80
	lsl	r1, #17
	ldr	r2, =0x26e0000
	mov	r0, #0x1d
	bl	__MapActor_SetPos
	mov	r0, #0x18
	bl	__MapActor_GetActor
	ldr	r5, .Lm943_23b8	@ 0
	add	r0, #0x63
	strb	r5, [r0]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x63
	strb	r3, [r0]
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	add	r0, #0x63
	strb	r5, [r0]
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x63
	strb	r3, [r0]
	mov	r2, #0
	mov	r0, #0x14
	mov	r1, #0
	bl	__MapActor_SetPos
	ldr	r5, =gScript_943__0200c8c4
	mov	r0, #0x18
	mov	r1, r5
	bl	__MapActor_SetBehavior
	b	.Lm943_23d8

	.align	2, 0
.Lm943_23b8:
	.word	0
	.pool

.Lm943_23d8:
	mov	r1, r5
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	ldr	r5, =gScript_943__0200c8b0
	mov	r0, #0x1a
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1b
	bl	__MapActor_SetBehavior
	ldr	r5, =gScript_943__0200c8d8
	mov	r0, #0x1c
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1d
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
	mov	r0, #0x1b
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x1c
	mov	r1, #3
	bl	__Func_8092950
	mov	r1, #3
	mov	r0, #0x1d
	bl	__Func_8092950
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x93
	bl	__PlaySound
	mov	r0, #0x1f
	bl	__MapActor_GetActor
	ldr	r3, =0x1999
	mov	r6, r0
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	mov	r3, #0xc2
	lsl	r3, #16
	str	r3, [r6, #8]
	ldr	r3, =0x2820000
	ldr	r7, =0xf5c
	str	r3, [r6, #0x10]
	mov	r5, #0
.Lm943_2472:
	ldr	r3, [r6, #0x18]
	add	r3, r7
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r7
	str	r3, [r6, #0x1c]
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0xf
	bls	.Lm943_2472
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	ldr	r3, =0x11999
	mov	r6, r0
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	mov	r3, #0xc2
	lsl	r3, #16
	str	r3, [r6, #8]
	mov	r3, #0xa0
	lsl	r3, #15
	str	r3, [r6, #0xc]
	ldr	r3, =0x2820000
	str	r3, [r6, #0x10]
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r6, #6]
	ldr	r3, =0x6666
	str	r3, [r6, #0x44]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x48]
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x93
	bl	__PlaySound
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x1f
	bl	__MapActor_SetPos
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r5, .Lm943_252c	@ 0
	mov	r3, r6
	add	r3, #0x55
	mov	r2, #0x99
	strb	r5, [r3]
	mov	r0, #0
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__MapActor_TravelTo
	mov	r0, #0x1e
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0x96
	mov	r0, #0x1e
	mov	r1, #0xc4
	lsl	r2, #2
	bl	__MapActor_TravelToWait
	mov	r2, #0x96
	mov	r1, #0xd8
	lsl	r2, #2
	mov	r0, #0x1e
	bl	__MapActor_TravelToWait
	mov	r0, #0x1c
	bl	__MapActor_SetIdle
	b	.Lm943_2558

	.align	2, 0
.Lm943_252c:
	.word	0
	.pool

.Lm943_2558:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r2, =0xcccc
	mov	r0, #0x1c
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_943__0200c888
	mov	r0, #0x1c
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0x1e
	bl	OvlFunc_943_200ba00
	bl	OvlFunc_943_2008bb8
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0x1e
	bl	__MapActor_SetBehavior
	mov	r0, #0x1d
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	ldr	r2, =0xcccc
	mov	r0, #0x1d
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r0, #0x1d
	bl	__MapActor_RunScript
	mov	r0, #0x14
	bl	__CutsceneWait
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
	mov	r0, #0x1c
	bl	__MapActor_SetIdle
	mov	r0, #0x1d
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
	mov	r0, #0xe
	bl	__Func_8091e9c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200a2c0


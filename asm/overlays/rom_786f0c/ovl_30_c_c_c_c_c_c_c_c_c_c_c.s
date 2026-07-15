	.include "macros.inc"

	.section .text.after_85d4, "ax", %progbits

.thumb_func_start OvlFunc_886_2008658
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #3
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	ldr	r2, =0x3333
	mov	r0, #3
	ldr	r1, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #8
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #0xca
	mov	r2, #0xfe
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r6, #0
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	ldr	r7, =OvlFunc_886_20090c0
	add	r0, #0x55
	mov	r1, #0xc8
	lsl	r1, #4
	strb	r6, [r0]
	mov	r0, r7
	bl	__StartTask
	mov	r0, #1
	bl	__WaitFrames
	ldr	r2, =iwram_3001ebc
	ldr	r3, [r2]
	mov	r8, r2
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x20
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L752
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.L752:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L766
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.L766:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L77a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.L77a:
	mov	r1, #0xc6
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0xce
	mov	r2, #0xfc
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0x83
	lsl	r2, #2
	mov	r0, #3
	ldr	r1, =0x332
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r5, =ActorCmd_ARRAY_886__020092fc
	mov	r0, #0
	ldr	r1, =0x1000a
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r0, #1
	ldr	r1, =0x1000a
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r0, #2
	ldr	r1, =0x1000a
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r2, r5
	ldr	r1, =0x1000a
	mov	r0, #3
	bl	__Func_8092a1c
	mov	r0, #0x96
	lsl	r0, #1
	bl	__CutsceneWait
	bl	__Func_8093554
	add	r0, #0x55
	strb	r6, [r0]
	ldr	r1, =0x333
	ldr	r0, =0x1999
	bl	__Func_80933d4
	mov	r2, #0xd7
	mov	r3, #1
	mov	r1, #0
	lsl	r2, #17
	ldr	r0, =0x3120000
	bl	__Func_80933f8
	mov	r0, #0xf0
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__MapActor_SetIdle
	mov	r1, #0x81
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	ldr	r2, =0x195
	ldr	r1, =0x333
	mov	r0, #0xa
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0xa
	bl	__Func_8092adc
	ldr	r0, =0x1c1e
	bl	__MessageID
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x900a
	bl	__Func_8093040
	mov	r0, #0
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__MapActor_SetIdle
	mov	r0, #2
	bl	__MapActor_SetIdle
	mov	r0, #3
	bl	__MapActor_SetIdle
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0x14
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x900a
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0x28
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x900a
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0x83
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0x28
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0xa
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0xa
	ldr	r0, =0x900a
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0
	mov	r0, #9
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x28
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x4009
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r0, #0xa
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	ldr	r0, =0x400a
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r1, #0xd0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #9
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r0, =0x4009
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xa
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x3c
	mov	r0, #0xa
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r3, #1
	b	.Labc

	.pool_aligned

.Labc:
	mov	r0, #0xc
	mov	r4, #7
	str	r0, [sp, #8]
	str	r3, [sp, #0xc]
	str	r3, [sp, #0x14]
	mov	r2, #6
	mov	r1, #0xb
	mov	r3, #6
	mov	r0, #0xa
	str	r2, [sp]
	str	r1, [sp, #4]
	str	r4, [sp, #0x10]
	str	r6, [sp, #0x18]
	bl	__Func_80931ec
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r2, #0xea
	mov	r3, #1
	lsl	r2, #17
	mov	r1, #0
	ldr	r0, =0x3090000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	ldr	r0, =0x1001
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, r7
	bl	__StopTask
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x4008
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r3, #1
	mov	r1, #0
	ldr	r2, =0x1c30000
	ldr	r0, =0x2ee0000
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #5
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #5
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	ldr	r0, =0x4008
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0x315
	ldr	r2, =0x1d9
	bl	__Func_80921c4
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0
	ldr	r0, =0x4008
	bl	__Func_8092c40
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lc6c
	mov	r3, r8
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lc6c:
	mov	r2, #0xd6
	lsl	r2, #17
	mov	r3, #1
	mov	r1, #0
	ldr	r0, =0x3090000
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #4
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1c33
	bl	__MessageID
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0xea
	mov	r3, #1
	mov	r1, #0
	lsl	r2, #17
	ldr	r0, =0x3090000
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x4008
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0x333
	ldr	r2, =0x1e9
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #1
	mov	r0, #3
	bl	__Func_8092b08
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x82
	mov	r0, #3
	ldr	r1, =0x31a
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc4
	mov	r2, #0xf8
	mov	r0, #3
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x90
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #9
	b	.Lf18

	.pool_aligned

.Lf18:
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xd6
	mov	r3, #1
	mov	r1, #0
	lsl	r2, #17
	ldr	r0, =0x3090000
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r2, #0xc2
	mov	r0, #0xb
	ldr	r1, =0x343
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x84
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	ldr	r0, =0x200b
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0xea
	mov	r3, #1
	mov	r1, #0
	lsl	r2, #17
	ldr	r0, =0x3090000
	bl	__Func_80933f8
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xf0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x90
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #2
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_886__02009400
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	ldr	r1, =gScript_886__02009310
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	mov	r2, #0xbc
	mov	r0, #0xb
	ldr	r1, =0x345
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0xb
	bl	__Func_8092adc
	ldr	r0, =0x81d
	bl	__SetFlag
	bl	__CutsceneEnd
	add	sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_2008658

	.section .text.after_90c0, "ax", %progbits

	.section .data
	.global ActorCmd_ARRAY_886__020092fc
	.global .L1568
	.global .L1590
	.global .L15b8
	.global .L1738
	.global .L18b8
	.global gOvl_02009ac8
	.global ActorCmd_ARRAY_918__02009c00
	.global .L1da4
	.global .L1ffc
	.global gOvl_02009478

ActorCmd_ARRAY_886__020092fc:
	.incbin "overlays/rom_786f0c/orig.bin", 0x12fc, (0x1310-0x12fc)
	.global gScript_886__02009310
gScript_886__02009310:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1310, (0x1400-0x1310)
	.global gScript_886__02009400
gScript_886__02009400:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1400, (0x1440-0x1400)
	.global gScript_886__02009440
gScript_886__02009440:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1440, (0x1478-0x1440)
gOvl_02009478:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1478, (0x1568-0x1478)
.L1568:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1568, (0x1590-0x1568)
.L1590:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1590, (0x15b8-0x1590)
.L15b8:
	.incbin "overlays/rom_786f0c/orig.bin", 0x15b8, (0x1738-0x15b8)
.L1738:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1738, (0x18b8-0x1738)
.L18b8:
	.incbin "overlays/rom_786f0c/orig.bin", 0x18b8, (0x1ac8-0x18b8)
gOvl_02009ac8:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1ac8, (0x1c00-0x1ac8)
ActorCmd_ARRAY_918__02009c00:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1c00, (0x1da4-0x1c00)
.L1da4:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1da4, (0x1ffc-0x1da4)
.L1ffc:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1ffc

	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_883_20095dc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x24
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	bl	__Func_8093554
	mov	r1, #0
	mov	r6, r0
	mov	r8, r1
	mov	r3, r6
	add	r3, #0x55
	mov	r2, r8
	mov	r1, #0xa0
	lsl	r1, #16
	strb	r2, [r3]
	ldr	r0, =0x17f0000
	ldr	r2, =0x36d0000
	mov	r3, #0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__CutsceneWait
	bl	__Func_800fe9c
	mov	r3, #0x14
	mov	r2, #0x32
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x29
	mov	r2, #7
	mov	r3, #3
	bl	__Func_8010704
	mov	r3, #2
	str	r3, [sp]
	mov	r5, #1
	mov	r9, r3
	mov	r0, #2
	mov	r1, #0x66
	mov	r2, #0x54
	mov	r3, #0x29
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #1
	mov	r1, #0x66
	mov	r2, #0x53
	mov	r3, #0x29
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x67
	mov	r2, #0x52
	mov	r3, #0x2a
	mov	r0, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r1, r6
	add	r1, #0x55
	str	r1, [sp, #0x1c]
	ldrb	r2, [r1]
	mov	r3, r8
	str	r2, [sp, #0x20]
	mov	r0, #0
	strb	r3, [r1]
	ldr	r2, =0x2b20000
	ldr	r1, =0x1970000
	bl	__MapActor_SetPos
	mov	r1, #0xc4
	mov	r2, #0xe0
	mov	r0, #0x15
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x95
	mov	r2, #0xb8
	mov	r0, #1
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x95
	mov	r2, #0xbe
	mov	r0, #5
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0xb
	bl	__MapActor_SetAnim
	ldr	r1, =gScript_883__0200e590
	mov	r0, #0
	mov	r10, r1
	bl	__MapActor_SetBehavior
	mov	r0, #0x17
	mov	r1, #2
	mov	r2, #1
	bl	OvlFunc_883_200b45c
	ldr	r2, =iwram_3001ebc
	mov	r1, #0xe0
	mov	r11, r2
	ldr	r2, [r2]
	lsl	r1, #1
	add	r3, r2, r1
	mov	r1, r8
	str	r1, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__MapTransitionIn
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #1
	lsl	r1, #8
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_883__0200e614
	mov	r0, #5
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_883__0200e5cc
	mov	r0, #1
	bl	__MapActor_SetBehavior
	mov	r7, #0x80
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetBehavior
	lsl	r7, #9
	mov	r1, #0xb0
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	str	r7, [r6, #0x18]
	str	r7, [r6, #0x1c]
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__MapActor_SetSpeed
	mov	r1, #0xca
	lsl	r1, #1
	ldr	r2, =0x34b
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x17
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x17
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__MapActor_SetSpeed
	mov	r1, #0xc3
	mov	r2, #0xd0
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0x17
	bl	__MapActor_TravelToWait
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc9
	mov	r2, #0xcf
	lsl	r2, #2
	lsl	r1, #1
	mov	r0, #0x17
	bl	__MapActor_TravelToWait
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #0xc3
	ldr	r2, =0x34a0000
	mov	r0, #0x17
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r0, #0
	mov	r1, #0xb
	bl	__MapActor_SetAnim
	mov	r1, r10
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0xc8
	bl	__CutsceneWait
	mov	r1, r9
	str	r1, [sp]
	mov	r3, #0x29
	mov	r2, #0x54
	mov	r0, #7
	mov	r1, #0x66
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r1, #1
	mov	r0, #0
	str	r7, [r6, #0x18]
	str	r7, [r6, #0x1c]
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =0x179
	ldr	r2, =0x34b
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x17
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x17
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__MapActor_SetSpeed
	mov	r1, #0xc3
	mov	r2, #0xd0
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0x17
	bl	__MapActor_TravelToWait
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xcf
	lsl	r2, #2
	ldr	r1, =0x179
	mov	r0, #0x17
	bl	__MapActor_TravelToWait
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_8092950
	mov	r2, #0
	mov	r0, #0x17
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #0
	mov	r1, #0xb
	bl	__MapActor_SetAnim
	mov	r1, r10
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0xc8
	bl	__CutsceneWait
	mov	r3, #0x29
	mov	r2, #0x53
	mov	r0, #6
	mov	r1, #0x66
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r1, #1
	mov	r0, #0
	str	r7, [r6, #0x18]
	str	r7, [r6, #0x1c]
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xb4
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x357
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xb0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x18
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x18
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__MapActor_SetSpeed
	mov	r1, #0xc3
	mov	r2, #0xd0
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0x18
	bl	__MapActor_TravelToWait
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb4
	ldr	r2, =0x34a
	lsl	r1, #1
	mov	r0, #0x18
	bl	__MapActor_TravelToWait
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092950
	mov	r2, #0
	mov	r0, #0x18
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #0
	mov	r1, #0xb
	bl	__MapActor_SetAnim
	mov	r1, r10
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0xc8
	bl	__CutsceneWait
	b	.Lm883_1a50

	.pool_aligned

.Lm883_1a50:
	mov	r3, #0x2a
	mov	r2, #0x52
	mov	r0, #5
	mov	r1, #0x67
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetBehavior
	ldr	r0, =0xf03
	str	r7, [r6, #0x18]
	str	r7, [r6, #0x1c]
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #5
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r3, #0
	mov	r0, #0x15
	mov	r1, #5
	mov	r2, #6
	bl	OvlFunc_883_200b2b0
	mov	r0, #0x15
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__MapActor_SetSpeed
	mov	r2, #0xd0
	ldr	r1, =0x18d
	lsl	r2, #2
	mov	r0, #0x15
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0xba
	mov	r2, #0xd0
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0x15
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0xa0
	mov	r2, #0x1e
	mov	r0, #0x15
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x15
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm883_1ba2
	mov	r3, r11
	ldr	r2, [r3]
	mov	r1, #0xec
	lsl	r1, #1
	add	r2, r1
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm883_1ba2:
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__ActorMessage_Wait
	ldr	r0, =0xf0a
	bl	__MessageID
	mov	r1, #0xc1
	lsl	r1, #1
	ldr	r2, =0x349
	mov	r0, #0x15
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xd0
	mov	r2, #0x3c
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0x15
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm883_1c26
	mov	r3, r11
	ldr	r2, [r3]
	mov	r1, #0xec
	lsl	r1, #1
	add	r2, r1
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm883_1c26:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0xd0
	mov	r2, #0x3c
	mov	r0, #0x15
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0xf0e
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0xc1
	ldr	r2, =0x339
	lsl	r1, #1
	mov	r0, #0x15
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x3c
	bl	__ActorMessage_Wait
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0xba
	mov	r2, #0xd0
	mov	r0, #0x15
	lsl	r1, #1
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x15
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r1, #0xa0
	mov	r2, #0xd7
	mov	r3, #1
	ldr	r0, =0x1790000
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r2, #0x80
	mov	r1, r7
	mov	r0, #5
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x80
	mov	r1, r7
	mov	r0, #1
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xe2
	mov	r0, #1
	ldr	r1, =0x171
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r1, #0xc4
	mov	r2, #0xe2
	lsl	r2, #2
	mov	r0, #5
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r3, #0
	mov	r0, #5
	mov	r1, #0xa
	mov	r2, #0xb
	bl	OvlFunc_883_200b2b0
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #5
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #5
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xc4
	mov	r0, #5
	lsl	r1, #1
	ldr	r2, =0x34b
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x90
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #5
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0x15
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r3, #0
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0xb
	b	.Lm883_1e8c

	.pool_aligned

.Lm883_1e8c:
	bl	OvlFunc_883_200b2b0
	mov	r0, #5
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__MapActor_SetSpeed
	mov	r1, #0xc4
	lsl	r1, #1
	ldr	r2, =0x34b
	mov	r0, #1
	bl	__MapActor_TravelToAnim
	mov	r0, #5
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r7, #0xfe
	mov	r3, r7
	and	r3, r2
	mov	r1, #0xcc
	strb	r3, [r0]
	lsl	r1, #1
	ldr	r2, =0x34b
	mov	r0, #5
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #5
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	mov	r1, #0x80
	strb	r3, [r0]
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #5
	bl	__Func_8092adc
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #4
	mov	r2, #0x1e
	bl	__MapActor_Jump
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0x15
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #0x15
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #5
	mov	r1, #1
	bl	__MapActor_TurnToFaceActor
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x15
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #5
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r1, #0xa0
	mov	r3, #1
	ldr	r0, =0x1750000
	lsl	r1, #16
	ldr	r2, =0x3450000
	bl	__Func_80933f8
	mov	r1, #0xb6
	mov	r2, #0xcc
	mov	r0, #0x15
	lsl	r1, #1
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	mov	r2, #0x1e
	mov	r0, #5
	mov	r1, #1
	bl	__MapActor_TurnToFaceActor
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x1e
	bl	__ActorMessage_Wait
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x15
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	mov	r5, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lm883_21b0
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm883_21b0:
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__ActorMessage_Wait
	ldr	r0, =0xf27
	bl	__MessageID
	mov	r2, #0
	mov	r0, #0x15
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r2, #0
	mov	r0, #0x15
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #7
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #5
	bl	__CutsceneWait
	mov	r3, #0xe
	mov	r1, #1
	mov	r0, #0xa
	mov	r4, #4
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r3, [sp, #0xc]
	str	r3, [sp, #0x14]
	mov	r2, #2
	mov	r1, #0xe
	mov	r3, #0x18
	mov	r0, #0x15
	str	r2, [sp]
	str	r5, [sp, #0x18]
	str	r4, [sp, #0x10]
	bl	__Func_80931ec
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r3, [r6, #0x50]
	mov	r1, r6
	add	r1, #0x5a
	ldrb	r2, [r1]
	add	r3, #0x26
	strb	r5, [r3]
	mov	r3, r7
	and	r3, r2
	strb	r3, [r1]
	mov	r2, #0xc0
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0xb6
	mov	r0, #0x15
	lsl	r1, #1
	ldr	r2, =0x32f
	bl	__MapActor_TravelToAnimWait
	mov	r0, #4
	bl	__CutsceneWait
	mov	r5, #0
.Lm883_2266:
	ldr	r3, [r6, #0x10]
	mov	r1, #0xc0
	lsl	r1, #9
	add	r3, r1
	str	r3, [r6, #0x10]
	ldr	r2, =0xffffe667
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	mov	r0, #1
	add	r5, #1
	bl	__CutsceneWait
	b	.Lm883_22bc

	.pool_aligned

.Lm883_22bc:
	cmp	r5, #4
	bne	.Lm883_2266
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #1
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xbb
	ldr	r2, =0x33b
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #5
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xb0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #5
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #5
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0xd
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #2
	mov	r2, #5
	bl	__MapActor_Jump
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #0x53
	mov	r3, #0x29
	mov	r1, #0x66
	mov	r0, #1
	bl	__CopyMapTiles
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0x15
	mov	r1, #8
	bl	__MapActor_SetAnim
	mov	r3, #0x80
	lsl	r3, #8
	mov	r1, #0xb6
	str	r3, [r6, #0x1c]
	mov	r0, #0x15
	lsl	r1, #17
	ldr	r2, =0x32b0000
	bl	__MapActor_SetPos
	mov	r5, #0
.Lm883_23ae:
	ldr	r3, [r6, #0x1c]
	ldr	r1, =0x1999
	add	r3, r1
	str	r3, [r6, #0x1c]
	mov	r0, #1
	add	r5, #1
	bl	__CutsceneWait
	cmp	r5, #5
	bne	.Lm883_23ae
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	ldr	r0, =0x4ccc
	ldr	r1, =0x999
	bl	__Func_80933d4
	mov	r0, #0xba
	mov	r1, #0xa0
	mov	r3, #1
	lsl	r0, #17
	lsl	r1, #16
	ldr	r2, =0x35b0000
	bl	__Func_80933f8
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0x15
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0x15
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	ldr	r1, =0x167
	ldr	r2, =0x343
	mov	r0, #0x15
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0x15
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r1]
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x50
	bl	__ActorMessage_Wait
	mov	r0, #0x15
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__MapActor_Surprise
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r2, #0
	mov	r0, #1
	mov	r1, #6
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, #1
	bl	__MapActor_SetSpeed
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x5a
	ldrb	r3, [r2]
	and	r5, r3
	strb	r5, [r2]
	mov	r0, #1
	ldr	r2, =0x33b
	ldr	r1, =0x193
	bl	__MapActor_TravelTo
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0
	mov	r2, #1
	mov	r0, #5
	bl	__ActorMessage_Wait
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0xd
	bl	__MapActor_SetAnim
	mov	r2, #5
	mov	r1, #2
	mov	r0, #1
	bl	__MapActor_Jump
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x29
	mov	r0, #2
	mov	r1, #0x66
	mov	r2, #0x54
	bl	__CopyMapTiles
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #0
	lsl	r1, #11
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__MapActor_Emote
	mov	r0, #5
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__MapActor_SetSpeed
	mov	r1, #0xcc
	ldr	r2, =0x357
	lsl	r1, #1
	mov	r0, #5
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x3c
	mov	r0, #0x15
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #5
	mov	r1, #3
	bl	__Func_809259c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #0x15
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r0, #0x15
	ldr	r1, =0x105
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r0, #0x15
	mov	r1, #0
	b	.Lm883_2714

	.pool_aligned

.Lm883_2714:
	mov	r2, #0x3c
	bl	__ActorMessage_Wait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x46
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r2, #0x1e
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r2, #0x1e
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #3
	mov	r0, #5
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x15
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x3c
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	lsl	r1, #9
	mov	r0, #1
	bl	__MapActor_SetSpeed
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xc7
	mov	r2, #0xcf
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x5a
	ldrb	r3, [r2]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r2]
	mov	r0, #5
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r3, r5
	strb	r3, [r2]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r6, r0
	lsl	r1, #9
	mov	r0, #1
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	ldrsh	r1, [r6, r2]
	mov	r0, #5
	mov	r3, #0x12
	ldrsh	r2, [r6, r3]
	add	r1, #0x10
	bl	__MapActor_TravelToAnim
	mov	r2, #0xa
	ldrsh	r1, [r6, r2]
	mov	r3, #0x12
	ldrsh	r2, [r6, r3]
	add	r1, #0x10
	sub	r2, #0x10
	mov	r0, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0xa0
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0xa
	ldrsh	r1, [r6, r2]
	mov	r0, #5
	mov	r3, #0x12
	ldrsh	r2, [r6, r3]
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0
	mov	r0, #5
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r2, #0xa
	ldrsh	r1, [r6, r2]
	mov	r0, #1
	mov	r3, #0x12
	ldrsh	r2, [r6, r3]
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #5
	bl	__Func_80917f4
	mov	r1, #0xa0
	ldr	r0, =0x1790000
	lsl	r1, #16
	ldr	r2, =0x3770000
	mov	r3, #1
	bl	__Func_80933f8
	mov	r3, #0
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0xa
	bl	OvlFunc_883_200b380
	mov	r1, #0xbc
	mov	r2, #0xe4
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r3, #0
	mov	r0, #0x15
	mov	r1, #6
	mov	r2, #5
	bl	OvlFunc_883_200b380
	mov	r0, #0x15
	ldr	r1, =0x175
	ldr	r2, =0x377
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0
	bl	__SetCameraTarget
	bl	__Func_8093530
	mov	r0, #0x64
	bl	__CutsceneWait
	ldr	r0, =0x202
	bl	__SetFlag
	ldr	r0, =0x12f
	bl	__ClearFlag
	add	r1, sp, #0x20
	ldr	r2, [sp, #0x1c]
	ldrb	r1, [r1]
	strb	r1, [r2]
	bl	__CutsceneEnd
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_20095dc


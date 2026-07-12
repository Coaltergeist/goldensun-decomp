	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200a858
	push	{lr}
	bl	__CutsceneStart
	bl	__Func_808c44c
	ldr	r0, =0x2643
	bl	__MessageID
	ldr	r3, =.L679c
	mov	r1, #0
	ldr	r0, [r3]
	bl	__ActorMessage
	bl	__Func_808c4c0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0x1778
	ldr	r2, =0xd48
	bl	__Func_80921c4
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a858

.thumb_func_start OvlFunc_881_200a8a8
	push	{lr}
	bl	__CutsceneStart
	bl	__Func_808c44c
	ldr	r0, =0x264c
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L28d4
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
.L28d4:
	bl	__Func_808c4c0
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a8a8

.thumb_func_start OvlFunc_881_200a8e8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	bl	__Func_808c4c0
	ldr	r0, =0x16666
	mov	r1, #6
	bl	__Func_80936a0
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x17880000
	neg	r1, r1
	ldr	r2, =0xd680000
	bl	__Func_80933f8
	ldr	r2, =0x6666
	mov	r0, #0
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r3, r5
	add	r3, #0x5b
	mov	r7, #0
	strb	r7, [r3]
	mov	r0, r5
	bl	__Actor_Stop
	ldr	r3, [r5, #0x10]
	ldr	r2, =0xd680000
	cmp	r3, r2
	ble	.L2964
	ldr	r3, [r5, #8]
	ldr	r1, =0x176e0000
	cmp	r3, r1
	ble	.L297c
	mov	r0, r5
	ldr	r2, [r5, #0xc]
	ldr	r3, =0xd7d0000
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	b	.L297c
.L2964:
	ldr	r3, [r5, #8]
	ldr	r1, =0x177a0000
	cmp	r3, r1
	ble	.L297c
	mov	r0, r5
	ldr	r2, [r7, #0xc]
	ldr	r3, =0xd480000
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
.L297c:
	ldr	r3, =0xd680000
	mov	r2, #0
	ldr	r1, =0x17690000
	mov	r0, r5
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0x28
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	bl	__Func_808c44c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x1c
	bl	__MapActor_SetAnim
	ldr	r1, [r5, #8]
	mov	r3, #0x80
	lsl	r3, #10
	mov	r2, #0x98
	add	r1, r3
	mov	r0, #0x16
	ldr	r3, [r5, #0x10]
	lsl	r2, #14
	bl	__CreateActor
	mov	r7, r0
	cmp	r7, #0
	beq	.L2a30
	mov	r1, #0
	add	r0, #0x55
	strb	r1, [r0]
	ldr	r6, [r7, #0x50]
	mov	r3, r6
	add	r3, #0x26
	strb	r1, [r3]
	add	r3, #1
	strb	r1, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r1, #0xc1
	strb	r3, [r6, #9]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r5, r0
	mov	r0, #0xf2
	bl	__LoadItemIcon
	mov	r2, #0x80
	lsl	r2, #3
	add	r5, r2
	mov	r1, #0x80
	mov	r2, r5
	ldrb	r0, [r6, #0x1c]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =OvlFunc_881_200813c
	mov	r0, #0x50
	str	r3, [r7, #0x6c]
	bl	__CutsceneWait
.L2a30:
	ldr	r6, =.L679c
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r8, r3
	mov	r2, r8
	strh	r2, [r0, #6]
	mov	r1, #0x80
	mov	r2, #0
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	ldr	r0, [r6]
	bl	__Func_80925cc
	ldr	r3, =0x2644
	mov	r10, r3
	mov	r0, r10
	bl	__MessageID
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0x50
	bl	__Func_8093040
	cmp	r7, #0
	beq	.L2a74
	mov	r0, r7
	bl	__DeleteActor
.L2a74:
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, [r6]
	mov	r1, #6
	mov	r2, #0x28
	bl	__MapActor_Jump
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	ldr	r0, [r6]
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r5, #0x90
	ldr	r0, [r6]
	lsl	r5, #8
	mov	r2, #0x28
	orr	r0, r5
	mov	r1, #0
	bl	__Func_8093040
	ldr	r0, [r6]
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r0, [r6]
	mov	r1, #0
	orr	r0, r5
	mov	r2, #0x14
	bl	__Func_8093040
	ldr	r0, [r6]
	mov	r1, r8
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	ldr	r2, =0x6666
	ldr	r0, [r6]
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r1, #2
	ldr	r0, [r6]
	bl	__MapActor_SetAnim
	mov	r0, #0x37
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r2, [r7, #0xc]
	ldr	r1, =0x177a0000
	ldr	r3, =0xd480000
	bl	__Actor_TravelTo
	mov	r0, r7
	bl	__Actor_WaitMovement
	ldr	r3, =0xd580000
	mov	r2, #0
	ldr	r1, =0x17710000
	mov	r0, r7
	bl	__Actor_TravelTo
	mov	r0, r7
	bl	__Actor_WaitMovement
	mov	r0, #0x37
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xa0
	mov	r2, #0xa
	ldr	r0, [r6]
	lsl	r1, #7
	bl	__Func_8092adc
	ldr	r0, [r6]
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, [r6]
	mov	r3, #0x80
	lsl	r3, #5
	orr	r0, r3
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	ldr	r0, [r6]
	bl	__MapActor_SetSpeed
	mov	r0, #0x37
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x37
	bl	__MapActor_SetAnim
	mov	r3, #0xd6
	mov	r2, #0
	lsl	r3, #20
	ldr	r1, =0x176d0000
	mov	r0, r7
	bl	__Actor_TravelTo
	mov	r0, r7
	bl	__Actor_WaitMovement
	mov	r1, #1
	mov	r0, #0x37
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x37
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #0
	ldr	r3, =0xd580000
	ldr	r1, =0x17710000
	mov	r0, r7
	bl	__Actor_TravelTo
	mov	r0, r7
	bl	__Actor_WaitMovement
	mov	r0, #0x37
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, r10
	mov	r1, #1
	add	r0, #6
	bl	__Func_801776c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xf2
	bl	__Func_8078a08
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, [r6]
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0xa
	ldr	r0, [r6]
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, [r6]
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, [r6]
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2c20
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	ldr	r0, [r6]
	bl	__MapActor_TravelTo
.L2c20:
	ldr	r0, [r6]
	bl	__MapActor_WaitMovement
	mov	r2, #0
	ldr	r0, [r6]
	mov	r1, #0
	bl	__MapActor_SetPos
	bl	__Func_808c4c0
	mov	r0, #0x80
	mov	r1, #6
	lsl	r0, #9
	bl	__Func_80936a0
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_881_200a7dc
	ldr	r0, [r6]
	bl	__DeleteFieldActor
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x85d
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a8e8

.thumb_func_start OvlFunc_881_200acb4
	push	{r5, lr}
	ldr	r3, =gState
	ldr	r1, =0x205
	add	r2, r3, r1
	ldrb	r0, [r2]
	ldr	r2, =0x206
	add	r3, r2
	ldrb	r1, [r3]
	sub	sp, #0x1c
	bl	__SetUIColor
	bl	__CutsceneStart
	mov	r0, #0x80
	mov	r1, #0x96
	lsl	r0, #9
	lsl	r1, #1
	bl	__Func_80936a0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r0, r0
	neg	r1, r1
	bl	__Func_80933f8
	mov	r0, #5
	mov	r1, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xc0
	lsl	r0, #9
	mov	r1, #0x10
	bl	__Func_80936a0
	ldr	r5, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r5]
	lsl	r1, #1
	mov	r2, #0x80
	add	r3, r1
	lsl	r2, #1
	mov	r1, #1
	ldr	r0, =0x10003
	str	r2, [r3]
	bl	__Func_8091200
	ldr	r3, [r5]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__Func_8093710
	bl	__Func_808c44c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x2913
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #5
	ldr	r1, =0x107
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0x64
	bl	__MapActor_Emote
	mov	r0, #5
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r2, #0xa
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Surprise
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #5
	ldr	r1, =0x105
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r2, #0x78
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #5
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #5
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x78
	bl	__Func_8093040
	mov	r0, #9
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r0, #9
	ldr	r1, =0x1ddc0000
	ldr	r2, =0xd840000
	bl	__MapActor_SetPos
	mov	r0, #9
	ldr	r1, =0x1d94
	ldr	r2, =0xd8c
	bl	__Func_80921c4
	mov	r2, #0xda
	ldr	r1, =0x1d88
	lsl	r2, #4
	mov	r0, #9
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x6009
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #5
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0
	ldr	r0, =0x6009
	bl	__ActorMessage
	bl	__Func_801173c
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_881__0200cf7c
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #5
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #4
	mov	r2, #0x3c
	bl	__MapActor_Jump
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #8
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	ldr	r2, =0x4ccc
	mov	r0, #5
	ldr	r1, =0x9999
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_881__0200d01c
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0xb333
	ldr	r1, =0x1666
	bl	__Func_80933d4
	mov	r1, #1
	ldr	r0, =0x1e380000
	neg	r1, r1
	ldr	r2, =0xdc80000
	mov	r3, #1
	bl	__Func_80933f8
	ldr	r1, =gScript_881__0200d0a8
	mov	r0, #5
	bl	__MapActor_SetBehavior
.L2f4a:
	mov	r0, #0xa
	mov	r1, #6
	bl	__MapActor_SetAnim
	mov	r1, #8
	mov	r0, #6
	bl	__MapActor_SetAnim
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #5
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	cmp	r3, #0
	beq	.L2f4a
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #5
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	__Func_808c44c
	mov	r3, #4
	mov	r2, #0xc
	mov	r1, #8
	mov	r0, #9
	mov	r4, #3
	str	r2, [sp]
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r3, [sp, #0xc]
	str	r3, [sp, #0x10]
	mov	r2, #0xd
	mov	r3, #2
	mov	r1, #7
	mov	r5, #0
	mov	r0, #5
	str	r4, [sp, #0x14]
	str	r5, [sp, #0x18]
	bl	__Func_80931ec
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__Func_801173c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1e580000
	neg	r1, r1
	ldr	r2, =0xdc80000
	bl	__Func_80933f8
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #8
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #5
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #8
	ldr	r1, =0x1e7c
	ldr	r2, =0xdb8
	bl	__Func_809218c
	ldr	r2, =0xdd8
	mov	r0, #5
	ldr	r1, =0x1e6c
	bl	__Func_80921c4
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	bl	__Func_808c44c
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x1005
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x3c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8093040
	bl	__Func_801173c
	mov	r0, #0x11
	bl	__PlaySound
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__WaitFrames
	ldr	r0, =0
	mov	r1, #0xa
	bl	__SetDestMap
	add	sp, #0x1c
	b	.L3128

	.pool_aligned

.L3128:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200acb4

.thumb_func_start OvlFunc_881_200b130
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #2
	bl	__WaitFrames
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #1
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_881_200b1fc
	bl	__StartTask
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091220
	ldr	r0, =0x10004
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0xf0
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x50
	bl	__Func_8091254
	mov	r0, #0x5a
	bl	__WaitFrames
	mov	r0, #0x6d
	bl	__Func_8091e9c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b130

.thumb_func_start OvlFunc_881_200b1fc
	push	{r5, r6, lr}
	bl	__Random
	lsl	r5, r0, #2
	add	r5, r0
	bl	__Random
	lsl	r5, #3
	lsl	r3, r0, #4
	sub	r3, r0
	ldr	r2, =0x17b00000
	lsr	r5, #16
	lsl	r3, #1
	lsl	r5, #16
	add	r5, r2
	lsr	r3, #16
	ldr	r2, =0xc4c0000
	lsl	r3, #16
	add	r3, r2
	mov	r0, #0xde
	mov	r1, r5
	mov	r2, #0
	bl	__CreateActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L3270
	ldr	r5, [r6, #0x50]
	bl	__Random
	ldr	r3, =0x13333
	lsl	r0, #15
	lsr	r0, #16
	add	r0, r3
	mov	r3, r5
	mov	r1, #0
	add	r3, #0x26
	strb	r1, [r3]
	mov	r3, #0xd
	ldrb	r2, [r5, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r5, #9]
	mov	r3, r6
	add	r3, #0x55
	strb	r1, [r3]
	str	r0, [r6, #0x18]
	str	r0, [r6, #0x1c]
	mov	r1, #1
	mov	r0, r6
	bl	__Actor_SetAnim
	ldr	r1, =gScript_881__0200d14c
	mov	r0, r6
	bl	__Actor_SetScript
.L3270:
	ldr	r3, =iwram_3001e40
	mov	r1, #3
	ldr	r0, [r3]
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L32c6
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #1
	beq	.L329e
	cmp	r0, #1
	bcc	.L3298
	cmp	r0, #2
	beq	.L32a8
	cmp	r0, #3
	beq	.L32b8
	b	.L32c6
.L3298:
	mov	r1, #1
	ldr	r0, =0x17c70000
	b	.L32ac
.L329e:
	mov	r1, #1
	ldr	r0, =0x17c90000
	neg	r1, r1
	ldr	r2, =0xc670000
	b	.L32b0
.L32a8:
	mov	r1, #1
	ldr	r0, =0x17c90000
.L32ac:
	neg	r1, r1
	ldr	r2, =0xc690000
.L32b0:
	mov	r3, #1
	bl	__Func_80933f8
	b	.L32c6
.L32b8:
	mov	r1, #1
	ldr	r0, =0x17c70000
	neg	r1, r1
	ldr	r2, =0xc670000
	mov	r3, #1
	bl	__Func_80933f8
.L32c6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b1fc

.thumb_func_start OvlFunc_881_200b2f0
	push	{lr}
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
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #0xca
	lsl	r2, #18
	ldr	r1, =0x13080000
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x13333
	mov	r1, #1
	bl	__Func_80936a0
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r1, #1
	mov	r0, #8
	bl	__SetCameraTarget
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__MapTransitionIn
	mov	r0, #8
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r2, #0xb2
	mov	r0, #8
	ldr	r1, =0x12d8
	lsl	r2, #2
	bl	__Func_8092158
	mov	r2, #0x9a
	mov	r0, #8
	ldr	r1, =0x12a8
	lsl	r2, #2
	bl	__Func_8092158
	mov	r0, #8
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__MapActor_SetSpeed
	mov	r2, #0xec
	mov	r0, #8
	ldr	r1, =0x12a8
	lsl	r2, #1
	bl	__Func_8092158
	mov	r0, #8
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__MapActor_SetSpeed
	mov	r2, #0xe4
	mov	r0, #8
	ldr	r1, =0x1298
	lsl	r2, #1
	bl	__Func_8092158
	mov	r0, #8
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xdc
	lsl	r2, #1
	mov	r0, #8
	ldr	r1, =0x1298
	bl	__Func_8092158
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x6e
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b2f0

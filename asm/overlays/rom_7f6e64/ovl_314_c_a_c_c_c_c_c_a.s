	.include "macros.inc"

.thumb_func_start OvlFunc_969_200a360
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x88
	bl	__CutsceneStart
	mov	r3, #0x11
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xa
	mov	r2, #4
	mov	r3, #2
	mov	r0, #0x11
	bl	__Func_8010704
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #8
	ldr	r2, =0
	mov	r8, r3
	mov	r4, r8
	mov	r9, r2
	mov	r1, #0xa4
	mov	r2, #0xa8
	strh	r4, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #1
	bl	__MapActor_SetPos
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r2, r8
	strh	r2, [r0, #6]
	mov	r1, #0xaa
	mov	r2, #0xc4
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #2
	bl	__MapActor_SetPos
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r3, r8
	mov	r1, #0xa3
	mov	r2, #0xcc
	b	.L23d4

	.pool_aligned

.L23d4:
	strh	r3, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #3
	bl	__MapActor_SetPos
	mov	r0, #6
	bl	__MapActor_GetActor
	mov	r4, #0xc0
	lsl	r4, #6
	mov	r10, r4
	mov	r2, r10
	strh	r2, [r0, #6]
	mov	r1, #0x86
	mov	r2, #0x9a
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #6
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, r10
	mov	r1, #0x86
	mov	r2, #0xa4
	strh	r3, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x15
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	mov	r6, #0xa
	add	r3, #0x64
	strh	r6, [r3]
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r1, #0x93
	mov	r2, #0xd4
	strh	r3, [r7, #6]
	lsl	r2, #16
	mov	r0, #0x14
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r0, #0x14
	mov	r1, #9
	bl	__MapActor_SetAnim
	ldr	r4, =gScript_969__0200e074
	mov	r11, r4
	mov	r1, r11
	mov	r0, #0x14
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x64
	mov	r5, #0
	mov	r1, #0x8f
	mov	r2, #0xc0
	strh	r6, [r3]
	lsl	r2, #16
	strh	r5, [r7, #6]
	mov	r0, #0x13
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r0, #0x13
	mov	r1, #7
	bl	__MapActor_SetAnim
	mov	r1, r11
	mov	r0, #0x13
	bl	__MapActor_SetBehavior
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	bl	__Func_8093554
	mov	r2, r9
	add	r0, #0x55
	strb	r2, [r0]
	mov	r1, #0x80
	mov	r0, #0x98
	mov	r2, #0xb4
	mov	r3, #0
	lsl	r1, #14
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r6, #0x80
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x50
	bl	__CutsceneWait
	lsl	r6, #6
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r7, #0xa0
	ldr	r0, =0x27cf
	bl	__MessageID
	lsl	r7, #8
	ldr	r0, =0x1001
	bl	OvlFunc_969_2008894
	mov	r1, r7
	mov	r0, #3
	bl	OvlFunc_969_20088a8
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r2, #0
	mov	r0, #1
	mov	r1, r8
	bl	__Func_8092adc
	mov	r1, r7
	mov	r0, #2
	bl	OvlFunc_969_20088a8
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r0, #0x15
	bl	__MapActor_SetSpeed
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x8c
	strb	r3, [r0]
	lsl	r1, #1
	mov	r2, #0xa4
	mov	r0, #0x15
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #0x15
	bl	OvlFunc_969_20088a8
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #2
	mov	r0, #3
	bl	__Func_809259c
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r2, #0x28
	mov	r0, #0x15
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, r10
	mov	r0, #0x15
	bl	OvlFunc_969_20088a8
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	mov	r1, #2
	mov	r0, #2
	bl	__MapActor_Jump
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, r6
	bl	OvlFunc_969_20088a8
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	mov	r7, #1
	cmp	r0, #0
	beq	.L2650
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r7, #0
.L2650:
	mov	r0, #0x14
	bl	__WaitFrames
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r4, #0xa0
	lsl	r4, #8
	mov	r10, r4
	mov	r0, #3
	mov	r1, r10
	bl	OvlFunc_969_20088a8
	mov	r0, #0x15
	mov	r1, #0
	bl	OvlFunc_969_20088a8
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	cmp	r7, #0
	beq	.L26ac
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xec
	ldr	r2, [r3]
	lsl	r0, #1
	add	r2, r0
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L26ac:
	mov	r0, #0x14
	bl	__MapActor_SetIdle
	mov	r0, #0x13
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r2, #9
	mov	r7, r0
	str	r2, [r7, #0x18]
	str	r2, [r7, #0x1c]
	mov	r0, #0x13
	mov	r8, r2
	bl	__MapActor_GetActor
	mov	r3, r8
	mov	r7, r0
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__MapActor_SetSpeed
	mov	r1, #0x96
	mov	r2, #0xce
	lsl	r1, #1
	mov	r0, #0x14
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r6, =0xffff0000
	str	r6, [r0, #0x18]
	mov	r0, #0xa1
	bl	__PlaySound
	mov	r1, #8
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x13
	mov	r1, #4
	mov	r2, #0x28
	bl	__MapActor_Jump
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0x13
	bl	__MapActor_SetSpeed
	mov	r0, #0x13
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x94
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #0x13
	mov	r2, #0xba
	bl	__Func_80921c4
	mov	r0, #0x13
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x92
	mov	r2, #0xba
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_80921c4
	mov	r0, #0x13
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r4, #1
	orr	r3, r4
	strb	r3, [r0]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	str	r6, [r0, #0x18]
	mov	r0, #0xa1
	bl	__PlaySound
	mov	r1, #5
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #3
	mov	r1, #4
	b	.L2860

	.pool_aligned

.L2860:
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	mov	r0, #0
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r2, #0xc0
	lsl	r2, #6
	mov	r7, r0
	mov	r11, r2
	ldr	r0, =0
	mov	r4, r8
	mov	r3, r11
	strh	r3, [r7, #6]
	str	r4, [r7, #0x18]
	mov	r1, #1
	mov	r9, r0
	mov	r6, #0xd0
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	lsl	r6, #8
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, r6
	bl	OvlFunc_969_20088a8
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x14
	bl	__MapActor_Jump
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, r10
	mov	r2, #0
	b	.L2930

	.pool_aligned

.L2930:
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #6
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x80
	ldr	r2, [r7, #0xc]
	lsl	r0, #12
	mov	r8, r0
	ldr	r1, [r7, #8]
	add	r2, r8
	ldr	r3, [r7, #0x10]
	mov	r0, #0x16
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L29f2
	ldr	r6, [r5, #0x50]
	mov	r3, r6
	add	r3, #0x27
	mov	r2, r9
	strb	r2, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r1, r5
	mov	r2, #0xd
	add	r1, #0x23
	neg	r2, r2
	and	r3, r2
	ldrb	r2, [r1]
	strb	r3, [r6, #9]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	mov	r3, r5
	mov	r4, r9
	add	r3, #0x55
	mov	r2, r5
	strb	r4, [r3]
	add	r2, #0x5c
	mov	r3, #1
	strb	r3, [r2]
	ldr	r3, =0x19999
	str	r3, [r5, #0x30]
	ldr	r3, =0xcccc
	mov	r1, #0xc1
	str	r3, [r5, #0x34]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	str	r0, [sp, #0x28]
	mov	r0, #0xdc
	bl	__LoadItemIcon
	mov	r3, #0x80
	ldr	r2, [sp, #0x28]
	lsl	r3, #3
	add	r3, r2, r3
	ldrb	r0, [r6, #0x1c]
	mov	r1, #0x80
	mov	r2, r3
	str	r3, [sp, #0x24]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
.L29f2:
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_8092b08
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r6, #0x80
	ldr	r3, [r7, #8]
	lsl	r6, #14
	str	r3, [r0, #8]
	str	r6, [r0, #0xc]
	ldr	r3, [r7, #0x10]
	str	r3, [r0, #0x10]
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #3
	strb	r1, [r3]
	ldr	r3, =0x19999
	ldr	r2, =0xcccc
	str	r3, [r0, #0x30]
	mov	r3, #0xc0
	lsl	r3, #8
	str	r2, [r0, #0x34]
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	cmp	r5, #0
	beq	.L2a4a
	mov	r3, r5
	add	r3, #0x55
	strb	r1, [r3]
	ldr	r3, =0x9999
	mov	r4, r8
	str	r3, [r5, #0x48]
	mov	r1, #0x9a
	mov	r3, #0xa4
	str	r2, [r5, #0x44]
	str	r4, [r5, #0x28]
	mov	r0, r5
	lsl	r1, #17
	mov	r2, r6
	lsl	r3, #16
	bl	__Actor_TravelTo
.L2a4a:
	mov	r1, #0x9a
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0xa4
	bl	__Func_8092158
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092b08
	cmp	r5, #0
	beq	.L2afc
	ldr	r0, =0x135
	bl	__PlaySound
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r1, #0x9d
	mov	r3, #0x89
	lsl	r1, #17
	mov	r2, r6
	lsl	r3, #16
	mov	r0, r5
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	ldr	r0, =0x135
	bl	__PlaySound
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r3, #0x92
	ldr	r1, =0x11d0000
	mov	r2, r6
	lsl	r3, #16
	mov	r0, r5
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	ldr	r0, =0x135
	bl	__PlaySound
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r1, #0x96
	mov	r3, #0x9a
	lsl	r1, #17
	mov	r2, r6
	lsl	r3, #16
	mov	r0, r5
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #0
	str	r0, [r5, #8]
	str	r0, [r5, #0xc]
	str	r0, [r5, #0x10]
	mov	r0, r5
	bl	OvlFunc_969_200d688
.L2afc:
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_8092b08
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #6
	mov	r1, r11
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, r11
	bl	OvlFunc_969_20088a8
	mov	r0, #0x15
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #6
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x84
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__MapActor_Emote
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r0, #0
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2c70
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r7, #1
	b	.L2c8a

	.pool_aligned

.L2c70:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r7, #0
.L2c8a:
	mov	r0, #1
	bl	OvlFunc_969_2008894
	cmp	r7, #0
	beq	.L2ca4
	ldr	r3, =iwram_3001ebc
	mov	r4, #0xec
	ldr	r2, [r3]
	lsl	r4, #1
	add	r2, r4
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L2ca4:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #7
	mov	r0, #0x18
	bl	__Func_8092950
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r4, #0
	mov	r7, r0
	ldr	r0, =0xffff0000
	mov	r8, r4
	ldr	r2, =0x1999
	mov	r3, r7
	str	r0, [r7, #0x1c]
	mov	r9, r0
	add	r3, #0x55
	mov	r0, r8
	str	r2, [r7, #0x18]
	mov	r10, r2
	strb	r0, [r3]
	mov	r6, #0x98
	mov	r3, #0x80
	mov	r2, #0x9e
	lsl	r2, #16
	lsl	r3, #15
	lsl	r6, #17
	str	r3, [r7, #0xc]
	str	r2, [r7, #0x10]
	str	r6, [r7, #8]
	mov	r0, #0x19
	mov	r11, r2
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #7
	mov	r0, #0x19
	bl	__Func_8092950
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r3, r9
	mov	r7, r0
	str	r3, [r7, #0x1c]
	mov	r3, r7
	mov	r4, r10
	mov	r0, r8
	add	r3, #0x55
	str	r4, [r7, #0x18]
	strb	r0, [r3]
	mov	r3, #0xc0
	lsl	r3, #15
	mov	r2, r11
	mov	r1, #0x80
	str	r3, [r7, #0xc]
	str	r6, [r7, #8]
	str	r2, [r7, #0x10]
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #6
	mov	r1, #0
	bl	__Func_8092adc
	ldr	r6, =gScript_969__0200e088
	mov	r0, #0x18
	mov	r1, r6
	bl	__MapActor_SetBehavior
	mov	r1, r6
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	mov	r0, #0x91
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	mov	r1, #0
	ldr	r0, =0x4063ff
	bl	__Func_8091200
	mov	r0, #0x10
	bl	__Func_8091254
	mov	r0, #0x14
	bl	__WaitFrames
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x18
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__WaitFrames
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_969_200b6d0
	bl	__StartTask
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	mov	r1, #0
	ldr	r0, =0x4063ff
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	ldr	r6, =gScript_969__0200e0ac
	mov	r0, #0x18
	mov	r1, r6
	bl	__MapActor_SetBehavior
	mov	r1, r6
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	mov	r0, #0x78
	bl	__WaitFrames
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	mov	r1, #0
	ldr	r0, =0x203210
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__WaitFrames
	mov	r0, #0x3f
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__WaitFrames
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #9
	lsl	r1, #9
	bl	__Func_8012330
	mov	r0, #0x13
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
	mov	r2, #0x28
	mov	r0, #0x13
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #6
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r6, #0x80
	mov	r0, #0x14
	lsl	r6, #8
	bl	OvlFunc_969_2008894
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r6
	mov	r0, #3
	bl	OvlFunc_969_20088a8
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_969_20088a8
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	mov	r0, #0x13
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_809259c
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r4, #0xc0
	lsl	r4, #7
	mov	r11, r4
	mov	r1, r11
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xd0
	mov	r0, #0x14
	lsl	r1, #8
	bl	OvlFunc_969_20088a8
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0x13
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	ldr	r0, =0x2013
	mov	r8, r0
	bl	OvlFunc_969_2008894
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r6
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r6
	mov	r0, #1
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa0
	lsl	r2, #8
	mov	r9, r2
	mov	r1, r9
	mov	r0, #3
	bl	OvlFunc_969_20088a8
	ldr	r1, =0x101
	mov	r2, #0x50
	mov	r0, #0x15
	bl	__MapActor_Emote
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, r9
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r11
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0x28
	b	.L3094

	.pool_aligned

.L3094:
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r1, r6
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r6
	mov	r0, #1
	mov	r2, #0
	bl	__Func_8092adc
	mov	r7, #0xb0
	mov	r1, r6
	mov	r0, #2
	mov	r2, #0
	bl	__Func_8092adc
	lsl	r7, #8
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #3
	bl	__Func_8092adc
	mov	r1, r7
	mov	r0, #0x14
	bl	OvlFunc_969_20088a8
	ldr	r3, =0x2014
	mov	r10, r3
	mov	r0, r10
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, r7
	mov	r0, #0x15
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0x15
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r1, #0
	mov	r2, #0x28
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0xd0
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, r7
	mov	r0, #0x14
	bl	OvlFunc_969_20088a8
	mov	r0, r10
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x15
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, r7
	mov	r0, #0x13
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	bl	OvlFunc_969_20088a8
	ldr	r1, =0x101
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__MapActor_Emote
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	mov	r1, r7
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r2, #0x50
	ldr	r1, =0x103
	mov	r0, #0x15
	bl	__MapActor_Emote
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	mov	r0, #0x15
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0x15
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0x14
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0x28
	mov	r0, r10
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, r9
	mov	r0, #2
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r9
	mov	r0, #3
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x13
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, r7
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__Func_8092adc
	ldr	r0, =0xa015
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #6
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0x15
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r7, =gScript_969__0200e22c
	mov	r0, #0x15
	mov	r1, r7
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, r7
	mov	r0, #6
	bl	__MapActor_SetBehavior
	mov	r0, #1
	mov	r1, r11
	bl	OvlFunc_969_20088a8
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #0x11
	bl	__PlaySound
	mov	r1, #1
	ldr	r0, =0x40250d
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0x14
	bl	OvlFunc_969_20088a8
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r0, #0
	mov	r1, r11
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r6
	mov	r0, #2
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, r6
	mov	r0, #3
	bl	__Func_8092adc
	bl	OvlFunc_969_200b5c4
	mov	r0, #0x14
	mov	r1, #7
	bl	__Func_8092950
	mov	r1, #7
	mov	r0, #0x13
	bl	__Func_8092950
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_8092950
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_8092950
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_969_200b5c4
	mov	r2, #0x14
	mov	r1, #2
	mov	r0, #3
	bl	__MapActor_Jump
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r1, #0
	mov	r0, #0x13
	bl	OvlFunc_969_20088a8
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	bl	OvlFunc_969_200b5c4
	mov	r0, #0x13
	bl	__MapActor_GetActor
	add	r4, sp, #0x60
	mov	r3, #7
	mov	r10, r0
	str	r3, [r4, #4]
	mov	r0, #0x80
	ldr	r3, =OvlFunc_969_20083a0
	mov	r2, #0x54
	lsl	r0, #9
	add	r2, sp
	mov	r9, r2
	str	r3, [r4, #0x24]
	str	r0, [r4, #8]
	str	r0, [r4, #0xc]
	mov	r8, r4
	mov	r7, #0
	mov	r6, r9
.L33bc:
	lsl	r3, r7, #12
	mov	r0, r3
	str	r3, [sp, #0x20]
	bl	__cos
	mov	r3, #0
	str	r3, [r6, #4]
	str	r0, [r6]
	ldr	r0, [sp, #0x20]
	bl	__sin
	ldr	r3, [r6]
	lsl	r2, r3, #1
	add	r3, r2
	lsl	r0, #1
	str	r0, [r6, #8]
	str	r3, [r6]
	mov	r4, r10
	ldr	r4, [r4, #8]
	str	r4, [sp, #0x1c]
	mov	r2, r10
	ldr	r1, [r2, #0xc]
	ldr	r4, [r6, #4]
	ldr	r2, [r2, #0x10]
	str	r0, [sp, #4]
	ldr	r0, =0x1090000
	str	r4, [sp]
	str	r0, [sp, #8]
	mov	r4, r8
	ldr	r0, [sp, #0x1c]
	add	r7, #1
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	cmp	r7, #0x10
	bls	.L33bc
	mov	r0, #0xd4
	bl	__PlaySound
	mov	r0, #6
	bl	__WaitFrames
	bl	OvlFunc_969_200b5c4
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r10, r0
	add	r0, sp, #0x2c
	mov	r3, #7
	str	r3, [r0, #4]
	ldr	r3, =OvlFunc_969_20083a0
	str	r3, [r0, #0x24]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #8]
	str	r3, [r0, #0xc]
	mov	r8, r0
	mov	r7, #0
	mov	r6, r9
.L3434:
	lsl	r2, r7, #12
	mov	r0, r2
	str	r2, [sp, #0x18]
	bl	__cos
	mov	r3, #0
	str	r3, [r6, #4]
	str	r0, [r6]
	ldr	r0, [sp, #0x18]
	bl	__sin
	ldr	r3, [r6]
	lsl	r2, r3, #1
	add	r3, r2
	lsl	r0, #1
	str	r0, [r6, #8]
	str	r3, [r6]
	mov	r4, r10
	ldr	r4, [r4, #8]
	str	r4, [sp, #0x14]
	mov	r2, r10
	ldr	r1, [r2, #0xc]
	ldr	r4, [r6, #4]
	ldr	r2, [r2, #0x10]
	str	r0, [sp, #4]
	ldr	r0, =0x1090000
	str	r4, [sp]
	str	r0, [sp, #8]
	mov	r4, r8
	ldr	r0, [sp, #0x14]
	add	r7, #1
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	cmp	r7, #0x10
	bls	.L3434
	mov	r0, #0xd4
	bl	__PlaySound
	mov	r2, #0x14
	mov	r1, #6
	mov	r0, #2
	bl	__MapActor_Jump
	mov	r0, #0x36
	bl	__PlaySound
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	bl	OvlFunc_969_200b5c4
	mov	r0, #0x14
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__MapActor_SetSpeed
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0x13
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r6, #0xfe
	mov	r3, r6
	b	.L34f8

	.pool_aligned

.L34f8:
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0xfe
	and	r2, r3
	mov	r1, #0x93
	str	r6, [sp, #0x10]
	lsl	r1, #1
	strb	r2, [r0]
	mov	r0, #0x14
	mov	r2, #0xc4
	bl	__MapActor_TravelTo
	mov	r1, #0x93
	mov	r2, #0xc4
	mov	r0, #0x13
	lsl	r1, #1
	bl	__MapActor_TravelTo
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_969_200b7c4
	bl	__StartTask
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__SetFlag
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	ldr	r0, =0x235
	bl	__SetFlag
	bl	OvlFunc_969_200b5c4
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_969_200b5c4
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =gState
	ldr	r4, =0x22b
	mov	r2, #3
	add	r3, r4
	strb	r2, [r3]
	ldr	r6, =0xbb
	mov	r1, #3
	mov	r0, r6
	bl	__Func_8091f90
	mov	r0, r6
	mov	r1, #9
	bl	__Func_8091fa8
	mov	r1, #0
	mov	r0, #0x62
	bl	__Func_8091eb0
	bl	__Func_8078144
	ldr	r0, =0x351
	bl	__SetFlag
	add	sp, #0x88
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200a360


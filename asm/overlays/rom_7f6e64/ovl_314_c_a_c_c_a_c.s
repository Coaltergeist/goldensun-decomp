	.include "macros.inc"

.thumb_func_start OvlFunc_969_20088b4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_969_2009280
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_969_2009280
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_969_2009280
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, #0
	mov	r8, r2
	mov	r3, r5
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	add	r5, #0x23
	ldrb	r2, [r5]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r5]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_8092b08
	mov	r1, #0x91
	mov	r2, #0xa9
	lsl	r2, #17
	lsl	r1, #18
	mov	r0, #0x12
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r5, r6
	mov	r3, r8
	add	r5, #0x55
	strb	r3, [r5]
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8092b08
	mov	r2, #0x90
	ldr	r1, =0x2450000
	lsl	r2, #17
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x12
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0
	bl	__Func_8092064
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x91
	strb	r3, [r0]
	lsl	r1, #2
	mov	r0, #0x12
	mov	r2, #0xdd
	bl	__Func_8092128
	mov	r0, #0
	ldr	r1, =0x245
	mov	r2, #0xab
	bl	__Func_8092158
	mov	r0, #0x12
	ldr	r1, =0x212
	mov	r2, #0xd3
	bl	__Func_8092128
	mov	r0, #0
	ldr	r1, =0x213
	mov	r2, #0xa1
	bl	__Func_8092158
	mov	r1, #0x82
	mov	r0, #0x12
	lsl	r1, #2
	mov	r2, #0xbf
	bl	__Func_8092128
	mov	r2, #0x8d
	ldr	r1, =0x209
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Func_800c528
	mov	r0, #0x12
	ldr	r1, =0x203
	mov	r2, #0xab
	bl	__Func_8092128
	mov	r1, #0x81
	mov	r2, #0x79
	lsl	r1, #2
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #6
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__Func_8092504
	mov	r3, #0x81
	lsl	r3, #18
	str	r3, [r6, #8]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r6, #0xc]
	mov	r3, #0x94
	lsl	r3, #16
	mov	r7, #0x80
	lsl	r7, #8
	ldr	r2, .La6c	@ 0
	str	r3, [r6, #0x10]
	mov	r3, #3
	strh	r7, [r6, #6]
	mov	r0, #0x98
	strb	r3, [r5]
	mov	r8, r2
	bl	__PlaySound
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r6, #0x28]
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Func_800c528
	mov	r1, #0xfc
	lsl	r1, #1
	mov	r2, #0x94
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, #0xa
	bl	__CutsceneWait
	b	.La88

	.align	2, 0
.La6c:
	.word	0
	.pool

.La88:
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r3, #0x80
	lsl	r3, #7
	mov	r9, r3
	ldr	r3, =0xffe00000
	mov	r2, r9
	str	r3, [r6, #0xc]
	strh	r2, [r6, #6]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x9a
	lsl	r0, #1
	bl	__PlaySound
	mov	r1, #0x83
	mov	r2, #0xbf
	lsl	r1, #2
	mov	r0, #0x12
	bl	__Func_8092158
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x12
	ldr	r1, =0x212
	mov	r2, #0xd3
	bl	__Func_8092158
	mov	r1, #0x91
	mov	r0, #0x12
	lsl	r1, #2
	mov	r2, #0xdd
	bl	__Func_8092158
	mov	r1, #0x91
	mov	r2, #0xa9
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0x12
	bl	__Func_8092128
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	ldr	r2, =0x6666
	strb	r5, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, #1
	bl	OvlFunc_969_2009280
	mov	r0, #2
	mov	r1, #1
	bl	OvlFunc_969_2009280
	mov	r0, #3
	mov	r1, #1
	bl	OvlFunc_969_2009280
	mov	r1, #0xf6
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xa4
	bl	__Func_809218c
	mov	r0, #1
	ldr	r1, =0x202
	mov	r2, #0xa4
	bl	__Func_809218c
	mov	r1, #0xf6
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x8c
	bl	__Func_809218c
	mov	r2, #0x8c
	mov	r0, #3
	ldr	r1, =0x202
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, r9
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r9
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r9
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r9
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x12
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x12
	bl	__MapActor_SetPos
	ldr	r6, =0x4013
	ldr	r0, =0x121
	bl	__PlaySound
	ldr	r0, =0x2757
	bl	__Func_8092b94
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r0, #0
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #2
	mov	r1, r7
	bl	__Func_8092adc
	mov	r1, r7
	mov	r0, #3
	bl	OvlFunc_969_20088a8
	bl	__Func_8093554
	mov	r3, r8
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x9999
	ldr	r0, =0x4cccc
	bl	__Func_80933d4
	mov	r0, #0x98
	mov	r1, #0x80
	mov	r2, #0x9e
	mov	r3, #1
	lsl	r1, #14
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xd0
	lsl	r2, #8
	mov	r11, r2
	mov	r0, #0x14
	mov	r1, r11
	ldr	r5, =0x2014
	bl	OvlFunc_969_20088a8
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x3d
	bl	__PlaySound
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r10, r3
	mov	r0, #0x14
	mov	r1, r10
	bl	OvlFunc_969_20088a8
	ldr	r1, =0x105
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__MapActor_Emote
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #6
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x13
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0x14
	lsl	r1, #7
	bl	__Func_8092adc
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r0, #0x93
	mov	r1, #1
	mov	r2, #0xc2
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0x88
	mov	r2, #0xc8
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	ldr	r1, =0x103
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #0x14
	bl	__MapActor_Emote
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r0, #0x13
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x83
	mov	r2, #0x28
	mov	r0, #0x13
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, r7
	mov	r0, #0x13
	bl	OvlFunc_969_20088a8
	ldr	r2, =0x2013
	mov	r8, r2
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r0, #6
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r1, =0x103
	mov	r2, #0x28
	mov	r0, #0x15
	bl	__MapActor_Emote
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, r10
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r6, #0xa0
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r6, #7
	mov	r0, #0x14
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, r6
	mov	r0, #0x13
	bl	OvlFunc_969_20088a8
	mov	r1, #0x84
	lsl	r1, #1
	mov	r2, #0x14
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	ldr	r1, =0x103
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, r7
	bl	__Func_8092adc
	mov	r0, #0x14
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, r5
	mov	r2, #0x28
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r0, #0x14
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x50
	mov	r0, #0x13
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x14
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, r10
	mov	r0, #0x15
	bl	OvlFunc_969_20088a8
	mov	r0, #0x15
	b	.Ledc

	.pool_aligned

.Ledc:
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #6
	bl	OvlFunc_969_20088a8
	mov	r1, #2
	mov	r0, #6
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, r11
	bl	OvlFunc_969_20088a8
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_8092548
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r2, #0
	mov	r0, #6
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_8092548
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r0, #0x14
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x13
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r0, #0x13
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #0x14
	mov	r1, r7
	bl	__Func_8092adc
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0x93
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x83
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0xb0
	bl	__Func_80921c4
	mov	r0, #0x15
	mov	r1, r7
	mov	r2, #0x28
	ldr	r6, =0x8015
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #1
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r0, #0x14
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__MapActor_Emote
	ldr	r0, =0xa014
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	ldr	r1, =0x105
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__MapActor_Emote
	mov	r0, r6
	bl	OvlFunc_969_2008894
	ldr	r1, =0x103
	mov	r2, #0x14
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #0x15
	bl	__MapActor_Emote
	ldr	r5, =0xa014
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_8092548
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_8092548
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x15
	mov	r1, r7
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r0, =0xa015
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r0, #6
	ldr	r1, =0x105
	mov	r2, #0x78
	bl	__MapActor_Emote
	ldr	r1, =0x105
	mov	r2, #0x3c
	mov	r0, #0x14
	bl	__MapActor_Emote
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r2, #0x28
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x15
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r0, #6
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x84
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__MapActor_Emote
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	ldr	r1, =0x103
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, r8
	bl	OvlFunc_969_2008894
	ldr	r6, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r6]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__Func_8091e20
	mov	r0, #0xfc
	mov	r2, #0xa8
	mov	r3, #0
	lsl	r2, #16
	ldr	r1, =0xffe80000
	lsl	r0, #17
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r5, =0x8001
	bl	__MapTransitionIn
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	ldr	r0, =0x1002
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r1, #2
	mov	r0, #1
	bl	__Func_8092560
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #0
	mov	r0, r5
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r9
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L11d6
	ldr	r2, [r6]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L11d6:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r1, r7
	mov	r0, #3
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
	mov	r0, #3
	mov	r1, #3
	bl	__Func_8092548
	ldr	r5, =gScript_969__0200dfc4
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__Func_8091750
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_20088b4

.thumb_func_start OvlFunc_969_2009280
	push	{r5, lr}
	mov	r5, r0
	cmp	r1, #0
	beq	.L12a6
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Func_800c528
	mov	r0, r5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	b	.L12ba
.L12a6:
	mov	r1, #0xf
	mov	r0, r5
	bl	__Func_8092950
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
.L12ba:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_2009280

.thumb_func_start OvlFunc_969_20092c8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	bl	__CutsceneStart
	bl	__Func_8093554
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	ldr	r1, =0x1999
	ldr	r0, =0xcccc
	bl	__Func_80933d4
	mov	r0, #0xa6
	mov	r1, #0x80
	mov	r2, #0xb4
	mov	r3, #1
	lsl	r0, #17
	lsl	r1, #14
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r7, #0x80
	mov	r1, #0xaa
	mov	r2, #0xb8
	lsl	r7, #8
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, r7
	bl	OvlFunc_969_20088a8
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	ldr	r0, =0x278e
	bl	__Func_8092b94
	ldr	r0, =0x9015
	bl	OvlFunc_969_2008894
	bl	__Func_8093554
	add	r0, #0x55
	strb	r5, [r0]
	ldr	r1, =0x1999
	ldr	r0, =0xcccc
	bl	__Func_80933d4
	mov	r0, #0x98
	mov	r1, #0x80
	mov	r2, #0xb4
	mov	r3, #1
	lsl	r0, #17
	lsl	r1, #14
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #9
	mov	r2, r7
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #9
	mov	r2, r7
	bl	__Func_8092064
	mov	r0, #3
	ldr	r1, =0x16666
	ldr	r2, =0xb333
	bl	__Func_8092064
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L138a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.L138a:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L139e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.L139e:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L13b2
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.L13b2:
	mov	r1, #0xa4
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0xa8
	bl	__Func_809218c
	mov	r1, #0xaa
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xc4
	bl	__Func_809218c
	mov	r1, #0xa3
	mov	r2, #0xcc
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #2
	mov	r1, r7
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, r7
	bl	OvlFunc_969_20088a8
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r1, r7
	mov	r0, #0x13
	bl	OvlFunc_969_20088a8
	ldr	r2, =0x2013
	mov	r8, r2
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	ldr	r1, =0x103
	mov	r0, #0x15
	bl	__MapActor_Emote
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd0
	mov	r2, #0x28
	lsl	r1, #8
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0x15
	mov	r1, #0
	bl	OvlFunc_969_20088a8
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	ldr	r5, =0x2014
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r7
	mov	r0, #0x14
	bl	OvlFunc_969_20088a8
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #3
	bl	__Func_809259c
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, #0
	mov	r0, #0x13
	bl	OvlFunc_969_20088a8
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	mov	r1, #0x83
	mov	r0, #0x14
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
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
	mov	r2, #0
	mov	r6, #0xc0
	bl	__Func_8092adc
	lsl	r6, #6
	mov	r2, #0
	mov	r0, #0x15
	mov	r1, r7
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, r6
	bl	OvlFunc_969_20088a8
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r0, #0x14
	bl	OvlFunc_969_20088a8
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, r7
	mov	r2, #0x14
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r0, #0x13
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #6
	bl	__MapActor_Emote
	mov	r0, #6
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	ldr	r1, =0x103
	mov	r0, #0x14
	bl	__MapActor_Emote
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #2
	mov	r0, #6
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #6
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_8092548
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r0, #6
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0x82
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0xba
	bl	__Func_80921c4
	mov	r0, #0x15
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x8a
	mov	r2, #0xc0
	lsl	r1, #1
	mov	r0, #6
	bl	__Func_80921c4
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_809259c
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r0, #6
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_8092560
	mov	r0, #6
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__Func_8092064
	mov	r1, #0x82
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0xba
	bl	__Func_80921c4
	mov	r0, #0x15
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #6
	mov	r1, #0xf8
	mov	r2, #0xac
	bl	__Func_80921c4
	mov	r0, #0x13
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #6
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #6
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	OvlFunc_969_200a334
	mov	r0, #1
	bl	__WaitFrames
	mov	r5, #0
.L16a2:
	mov	r0, #6
	bl	__MapActor_GetActor
	bl	OvlFunc_969_200a0dc
	add	r5, #1
	mov	r0, #1
	bl	__WaitFrames
	cmp	r5, #0x27
	bls	.L16a2
	ldr	r5, =OvlFunc_969_200a350
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r0, #0x50
	b	.L1700

	.pool_aligned

.L1700:
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
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
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #0x15
	bl	OvlFunc_969_20088a8
	mov	r0, #0x14
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	ldr	r0, =0x2014
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x50
	mov	r0, #6
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_809259c
	ldr	r3, =0x2013
	mov	r8, r3
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r0, r5
	bl	__StopTask
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r0, #6
	bl	__Func_8092950
	mov	r0, #0xa
	bl	__WaitFrames
	bl	OvlFunc_969_200a344
	mov	r1, #2
	mov	r2, #0x28
	mov	r0, #6
	bl	__Func_8092560
	mov	r0, #6
	bl	OvlFunc_969_2008894
	ldr	r1, =0x103
	mov	r0, #0x14
	mov	r2, #0x14
	bl	__MapActor_Emote
	ldr	r2, =0x2014
	mov	r10, r2
	mov	r0, r10
	bl	OvlFunc_969_2008894
	mov	r1, #2
	mov	r0, #6
	bl	__Func_80925cc
	mov	r0, #6
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #0xfa
	mov	r2, #0xb0
	mov	r0, #6
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #6
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	ldr	r1, =0x103
	mov	r0, #0x15
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_8092548
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r1, #2
	mov	r0, #6
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	mov	r0, #6
	bl	__Func_8092064
	mov	r0, #6
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	mov	r2, #0xac
	mov	r1, #0xf8
	strb	r5, [r0]
	mov	r0, #6
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #6
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #6
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_8092548
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #6
	bl	__Func_8092548
	mov	r0, #6
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x13
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #0x14
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	mov	r0, r10
	bl	OvlFunc_969_2008894
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #0x13
	bl	__MapActor_Emote
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	mov	r2, #0x64
	mov	r0, #0x14
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_969_20088a8
	mov	r0, #0x13
	mov	r1, #0
	bl	OvlFunc_969_20088a8
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8092c40
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
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
	cmp	r0, #0
	bne	.L197c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_8092548
	mov	r5, #1
	b	.L199c
.L197c:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #4
	bl	__Func_8092548
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.L199c:
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	cmp	r5, #0
	beq	.L19b6
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L19b6:
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
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
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8092c40
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
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
	cmp	r0, #0
	bne	.L1a50
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r5, #1
	b	.L1a70

	.pool_aligned

.L1a50:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r5, #0
.L1a70:
	mov	r0, #2
	bl	OvlFunc_969_2008894
	cmp	r5, #0
	beq	.L1a8a
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1a8a:
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x80
	lsl	r2, #8
	mov	r10, r2
	mov	r1, r10
	mov	r0, #3
	bl	OvlFunc_969_20088a8
	mov	r0, #1
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__Func_8092548
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r8, r3
	mov	r1, r8
	mov	r0, #0x13
	bl	OvlFunc_969_20088a8
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0x14
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_8092548
	ldr	r6, =0x2014
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, r10
	mov	r0, #0x14
	bl	OvlFunc_969_20088a8
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0x28
	mov	r0, #0x15
	bl	__Func_8093040
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r2, #0x3c
	mov	r0, #0x15
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, r10
	mov	r0, #0x13
	bl	OvlFunc_969_20088a8
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	ldr	r0, =0x2013
	bl	OvlFunc_969_2008894
	mov	r2, #0x3c
	mov	r0, #0x15
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0x90
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0xc0
	bl	__Func_80921c4
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x9b
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0xc0
	bl	__Func_80921c4
	mov	r1, #0xa4
	mov	r2, #0xba
	lsl	r1, #1
	mov	r0, #0x15
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r5, =0x27ba
	mov	r1, #1
	mov	r0, r5
	bl	__Func_801776c
	mov	r1, #0x9b
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0xc0
	bl	__Func_80921c4
	mov	r1, r10
	mov	r0, #0x13
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r10
	mov	r0, #0x14
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x90
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0xc0
	bl	__Func_80921c4
	mov	r1, #0x83
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0xb0
	bl	__Func_80921c4
	add	r5, #1
	mov	r2, #0x28
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_8092548
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_969_20088a8
	mov	r1, r10
	mov	r0, #0x15
	bl	OvlFunc_969_20088a8
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #6
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #6
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0x82
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0xba
	bl	__Func_80921c4
	mov	r1, r8
	mov	r0, #0x15
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x8a
	mov	r2, #0xc0
	lsl	r1, #1
	mov	r0, #6
	bl	__Func_80921c4
	mov	r0, #0x13
	bl	__PlaySound
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r5, #0xa0
	lsl	r5, #7
	strh	r5, [r0, #6]
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	mov	r0, #6
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0x14
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #6
	lsl	r1, #8
	mov	r2, #0x14
	mov	r6, #0xa0
	bl	__Func_8092adc
	lsl	r6, #8
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #2
	bl	__Func_8092560
	mov	r1, r6
	mov	r0, #3
	bl	OvlFunc_969_20088a8
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #6
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r8
	mov	r0, #0x13
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0x14
	lsl	r1, #8
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0x1d
	bl	__PlaySound
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r1, r8
	mov	r0, #0x15
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #6
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, r8
	mov	r0, #0x13
	bl	OvlFunc_969_20088a8
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_8092548
	mov	r5, #0xd0
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	lsl	r5, #8
	mov	r2, #0
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #6
	bl	OvlFunc_969_20088a8
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, r8
	mov	r2, #0x14
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r0, #6
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #0
	bl	OvlFunc_969_20088a8
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #0x13
	mov	r1, #0
	bl	OvlFunc_969_20088a8
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_8092548
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_969_20088a8
	mov	r1, #4
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	b	.L1e74

	.pool_aligned

.L1e74:
	bl	OvlFunc_969_2008894
	mov	r1, r5
	mov	r0, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #6
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, r8
	mov	r0, #0x13
	bl	OvlFunc_969_20088a8
	mov	r1, #4
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x13
	mov	r1, #0
	bl	OvlFunc_969_20088a8
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_8092548
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, r6
	mov	r0, #0
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
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r6
	mov	r0, #3
	bl	OvlFunc_969_20088a8
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r1, r10
	mov	r0, #1
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #6
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r10
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r10
	mov	r0, #2
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_809259c
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	mov	r0, #0x41
	bl	__CheckPartyItem
	ldr	r2, =0x345
	add	r0, r2
	bl	__SetFlag
	mov	r0, #0x41
	bl	__Func_80789dc
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	mov	r5, #0xfe
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #6
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	ldr	r6, =gScript_969__0200e004
	and	r5, r3
	strb	r5, [r0]
	mov	r1, r6
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r1, r6
	mov	r0, #1
	bl	__MapActor_SetBehavior
	mov	r1, r6
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r6
	mov	r0, #3
	bl	__MapActor_SetBehavior
	ldr	r5, =gScript_969__0200e03c
	mov	r0, #0x13
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x14
	bl	__MapActor_SetBehavior
	mov	r1, r6
	mov	r0, #0x15
	bl	__MapActor_SetBehavior
	mov	r0, #6
	mov	r1, r6
	bl	__MapActor_RunScript
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r5, =0xbb
	mov	r1, #2
	mov	r0, r5
	bl	__Func_8091f90
	mov	r0, r5
	mov	r1, #9
	bl	__Func_8091fa8
	mov	r0, #0x62
	mov	r1, #1
	bl	__Func_8091eb0
	mov	r0, #0xd4
	lsl	r0, #2
	bl	__SetFlag
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_20092c8


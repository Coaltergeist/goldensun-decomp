	.include "macros.inc"

.thumb_func_start OvlFunc_969_200b924
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r10, r0
	bl	__CutsceneStart
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r2, #0x17
	mov	r3, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x66
	mov	r1, #4
	mov	r2, #0x4a
	mov	r3, #4
	bl	__CopyMapTiles
	mov	r3, #0x10
	mov	r2, #0x14
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x27
	mov	r1, #0x48
	mov	r2, #0xb
	mov	r3, #0x48
	bl	__CopyMapTiles
	mov	r2, #0x16
	str	r2, [sp]
	mov	r8, r2
	mov	r6, #6
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r5, #0xd
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	mov	r0, #0x13
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xc0
	mov	r2, #0xee
	lsl	r2, #16
	mov	r3, #0
	ldr	r1, =0xffc00000
	lsl	r0, #16
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x14
	bl	__DeleteFieldActor
	mov	r0, #0x13
	bl	__DeleteFieldActor
	mov	r1, #0x13
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #0xad
	mov	r2, r10
	lsl	r3, #17
	str	r3, [r2, #8]
	mov	r3, #0xcd
	lsl	r3, #16
	str	r3, [r2, #0x10]
	mov	r5, #0x80
	mov	r3, #0xc0
	lsl	r3, #7
	lsl	r5, #14
	str	r5, [r2, #0xc]
	strh	r3, [r2, #6]
	mov	r0, r10
	bl	OvlFunc_969_200d688
	mov	r1, #0x12
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r3, #0xb2
	lsl	r3, #17
	str	r3, [r0, #8]
	mov	r3, #0xc0
	lsl	r3, #16
	str	r3, [r0, #0x10]
	mov	r3, #0xa0
	lsl	r3, #8
	strh	r3, [r0, #6]
	str	r5, [r0, #0xc]
	bl	OvlFunc_969_200d688
	mov	r1, #0x12
	mov	r0, #2
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r3, #0xb4
	lsl	r3, #17
	str	r3, [r0, #8]
	mov	r6, #0xde
	mov	r3, #0x80
	lsl	r3, #6
	lsl	r6, #16
	strh	r3, [r0, #6]
	str	r5, [r0, #0xc]
	str	r6, [r0, #0x10]
	bl	OvlFunc_969_200d688
	mov	r1, #0x12
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r3, #0xa7
	lsl	r3, #17
	str	r3, [r0, #8]
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r0, #6]
	str	r5, [r0, #0xc]
	str	r6, [r0, #0x10]
	bl	OvlFunc_969_200d688
	mov	r1, #0xc4
	mov	r2, #0xdc
	lsl	r2, #16
	mov	r0, #0x15
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r0, #0x15
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #0xbc
	mov	r2, #0x9e
	lsl	r2, #17
	mov	r0, #6
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, #5
	mov	r0, #6
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r5, =0xfff00000
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, #0x80
	ldr	r3, [r0, #8]
	lsl	r5, #13
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r3, #4
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #4
	mov	r0, #0x17
	bl	__Func_8092950
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #14
	mov	r1, #0xc8
	str	r3, [r0, #0xc]
	lsl	r1, #4
	ldr	r0, =OvlFunc_969_200da28
	bl	__StartTask
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x40
	str	r3, [r2]
	sub	r3, #0x38
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	OvlFunc_969_200cbec
	ldr	r0, =0x9a7
	bl	__SetFlag
	mov	r0, #2
	bl	__Func_8091e9c
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b924

.thumb_func_start OvlFunc_969_200bbc8
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x8d
	sub	sp, #8
	bl	__PlaySound
	mov	r3, #0x11
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r1, #0xa
	mov	r2, #4
	mov	r0, #0x11
	bl	__Func_8010704
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, #0xa0
	lsl	r5, #8
	ldr	r2, =0
	strh	r5, [r0, #6]
	mov	r0, #1
	mov	r9, r2
	bl	__MapActor_GetActor
	mov	r1, #0xa4
	mov	r2, #0xa8
	strh	r5, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #1
	bl	__MapActor_SetPos
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r1, #0xaa
	mov	r2, #0xc4
	strh	r5, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #2
	bl	__MapActor_SetPos
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r1, #0xa3
	mov	r2, #0xcc
	b	.L3c3c

	.pool_aligned

.L3c3c:
	strh	r5, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #3
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r5, #0xd0
	lsl	r5, #8
	mov	r1, #0xc8
	mov	r2, #0xd8
	strh	r5, [r0, #6]
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #0x15
	bl	__MapActor_SetPos
	mov	r0, #6
	bl	__MapActor_GetActor
	mov	r1, #0xc8
	mov	r2, #0xd8
	strh	r5, [r0, #6]
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #6
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r5, #0xc0
	lsl	r5, #6
	mov	r1, #0x9b
	mov	r2, #0x9e
	strh	r5, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0x92
	mov	r2, #0x9e
	lsl	r2, #16
	strh	r5, [r0, #6]
	lsl	r1, #17
	mov	r0, #0x13
	bl	__MapActor_SetPos
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x18
	mov	r1, #7
	bl	__Func_8092950
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_8092b08
	mov	r0, #0x18
	bl	__MapActor_GetActor
	ldr	r3, =0xffff0000
	ldr	r6, =0x3333
	str	r3, [r0, #0x1c]
	mov	r8, r3
	mov	r3, r0
	mov	r2, r9
	add	r3, #0x55
	str	r6, [r0, #0x18]
	strb	r2, [r3]
	mov	r3, #0x98
	lsl	r3, #17
	mov	r10, r3
	str	r3, [r0, #8]
	mov	r5, #0xc0
	mov	r3, #0x80
	lsl	r3, #10
	lsl	r5, #15
	str	r3, [r0, #0xc]
	str	r5, [r0, #0x10]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x19
	mov	r1, #7
	bl	__Func_8092950
	mov	r1, #1
	mov	r0, #0x19
	bl	__Func_8092b08
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r2, r8
	mov	r3, r0
	str	r2, [r0, #0x1c]
	add	r3, #0x55
	mov	r2, r9
	str	r6, [r0, #0x18]
	strb	r2, [r3]
	mov	r3, r10
	str	r3, [r0, #8]
	mov	r3, #0x88
	lsl	r3, #14
	mov	r1, #0xc8
	str	r3, [r0, #0xc]
	str	r5, [r0, #0x10]
	lsl	r1, #4
	ldr	r0, =OvlFunc_969_200b6d0
	bl	__StartTask
	bl	__Func_8093554
	mov	r2, r9
	add	r0, #0x55
	strb	r2, [r0]
	mov	r1, #0x80
	mov	r2, #0xb4
	mov	r3, #0
	lsl	r1, #14
	lsl	r2, #16
	mov	r0, r10
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, r0
	mov	r2, r1
	bl	__Func_8012330
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x2809
	bl	__MessageID
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_8093040
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, #0x9a
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r6, #0x98
	mov	r3, #0xe0
	lsl	r6, #16
	lsl	r3, #13
	str	r3, [r5, #0xc]
	str	r6, [r5, #0x10]
	mov	r1, #0xa
	mov	r0, #0x14
	mov	r8, r3
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, #0x99
	mov	r2, r8
	lsl	r3, #17
	str	r2, [r5, #0xc]
	str	r3, [r5, #8]
	str	r6, [r5, #0x10]
	mov	r1, #0xb
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	bl	__CutsceneWait
	mov	r3, r10
	str	r3, [r5, #8]
	mov	r3, #0xa8
	lsl	r3, #13
	str	r3, [r5, #0xc]
	mov	r1, #0xc
	str	r6, [r5, #0x10]
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	mov	r0, #8
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__DeleteFieldActor
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, #0x93
	mov	r5, r0
	mov	r2, r8
	lsl	r3, #17
	str	r2, [r5, #0xc]
	str	r3, [r5, #8]
	mov	r1, #8
	str	r6, [r5, #0x10]
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, #0x96
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r3, #0xd8
	lsl	r3, #13
	str	r3, [r5, #0xc]
	mov	r1, #9
	str	r6, [r5, #0x10]
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	bl	__CutsceneWait
	mov	r3, r10
	str	r3, [r5, #8]
	mov	r3, #0x88
	lsl	r3, #13
	str	r3, [r5, #0xc]
	mov	r1, #0xa
	str	r6, [r5, #0x10]
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #8
	bl	__CutsceneWait
	mov	r0, #0x13
	bl	__DeleteFieldActor
	mov	r0, #0xa0
	bl	__CutsceneWait
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200bbc8

.thumb_func_start OvlFunc_969_200be9c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_969_20088a8
	mov	r0, #0
	mov	r1, #0
	mov	r5, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L3f08
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r5, #1
	b	.L3f26
.L3f08:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L3f26:
	mov	r0, #2
	bl	OvlFunc_969_2008894
	cmp	r5, #0
	beq	.L3f40
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L3f40:
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	mov	r6, #0x80
	bl	__MapActor_SetSpeed
	ldr	r5, =0x1001
	lsl	r6, #6
	mov	r2, #0xae
	mov	r0, #1
	ldr	r1, =0x141
	bl	__Func_80921c4
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r10, r3
	mov	r1, r10
	mov	r0, #3
	bl	OvlFunc_969_20088a8
	mov	r3, #0x80
	lsl	r3, #7
	mov	r8, r3
	mov	r1, r8
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, r6
	mov	r2, #0x14
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	ldr	r0, =0x8001
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r0, #0x11
	bl	__PlaySound
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r1, r8
	mov	r0, #1
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, r10
	mov	r0, #2
	bl	OvlFunc_969_20088a8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x3c
	mov	r0, #2
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r2, #0x28
	mov	r0, #1
	bl	__MapActor_Jump
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x15
	mov	r1, #0xc8
	mov	r2, #0xbc
	bl	__MapActor_TravelTo
	mov	r2, #0xcc
	mov	r0, #6
	mov	r1, #0xc8
	bl	__MapActor_TravelTo
	ldr	r0, =0x33333
	ldr	r1, =0x6666
	bl	__Func_80933d4
	mov	r0, #0xfc
	mov	r2, #0xbe
	mov	r3, #1
	lsl	r2, #16
	mov	r1, #0
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x17
	bl	__PlaySound
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__MapActor_Surprise
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #6
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #6
	bl	__MapActor_Surprise
	ldr	r5, =0x2003
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #3
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	add	r6, #2
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #0x15
	bl	OvlFunc_969_20088a8
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_8093040
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Surprise
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #4
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x15
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__MapActor_Emote
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200be9c

.thumb_func_start OvlFunc_969_200c23c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x13
	sub	sp, #8
	bl	__PlaySound
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
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
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0xa
	bl	__MapActor_Emote
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
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
	mov	r1, #0xd0
	mov	r0, #6
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #0x98
	mov	r1, #0x80
	mov	r2, #0xb4
	mov	r3, #1
	lsl	r2, #16
	lsl	r1, #14
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x18
	bl	__MapActor_GetActor
	ldr	r5, =0x1999
	str	r5, [r0, #0x18]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	ldr	r5, =gScript_969__0200e088
	mov	r0, #0x18
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
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
	mov	r0, #0x8d
	bl	__PlaySound
	ldr	r0, =0x236
	bl	__SetFlag
	mov	r0, #0x18
	bl	__MapActor_GetActor
	ldr	r3, =0xffa00000
	str	r3, [r0, #0xc]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	ldr	r3, =0xffc00000
	mov	r1, #7
	str	r3, [r0, #0xc]
	mov	r0, #0x1a
	bl	__Func_8092950
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	ldr	r1, =0xffff0000
	mov	r5, r0
	str	r1, [r5, #0x1c]
	mov	r0, #0x18
	mov	r10, r1
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x18]
	mov	r2, #0
	mov	r9, r2
	str	r3, [r5, #0x18]
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r9
	strb	r1, [r3]
	mov	r2, #0x98
	ldr	r3, =0xffe00000
	mov	r6, #0xc0
	lsl	r2, #17
	lsl	r6, #15
	str	r2, [r5, #8]
	str	r3, [r5, #0xc]
	str	r6, [r5, #0x10]
	mov	r1, #7
	mov	r0, #0x1b
	mov	r8, r2
	bl	__Func_8092950
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r3, r10
	mov	r5, r0
	str	r3, [r5, #0x1c]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x18]
	str	r3, [r5, #0x18]
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r9
	mov	r2, r8
	strb	r1, [r3]
	mov	r3, r9
	str	r2, [r5, #8]
	str	r3, [r5, #0xc]
	str	r6, [r5, #0x10]
	mov	r1, #7
	mov	r0, #0x1c
	bl	__Func_8092950
	mov	r0, #0x1c
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1c
	bl	__MapActor_GetActor
	mov	r1, r10
	mov	r5, r0
	str	r1, [r5, #0x1c]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x18]
	str	r3, [r5, #0x18]
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r9
	strb	r2, [r3]
	mov	r3, r8
	str	r3, [r5, #8]
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r5, #0xc]
	mov	r2, #0x17
	mov	r3, #0x12
	str	r6, [r5, #0x10]
	mov	r0, #0x66
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #4
	mov	r2, #0x4a
	mov	r3, #4
	bl	__CopyMapTiles
	mov	r3, #0x10
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x27
	mov	r1, #0x48
	mov	r2, #0xb
	mov	r3, #0x48
	bl	__CopyMapTiles
	mov	r1, #0x16
	str	r1, [sp]
	mov	r8, r1
	mov	r6, #6
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r5, #0xd
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r2, r8
	str	r2, [sp]
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	mov	r0, #0x13
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r5, =0xfff00000
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, #0x80
	ldr	r3, [r0, #8]
	lsl	r5, #13
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	bl	OvlFunc_969_200d688
	mov	r0, #1
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	bl	OvlFunc_969_200d688
	mov	r0, #2
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	bl	OvlFunc_969_200d688
	mov	r0, #3
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	bl	OvlFunc_969_200d688
	mov	r1, #0xc4
	mov	r2, #0xdc
	lsl	r2, #16
	mov	r0, #0x15
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r0, #0x15
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #0xbc
	mov	r2, #0x9e
	lsl	r2, #17
	mov	r0, #6
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, #5
	mov	r0, #6
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
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
	ldr	r5, =gScript_969__0200e0d0
	mov	r0, #0x18
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1b
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1c
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
	lsl	r1, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x18
	bl	__MapActor_GetActor
	ldr	r3, =0x51e
	ldr	r5, =gScript_969__0200e0f4
	str	r3, [r0, #0x1c]
	mov	r1, r5
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1b
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1c
	bl	__MapActor_RunScript
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r1, #0xf
	mov	r0, #0x18
	bl	__Func_8092950
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_969__0200e130
	mov	r0, #0x18
	bl	__MapActor_RunScript
	ldr	r0, =OvlFunc_969_200b6d0
	bl	__StopTask
	mov	r1, #2
	mov	r2, #0x14
	mov	r0, #2
	bl	__MapActor_Jump
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xa3
	mov	r2, #0xdc
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, r0
	mov	r3, r2
	mov	r1, r9
	add	r3, #0x62
	strb	r1, [r3]
	b	.L4784

	.pool_aligned

.L4784:
	mov	r6, #1
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	mov	r5, #0xa0
	lsl	r5, #8
	str	r3, [r2, #0x4c]
	ldr	r3, =0
	strh	r5, [r2, #6]
	mov	r0, #1
	mov	r8, r3
	bl	__MapActor_GetActor
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	strh	r5, [r2, #6]
	str	r3, [r2, #0x4c]
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	strh	r5, [r2, #6]
	str	r3, [r2, #0x4c]
	mov	r0, #3
	b	.L47d4

	.pool_aligned

.L47d4:
	bl	__MapActor_GetActor
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	strh	r5, [r2, #6]
	str	r3, [r2, #0x4c]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	mov	r0, #6
	str	r3, [r2, #0x4c]
	bl	__MapActor_GetActor
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	mov	r0, #0x17
	str	r3, [r2, #0x4c]
	bl	__MapActor_GetActor
	mov	r2, r8
	add	r0, #0x55
	strb	r2, [r0]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x17
	mov	r1, #7
	bl	__Func_8092950
	mov	r0, #0x17
	mov	r1, #2
	bl	__Func_8092b08
	ldr	r3, =.L6764
	mov	r1, r9
	ldr	r2, =.L6760
	str	r1, [r3]
	mov	r3, #0xf0
	mov	r1, #0xc8
	str	r3, [r2]
	ldr	r0, =OvlFunc_969_200d6a0
	lsl	r1, #4
	bl	__StartTask
.L485a:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x237
	bl	__GetFlag
	cmp	r0, #0
	beq	.L485a
	ldr	r0, =0x101
	bl	__SetFlag
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__SetFlag
	bl	__Func_808ba38
	ldr	r0, =2
	mov	r1, #0x5b
	bl	__SetDestMap
	ldr	r2, =0x7fff
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #1
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200c23c

.thumb_func_start OvlFunc_969_200c8d8
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x14
	sub	sp, #8
	bl	__DeleteFieldActor
	mov	r0, #0x13
	bl	__DeleteFieldActor
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r3, #0x11
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0xa
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
	mov	r3, #0x12
	mov	r2, #0x17
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x66
	mov	r1, #4
	mov	r2, #0x4a
	mov	r3, #4
	bl	__CopyMapTiles
	mov	r3, #0x10
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x27
	mov	r1, #0x48
	mov	r2, #0xb
	mov	r3, #0x48
	bl	__CopyMapTiles
	mov	r2, #0x16
	str	r2, [sp]
	mov	r8, r2
	mov	r6, #6
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r5, #0xd
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #7
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	bl	__Func_808bb2c
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x8a
	bl	__PlaySound
	mov	r0, #0
	mov	r1, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #0x12
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #0x12
	bl	__MapActor_SetAnim
	mov	r1, #0x12
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xad
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r2, #0x80
	mov	r3, #0xcd
	lsl	r2, #14
	lsl	r3, #16
	str	r2, [r5, #0xc]
	str	r3, [r5, #0x10]
	mov	r10, r2
	bl	OvlFunc_969_200d688
	mov	r3, r5
	mov	r6, #0
	add	r3, #0x63
	strb	r6, [r3]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x28]
	mov	r0, #1
	mov	r8, r3
	bl	__MapActor_GetActor
	mov	r3, #0xb2
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r3, #0xc0
	mov	r2, r10
	lsl	r3, #16
	str	r2, [r5, #0xc]
	str	r3, [r5, #0x10]
	bl	OvlFunc_969_200d688
	mov	r3, r5
	add	r3, #0x63
	strb	r6, [r3]
	mov	r3, r8
	str	r3, [r5, #0x28]
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r3, #0xb4
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r3, #0xde
	mov	r2, r10
	lsl	r3, #16
	str	r2, [r5, #0xc]
	str	r3, [r5, #0x10]
	mov	r9, r3
	bl	OvlFunc_969_200d688
	mov	r3, r5
	mov	r2, r8
	add	r3, #0x63
	strb	r6, [r3]
	mov	r0, #3
	str	r2, [r5, #0x28]
	bl	__MapActor_GetActor
	mov	r3, #0xa7
	mov	r5, r0
	lsl	r3, #17
	mov	r2, r9
	str	r3, [r5, #8]
	mov	r3, r10
	str	r2, [r5, #0x10]
	str	r3, [r5, #0xc]
	bl	OvlFunc_969_200d688
	mov	r3, r5
	add	r3, #0x63
	strb	r6, [r3]
	mov	r3, r8
	str	r3, [r5, #0x28]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x62
	strb	r6, [r0]
	mov	r0, #6
	bl	__MapActor_GetActor
	add	r0, #0x62
	strb	r6, [r0]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #4
	mov	r0, #0x17
	bl	__Func_8092950
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_969_200da28
	bl	__StartTask
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #1
	str	r2, [r3]
	bl	__MapTransitionIn
	ldr	r0, =0x7fff
	mov	r1, #0
	bl	__Func_8091220
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__WaitFrames
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200c8d8

.thumb_func_start OvlFunc_969_200cb28
	push	{lr}
	ldr	r0, =0x2829
	bl	__MessageID
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r0, #0x3e
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #9
	lsl	r1, #9
	bl	__Func_8012330
	ldr	r0, =0x4cccc
	ldr	r1, =0x9999
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0xc0
	mov	r2, #0xee
	mov	r3, #1
	lsl	r2, #16
	ldr	r1, =0xffc00000
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x28
	ldr	r0, =0x2015
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #6
	bl	__Func_80925cc
	mov	r0, #6
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x50
	ldr	r0, =0x2015
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #6
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #6
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #6
	bl	OvlFunc_969_2008894
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200cb28

.thumb_func_start OvlFunc_969_200cbec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0
	ldr	r0, =0x282e
	sub	sp, #8
	mov	r8, r1
	bl	__MessageID
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__MapActor_Surprise
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x2015
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #6
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #6
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #6
	mov	r0, #6
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x28
	ldr	r0, =0x2015
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #6
	mov	r1, #7
	bl	__MapActor_SetAnim
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #6
	bl	__Func_8093040
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #6
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r1, =gScript_969__0200e324
	mov	r0, #6
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0x15
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, #6
	bl	__MapActor_WaitScript
	mov	r0, #0xa0
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r1, #0
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x15
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #5
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x15
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #0x15
	bl	__MapActor_SetSpeed
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r5, #0x80
	ldr	r3, =OvlFunc_969_2008400
	mov	r7, r0
	lsl	r5, #8
	str	r3, [r7, #0x6c]
	mov	r2, #0xed
	strh	r5, [r7, #6]
	mov	r0, #0x15
	mov	r1, #0xb8
	bl	__Func_8092158
	ldr	r1, =gScript_969__0200e360
	mov	r0, #0x15
	bl	__MapActor_RunScript
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0
	bl	OvlFunc_969_2008894
	mov	r0, #0x48
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, r5
	lsl	r0, #11
	bl	__Func_80933d4
	mov	r0, #0xab
	mov	r1, #0x80
	mov	r2, #0xd4
	mov	r3, #1
	lsl	r2, #16
	lsl	r1, #14
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0x3c
	mov	r1, #6
	mov	r0, #0
	bl	__MapActor_Jump
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xa
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =gScript_969__0200e074
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0x3c
	mov	r0, #1
	mov	r1, #6
	bl	__MapActor_Jump
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0x28
	mov	r1, #6
	mov	r0, #2
	bl	__MapActor_Jump
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #3
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #6
	mov	r2, #0x3c
	bl	__MapActor_Jump
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r5, #0xc0
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_SetAnim
	lsl	r5, #7
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r0, #3
	mov	r1, r5
	bl	OvlFunc_969_20088a8
	mov	r6, #0x80
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_SetAnim
	lsl	r6, #7
	mov	r2, #0x50
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, r6
	bl	OvlFunc_969_20088a8
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, r5
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0x14d
	mov	r2, #0xc2
	bl	__Func_80921c4
	mov	r0, #1
	ldr	r1, =0x14d
	mov	r2, #0xce
	bl	__Func_80921c4
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r2, #0x50
	mov	r0, #1
	bl	__Func_8093040
	mov	r0, #0
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x50
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r2, #0
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_Jump
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L5046
	b	.L5010

	.pool_aligned

.L5010:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r2, #1
	mov	r8, r2
	b	.L507e
.L5046:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
	strh	r3, [r2]
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r0, #3
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	OvlFunc_969_2008894
.L507e:
	mov	r1, r8
	cmp	r1, #0
	beq	.L5094
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
	strh	r3, [r2]
.L5094:
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_969_20088a8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x11
	bl	__PlaySound
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x91
	bl	__PlaySound
	mov	r1, #0x12
	mov	r2, #0x17
	str	r1, [sp]
	str	r2, [sp, #4]
	mov	r8, r2
	mov	r9, r1
	mov	r0, #0x6e
	mov	r1, #0x69
	mov	r2, #0x4a
	mov	r3, #4
	bl	__CopyMapTiles
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r5, #8
	mov	r0, #0x5c
	mov	r1, #0x56
	mov	r2, #0x53
	mov	r3, #4
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r1, r8
	str	r1, [sp, #4]
	mov	r0, #0x4b
	mov	r1, #0x1c
	mov	r2, #0x4b
	mov	r3, #4
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r2, #0x14
	mov	r3, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r11, r2
	mov	r0, #0x5c
	mov	r1, #0x56
	mov	r2, #0xb
	mov	r3, #0x48
	bl	__CopyMapTiles
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r1, #0x5c
	mov	r2, #0x13
	mov	r3, #0x44
	mov	r0, #0x13
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #0x10]
	ldr	r6, =0xffe00000
	mov	r1, #0
	add	r3, r6
	mov	r10, r1
	str	r3, [r7, #0x10]
	mov	r3, r7
	mov	r2, r10
	add	r3, #0x66
	strh	r2, [r3]
	bl	OvlFunc_969_200d688
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	ldr	r5, =0xfffc0000
	add	r3, r5
	str	r3, [r7, #8]
	ldr	r3, [r7, #0x10]
	add	r3, r6
	str	r3, [r7, #0x10]
	mov	r3, r7
	mov	r1, r10
	add	r3, #0x66
	strh	r1, [r3]
	bl	OvlFunc_969_200d688
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	ldr	r3, [r7, #0x10]
	add	r3, r6
	str	r3, [r7, #0x10]
	mov	r3, r7
	mov	r2, r10
	add	r3, #0x66
	strh	r2, [r3]
	bl	OvlFunc_969_200d688
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	ldr	r1, =0xffee0000
	ldr	r3, [r7, #0x10]
	add	r3, r1
	str	r3, [r7, #0x10]
	mov	r3, r7
	mov	r2, r10
	add	r3, #0x66
	strh	r2, [r3]
	bl	OvlFunc_969_200d688
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r3, #0xe0
	lsl	r3, #14
	str	r3, [r0, #0xc]
	mov	r1, #0x80
	mov	r0, #0xa9
	mov	r2, #0xb4
	mov	r3, #0
	lsl	r1, #14
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
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
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #2
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r2, #0
	mov	r0, #3
	mov	r1, #6
	bl	__MapActor_Jump
	ldr	r5, =gScript_969__0200e3c0
	mov	r0, #0
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #1
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_SetBehavior
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x91
	bl	__PlaySound
	mov	r3, #0xa
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6e
	mov	r1, #0x6a
	mov	r2, #0x12
	mov	r3, #0xe
	bl	__Func_8010704
	mov	r3, r9
	mov	r1, r8
	str	r3, [sp]
	str	r1, [sp, #4]
	mov	r0, #0x6e
	mov	r1, #0x69
	mov	r2, #0x4a
	mov	r3, #4
	bl	__CopyMapTiles
	mov	r3, r11
	mov	r2, #0x10
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r2, #0xb
	mov	r1, #0x56
	mov	r3, #0x44
	mov	r0, #0x5c
	bl	__CopyMapTiles
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r5, =0xfff00000
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	mov	r5, #0x80
	lsl	r5, #13
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r1, =0xfff00000
	ldr	r3, [r7, #8]
	add	r3, r1
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #8]
	ldr	r2, =0xfff00000
	add	r3, r2
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xa1
	mov	r1, #0x80
	mov	r2, #0xb4
	mov	r3, #0
	lsl	r2, #16
	lsl	r1, #14
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	b	.L5458

	.pool_aligned

.L5458:
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
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #2
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #3
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__MapActor_SetIdle
	mov	r0, #2
	bl	__MapActor_SetIdle
	mov	r0, #3
	bl	__MapActor_SetIdle
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r2, #0x78
	mov	r0, #2
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	mov	r1, #2
	mov	r0, #2
	bl	__MapActor_Jump
	mov	r0, #2
	bl	OvlFunc_969_2008894
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
	mov	r1, #0
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_969__0200e39c
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_SetBehavior
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x88
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_80921c4
	mov	r1, #0x88
	lsl	r1, #1
	mov	r2, #0xfe
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r5, =iwram_3001ebc
	mov	r3, #0xe0
	ldr	r1, [r5]
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0x10
	str	r1, [r3]
	bl	__MapTransitionOut
	sub	r5, #0x30
	bl	__WaitMapTransition
	mov	r0, #0x50
	bl	__CutsceneWait
	bl	__Func_800c5b4
	ldr	r3, [r5]
	ldr	r1, =0x12f4
	add	r2, r3, r1
	mov	r1, r10
	strh	r1, [r2]
	ldr	r2, =0x12f6
	add	r3, r2
	strh	r1, [r3]
	mov	r2, #0
	mov	r1, #0
	ldr	r0, =0x284f
	bl	__Func_8019aa0
	bl	__Func_800c5fc
	mov	r0, #0x50
	bl	__CutsceneWait
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200cbec


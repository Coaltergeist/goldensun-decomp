	.include "macros.inc"

.thumb_func_start OvlFunc_953_2009c6c
	push	{lr}
	mov	r0, #0x95
	lsl	r0, #4
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1ca4
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x40
	mov	r1, #0
	mov	r2, #0x30
	mov	r3, #5
	bl	__CopyMapTiles
	mov	r3, #0x10
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #8
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
	b	.L1cca
.L1ca4:
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_8092950
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1cca
	mov	r3, #0xe
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x16
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
.L1cca:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2009c6c

.thumb_func_start OvlFunc_953_2009cd4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	__CutsceneStart
	mov	r1, #0xc6
	mov	r2, #0x88
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xce
	mov	r2, #0x88
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xca
	mov	r2, #0x98
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #3
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	bl	__Func_80933f8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r9, r3
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x43
	str	r3, [r2]
	sub	r3, #0x3b
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__Func_8091e20
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #0
	ldr	r0, =0x10002
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r8, r3
	mov	r0, #8
	mov	r1, r8
	bl	OvlFunc_953_2009c5c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x20f8
	bl	__Func_8092b94
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #8
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #3
	bl	OvlFunc_953_2009c48
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, r8
	bl	OvlFunc_953_2009c5c
	ldr	r1, =0x105
	mov	r2, #0x14
	mov	r0, #9
	bl	__MapActor_Emote
	mov	r0, #9
	bl	OvlFunc_953_2009c48
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #1
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	OvlFunc_953_2009c48
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0xb
	bl	OvlFunc_953_2009c48
	mov	r3, #0xa0
	lsl	r3, #8
	mov	r10, r3
	mov	r0, #2
	mov	r1, r10
	bl	OvlFunc_953_2009c5c
	mov	r1, #4
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #3
	bl	OvlFunc_953_2009c48
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_953_2009c5c
	mov	r5, #0xc0
	mov	r1, #2
	mov	r0, #1
	lsl	r5, #7
	bl	__Func_809259c
	mov	r0, #1
	bl	OvlFunc_953_2009c48
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_953_2009c5c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_953_2009c5c
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r1, #4
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r6, #0x80
	mov	r0, #3
	bl	OvlFunc_953_2009c48
	lsl	r6, #6
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_953_2009c5c
	mov	r0, #1
	bl	OvlFunc_953_2009c48
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0x83
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #1
	mov	r7, #0xc0
	lsl	r7, #8
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r7
	mov	r0, #2
	bl	OvlFunc_953_2009c5c
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r0, #0
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, r7
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, r8
	bl	OvlFunc_953_2009c5c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #8
	bl	OvlFunc_953_2009c48
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
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #9
	bl	OvlFunc_953_2009c48
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #2
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	OvlFunc_953_2009c48
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
	mov	r0, #3
	mov	r1, r7
	bl	OvlFunc_953_2009c5c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0xb
	bl	OvlFunc_953_2009c48
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #2
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #3
	ldr	r1, =0x105
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0x83
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #1
	mov	r5, #0xe0
	bl	__MapActor_Emote
	lsl	r5, #8
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r5
	mov	r0, #2
	bl	OvlFunc_953_2009c5c
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x3c
	mov	r0, #0xb
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #1
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	mov	r5, #0
	bl	__Func_8091c7c
	b	.L2154

	.pool_aligned

.L2154:
	cmp	r0, #1
	bne	.L2162
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r5, #1
	b	.L2188
.L2162:
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, r7
	bl	OvlFunc_953_2009c5c
	mov	r0, #2
	bl	OvlFunc_953_2009c48
.L2188:
	cmp	r5, #0
	beq	.L219c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L219c:
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #8
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #9
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xa
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r5, #0xc0
	mov	r2, #0x3c
	mov	r0, #0xb
	ldr	r1, =0x105
	bl	__MapActor_Emote
	lsl	r5, #6
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_953_2009c5c
	mov	r0, #8
	bl	OvlFunc_953_2009c48
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
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r5
	mov	r0, #9
	bl	OvlFunc_953_2009c5c
	mov	r0, #9
	bl	OvlFunc_953_2009c48
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0xa
	mov	r6, #0x80
	bl	OvlFunc_953_2009c5c
	lsl	r6, #8
	mov	r0, #0xa
	bl	OvlFunc_953_2009c48
	mov	r1, r6
	mov	r0, #0xb
	bl	OvlFunc_953_2009c5c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0xb
	bl	OvlFunc_953_2009c48
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #1
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #2
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #3
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r5, =gScript_953__0200adac
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
	mov	r0, #0
	mov	r1, #0
	bl	OvlFunc_953_2009c5c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0xb
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_8092064
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	ldr	r1, =0x33e
	mov	r2, #0x98
	bl	__Func_8092158
	mov	r1, #0xca
	mov	r0, #0xb
	lsl	r1, #2
	mov	r2, #0xa4
	bl	__Func_8092158
	mov	r1, #0xca
	mov	r2, #0x9c
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #0xb
	bl	__Func_8092128
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xca
	mov	r1, #1
	mov	r2, #0x9c
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	mov	r1, #0xca
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xa4
	bl	__Func_80921c4
	mov	r1, #0xca
	mov	r2, #0x9c
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x28
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__Func_8091e20
	mov	r0, #0x40
	bl	__Func_8091e9c
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2009cd4

.thumb_func_start OvlFunc_953_200a3e0
	push	{lr}
	mov	r0, #5
	bl	__GetFlag
	cmp	r0, #0
	beq	.L23fe
	ldr	r0, =0x16d
	bl	__SetFlag
	mov	r0, #5
	bl	__Func_8079664
	mov	r0, #3
	bl	__AddPartyMember
.L23fe:
	bl	__CutsceneStart
	mov	r1, #0xb2
	mov	r2, #0x93
	lsl	r2, #18
	lsl	r1, #18
	mov	r0, #0xb
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xb
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r0, #0xb
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	ldr	r2, =0xcccc
	ldr	r1, =0x19999
	mov	r0, #0
	bl	__Func_8092064
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #0
	strh	r3, [r0, #6]
	bl	__MapTransitionIn
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #0xc3
	mov	r2, #0x93
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_8092128
	mov	r1, #0xcb
	mov	r2, #0x93
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_8092158
	mov	r1, #0xdc
	mov	r2, #0x93
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_8092128
	mov	r1, #0xe4
	mov	r2, #0x93
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_8092158
	mov	r1, #0xf5
	mov	r2, #0x93
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_8092128
	mov	r1, #0xfd
	mov	r2, #0x93
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_8092128
	bl	__MapTransitionOut
	bl	__Func_8091e20
	ldr	r0, =0x90f
	bl	__GetFlag
	cmp	r0, #0
	beq	.L24be
	mov	r0, #0x1f
	bl	__Func_8091e9c
	b	.L24c4
.L24be:
	mov	r0, #0x41
	bl	__Func_8091e9c
.L24c4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200a3e0

.thumb_func_start OvlFunc_953_200a4d8
	push	{r5, lr}
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	bl	__MapTransitionIn
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0xd
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xd0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xf
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x12
	bl	__Func_8092adc
	ldr	r0, =0x2112
	bl	__Func_8092b94
	mov	r0, #8
	bl	OvlFunc_953_2009c48
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, r5
	mov	r3, #0xb4
	add	r2, #0x64
	lsl	r3, #2
	strh	r3, [r2]
	add	r5, #0x66
	mov	r3, #0x70
	strh	r3, [r5]
	mov	r0, #0xd
	mov	r1, #2
	bl	__MapActor_SetBehavior
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x11
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200a4d8

.thumb_func_start OvlFunc_953_200a5f0
	push	{lr}
	bl	__CutsceneStart
	ldr	r2, =0xcccc
	mov	r0, #0
	ldr	r1, =0x19999
	bl	__Func_8092064
	bl	__MapTransitionIn
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #0xc3
	mov	r2, #0xd6
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_8092158
	mov	r1, #0xdc
	mov	r2, #0xd6
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_8092158
	mov	r1, #0xf5
	mov	r2, #0xd6
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_8092128
	bl	__MapTransitionOut
	bl	__Func_8091e20
	ldr	r0, =0x90f
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2650
	mov	r0, #0x20
	bl	__Func_8091e9c
	b	.L2656
.L2650:
	mov	r0, #0xc
	bl	__Func_8091e9c
.L2656:
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200a5f0

.thumb_func_start OvlFunc_953_200a668
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #0xc6
	mov	r2, #0x88
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xce
	mov	r2, #0x88
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xca
	mov	r2, #0x98
	lsl	r2, #16
	lsl	r1, #18
	mov	r0, #3
	bl	__MapActor_SetPos
	bl	__MapTransitionIn
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_SetAnim
	ldr	r0, =0x2134
	bl	__Func_8092b94
	mov	r0, #8
	bl	OvlFunc_953_2009c48
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #9
	bl	OvlFunc_953_2009c48
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	OvlFunc_953_2009c48
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	bl	OvlFunc_953_2009c48
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r5, =gScript_953__0200adac
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
	mov	r0, #0
	mov	r1, #0
	bl	OvlFunc_953_2009c5c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_8092064
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	ldr	r1, =0x33e
	mov	r2, #0x98
	bl	__Func_8092158
	mov	r1, #0xca
	mov	r0, #0xb
	lsl	r1, #2
	mov	r2, #0xa4
	bl	__Func_8092158
	mov	r1, #0xca
	mov	r2, #0x9c
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #0xb
	bl	__Func_8092128
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xca
	mov	r1, #1
	mov	r2, #0x9c
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	mov	r1, #0xca
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xa4
	bl	__Func_80921c4
	mov	r1, #0xca
	mov	r2, #0x9c
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	__MapTransitionOut
	bl	__Func_8091e20
	mov	r0, #0x43
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200a668

.thumb_func_start OvlFunc_953_200a820
	push	{lr}
	mov	r0, #5
	bl	__GetFlag
	cmp	r0, #0
	beq	.L283e
	ldr	r0, =0x16d
	bl	__SetFlag
	mov	r0, #5
	bl	__Func_8079664
	mov	r0, #3
	bl	__AddPartyMember
.L283e:
	bl	__CutsceneStart
	mov	r1, #0xd9
	mov	r2, #0x93
	lsl	r2, #18
	lsl	r1, #18
	mov	r0, #0xb
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xb
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r0, #0xb
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	ldr	r2, =0xcccc
	ldr	r1, =0x19999
	mov	r0, #0
	bl	__Func_8092064
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r0, #6]
	bl	__MapTransitionIn
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #0xc8
	mov	r2, #0x93
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_8092128
	mov	r1, #0xc0
	mov	r2, #0x93
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_8092158
	mov	r1, #0xaf
	mov	r2, #0x93
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_8092128
	mov	r1, #0xa7
	mov	r2, #0x93
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_8092158
	mov	r1, #0x96
	mov	r2, #0x93
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_8092128
	mov	r1, #0x8e
	mov	r2, #0x93
	mov	r0, #0xb
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_8092128
	bl	__MapTransitionOut
	bl	__Func_8091e20
	mov	r0, #0x15
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200a820

.thumb_func_start OvlFunc_953_200a904
	push	{lr}
	bl	__CutsceneStart
	ldr	r2, =0xcccc
	mov	r0, #0
	ldr	r1, =0x19999
	bl	__Func_8092064
	bl	__MapTransitionIn
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #0xc8
	mov	r2, #0xd6
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_8092158
	mov	r1, #0xaf
	mov	r2, #0xd6
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_8092158
	mov	r1, #0x96
	mov	r2, #0xd6
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_8092128
	bl	__MapTransitionOut
	bl	__Func_8091e20
	mov	r0, #0x16
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200a904

.thumb_func_start OvlFunc_953_200a964
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #0xc6
	mov	r2, #0x88
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xce
	mov	r2, #0x88
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xca
	mov	r2, #0x98
	lsl	r2, #16
	lsl	r1, #18
	mov	r0, #3
	bl	__MapActor_SetPos
	bl	__MapTransitionIn
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_SetAnim
	ldr	r0, =0x2138
	bl	__Func_8092b94
	mov	r0, #8
	bl	OvlFunc_953_2009c48
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #9
	bl	OvlFunc_953_2009c48
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	OvlFunc_953_2009c48
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	bl	OvlFunc_953_2009c48
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r5, =gScript_953__0200adac
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
	mov	r0, #0
	mov	r1, #0
	bl	OvlFunc_953_2009c5c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_8092064
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	ldr	r1, =0x33e
	mov	r2, #0x98
	bl	__Func_8092158
	mov	r1, #0xca
	mov	r0, #0xb
	lsl	r1, #2
	mov	r2, #0xa4
	bl	__Func_8092158
	mov	r1, #0xca
	mov	r2, #0x9c
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #0xb
	bl	__Func_8092128
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xca
	mov	r1, #1
	mov	r2, #0x9c
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	mov	r1, #0xca
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0xa4
	bl	__Func_80921c4
	mov	r1, #0xca
	mov	r2, #0x9c
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	__MapTransitionOut
	bl	__Func_8091e20
	mov	r0, #0x40
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200a964

.thumb_func_start OvlFunc_953_200ab1c
	push	{lr}
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_8092950
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0x10
	mov	r1, #5
	bl	__Func_8092950
	mov	r0, #0x11
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x12
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0xd
	mov	r1, #0xa
	bl	__MapActor_SetAnimSpeed
	mov	r0, #0xe
	mov	r1, #0x14
	bl	__MapActor_SetAnimSpeed
	mov	r0, #0xf
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x10
	mov	r1, #0x28
	bl	__MapActor_SetAnimSpeed
	mov	r0, #0x11
	mov	r1, #0x32
	bl	__MapActor_SetAnimSpeed
	mov	r0, #0x12
	mov	r1, #0x3c
	bl	__MapActor_SetAnimSpeed
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200ab1c

	.section .data
	.global ActorCmd_ARRAY_953__0200ad3c
	.global gScript_884__0200ad74
	.global gScript_953__0200ad74
	.global gScript_953__0200ade4
	.global gScript_911__0200ae20
	.global gScript_913__0200ae20
	.global gScript_953__0200ae20
	.global gScript_953__0200ae5c
	.global gScript_953__0200aed4
	.global gScript_953__0200af24
	.global gScript_953__0200af88
	.global .L3324
	.global .L339c
	.global .L35f4
	.global .L375c
	.global .L37bc
	.global .L387c
	.global .L399c
	.global .L3a44
	.global .L3bdc
	.global .L3e1c
	.global .L3e64
	.global .L3e70
	.global .L3e94
	.global .L3f60
	.global .L4110
	.global .L3034
	.global .L3094
	.global .L3274

ActorCmd_ARRAY_953__0200ad3c:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2d3c, (0x2d74-0x2d3c)
gScript_884__0200ad74:
gScript_953__0200ad74:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2d74, (0x2dac-0x2d74)
	.global gScript_953__0200adac
gScript_953__0200adac:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2dac, (0x2de4-0x2dac)
gScript_953__0200ade4:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2de4, (0x2e20-0x2de4)
gScript_911__0200ae20:
gScript_913__0200ae20:
gScript_953__0200ae20:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2e20, (0x2e5c-0x2e20)
gScript_953__0200ae5c:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2e5c, (0x2ed4-0x2e5c)
gScript_953__0200aed4:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2ed4, (0x2f24-0x2ed4)
gScript_953__0200af24:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2f24, (0x2f88-0x2f24)
gScript_953__0200af88:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x2f88, (0x3034-0x2f88)
.L3034:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3034, (0x3094-0x3034)
.L3094:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3094, (0x3274-0x3094)
.L3274:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3274, (0x32bc-0x3274)
	.global gOvl_0200b2bc
gOvl_0200b2bc:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x32bc, (0x3324-0x32bc)
.L3324:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3324, (0x339c-0x3324)
.L339c:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x339c, (0x35f4-0x339c)
.L35f4:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x35f4, (0x375c-0x35f4)
.L375c:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x375c, (0x37bc-0x375c)
.L37bc:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x37bc, (0x387c-0x37bc)
.L387c:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x387c, (0x399c-0x387c)
.L399c:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x399c, (0x3a44-0x399c)
.L3a44:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3a44, (0x3bdc-0x3a44)
.L3bdc:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3bdc, (0x3e1c-0x3bdc)
.L3e1c:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3e1c, (0x3e64-0x3e1c)
.L3e64:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3e64, (0x3e70-0x3e64)
.L3e70:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3e70, (0x3e94-0x3e70)
.L3e94:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3e94, (0x3f60-0x3e94)
.L3f60:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x3f60, (0x4110-0x3f60)
.L4110:
	.incbin "overlays/rom_7d95dc/orig.bin", 0x4110

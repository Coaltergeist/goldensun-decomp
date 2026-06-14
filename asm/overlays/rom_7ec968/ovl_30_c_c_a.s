	.include "macros.inc"

.thumb_func_start OvlFunc_963_200808c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xaa
	cmp	r2, r3
	bne	.La4
	ldr	r0, =.Lba8
	b	.Lbe
.La4:
	ldr	r3, =0xa9
	cmp	r2, r3
	bne	.Lbc
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lb8
	ldr	r0, =.Lc98
	b	.Lbe
.Lb8:
	ldr	r0, =gOvl_02008c50
	b	.Lbe
.Lbc:
	ldr	r0, =.Lb90
.Lbe:
	pop	{r1}
	bx	r1
.func_end OvlFunc_963_200808c

.thumb_func_start OvlFunc_963_20080e4
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xaa
	cmp	r2, r3
	bne	.Lfc
	ldr	r0, =.Lddc
	b	.L108
.Lfc:
	ldr	r3, =0xab
	cmp	r2, r3
	bne	.L106
	ldr	r0, =.Le54
	b	.L108
.L106:
	ldr	r0, =.Ld10
.L108:
	pop	{r1}
	bx	r1
.func_end OvlFunc_963_20080e4

.thumb_func_start OvlFunc_963_2008124
	push	{r5, r6, lr}
	ldr	r0, =0x89f
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L148
	ldr	r1, =gState
	mov	r0, #0xe2
	ldr	r3, =0x69
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0xa
	strh	r3, [r2]
.L148:
	ldr	r5, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r5, r0
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	ldr	r3, =0xa9
	cmp	r6, r3
	bne	.L200
	ldr	r0, =0x897
	bl	__GetFlag
	cmp	r0, #0
	beq	.L16e
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.L16e:
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r5, r0
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bne	.L1b6
	ldr	r0, =0x8fb
	bl	__GetFlag
	cmp	r0, #0
	beq	.L196
	mov	r0, #0x90
	lsl	r0, #2
	add	r3, r5, r0
	strh	r6, [r3]
	ldr	r3, =0x242
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
.L196:
	ldr	r0, =0x8fc
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1b0
	mov	r0, #0x90
	lsl	r0, #2
	add	r3, r5, r0
	strh	r6, [r3]
	ldr	r3, =0x242
	add	r2, r5, r3
	mov	r3, #5
	strh	r3, [r2]
.L1b0:
	ldr	r0, =0x12f
	bl	__ClearFlag
.L1b6:
	ldr	r5, =gState
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r5, r0
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bne	.L1ea
	ldr	r0, =0x8fb
	bl	__SetFlag
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1ea
	mov	r3, #8
	mov	r2, #0x1b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #6
	mov	r1, #0
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
.L1ea:
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r5, r0
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #5
	bne	.L24c
	ldr	r0, =0x8fc
	bl	__SetFlag
	b	.L24c
.L200:
	ldr	r3, =0xaa
	cmp	r6, r3
	bne	.L24c
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, =0x19999
	mov	r2, #0x38
	str	r3, [r0, #0x1c]
	mov	r3, #0x66
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6c
	mov	r1, #0x26
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L24c:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_963_2008124

.thumb_func_start OvlFunc_963_2008288
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0
	sub	sp, #8
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r5, #2
	mov	r1, #0x24
	mov	r2, #0x47
	mov	r3, #8
	mov	r0, #0x42
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__WaitFrames
	mov	r3, #8
	mov	r1, #0x24
	mov	r2, #0x47
	mov	r0, #0x44
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__WaitFrames
	mov	r2, #0x10
	mov	r1, #3
	neg	r2, r2
	mov	r0, #0
	bl	__Func_8092208
	mov	r0, r6
	bl	__Func_8091e9c
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_963_2008288

.thumb_func_start OvlFunc_963_20082f8
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0x7b
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	bl	__PlaySound
	ldr	r0, =0x8fb
	bl	__ClearFlag
	ldr	r0, =0x8fc
	bl	__ClearFlag
	mov	r0, r5
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_963_20082f8

.thumb_func_start OvlFunc_963_2008334
	push	{r5, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xc0
	mov	r0, #8
	mov	r1, #0x88
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0xc0
	mov	r0, #9
	mov	r1, #0x98
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #9
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r3, #0x1b
	str	r3, [sp, #4]
	mov	r5, #7
	mov	r0, #6
	mov	r1, #0x1b
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x1a
	str	r3, [sp, #4]
	mov	r0, #9
	mov	r1, #0x1a
	mov	r2, #2
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_963_2008334

.thumb_func_start OvlFunc_963_20083c4
	push	{r5, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xdb
	mov	r0, #0
	mov	r1, #0x78
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L402
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xb
	bl	__MapActor_SetPos
.L402:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xb
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #0xb
	mov	r1, #0x6c
	ldr	r2, =0x1af
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_809259c
	ldr	r0, =0x2654
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, #0xd2
	mov	r0, #0xb
	mov	r1, #0x84
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xd0
	mov	r0, #0xb
	mov	r1, #0x8a
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x28
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xd2
	lsl	r2, #1
	mov	r1, #0x90
	mov	r0, #0xb
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #9
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093054
	mov	r0, #0x9b
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5a8
	mov	r1, #0xd0
	mov	r2, #0x28
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xb
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	b	.L5b8
.L5a8:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L5b8:
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xb0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, #0xd0
	mov	r0, #0xb
	mov	r1, #0x8a
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0xa
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L6ce
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__MapActor_TravelTo
.L6ce:
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r3, #0x1b
	str	r3, [sp, #4]
	mov	r5, #7
	mov	r0, #6
	mov	r1, #0x1b
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x1a
	str	r3, [sp, #4]
	mov	r1, #0x1a
	mov	r2, #2
	mov	r3, #1
	mov	r0, #9
	str	r5, [sp]
	bl	__Func_8010704
	ldr	r0, =0x89f
	bl	__SetFlag
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_963_20083c4

.thumb_func_start OvlFunc_963_2008730
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x89f
	bl	__GetFlag
	cmp	r0, #0
	beq	.L748
	ldr	r0, =0x2668
	bl	__MessageID
	b	.L772
.L748:
	ldr	r0, =0x264e
	bl	__MessageID
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L77c
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_DoAnim
.L772:
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	b	.L794
.L77c:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
.L794:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_963_2008730


	.include "macros.inc"

.thumb_func_start OvlFunc_925_200835c
	push	{r5, r6, lr}
	ldr	r0, =0x111
	sub	sp, #8
	bl	__SetFlag
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r3, =gState
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x3a
	cmp	r2, r3
	beq	.L380
	b	.L538
.L380:
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_925_200b4bc
	bl	__StartTask
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #1
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #2
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #3
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #5
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x16
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x17
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #8
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #9
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_8092b08
	mov	r5, #0xe
	mov	r6, #0
.L416:
	mov	r1, #1
	mov	r0, r5
	bl	__Func_8092b08
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r3, #4
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, r5
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, r5
	bl	__MapActor_GetActor
	ldr	r3, =0xffcd8000
	add	r5, #1
	str	r3, [r0, #0xc]
	cmp	r5, #0x13
	bls	.L416
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L46c
	bl	OvlFunc_925_20088cc
	cmp	r0, #0
	beq	.L46c
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L46c
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L46c:
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, =gState
	mov	r2, #0xe1
	str	r5, [r0, #0x18]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #1
	bne	.L4da
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L538
	bl	OvlFunc_925_200856c
	b	.L538
.L4da:
	cmp	r3, #2
	bne	.L52e
	ldr	r0, =0x251
	bl	__GetFlag
	cmp	r0, #0
	bne	.L538
	ldr	r3, =iwram_3001e70
	mov	r2, #0xb2
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #19
	str	r2, [r3, #0xc]
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #5
	mov	r2, #4
	str	r3, [sp]
	mov	r0, #4
	mov	r1, #0x46
	mov	r3, #0x4a
	str	r2, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L538
	bl	OvlFunc_925_2009af0
	b	.L538
.L52e:
	cmp	r3, #5
	bne	.L538
	ldr	r0, =0x251
	bl	__SetFlag
.L538:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_925_200835c

.thumb_func_start OvlFunc_925_200856c
	push	{lr}
	bl	__CutsceneStart
	bl	__Func_8078144
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
	mov	r0, #0x98
	mov	r1, #1
	mov	r2, #0xf0
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #15
	lsl	r0, #17
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	neg	r0, r0
	ldr	r2, =0xe666
	bl	__Func_8012330
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	__Func_8012350
	mov	r0, #0x1e
	bl	__CutsceneWait
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x1999
	ldr	r0, =0xcccc
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r2, #0xa0
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	ldr	r1, =0xffe80000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #0
	ldr	r0, =0x10005
	bl	__Func_8091200
	mov	r0, #0x32
	bl	__Func_8091254
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x1e
	bl	__Func_8091254
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xfc
	mov	r2, #0xa8
	mov	r0, #0
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x84
	mov	r2, #0x90
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xf4
	mov	r2, #0x90
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x98
	lsl	r2, #16
	mov	r0, #3
	lsl	r1, #18
	bl	__MapActor_SetPos
	mov	r0, #0
	mov	r1, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #0x13
	bl	__MapActor_SetAnim
	mov	r1, #0x13
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x1e
	bl	__Func_8091254
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r1, #1
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #3
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r1, #1
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r2, =0x6666
	mov	r0, #3
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L804
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.L804:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L81c
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.L81c:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L834
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.L834:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_SetPos
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_925_200856c


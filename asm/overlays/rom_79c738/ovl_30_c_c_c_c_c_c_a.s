	.include "macros.inc"

	.section .text.after_84ec, "ax", %progbits

.thumb_func_start OvlFunc_909_2008568
	push	{lr}
	ldr	r0, =0x84e
	bl	__GetFlag
	cmp	r0, #0
	bne	.L5e0
	ldr	r0, =0x322
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5e0
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1748
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x9a
	mov	r0, #0
	lsl	r1, #2
	ldr	r2, =0x2fa
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r0, #0x13
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__CutsceneEnd
.L5e0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_2008568

.thumb_func_start OvlFunc_909_20085f4
	push	{lr}
	ldr	r0, =0x84e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L6aa
	bl	__CutsceneStart
	mov	r0, #0
	mov	r1, #0x13
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x13
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xbf
	mov	r0, #0x13
	ldr	r1, =0x26e
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xf0
	mov	r2, #0x14
	mov	r0, #0x13
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #3
	mov	r0, #0x11
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	ldr	r0, =0x1749
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x13
	ldr	r1, =0x23a
	ldr	r2, =0x2f6
	bl	__Func_80921c4
	mov	r1, #0
	mov	r0, #0x13
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r0, =0x85e
	bl	__SetFlag
	ldr	r0, =0x333
	bl	__SetFlag
	bl	__CutsceneEnd
.L6aa:
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_20085f4

.thumb_func_start OvlFunc_909_20086e0
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	mov	r0, #1
	sub	sp, #8
	bl	__Func_80118c0
	mov	r0, #2
	bl	__Func_80118c0
	ldr	r0, =0x84b
	bl	__SetFlag
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L716
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
.L716:
	ldr	r0, =0x84f
	bl	__GetFlag
	cmp	r0, #0
	bne	.L758
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	bne	.L758
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x1d
	bne	.L740
	bl	OvlFunc_909_20088c0
	b	.L888
.L740:
	cmp	r3, #9
	beq	.L746
	b	.L888
.L746:
	ldr	r0, =0x321
	bl	__GetFlag
	cmp	r0, #0
	bne	.L752
	b	.L888
.L752:
	bl	OvlFunc_909_200979c
	b	.L888
.L758:
	ldr	r0, =0x84e
	bl	__GetFlag
	mov	r6, r0
	cmp	r6, #0
	beq	.L766
	b	.L888
.L766:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x1d
	bne	.L792
	ldr	r0, =0x85e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L782
	b	.L888
.L782:
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	beq	.L888
	bl	OvlFunc_909_20099b0
	b	.L888
.L792:
	cmp	r3, #0x1c
	bne	.L888
	ldr	r0, =0x322
	bl	__GetFlag
	cmp	r0, #0
	beq	.L888
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L884
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r5, #0x26
	mov	r0, #0x26
	mov	r1, #0x37
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x2e
	str	r3, [sp, #4]
	mov	r0, #0x2a
	mov	r3, #1
	mov	r1, #0x37
	mov	r2, #4
	str	r5, [sp]
	bl	__Func_8010704
	mov	r1, #0x9a
	mov	r2, #0xb6
	mov	r0, #0x15
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x9e
	mov	r2, #0xb6
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xa2
	mov	r2, #0xb6
	mov	r0, #0x17
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xa6
	mov	r2, #0xb6
	lsl	r2, #18
	lsl	r1, #18
	mov	r0, #0x18
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r5, =0xfffc0000
	str	r5, [r0, #0xc]
	mov	r0, #0x16
	bl	__MapActor_GetActor
	str	r5, [r0, #0xc]
	mov	r0, #0x17
	bl	__MapActor_GetActor
	str	r5, [r0, #0xc]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	str	r5, [r0, #0xc]
	b	.L888
.L884:
	bl	OvlFunc_909_200a1bc
.L888:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_909_20086e0

.thumb_func_start OvlFunc_909_20088c0
	push	{r5, lr}
	bl	__CutsceneStart
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
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	mov	r1, #1
	mov	r2, #0xa6
	strb	r3, [r0]
	neg	r1, r1
	lsl	r2, #18
	ldr	r0, =0x37e0000
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x85f
	bl	__GetFlag
	cmp	r0, #0
	beq	.L940
	mov	r1, #1
	mov	r3, #0
	ldr	r0, =0x37e0000
	neg	r1, r1
	ldr	r2, =0x2ba0000
	bl	__Func_80933f8
	mov	r1, #0xdb
	mov	r0, #0x13
	lsl	r1, #18
	ldr	r2, =0x27a0000
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x37e0000
	ldr	r2, =0x31e0000
	bl	__MapActor_SetPos
.L940:
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
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
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	ldr	r0, =0x85f
	bl	__GetFlag
	cmp	r0, #0
	beq	.L974
	b	.Le2c
.L974:
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r2, =0x31e0000
	mov	r0, #0x13
	ldr	r1, =0x37e0000
	bl	__MapActor_SetPos
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x37e0000
	neg	r1, r1
	ldr	r2, =0x2ba0000
	bl	__Func_80933f8
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0xae
	ldr	r1, =0x37e
	lsl	r2, #2
	mov	r0, #0x13
	bl	__Func_809218c
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #1
	mov	r2, #0xa6
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #18
	ldr	r0, =0x37e0000
	bl	__Func_80933f8
	mov	r0, #0x13
	bl	__MapActor_WaitMovement
	mov	r2, #0xae
	mov	r0, #0x13
	ldr	r1, =0x34a
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0x9f
	mov	r0, #0x13
	ldr	r1, =0x34a
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xe0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xdb
	ldr	r2, =0x27a
	mov	r0, #0x13
	lsl	r1, #2
	bl	__Func_80921c4
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x1437
	bl	__MessageID
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x3c
	mov	r0, #0x12
	ldr	r1, =0x105
	bl	__MapActor_Emote
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x37e0000
	neg	r1, r1
	ldr	r2, =0x2ba0000
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0x37e0000
	ldr	r2, =0x31e0000
	bl	__MapActor_SetPos
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	ldr	r2, =0x2d6
	ldr	r1, =0x37e
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r2, #0xa6
	ldr	r0, =0x37e0000
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	bl	__Func_80933f8
	mov	r2, #0xab
	mov	r0, #0
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lb26
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lb26:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lb3a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Lb3a:
	mov	r0, #3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lb58
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lb58
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.Lb58:
	mov	r0, #1
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
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
	mov	r1, #0x10
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	bl	__Func_809228c
	mov	r0, #2
	mov	r1, #0x10
	mov	r2, #0x10
	bl	__Func_809228c
	mov	r0, #3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lbbc
	mov	r0, #3
	mov	r1, #0x20
	mov	r2, #0x10
	bl	__Func_809228c
.Lbbc:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #3
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
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #2
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r1, #0xe0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #0x12
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__Func_8092c40
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lcb6
	b	.Lf86
.Lcb6:
	ldr	r0, =_MSG_1440
	bl	__MessageID
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0x13
	lsl	r1, #6
	b	.Ld1c

	.pool_aligned

.Ld1c:
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Ld72
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Ld72:
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Ld92
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.Ld92:
	mov	r0, #3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ldbc
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Ldbc
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.Ldbc:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_SetPos
	ldr	r0, =0x85f
	bl	__SetFlag
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xbc
	mov	r0, #0
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__Func_80921c4
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	bl	.L177e

	.pool_aligned

.Le2c:
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xab
	lsl	r2, #2
	ldr	r1, =0x37e
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xa6
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	ldr	r0, =0x37e0000
	bl	__Func_80933f8
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Le82
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Le82:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Le96
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Le96:
	mov	r0, #3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Leb4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Leb4
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.Leb4:
	mov	r0, #1
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
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
	mov	r1, #0x10
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0x10
	bl	__Func_809228c
	mov	r0, #2
	mov	r1, #0x10
	mov	r2, #0x10
	bl	__Func_809228c
	mov	r0, #3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lf18
	mov	r0, #3
	mov	r1, #0x20
	mov	r2, #0x10
	bl	__Func_809228c
.Lf18:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #3
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
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r1, =0x101
	mov	r2, #0x3c
	mov	r0, #0x12
	bl	__MapActor_Emote
	ldr	r0, =0x1442
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lf86
	b	.Lcb6
.Lf86:
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
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
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x3c
	ldr	r1, =0x105
	mov	r0, #0x12
	bl	__MapActor_Emote
	ldr	r0, =0x1443
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x2012
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L101c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x14
	bl	__MapActor_SetPos
.L101c:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x14
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0xa7
	ldr	r1, =0x37e
	lsl	r2, #2
	mov	r0, #0x14
	bl	__Func_8092158
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #3
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
	mov	r2, #0x3c
	mov	r0, #2
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	ldr	r0, =0x4001
	bl	__Func_8092c40
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L1108
.L10de:
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	ldr	r0, =0x1447
	bl	__MessageID
	mov	r1, #0
	ldr	r0, =0x4001
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L10de
.L1108:
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	ldr	r0, =0x1448
	bl	__MessageID
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
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
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #0x12
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0x12
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	b	.L1244

	.pool_aligned

.L1244:
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0
	ldr	r0, =0x4001
	bl	__Func_8092c40
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	b	.L12b2

	.pool_aligned

.L12a4:
	ldr	r0, =0x144e
	bl	__MessageID
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__Func_8092c40
.L12b2:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L12a4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	ldr	r0, =0x144f
	bl	__MessageID
	mov	r2, #0x14
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
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
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x12
	ldr	r1, =0x105
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0x12
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xe0
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0x14
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0x12
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1436
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x14
	bl	__MapActor_TravelTo
.L1436:
	mov	r0, #0x14
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x14
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x4002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #2
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r0, =0x4002
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x2012
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #3
	ldr	r1, =0x107
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0
	ldr	r1, =0x107
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x107
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #2
	ldr	r1, =0x107
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #0x12
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0xa
	ldr	r0, =0x2012
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r5, =gOvl_0200a5c0
	mov	r0, #0
	ldr	r1, =0x10013
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r0, #1
	ldr	r1, =0x10013
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r0, #2
	ldr	r1, =0x10013
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r0, #3
	ldr	r1, =0x10013
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r0, #0x13
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0xd5
	mov	r0, #0x13
	lsl	r1, #2
	ldr	r2, =0x286
	bl	__Func_80921c4
	mov	r1, #0xd5
	mov	r0, #0x13
	lsl	r1, #2
	ldr	r2, =0x29a
	bl	__Func_80921c4
	mov	r1, #0xd8
	mov	r2, #0xa8
	mov	r0, #0x13
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #5
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x4013
	bl	__Func_8093040
	mov	r0, #0
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__MapActor_SetIdle
	mov	r0, #2
	bl	__MapActor_SetIdle
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #2
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L16da
	b	.L16cc

	.pool_aligned

.L16cc:
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.L16da:
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L16fa
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.L16fa:
	mov	r0, #3
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1724
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1724
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.L1724:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xbc
	mov	r0, #0
	ldr	r1, =0x37e
	lsl	r2, #2
	bl	__Func_80921c4
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x321
	bl	__SetFlag
.L177e:
	mov	r0, #0x1d
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_20088c0

.thumb_func_start OvlFunc_909_200979c
	push	{lr}
	bl	__CutsceneStart
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r1, #0xc0
	mov	r0, #0x13
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0xa5
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #1
	bl	__Func_80118a8
	mov	r0, #2
	bl	__Func_80118a8
	mov	r1, #0x80
	mov	r2, #0x9e
	lsl	r1, #17
	lsl	r2, #18
	mov	r0, #0x13
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x13
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0xa1
	lsl	r2, #2
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_80118c0
	mov	r0, #2
	bl	__Func_80118c0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_80925cc
	ldr	r0, =0x145e
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x84
	mov	r2, #0xa5
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa5
	mov	r0, #0x13
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x13
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_8093054
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x13
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x13
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0xc1
	mov	r0, #0x13
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x13
	bl	__MapActor_SetPos
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldr	r0, =0x84f
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_200979c

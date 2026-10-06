	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MogallForest_MapInit
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r3, #2
	lsl	r2, #1
	str	r3, [r1, r2]
	ldr	r1, =gState
	ldrsh	r2, [r1, r2]
	ldr	r3, =0x44
	sub	sp, #8
	cmp	r2, r3
	beq	.Lm927_251e
	b	.Lm927_26fa
.Lm927_251e:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bge	.Lm927_252e
	b	.Lm927_2b56
.Lm927_252e:
	cmp	r3, #4
	ble	.Lm927_2540
	cmp	r3, #9
	ble	.Lm927_2538
	b	.Lm927_2b56
.Lm927_2538:
	cmp	r3, #7
	bge	.Lm927_253e
	b	.Lm927_2b56
.Lm927_253e:
	b	.Lm927_2622
.Lm927_2540:
	ldr	r0, =0x89c
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm927_25f0
	bl	__CutsceneStart
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_8092950
	mov	r1, #0xb8
	mov	r2, #0xf0
	mov	r0, #0xa
	lsl	r1, #15
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r1, #0x88
	mov	r2, #0x40
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r3, #0xe0
	lsl	r3, #11
	mov	r2, #0x74
	mov	r1, #0x88
	mov	r0, #0xa
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	OvlFunc_927_2008e18
	mov	r1, #0xf
	mov	r0, #0xa
	bl	__Func_8092950
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r0, =0x89c
	bl	__SetFlag
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	__CutsceneEnd
.Lm927_25f0:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm927_25fc
	b	.Lm927_2b56
.Lm927_25fc:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm927_260a
	b	.Lm927_2b56
.Lm927_260a:
	mov	r0, #0xa
	mov	r1, #0xf
	bl	__Func_8092950
	mov	r1, #0x88
	mov	r2, #0xe8
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #15
	bl	__MapActor_SetPos
	b	.Lm927_2b56
.Lm927_2622:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm927_2636
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x10
	bl	__MapActor_SetPos
.Lm927_2636:
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, #0
	str	r3, [r0, #0x6c]
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm927_2656
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
.Lm927_2656:
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0x9e
	mov	r2, #0xdc
	mov	r0, #0x10
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	ldr	r0, =0xfd4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm927_267a
	mov	r0, #0x10
	bl	OvlFunc_927_200ac0c
.Lm927_267a:
	mov	r0, #0xb
	mov	r1, #0xf
	bl	__Func_8092950
	mov	r1, #0xf
	mov	r0, #0xc
	bl	__Func_8092950
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	bl	OvlFunc_927_20088c0
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm927_26bc
	mov	r0, #9
	bl	OvlFunc_927_20088c0
	b	.Lm927_2b56
.Lm927_26bc:
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0x84
	mov	r2, #0xcc
	lsl	r2, #17
	mov	r0, #9
	lsl	r1, #18
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r3, #0x1f
	mov	r2, #0x19
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r0, #0x26
	mov	r1, #0x1b
	mov	r2, #4
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	b	.Lm927_2b56
.Lm927_26fa:
	ldr	r3, =0x45
	cmp	r2, r3
	beq	.Lm927_2702
	b	.Lm927_288c
.Lm927_2702:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bge	.Lm927_2712
	b	.Lm927_2b56
.Lm927_2712:
	cmp	r3, #6
	ble	.Lm927_2724
	cmp	r3, #0xc
	ble	.Lm927_271c
	b	.Lm927_2b56
.Lm927_271c:
	cmp	r3, #0xa
	bge	.Lm927_2722
	b	.Lm927_2b56
.Lm927_2722:
	b	.Lm927_275c
.Lm927_2724:
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm927_2742
	mov	r1, #0xf
	mov	r0, #0xc
	bl	__Func_8092950
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm927_2742:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm927_2750
	b	.Lm927_2b56
.Lm927_2750:
	mov	r1, #0xf
	mov	r0, #0xd
	bl	__Func_8092950
	mov	r0, #0xd
	b	.Lm927_2962
.Lm927_275c:
	ldr	r0, =0x311
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm927_276e
	mov	r0, #0xa
	bl	OvlFunc_927_20088c0
	b	.Lm927_27be
.Lm927_276e:
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0x8a
	mov	r2, #0xff
	lsl	r2, #17
	mov	r0, #0xa
	lsl	r1, #18
	bl	__MapActor_SetPos
	mov	r1, #4
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x1e
	mov	r3, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x1e
	mov	r2, #2
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #4
	mov	r5, #0
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0x23
	mov	r2, #0x1d
	mov	r3, #1
	str	r5, [sp, #4]
	bl	OvlFunc_927_2008244
.Lm927_27be:
	mov	r0, #8
	bl	OvlFunc_927_20088c0
	mov	r0, #9
	bl	OvlFunc_927_20088c0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #1
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	str	r3, [sp]
	mov	r3, #0xff
	asr	r2, #20
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r3, #1
	mov	r0, #2
	bl	OvlFunc_927_2008244
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xb
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x306
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm927_281a
	b	.Lm927_2b56
.Lm927_281a:
	mov	r1, #0xf
	mov	r0, #0xe
	bl	__Func_8092950
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r0, =0x305
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm927_283a
	b	.Lm927_2b56
.Lm927_283a:
	mov	r1, #0xd4
	mov	r2, #0xf0
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xd4
	mov	r2, #0xf0
	mov	r0, #0x11
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	b	.Lm927_2b56

	.pool_aligned

.Lm927_288c:
	ldr	r3, =0x46
	cmp	r2, r3
	beq	.Lm927_2894
	b	.Lm927_2b56
.Lm927_2894:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #3
	cmp	r3, #0xc
	bls	.Lm927_28a6
	b	.Lm927_2b56
.Lm927_28a6:
	ldr	r2, =.Lm927_28b0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm927_28b0:
	.word	.Lm927_28e4
	.word	.Lm927_28e4
	.word	.Lm927_28e4
	.word	.Lm927_28e4
	.word	.Lm927_296e
	.word	.Lm927_29ba
	.word	.Lm927_29ba
	.word	.Lm927_29ba
	.word	.Lm927_29ba
	.word	.Lm927_2b2c
	.word	.Lm927_2b2c
	.word	.Lm927_2b56
	.word	.Lm927_2b50
.Lm927_28e4:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x307
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm927_2914
	mov	r1, #0xf
	mov	r0, #0xf
	bl	__Func_8092950
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm927_2914:
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm927_2940
	mov	r1, #0xf
	mov	r0, #0x10
	bl	__Func_8092950
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm927_2940:
	ldr	r0, =0x309
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm927_294c
	b	.Lm927_2b56
.Lm927_294c:
	mov	r1, #0xf
	mov	r0, #0x11
	bl	__Func_8092950
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x15
.Lm927_2962:
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	b	.Lm927_2b56
.Lm927_296e:
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r3, #1
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	str	r3, [sp]
	mov	r3, #0xff
	asr	r2, #20
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r3, #1
	mov	r0, #2
	bl	OvlFunc_927_2008244
	mov	r1, #6
	mov	r0, #0xd
	bl	__Func_8092950
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #8
	bl	OvlFunc_927_20088c0
	b	.Lm927_2b56
.Lm927_29ba:
	mov	r5, #0xb9
	lsl	r5, #17
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0xdf
	ldr	r0, =0x2de0000
	bl	OvlFunc_927_2008a4c
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0xdf
	ldr	r0, =0x2f20000
	bl	OvlFunc_927_2008a4c
	mov	r0, #0xa
	bl	OvlFunc_927_20088c0
	mov	r0, #0xc
	bl	OvlFunc_927_20088c0
	ldr	r0, =0x312
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm927_29f4
	mov	r0, #9
	bl	OvlFunc_927_20088c0
	b	.Lm927_2a54
.Lm927_29f4:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0xc7
	ldr	r1, =0x2ba0000
	lsl	r2, #17
	mov	r0, #9
	bl	__MapActor_SetPos
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r2, #0x17
	mov	r3, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r1, #0x14
	mov	r2, #2
	mov	r0, #0x1a
	bl	__Func_8010704
	mov	r0, #0x85
	lsl	r0, #2
	bl	__SetFlag
	mov	r1, #0x9e
	mov	r2, #0xdc
	lsl	r1, #18
	mov	r0, #0xe
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm927_2a54:
	ldr	r0, =0x313
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm927_2a66
	mov	r0, #0xb
	bl	OvlFunc_927_20088c0
	b	.Lm927_2a9e
.Lm927_2a66:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xb
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r1, =0x29a0000
	ldr	r2, =0x2260000
	mov	r0, #0xb
	bl	__MapActor_SetPos
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x20
	mov	r3, #0x28
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #4
	bl	__Func_8010704
.Lm927_2a9e:
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #1
	ldr	r2, [r0, #0x10]
	asr	r5, #20
	str	r3, [sp]
	mov	r3, #0xff
	asr	r2, #20
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r3, #1
	mov	r0, #2
	bl	OvlFunc_927_2008244
	mov	r1, #6
	mov	r0, #0xe
	bl	__Func_8092950
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x30b
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm927_2b26
	mov	r1, #0xf
	mov	r0, #0x12
	bl	__Func_8092950
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r0, =0x30a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm927_2b26
	mov	r1, #0xba
	mov	r2, #0xfc
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xba
	mov	r2, #0xfc
	mov	r0, #0x12
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
.Lm927_2b26:
	bl	OvlFunc_927_2009c34
	b	.Lm927_2b56
.Lm927_2b2c:
	mov	r0, #0x12
	ldr	r1, =gScript_927__0200b084
	bl	__MapActor_SetBehavior
	ldr	r0, =0x893
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm927_2b56
	ldr	r0, =0x89e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm927_2b56
	ldr	r0, =0x88f
	bl	__SetFlag
	b	.Lm927_2b56
.Lm927_2b50:
	ldr	r0, =0x89e
	bl	__SetFlag
.Lm927_2b56:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end MogallForest_MapInit


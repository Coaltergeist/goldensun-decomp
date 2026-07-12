	.include "macros.inc"

.thumb_func_start OvlFunc_927_200a500
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
	beq	.L251e
	b	.L26fa
.L251e:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bge	.L252e
	b	.L2b56
.L252e:
	cmp	r3, #4
	ble	.L2540
	cmp	r3, #9
	ble	.L2538
	b	.L2b56
.L2538:
	cmp	r3, #7
	bge	.L253e
	b	.L2b56
.L253e:
	b	.L2622
.L2540:
	ldr	r0, =0x89c
	bl	__GetFlag
	cmp	r0, #0
	bne	.L25f0
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
	bl	__Func_809218c
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
.L25f0:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L25fc
	b	.L2b56
.L25fc:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L260a
	b	.L2b56
.L260a:
	mov	r0, #0xa
	mov	r1, #0xf
	bl	__Func_8092950
	mov	r1, #0x88
	mov	r2, #0xe8
	mov	r0, #0xa
	lsl	r1, #16
	lsl	r2, #15
	bl	__MapActor_SetPos
	b	.L2b56
.L2622:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2636
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x10
	bl	__MapActor_SetPos
.L2636:
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, #0
	str	r3, [r0, #0x6c]
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2656
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
.L2656:
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
	bne	.L267a
	mov	r0, #0x10
	bl	OvlFunc_927_200ac0c
.L267a:
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
	bne	.L26bc
	mov	r0, #9
	bl	OvlFunc_927_20088c0
	b	.L2b56
.L26bc:
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
	b	.L2b56
.L26fa:
	ldr	r3, =0x45
	cmp	r2, r3
	beq	.L2702
	b	.L288c
.L2702:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bge	.L2712
	b	.L2b56
.L2712:
	cmp	r3, #6
	ble	.L2724
	cmp	r3, #0xc
	ble	.L271c
	b	.L2b56
.L271c:
	cmp	r3, #0xa
	bge	.L2722
	b	.L2b56
.L2722:
	b	.L275c
.L2724:
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2742
	mov	r1, #0xf
	mov	r0, #0xc
	bl	__Func_8092950
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.L2742:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2750
	b	.L2b56
.L2750:
	mov	r1, #0xf
	mov	r0, #0xd
	bl	__Func_8092950
	mov	r0, #0xd
	b	.L2962
.L275c:
	ldr	r0, =0x311
	bl	__GetFlag
	cmp	r0, #0
	bne	.L276e
	mov	r0, #0xa
	bl	OvlFunc_927_20088c0
	b	.L27be
.L276e:
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
.L27be:
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
	beq	.L281a
	b	.L2b56
.L281a:
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
	bne	.L283a
	b	.L2b56
.L283a:
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
	b	.L2b56

	.pool_aligned

.L288c:
	ldr	r3, =0x46
	cmp	r2, r3
	beq	.L2894
	b	.L2b56
.L2894:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #3
	cmp	r3, #0xc
	bls	.L28a6
	b	.L2b56
.L28a6:
	ldr	r2, =.L28b0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L28b0:
	.word	.L28e4
	.word	.L28e4
	.word	.L28e4
	.word	.L28e4
	.word	.L296e
	.word	.L29ba
	.word	.L29ba
	.word	.L29ba
	.word	.L29ba
	.word	.L2b2c
	.word	.L2b2c
	.word	.L2b56
	.word	.L2b50
.L28e4:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x307
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2914
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
.L2914:
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2940
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
.L2940:
	ldr	r0, =0x309
	bl	__GetFlag
	cmp	r0, #0
	beq	.L294c
	b	.L2b56
.L294c:
	mov	r1, #0xf
	mov	r0, #0x11
	bl	__Func_8092950
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x15
.L2962:
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	b	.L2b56
.L296e:
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
	b	.L2b56
.L29ba:
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
	bne	.L29f4
	mov	r0, #9
	bl	OvlFunc_927_20088c0
	b	.L2a54
.L29f4:
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
.L2a54:
	ldr	r0, =0x313
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2a66
	mov	r0, #0xb
	bl	OvlFunc_927_20088c0
	b	.L2a9e
.L2a66:
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
.L2a9e:
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
	bne	.L2b26
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
	beq	.L2b26
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
.L2b26:
	bl	OvlFunc_927_2009c34
	b	.L2b56
.L2b2c:
	mov	r0, #0x12
	ldr	r1, =gScript_927__0200b084
	bl	__MapActor_SetBehavior
	ldr	r0, =0x893
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2b56
	ldr	r0, =0x89e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2b56
	ldr	r0, =0x88f
	bl	__SetFlag
	b	.L2b56
.L2b50:
	ldr	r0, =0x89e
	bl	__SetFlag
.L2b56:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_927_200a500

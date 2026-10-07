	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start TolbiBoundShipHull_MapInit
	push	{r5, lr}
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r1, =gState
	add	r2, #0x49
	str	r2, [r3]
	sub	r2, #0x47
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x17
	bhi	.Lm945_30d6
	ldr	r2, =.Lm945_3028
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm945_3028:
	.word	.Lm945_3088
	.word	.Lm945_3088
	.word	.Lm945_30d6
	.word	.Lm945_30b2
	.word	.Lm945_30b8
	.word	.Lm945_30d6
	.word	.Lm945_30d6
	.word	.Lm945_30d6
	.word	.Lm945_30d6
	.word	.Lm945_30d6
	.word	.Lm945_3088
	.word	.Lm945_30b2
	.word	.Lm945_30d6
	.word	.Lm945_30d6
	.word	.Lm945_30b2
	.word	.Lm945_30b2
	.word	.Lm945_30b2
	.word	.Lm945_30b2
	.word	.Lm945_30b2
	.word	.Lm945_30b2
	.word	.Lm945_30b2
	.word	.Lm945_30d6
	.word	.Lm945_30b2
	.word	.Lm945_30b2
.Lm945_3088:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_30a2
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_30a2
	mov	r1, #2
	mov	r0, #9
	b	.Lm945_30d0
.Lm945_30a2:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_30d4
	mov	r1, #2
	mov	r0, #0xc
	b	.Lm945_30d0
.Lm945_30b2:
	mov	r1, #2
	mov	r0, #0x13
	b	.Lm945_30d0
.Lm945_30b8:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_30d4
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_30d4
	mov	r1, #2
	mov	r0, #0xd
.Lm945_30d0:
	bl	__Func_8092950
.Lm945_30d4:
	ldr	r1, =gState
.Lm945_30d6:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x1d
	bls	.Lm945_30e8
	b	.Lm945_3320
.Lm945_30e8:
	ldr	r2, =.Lm945_30f0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm945_30f0:
	.word	.Lm945_3168
	.word	.Lm945_3168
	.word	.Lm945_3320
	.word	.Lm945_316e
	.word	.Lm945_3174
	.word	.Lm945_3320
	.word	.Lm945_3320
	.word	.Lm945_3320
	.word	.Lm945_3320
	.word	.Lm945_317a
	.word	.Lm945_3190
	.word	.Lm945_31a6
	.word	.Lm945_31ac
	.word	.Lm945_31b2
	.word	.Lm945_31b8
	.word	.Lm945_320e
	.word	.Lm945_3214
	.word	.Lm945_3254
	.word	.Lm945_325a
	.word	.Lm945_32aa
	.word	.Lm945_32b0
	.word	.Lm945_32e4
	.word	.Lm945_32ea
	.word	.Lm945_32fa
	.word	.Lm945_3320
	.word	.Lm945_3320
	.word	.Lm945_3320
	.word	.Lm945_3320
	.word	.Lm945_3320
	.word	.Lm945_3300
.Lm945_3168:
	bl	OvlFunc_945_200b51c
	b	.Lm945_3320
.Lm945_316e:
	bl	OvlFunc_945_200b66c
	b	.Lm945_3320
.Lm945_3174:
	bl	OvlFunc_945_200b364
	b	.Lm945_3320
.Lm945_317a:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_318a
	bl	OvlFunc_945_200bdec
	b	.Lm945_3320
.Lm945_318a:
	bl	OvlFunc_945_200bd10
	b	.Lm945_3320
.Lm945_3190:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_31a0
	bl	OvlFunc_945_200beec
	b	.Lm945_3320
.Lm945_31a0:
	bl	OvlFunc_945_200be34
	b	.Lm945_3320
.Lm945_31a6:
	bl	OvlFunc_945_200bf94
	b	.Lm945_3320
.Lm945_31ac:
	bl	OvlFunc_945_200c0e8
	b	.Lm945_3320
.Lm945_31b2:
	bl	OvlFunc_945_200c13c
	b	.Lm945_3320
.Lm945_31b8:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_3208
	bl	__CutsceneStart
	mov	r0, #0x19
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r2, #0
	mov	r0, #0x16
	mov	r1, #0
	bl	OvlFunc_945_200c8e8
	ldr	r5, =gScript_945__0200e8e4
	mov	r0, #0x24
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x25
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x26
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x24
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x25
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x26
	b	.Lm945_3298
.Lm945_3208:
	bl	OvlFunc_945_200c198
	b	.Lm945_3320
.Lm945_320e:
	bl	OvlFunc_945_200c218
	b	.Lm945_3320
.Lm945_3214:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_324e
	bl	__CutsceneStart
	mov	r0, #0x19
	mov	r1, #2
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r2, #0
	mov	r0, #0x16
	mov	r1, #0
	bl	OvlFunc_945_200c8e8
	ldr	r5, =gScript_945__0200e8e4
	mov	r0, #0x24
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x25
	mov	r1, r5
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	b	.Lm945_3320
.Lm945_324e:
	bl	OvlFunc_945_200d068
	b	.Lm945_3320
.Lm945_3254:
	bl	OvlFunc_945_200d684
	b	.Lm945_3320
.Lm945_325a:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_32a4
	bl	__CutsceneStart
	mov	r0, #0x19
	mov	r1, #3
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r2, #0
	mov	r0, #0x16
	mov	r1, #0
	bl	OvlFunc_945_200c8e8
	ldr	r5, =gScript_945__0200e8e4
	mov	r0, #0x24
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x25
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x24
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x25
.Lm945_3298:
	mov	r1, #3
	bl	__Func_8092950
	bl	__CutsceneEnd
	b	.Lm945_3320
.Lm945_32a4:
	bl	OvlFunc_945_200d6dc
	b	.Lm945_3320
.Lm945_32aa:
	bl	OvlFunc_945_200d780
	b	.Lm945_3320
.Lm945_32b0:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_32de
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_3320
	ldr	r3, =.Lm945_7f84
	mov	r2, #0
	mov	r1, #0xc8
	lsl	r1, #4
	str	r2, [r3]
	ldr	r0, =OvlFunc_945_200dc48
	bl	__StartTask
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	b	.Lm945_3320
.Lm945_32de:
	bl	OvlFunc_945_200d7ec
	b	.Lm945_3320
.Lm945_32e4:
	bl	OvlFunc_945_200dca4
	b	.Lm945_3320
.Lm945_32ea:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_3320
	bl	OvlFunc_945_200dd10
	b	.Lm945_3320
.Lm945_32fa:
	bl	OvlFunc_945_200e110
	b	.Lm945_3320
.Lm945_3300:
	ldr	r1, =0x926
	ldr	r2, =0x92b
	mov	r0, #0x14
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x902
	bl	__SetFlag
	mov	r0, #1
	bl	__Func_8091e9c
.Lm945_3320:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end TolbiBoundShipHull_MapInit


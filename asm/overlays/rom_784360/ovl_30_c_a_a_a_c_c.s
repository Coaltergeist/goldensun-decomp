	.include "macros.inc"

.thumb_func_start OvlFunc_884_2008158
	push	{lr}
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L168
	ldr	r0, =.L3cec
	b	.L19a
.L168:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.L176
	ldr	r0, =.L3b3c
	b	.L19a
.L176:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xc
	bne	.L18a
	ldr	r0, =.L3b30
	b	.L19a
.L18a:
	ldr	r0, =0x834
	bl	__GetFlag
	cmp	r0, #0
	beq	.L198
	ldr	r0, =.L3a64
	b	.L19a
.L198:
	ldr	r0, =gOvl_0200b938
.L19a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_884_2008158

.thumb_func_start OvlFunc_884_20081c4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0xf3c
	bl	__MessageID
	mov	r2, #2
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_8092848
	mov	r1, #0
	mov	r0, #0x17
	bl	__Func_8093054
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20081c4

.thumb_func_start OvlFunc_884_20081f0
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0xf3f
	bl	__MessageID
	mov	r2, #2
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092848
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_8093054
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20081f0

.thumb_func_start OvlFunc_884_200821c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0xf44
	bl	__MessageID
	mov	r2, #2
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092848
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8093054
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200821c

.thumb_func_start OvlFunc_884_2008248
	push	{r5, r6, r7, lr}
	bl	__CutsceneStart
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2c0
	ldr	r5, =0x1197
	mov	r0, r5
	bl	__MessageID
	mov	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L27a
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L27a:
	mov	r0, #3
	bl	__GetFlag
	cmp	r0, #0
	beq	.L294
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L294:
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2b0
	add	r0, r5, #3
	bl	__MessageID
	b	.L2b6
.L2b0:
	add	r0, r5, #4
	bl	__MessageID
.L2b6:
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage
	b	.L386
.L2c0:
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	ldr	r0, =0xf48
	ldr	r6, [r3]
	bl	__MessageID
	mov	r2, #0
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8092848
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8093054
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_809259c
	mov	r0, #0xf
	bl	__CutsceneWait
	bl	OvlFunc_884_200a564
	mov	r7, #0
	mov	r5, #0
.L2fa:
	mov	r0, #0x11
	bl	__MapActor_GetActor
	bl	OvlFunc_884_200a2f8
	add	r5, #1
	mov	r0, #1
	bl	__WaitFrames
	cmp	r5, #0x27
	bls	.L2fa
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_884_200a590
	bl	__StartTask
	mov	r0, #0x6b
	bl	__PlaySound
	mov	r5, #0
.L322:
	mov	r0, r5
	mov	r1, #0xa
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L348
	mov	r3, #1
	and	r3, r7
	cmp	r3, #0
	beq	.L33c
	ldr	r3, [r6]
	ldr	r2, =0xffff0000
	b	.L342
.L33c:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #9
.L342:
	add	r3, r2
	str	r3, [r6]
	add	r7, #1
.L348:
	mov	r0, #1
	add	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0xb4
	bne	.L322
	ldr	r0, =0x121
	bl	__PlaySound
	ldr	r0, =OvlFunc_884_200a590
	bl	__StopTask
	mov	r0, #1
	bl	__WaitFrames
	bl	OvlFunc_884_200a574
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8092950
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0xf4b
	bl	__MessageID
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage
.L386:
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2008248

.thumb_func_start OvlFunc_884_20083b4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3fc
	ldr	r0, =0x1be8
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L3e8
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
	b	.L424
.L3e8:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xf
	b	.L40e
.L3fc:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.L416
	ldr	r0, =0x1191
	bl	__MessageID
	mov	r0, #0xb
.L40e:
	mov	r1, #0
	bl	__Func_8093054
	b	.L424
.L416:
	ldr	r0, =0xea8
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093054
.L424:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20083b4

.thumb_func_start OvlFunc_884_2008444
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x1a
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_809280c
	mov	r2, #0x28
	mov	r1, #0x15
	mov	r0, #0x1a
	bl	__Func_809280c
	ldr	r0, =0x11c7
	bl	__MessageID
	mov	r0, #0x1a
	mov	r1, #0x14
	bl	OvlFunc_884_200a2c8
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0x88
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	ldr	r0, =0x1510000
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x1a
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #0x1a
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #0x1a
	mov	r1, #0x28
	bl	OvlFunc_884_200a2c8
	mov	r0, #0x1a
	mov	r1, #2
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2008444

.thumb_func_start OvlFunc_884_20084d4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	bl	__CutsceneStart
	mov	r2, #0xbe
	mov	r0, #0
	mov	r1, #0x52
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0x1e
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092848
	ldr	r0, =0xeae
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #0x14
	bl	OvlFunc_884_200a2c8
	mov	r1, #0xa0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0xf
	bl	OvlFunc_884_200a2e0
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xf
	bl	__MapActor_Surprise
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_884_200a564
	mov	r5, #0
.L524:
	mov	r0, #0xf
	bl	__MapActor_GetActor
	bl	OvlFunc_884_200a2f8
	add	r5, #1
	mov	r0, #1
	bl	__WaitFrames
	cmp	r5, #0x27
	bls	.L524
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_884_200a580
	bl	__StartTask
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_884_200a5a0
	bl	__StartTask
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x55
	ldrb	r2, [r7]
	mov	r3, #0
	strb	r3, [r7]
	mov	r8, r2
	mov	r5, #0
.L570:
	ldr	r3, [r6, #0xc]
	mov	r2, #0xc0
	lsl	r2, #5
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x27
	bls	.L570
	mov	r3, r8
	strb	r3, [r7]
	ldr	r0, =OvlFunc_884_200a580
	bl	__StopTask
	ldr	r0, =OvlFunc_884_200a5a0
	bl	__StopTask
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xa1
	bl	__PlaySound
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8092950
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	OvlFunc_884_200a574
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, #0xf
	bl	__Func_8092848
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20084d4

.thumb_func_start OvlFunc_884_20085e8
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092848
	mov	r0, #0x84
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L614
	ldr	r0, =0xeb1
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
	b	.L622
.L614:
	ldr	r0, =0xeb0
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
.L622:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20085e8

.thumb_func_start OvlFunc_884_2008634
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	beq	.L64c
	ldr	r0, =0x1be4
	bl	__MessageID
	b	.L658
.L64c:
	ldr	r0, =0x1be3
	bl	__MessageID
	ldr	r0, =0x302
	bl	__SetFlag
.L658:
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2008634

.thumb_func_start OvlFunc_884_2008674
	push	{r5, lr}
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x40]
	mov	r1, #1
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	bl	__MapActor_SetIdle
	mov	r1, #0x80
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0x15
	bl	__MapActor_Emote
	mov	r3, #0xb0
	lsl	r3, #8
	strh	r3, [r5, #6]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	ldr	r0, =0x1c94
	bl	__MessageID
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0
	mov	r0, #0x15
	bl	__ActorMessage
	ldr	r0, =0x306
	bl	__SetFlag
	mov	r0, #0x15
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	ldr	r1, =gScript_884__0200ae34
	mov	r0, #0x15
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2008674

.thumb_func_start OvlFunc_884_2008714
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, =0x834
	bl	__GetFlag
	cmp	r0, #0
	beq	.L726
	bl	__Func_8095214
.L726:
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	mov	r0, r5
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2008714

.thumb_func_start OvlFunc_884_2008750
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L3eb4
	mov	r1, #0x2c
	mov	r2, #7
	bl	__Func_8010560
	mov	r0, #0
	mov	r1, #0xf8
	ldr	r2, =0x117
	bl	__Func_809218c
	mov	r0, #1
	bl	OvlFunc_884_2008714
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2008750

.thumb_func_start OvlFunc_884_2008780
	push	{r5, lr}
	mov	r0, #0xbc
	sub	sp, #8
	bl	__PlaySound
	mov	r5, #2
	mov	r1, #0x3f
	mov	r2, #0x33
	mov	r3, #8
	mov	r0, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r3, #8
	mov	r1, #0x3f
	mov	r2, #0x33
	mov	r0, #2
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r1, #0xb0
	mov	r2, #0x99
	lsl	r2, #1
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #0xb0
	mov	r2, #0x94
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #2
	bl	OvlFunc_884_2008714
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2008780

.thumb_func_start OvlFunc_884_20087ec
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L3eb4
	mov	r1, #0x2b
	mov	r2, #0xf
	bl	__Func_8010560
	mov	r0, #0
	mov	r1, #0xe6
	ldr	r2, =0x197
	bl	__Func_809218c
	mov	r0, #3
	bl	OvlFunc_884_2008714
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20087ec

.thumb_func_start OvlFunc_884_200881c
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L3eb4
	mov	r1, #0x34
	mov	r2, #0x12
	bl	__Func_8010560
	mov	r1, #0xbb
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x1a3
	bl	__Func_809218c
	mov	r0, #4
	bl	OvlFunc_884_2008714
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200881c

.thumb_func_start OvlFunc_884_200884c
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L3eb4
	mov	r1, #0x29
	mov	r2, #0x20
	bl	__Func_8010560
	mov	r0, #0
	mov	r1, #0xc8
	ldr	r2, =0x222
	bl	__Func_809218c
	mov	r0, #5
	bl	OvlFunc_884_2008714
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200884c

.thumb_func_start OvlFunc_884_200887c
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L3eb4
	mov	r1, #0x23
	mov	r2, #0x24
	bl	__Func_8010560
	mov	r0, #0
	mov	r1, #0x66
	ldr	r2, =0x263
	bl	__Func_809218c
	mov	r0, #6
	bl	OvlFunc_884_2008714
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_200887c

.thumb_func_start OvlFunc_884_20088ac
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.L3eb4
	mov	r1, #0x33
	mov	r2, #0x27
	bl	__Func_8010560
	mov	r1, #0xb3
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x29e
	bl	__Func_809218c
	mov	r0, #7
	bl	OvlFunc_884_2008714
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20088ac


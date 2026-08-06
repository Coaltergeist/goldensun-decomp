	.include "macros.inc"

.thumb_func_start TolbiBoundShipHull_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x17
	bls	.Lm945_392
	b	.Lm945_50a
.Lm945_392:
	ldr	r2, =.Lm945_39c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm945_39c:
	.word	.Lm945_3fc
	.word	.Lm945_3fc
	.word	.Lm945_50a
	.word	.Lm945_47c
	.word	.Lm945_4b2
	.word	.Lm945_50a
	.word	.Lm945_50a
	.word	.Lm945_50a
	.word	.Lm945_50a
	.word	.Lm945_506
	.word	.Lm945_3fc
	.word	.Lm945_47c
	.word	.Lm945_506
	.word	.Lm945_506
	.word	.Lm945_480
	.word	.Lm945_47c
	.word	.Lm945_480
	.word	.Lm945_47c
	.word	.Lm945_480
	.word	.Lm945_47c
	.word	.Lm945_47c
	.word	.Lm945_506
	.word	.Lm945_47c
	.word	.Lm945_47c
.Lm945_3fc:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_40a
.Lm945_406:
	ldr	r0, =.Lm945_6da8
	b	.Lm945_50c
.Lm945_40a:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_44e
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_44a
	ldr	r1, =.Lm945_6eb0
	mov	r3, r1
	mov	r2, #2
	add	r3, #0x46
	strb	r2, [r1, #0x16]
	strb	r2, [r3]
	add	r3, #0x30
	strb	r2, [r3]
	add	r3, #0x18
	strb	r2, [r3]
	add	r3, #0x48
	strb	r2, [r3]
	mov	r0, r1
	sub	r3, #0x18
	strb	r2, [r3]
	add	r0, #0xa6
	mov	r3, #1
	strb	r3, [r0]
	mov	r3, r1
	add	r3, #0x5e
	strb	r2, [r3]
.Lm945_44a:
	ldr	r0, =.Lm945_6eb0
	b	.Lm945_50c
.Lm945_44e:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_478
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_406
	ldr	r2, =.Lm945_6da8
	mov	r1, r2
	mov	r3, #2
	add	r1, #0x76
	strb	r3, [r2, #0x16]
	strb	r3, [r1]
	add	r2, #0x5e
	sub	r1, #0x48
	strb	r3, [r1]
	strb	r3, [r2]
	b	.Lm945_406
.Lm945_478:
	ldr	r0, =.Lm945_6d78
	b	.Lm945_50c
.Lm945_47c:
	ldr	r0, =.Lm945_6fe8
	b	.Lm945_50c
.Lm945_480:
	ldr	r1, =.Lm945_6fe8
	mov	r2, r1
	mov	r3, #2
	add	r2, #0x2e
	mov	r0, r1
	strb	r3, [r1, #0x16]
	add	r0, #0x5e
	strb	r3, [r2]
	mov	r2, #1
	strb	r2, [r0]
	add	r0, #0x18
	strb	r3, [r0]
	add	r0, #0x18
	strb	r3, [r0]
	add	r0, #0x18
	strb	r3, [r0]
	add	r0, #0x18
	strb	r3, [r0]
	add	r0, #0x18
	strb	r2, [r0]
	mov	r2, r1
	add	r2, #0xee
	strb	r3, [r2]
	mov	r0, r1
	b	.Lm945_50c
.Lm945_4b2:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_4c0
	ldr	r0, =.Lm945_6d48
	b	.Lm945_50c
.Lm945_4c0:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_506
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_50a
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_4e8
	ldr	r3, =.Lm945_6c58
	mov	r2, #1
	add	r3, #0x2e
	strb	r2, [r3]
.Lm945_4e8:
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_502
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_502
	ldr	r3, =.Lm945_6c58
	strb	r0, [r3, #0x16]
.Lm945_502:
	ldr	r0, =.Lm945_6c58
	b	.Lm945_50c
.Lm945_506:
	ldr	r0, =.Lm945_6bf8
	b	.Lm945_50c
.Lm945_50a:
	ldr	r0, =.Lm945_6be0
.Lm945_50c:
	pop	{r1}
	bx	r1
.func_end TolbiBoundShipHull_GetActors

.thumb_func_start TolbiBoundShipHull_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x16
	bhi	.Lm945_62c
	ldr	r2, =.Lm945_568
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm945_568:
	.word	.Lm945_5c4
	.word	.Lm945_5c4
	.word	.Lm945_62c
	.word	.Lm945_5f0
	.word	.Lm945_602
	.word	.Lm945_62c
	.word	.Lm945_62c
	.word	.Lm945_62c
	.word	.Lm945_62c
	.word	.Lm945_62c
	.word	.Lm945_62c
	.word	.Lm945_62c
	.word	.Lm945_62c
	.word	.Lm945_62c
	.word	.Lm945_624
	.word	.Lm945_62c
	.word	.Lm945_624
	.word	.Lm945_62c
	.word	.Lm945_624
	.word	.Lm945_62c
	.word	.Lm945_628
	.word	.Lm945_62c
	.word	.Lm945_5f0
.Lm945_5c4:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_5d4
	ldr	r0, =.Lm945_76fc
	b	.Lm945_62e
.Lm945_5d4:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_5ec
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_5ec
	ldr	r0, =.Lm945_7570
	b	.Lm945_62e
.Lm945_5ec:
	ldr	r0, =.Lm945_7444
	b	.Lm945_62e
.Lm945_5f0:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_5fe
	ldr	r0, =.Lm945_7edc
	b	.Lm945_62e
.Lm945_5fe:
	ldr	r0, =.Lm945_79c0
	b	.Lm945_62e
.Lm945_602:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_612
	ldr	r0, =.Lm945_7930
	b	.Lm945_62e
.Lm945_612:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_620
	ldr	r0, =.Lm945_7984
	b	.Lm945_62e
.Lm945_620:
	ldr	r0, =.Lm945_781c
	b	.Lm945_62e
.Lm945_624:
	ldr	r0, =.Lm945_7b58
	b	.Lm945_62e
.Lm945_628:
	ldr	r0, =.Lm945_7d44
	b	.Lm945_62e
.Lm945_62c:
	ldr	r0, =.Lm945_7420
.Lm945_62e:
	pop	{r1}
	bx	r1
.func_end TolbiBoundShipHull_GetEvents

.thumb_func_start OvlFunc_945_2008670
	push	{lr}
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r0, =0x921
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_694
	ldr	r0, =0x1dd4
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm945_6ea
.Lm945_694:
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_6dc
	ldr	r0, =0x1d91
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xa
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm945_6be
	bl	OvlFunc_945_2009f3c
	b	.Lm945_6ea
.Lm945_6be:
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	b	.Lm945_6ea
.Lm945_6dc:
	ldr	r0, =0x1d31
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
.Lm945_6ea:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008670


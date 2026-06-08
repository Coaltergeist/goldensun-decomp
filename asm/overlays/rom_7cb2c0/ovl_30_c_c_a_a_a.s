	.include "macros.inc"

.thumb_func_start OvlFunc_945_200837c
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x17
	bls	.L392
	b	.L50a
.L392:
	ldr	r2, =.L39c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L39c:
	.word	.L3fc
	.word	.L3fc
	.word	.L50a
	.word	.L47c
	.word	.L4b2
	.word	.L50a
	.word	.L50a
	.word	.L50a
	.word	.L50a
	.word	.L506
	.word	.L3fc
	.word	.L47c
	.word	.L506
	.word	.L506
	.word	.L480
	.word	.L47c
	.word	.L480
	.word	.L47c
	.word	.L480
	.word	.L47c
	.word	.L47c
	.word	.L506
	.word	.L47c
	.word	.L47c
.L3fc:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L40a
.L406:
	ldr	r0, =.L6da8
	b	.L50c
.L40a:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L44e
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L44a
	ldr	r1, =.L6eb0
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
.L44a:
	ldr	r0, =.L6eb0
	b	.L50c
.L44e:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.L478
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.L406
	ldr	r2, =.L6da8
	mov	r1, r2
	mov	r3, #2
	add	r1, #0x76
	strb	r3, [r2, #0x16]
	strb	r3, [r1]
	add	r2, #0x5e
	sub	r1, #0x48
	strb	r3, [r1]
	strb	r3, [r2]
	b	.L406
.L478:
	ldr	r0, =.L6d78
	b	.L50c
.L47c:
	ldr	r0, =.L6fe8
	b	.L50c
.L480:
	ldr	r1, =.L6fe8
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
	b	.L50c
.L4b2:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4c0
	ldr	r0, =.L6d48
	b	.L50c
.L4c0:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.L506
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	beq	.L50a
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4e8
	ldr	r3, =.L6c58
	mov	r2, #1
	add	r3, #0x2e
	strb	r2, [r3]
.L4e8:
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.L502
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.L502
	ldr	r3, =.L6c58
	strb	r0, [r3, #0x16]
.L502:
	ldr	r0, =.L6c58
	b	.L50c
.L506:
	ldr	r0, =.L6bf8
	b	.L50c
.L50a:
	ldr	r0, =.L6be0
.L50c:
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_200837c

.thumb_func_start OvlFunc_945_200854c
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x16
	bhi	.L62c
	ldr	r2, =.L568
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L568:
	.word	.L5c4
	.word	.L5c4
	.word	.L62c
	.word	.L5f0
	.word	.L602
	.word	.L62c
	.word	.L62c
	.word	.L62c
	.word	.L62c
	.word	.L62c
	.word	.L62c
	.word	.L62c
	.word	.L62c
	.word	.L62c
	.word	.L624
	.word	.L62c
	.word	.L624
	.word	.L62c
	.word	.L624
	.word	.L62c
	.word	.L628
	.word	.L62c
	.word	.L5f0
.L5c4:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5d4
	ldr	r0, =.L76fc
	b	.L62e
.L5d4:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5ec
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	bne	.L5ec
	ldr	r0, =.L7570
	b	.L62e
.L5ec:
	ldr	r0, =.L7444
	b	.L62e
.L5f0:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5fe
	ldr	r0, =.L7edc
	b	.L62e
.L5fe:
	ldr	r0, =.L79c0
	b	.L62e
.L602:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L612
	ldr	r0, =.L7930
	b	.L62e
.L612:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L620
	ldr	r0, =.L7984
	b	.L62e
.L620:
	ldr	r0, =.L781c
	b	.L62e
.L624:
	ldr	r0, =.L7b58
	b	.L62e
.L628:
	ldr	r0, =.L7d44
	b	.L62e
.L62c:
	ldr	r0, =.L7420
.L62e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_200854c

.thumb_func_start OvlFunc_945_2008670
	push	{lr}
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r0, =0x921
	bl	__GetFlag
	cmp	r0, #0
	beq	.L694
	ldr	r0, =0x1dd4
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	b	.L6ea
.L694:
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	beq	.L6dc
	ldr	r0, =0x1d91
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L6be
	bl	OvlFunc_945_2009f3c
	b	.L6ea
.L6be:
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
	b	.L6ea
.L6dc:
	ldr	r0, =0x1d31
	bl	__MessageID
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
.L6ea:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008670

.thumb_func_start OvlFunc_945_2008708
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1dd1
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8093054
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008708

.thumb_func_start OvlFunc_945_2008728
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L768
	ldr	r0, =0x1eb2
	bl	__MessageID
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0xd0
	mov	r2, #0x3c
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	b	.L7cc
.L768:
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.L782
	ldr	r0, =0x1e06
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.L7cc
.L782:
	ldr	r0, =0x921
	bl	__GetFlag
	cmp	r0, #0
	beq	.L7be
	ldr	r0, =0x1dcd
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	bne	.L7cc
	ldr	r0, =0x924
	bl	__GetFlag
	cmp	r0, #0
	beq	.L7cc
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
	b	.L7cc
.L7be:
	ldr	r0, =0x1d30
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
.L7cc:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008728

.thumb_func_start OvlFunc_945_20087f8
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.L880
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	ldr	r0, =0x1e13
	bl	__MessageID
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L85a
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.L88e
.L85a:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	b	.L88e
.L880:
	ldr	r0, =0x1d4e
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
.L88e:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_20087f8


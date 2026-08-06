	.include "macros.inc"

.thumb_func_start OvlFunc_895_2008420
	push	{r5, r6, lr}
	ldr	r0, =0xf02
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm895_430
	b	.Lm895_54e
.Lm895_430:
	ldr	r0, =0x821
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm895_43c
	b	.Lm895_54e
.Lm895_43c:
	bl	__CutsceneStart
	bl	__Func_808e118
	mov	r0, #0xb6
	bl	__PlaySound
	mov	r5, #1
	mov	r2, #0x64
	mov	r3, #0x47
	mov	r1, #0x47
	mov	r0, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	bl	__Func_800fe9c
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r6, =0x1032
	mov	r1, #1
	mov	r0, r6
	bl	__Func_801776c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb7
	bl	__PlaySound
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #0x78
	mov	r3, #0x1e
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x78
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r0, #0x7a
	mov	r1, #0x14
	mov	r2, #1
	bl	__Func_8010704
	bl	__Func_800fe9c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0x28
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_8012330
	add	r6, #1
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, r6
	bl	__Func_801776c
	ldr	r0, =0x143
	bl	__SetFlag
	ldr	r0, =0x821
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm895_54e:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008420

.thumb_func_start OvlFunc_895_200856c
	push	{r5, lr}
	mov	r0, #9
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_59e
	ldr	r3, [r0, #8]
	ldr	r0, =0x302
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x303
	bl	__ClearFlag
	cmp	r5, #0x5d
	bne	.Lm895_594
	ldr	r0, =0x303
	bl	__SetFlag
	b	.Lm895_59e
.Lm895_594:
	cmp	r5, #0x5f
	bne	.Lm895_59e
	ldr	r0, =0x302
	bl	__SetFlag
.Lm895_59e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_200856c

.thumb_func_start OvlFunc_895_20085ac
	push	{r5, lr}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_5e2
	ldr	r3, [r0, #8]
	mov	r0, #0xc0
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x301
	bl	__ClearFlag
	cmp	r5, #0x73
	bne	.Lm895_5d8
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	b	.Lm895_5e2
.Lm895_5d8:
	cmp	r5, #0x71
	bne	.Lm895_5e2
	ldr	r0, =0x301
	bl	__SetFlag
.Lm895_5e2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_20085ac

.thumb_func_start OvlFunc_895_20085ec
	push	{r5, lr}
	mov	r0, #9
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_628
	ldr	r3, [r0, #8]
	mov	r0, #0xc4
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x311
	bl	__ClearFlag
	cmp	r5, #0x63
	bne	.Lm895_616
	ldr	r0, =0x311
	bl	__SetFlag
	b	.Lm895_622
.Lm895_616:
	cmp	r5, #0x65
	bne	.Lm895_622
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__SetFlag
.Lm895_622:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.Lm895_628:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_20085ec

.thumb_func_start OvlFunc_895_2008634
	push	{r5, lr}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_66c
	ldr	r3, [r0, #8]
	ldr	r0, =0x312
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x313
	bl	__ClearFlag
	cmp	r5, #0x67
	bne	.Lm895_65c
	ldr	r0, =0x313
	bl	__SetFlag
	b	.Lm895_666
.Lm895_65c:
	cmp	r5, #0x69
	bne	.Lm895_666
	ldr	r0, =0x312
	bl	__SetFlag
.Lm895_666:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.Lm895_66c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008634

.thumb_func_start OvlFunc_895_200867c
	push	{r5, lr}
	mov	r0, #0xb
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_6b8
	ldr	r3, [r0, #8]
	mov	r0, #0xc5
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x315
	bl	__ClearFlag
	cmp	r5, #0x6b
	bne	.Lm895_6a6
	ldr	r0, =0x315
	bl	__SetFlag
	b	.Lm895_6b2
.Lm895_6a6:
	cmp	r5, #0x6d
	bne	.Lm895_6b2
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__SetFlag
.Lm895_6b2:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.Lm895_6b8:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_200867c

.thumb_func_start OvlFunc_895_20086c4
	push	{r5, lr}
	mov	r0, #0xc
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_6fc
	ldr	r3, [r0, #8]
	ldr	r0, =0x316
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x317
	bl	__ClearFlag
	cmp	r5, #0x6f
	bne	.Lm895_6ec
	ldr	r0, =0x317
	bl	__SetFlag
	b	.Lm895_6f6
.Lm895_6ec:
	cmp	r5, #0x71
	bne	.Lm895_6f6
	ldr	r0, =0x316
	bl	__SetFlag
.Lm895_6f6:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.Lm895_6fc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_20086c4

.thumb_func_start OvlFunc_895_200870c
	push	{r5, lr}
	mov	r0, #0xd
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_748
	ldr	r3, [r0, #8]
	mov	r0, #0xc6
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x319
	bl	__ClearFlag
	cmp	r5, #0x73
	bne	.Lm895_736
	ldr	r0, =0x319
	bl	__SetFlag
	b	.Lm895_742
.Lm895_736:
	cmp	r5, #0x75
	bne	.Lm895_742
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__SetFlag
.Lm895_742:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.Lm895_748:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_200870c

.thumb_func_start OvlFunc_895_2008754
	push	{r5, lr}
	mov	r0, #0xe
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm895_78c
	ldr	r3, [r0, #8]
	ldr	r0, =0x31a
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x31b
	bl	__ClearFlag
	cmp	r5, #0x77
	bne	.Lm895_77c
	ldr	r0, =0x31b
	bl	__SetFlag
	b	.Lm895_786
.Lm895_77c:
	cmp	r5, #0x79
	bne	.Lm895_786
	ldr	r0, =0x31a
	bl	__SetFlag
.Lm895_786:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.Lm895_78c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008754


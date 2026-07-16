	.include "macros.inc"

.thumb_func_start OvlFunc_895_2008420
	push	{r5, r6, lr}
	ldr	r0, =0xf02
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.L430
	b	.L54e
.L430:
	ldr	r0, =0x821
	bl	__GetFlag
	cmp	r0, #0
	beq	.L43c
	b	.L54e
.L43c:
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
.L54e:
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
	beq	.L59e
	ldr	r3, [r0, #8]
	ldr	r0, =0x302
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x303
	bl	__ClearFlag
	cmp	r5, #0x5d
	bne	.L594
	ldr	r0, =0x303
	bl	__SetFlag
	b	.L59e
.L594:
	cmp	r5, #0x5f
	bne	.L59e
	ldr	r0, =0x302
	bl	__SetFlag
.L59e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_200856c

.thumb_func_start OvlFunc_895_20085ac
	push	{r5, lr}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L5e2
	ldr	r3, [r0, #8]
	mov	r0, #0xc0
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x301
	bl	__ClearFlag
	cmp	r5, #0x73
	bne	.L5d8
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	b	.L5e2
.L5d8:
	cmp	r5, #0x71
	bne	.L5e2
	ldr	r0, =0x301
	bl	__SetFlag
.L5e2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_20085ac

.thumb_func_start OvlFunc_895_20085ec
	push	{r5, lr}
	mov	r0, #9
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L628
	ldr	r3, [r0, #8]
	mov	r0, #0xc4
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x311
	bl	__ClearFlag
	cmp	r5, #0x63
	bne	.L616
	ldr	r0, =0x311
	bl	__SetFlag
	b	.L622
.L616:
	cmp	r5, #0x65
	bne	.L622
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__SetFlag
.L622:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.L628:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_20085ec

.thumb_func_start OvlFunc_895_2008634
	push	{r5, lr}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L66c
	ldr	r3, [r0, #8]
	ldr	r0, =0x312
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x313
	bl	__ClearFlag
	cmp	r5, #0x67
	bne	.L65c
	ldr	r0, =0x313
	bl	__SetFlag
	b	.L666
.L65c:
	cmp	r5, #0x69
	bne	.L666
	ldr	r0, =0x312
	bl	__SetFlag
.L666:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.L66c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008634

.thumb_func_start OvlFunc_895_200867c
	push	{r5, lr}
	mov	r0, #0xb
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L6b8
	ldr	r3, [r0, #8]
	mov	r0, #0xc5
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x315
	bl	__ClearFlag
	cmp	r5, #0x6b
	bne	.L6a6
	ldr	r0, =0x315
	bl	__SetFlag
	b	.L6b2
.L6a6:
	cmp	r5, #0x6d
	bne	.L6b2
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__SetFlag
.L6b2:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.L6b8:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_200867c

.thumb_func_start OvlFunc_895_20086c4
	push	{r5, lr}
	mov	r0, #0xc
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L6fc
	ldr	r3, [r0, #8]
	ldr	r0, =0x316
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x317
	bl	__ClearFlag
	cmp	r5, #0x6f
	bne	.L6ec
	ldr	r0, =0x317
	bl	__SetFlag
	b	.L6f6
.L6ec:
	cmp	r5, #0x71
	bne	.L6f6
	ldr	r0, =0x316
	bl	__SetFlag
.L6f6:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.L6fc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_20086c4

.thumb_func_start OvlFunc_895_200870c
	push	{r5, lr}
	mov	r0, #0xd
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L748
	ldr	r3, [r0, #8]
	mov	r0, #0xc6
	lsl	r0, #2
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x319
	bl	__ClearFlag
	cmp	r5, #0x73
	bne	.L736
	ldr	r0, =0x319
	bl	__SetFlag
	b	.L742
.L736:
	cmp	r5, #0x75
	bne	.L742
	mov	r0, #0xc6
	lsl	r0, #2
	bl	__SetFlag
.L742:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.L748:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_200870c

.thumb_func_start OvlFunc_895_2008754
	push	{r5, lr}
	mov	r0, #0xe
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L78c
	ldr	r3, [r0, #8]
	ldr	r0, =0x31a
	asr	r5, r3, #20
	bl	__ClearFlag
	ldr	r0, =0x31b
	bl	__ClearFlag
	cmp	r5, #0x77
	bne	.L77c
	ldr	r0, =0x31b
	bl	__SetFlag
	b	.L786
.L77c:
	cmp	r5, #0x79
	bne	.L786
	ldr	r0, =0x31a
	bl	__SetFlag
.L786:
	mov	r0, #0
	bl	OvlFunc_895_20097c0
.L78c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2008754


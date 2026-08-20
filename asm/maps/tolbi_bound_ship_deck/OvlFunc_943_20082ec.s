	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_20082ec
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x62
	ldrb	r1, [r6]
	mov	r8, r1
	cmp	r1, #0
	bne	.Lm943_302
	b	.Lm943_444
.Lm943_302:
	mov	r3, r1
	sub	r3, #1
	cmp	r3, #7
	bls	.Lm943_30c
	b	.Lm943_4dc
.Lm943_30c:
	ldr	r2, =.Lm943_314
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm943_314:
	.word	.Lm943_334
	.word	.Lm943_3fe
	.word	.Lm943_354
	.word	.Lm943_3fe
	.word	.Lm943_3d2
	.word	.Lm943_3fe
	.word	.Lm943_406
	.word	.Lm943_43e
.Lm943_334:
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r1, #0x80
	mov	r2, #0xa0
	mov	r3, #0xa0
	lsl	r3, #18
	mov	r0, r5
	lsl	r1, #17
	lsl	r2, #13
	bl	__Actor_TravelTo
	b	.Lm943_3fe
.Lm943_354:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	beq	.Lm943_360
	b	.Lm943_4dc
.Lm943_360:
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	beq	.Lm943_368
	b	.Lm943_4dc
.Lm943_368:
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	beq	.Lm943_370
	b	.Lm943_4dc
.Lm943_370:
	ldrb	r3, [r6]
	mov	r0, #0x92
	add	r3, #1
	strb	r3, [r6]
	bl	__PlaySound
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lm943_394
	mov	r1, #0xd0
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	b	.Lm943_3a0
.Lm943_394:
	mov	r1, #0xb0
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.Lm943_3a0:
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #0
	beq	.Lm943_3ba
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x28]
	b	.Lm943_4dc
.Lm943_3ba:
	mov	r0, #0x16
	ldr	r1, =0x103
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	b	.Lm943_4dc
.Lm943_3d2:
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lm943_3ee
	mov	r1, #0x84
	mov	r3, #0x96
	mov	r0, r5
	lsl	r1, #17
	mov	r2, #0
	lsl	r3, #18
	bl	__Actor_TravelTo
	b	.Lm943_3fe
.Lm943_3ee:
	mov	r1, #0xf2
	mov	r3, #0x97
	mov	r0, r5
	lsl	r1, #16
	mov	r2, #0
	lsl	r3, #18
	bl	__Actor_TravelTo
.Lm943_3fe:
	ldrb	r3, [r6]
	add	r3, #1
	strb	r3, [r6]
	b	.Lm943_4dc
.Lm943_406:
	mov	r1, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r1, #24
	cmp	r3, r1
	bne	.Lm943_4dc
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.Lm943_4dc
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.Lm943_4dc
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x64
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	ldrb	r3, [r6]
	add	r3, #1
	strb	r3, [r6]
	str	r2, [r5, #0x4c]
	b	.Lm943_4dc
.Lm943_43e:
	mov	r3, #0
	strb	r3, [r6]
	b	.Lm943_4dc
.Lm943_444:
	mov	r7, r5
	add	r7, #0x64
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	beq	.Lm943_46a
	bl	__Random
	ldr	r3, [r5, #0x4c]
	lsl	r0, #12
	lsr	r0, #16
	ldr	r1, =0xffffc000
	sub	r3, r0
	str	r3, [r5, #0x4c]
	cmp	r3, r1
	bge	.Lm943_484
	mov	r2, r8
	strh	r2, [r7]
	b	.Lm943_484
.Lm943_46a:
	bl	__Random
	ldr	r3, [r5, #0x4c]
	lsl	r0, #12
	lsr	r0, #16
	mov	r1, #0x80
	add	r3, r0
	lsl	r1, #7
	str	r3, [r5, #0x4c]
	cmp	r3, r1
	ble	.Lm943_484
	mov	r3, #1
	strh	r3, [r7]
.Lm943_484:
	ldr	r1, =0xff17ffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x27fffe
	cmp	r3, r1
	bhi	.Lm943_496
	ldr	r3, [r5, #0x4c]
	add	r3, r2, r3
	str	r3, [r5, #8]
.Lm943_496:
	mov	r7, r5
	add	r7, #0x66
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	beq	.Lm943_4bc
	bl	__Random
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	lsr	r0, #16
	ldr	r1, =0xffff8000
	sub	r3, r0
	add	r3, r1
	str	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.Lm943_4dc
	mov	r3, #0
	b	.Lm943_4da
.Lm943_4bc:
	bl	__Random
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	lsr	r0, #16
	mov	r2, #0x80
	add	r3, r0
	lsl	r2, #8
	mov	r1, #0x80
	add	r3, r2
	lsl	r1, #12
	str	r3, [r5, #0xc]
	cmp	r3, r1
	ble	.Lm943_4dc
	mov	r3, #1
.Lm943_4da:
	strh	r3, [r7]
.Lm943_4dc:
	bl	__Random
	mov	r3, #0x64
	mul	r3, r0
	lsr	r3, #16
	cmp	r3, #0
	bne	.Lm943_4ee
	mov	r3, #1
	strb	r3, [r6]
.Lm943_4ee:
	mov	r0, #1
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_943_20082ec


	.include "macros.inc"

.thumb_func_start OvlFunc_943_20080c4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x62
	ldrb	r1, [r6]
	mov	r8, r1
	cmp	r1, #0
	bne	.Lda
	b	.L21a
.Lda:
	mov	r3, r1
	sub	r3, #1
	cmp	r3, #7
	bls	.Le4
	b	.L2b2
.Le4:
	ldr	r2, =.Lec
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lec:
	.word	.L10c
	.word	.L1d4
	.word	.L12c
	.word	.L1d4
	.word	.L1aa
	.word	.L1d4
	.word	.L1dc
	.word	.L214
.L10c:
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r1, #0x86
	mov	r2, #0xa0
	mov	r3, #0xad
	lsl	r3, #18
	mov	r0, r5
	lsl	r1, #17
	lsl	r2, #13
	bl	__Actor_TravelTo
	b	.L1d4
.L12c:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	beq	.L138
	b	.L2b2
.L138:
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	beq	.L140
	b	.L2b2
.L140:
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	beq	.L148
	b	.L2b2
.L148:
	ldrb	r3, [r6]
	mov	r0, #0x92
	add	r3, #1
	strb	r3, [r6]
	bl	__PlaySound
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L16c
	mov	r1, #0xd0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	b	.L178
.L16c:
	mov	r1, #0xb0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.L178:
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #0
	beq	.L192
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x28]
	b	.L2b2
.L192:
	mov	r0, #0x15
	ldr	r1, =0x103
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	b	.L2b2
.L1aa:
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1c4
	mov	r1, #0x8d
	mov	r0, r5
	lsl	r1, #17
	mov	r2, #0
	ldr	r3, =0x2920000
	bl	__Actor_TravelTo
	b	.L1d4
.L1c4:
	mov	r1, #0xfe
	mov	r3, #0xa7
	mov	r0, r5
	lsl	r1, #16
	mov	r2, #0
	lsl	r3, #18
	bl	__Actor_TravelTo
.L1d4:
	ldrb	r3, [r6]
	add	r3, #1
	strb	r3, [r6]
	b	.L2b2
.L1dc:
	mov	r1, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r1, #24
	cmp	r3, r1
	bne	.L2b2
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.L2b2
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.L2b2
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
	b	.L2b2
.L214:
	mov	r3, #0
	strb	r3, [r6]
	b	.L2b2
.L21a:
	mov	r7, r5
	add	r7, #0x64
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	beq	.L240
	bl	__Random
	ldr	r3, [r5, #0x4c]
	lsl	r0, #12
	lsr	r0, #16
	ldr	r1, =0xffffc000
	sub	r3, r0
	str	r3, [r5, #0x4c]
	cmp	r3, r1
	bge	.L25a
	mov	r2, r8
	strh	r2, [r7]
	b	.L25a
.L240:
	bl	__Random
	ldr	r3, [r5, #0x4c]
	lsl	r0, #12
	lsr	r0, #16
	mov	r1, #0x80
	add	r3, r0
	lsl	r1, #7
	str	r3, [r5, #0x4c]
	cmp	r3, r1
	ble	.L25a
	mov	r3, #1
	strh	r3, [r7]
.L25a:
	ldr	r1, =0xff07ffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x2bfffe
	cmp	r3, r1
	bhi	.L26c
	ldr	r3, [r5, #0x4c]
	add	r3, r2, r3
	str	r3, [r5, #8]
.L26c:
	mov	r7, r5
	add	r7, #0x66
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	beq	.L292
	bl	__Random
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	lsr	r0, #16
	ldr	r1, =0xffff8000
	sub	r3, r0
	add	r3, r1
	str	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.L2b2
	mov	r3, #0
	b	.L2b0
.L292:
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
	ble	.L2b2
	mov	r3, #1
.L2b0:
	strh	r3, [r7]
.L2b2:
	bl	__Random
	mov	r3, #0x64
	mul	r3, r0
	lsr	r3, #16
	cmp	r3, #0
	bne	.L2c4
	mov	r3, #1
	strb	r3, [r6]
.L2c4:
	mov	r0, #1
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_943_20080c4

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
	bne	.L302
	b	.L444
.L302:
	mov	r3, r1
	sub	r3, #1
	cmp	r3, #7
	bls	.L30c
	b	.L4dc
.L30c:
	ldr	r2, =.L314
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L314:
	.word	.L334
	.word	.L3fe
	.word	.L354
	.word	.L3fe
	.word	.L3d2
	.word	.L3fe
	.word	.L406
	.word	.L43e
.L334:
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
	b	.L3fe
.L354:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	beq	.L360
	b	.L4dc
.L360:
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	beq	.L368
	b	.L4dc
.L368:
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	beq	.L370
	b	.L4dc
.L370:
	ldrb	r3, [r6]
	mov	r0, #0x92
	add	r3, #1
	strb	r3, [r6]
	bl	__PlaySound
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L394
	mov	r1, #0xd0
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	b	.L3a0
.L394:
	mov	r1, #0xb0
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.L3a0:
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #0
	beq	.L3ba
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x28]
	b	.L4dc
.L3ba:
	mov	r0, #0x16
	ldr	r1, =0x103
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	b	.L4dc
.L3d2:
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L3ee
	mov	r1, #0x84
	mov	r3, #0x96
	mov	r0, r5
	lsl	r1, #17
	mov	r2, #0
	lsl	r3, #18
	bl	__Actor_TravelTo
	b	.L3fe
.L3ee:
	mov	r1, #0xf2
	mov	r3, #0x97
	mov	r0, r5
	lsl	r1, #16
	mov	r2, #0
	lsl	r3, #18
	bl	__Actor_TravelTo
.L3fe:
	ldrb	r3, [r6]
	add	r3, #1
	strb	r3, [r6]
	b	.L4dc
.L406:
	mov	r1, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r1, #24
	cmp	r3, r1
	bne	.L4dc
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.L4dc
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.L4dc
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
	b	.L4dc
.L43e:
	mov	r3, #0
	strb	r3, [r6]
	b	.L4dc
.L444:
	mov	r7, r5
	add	r7, #0x64
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	beq	.L46a
	bl	__Random
	ldr	r3, [r5, #0x4c]
	lsl	r0, #12
	lsr	r0, #16
	ldr	r1, =0xffffc000
	sub	r3, r0
	str	r3, [r5, #0x4c]
	cmp	r3, r1
	bge	.L484
	mov	r2, r8
	strh	r2, [r7]
	b	.L484
.L46a:
	bl	__Random
	ldr	r3, [r5, #0x4c]
	lsl	r0, #12
	lsr	r0, #16
	mov	r1, #0x80
	add	r3, r0
	lsl	r1, #7
	str	r3, [r5, #0x4c]
	cmp	r3, r1
	ble	.L484
	mov	r3, #1
	strh	r3, [r7]
.L484:
	ldr	r1, =0xff17ffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x27fffe
	cmp	r3, r1
	bhi	.L496
	ldr	r3, [r5, #0x4c]
	add	r3, r2, r3
	str	r3, [r5, #8]
.L496:
	mov	r7, r5
	add	r7, #0x66
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	beq	.L4bc
	bl	__Random
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	lsr	r0, #16
	ldr	r1, =0xffff8000
	sub	r3, r0
	add	r3, r1
	str	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.L4dc
	mov	r3, #0
	b	.L4da
.L4bc:
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
	ble	.L4dc
	mov	r3, #1
.L4da:
	strh	r3, [r7]
.L4dc:
	bl	__Random
	mov	r3, #0x64
	mul	r3, r0
	lsr	r3, #16
	cmp	r3, #0
	bne	.L4ee
	mov	r3, #1
	strb	r3, [r6]
.L4ee:
	mov	r0, #1
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_943_20082ec

.thumb_func_start OvlFunc_943_2008514
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L542
	bl	__Random
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	ldr	r2, =0xffff8000
	lsr	r0, #16
	sub	r3, r0
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #11
	str	r3, [r5, #0xc]
	cmp	r3, r2
	bge	.L562
	mov	r3, #0
	b	.L560
.L542:
	bl	__Random
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	lsr	r0, #16
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r0
	add	r3, r2
	mov	r2, #0xc0
	lsl	r2, #12
	str	r3, [r5, #0xc]
	cmp	r3, r2
	ble	.L562
	mov	r3, #1
.L560:
	strh	r3, [r6]
.L562:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_943_2008514


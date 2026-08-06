	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_917_2009218
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e40
	ldr	r6, [r3]
	mov	r3, #3
	and	r6, r3
	cmp	r6, #0
	bne	.Lm917_129e
	ldr	r3, =.Lm917_1dd0
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm917_1234
	mov	r0, #0xc8
	bl	__PlaySound
.Lm917_1234:
	mov	r1, #0xa3
	mov	r2, #0x80
	mov	r3, #0xc0
	mov	r0, #0x1a
	lsl	r1, #17
	lsl	r2, #14
	lsl	r3, #16
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm917_129e
	ldr	r1, [r5, #0x50]
	add	r0, #0x23
	mov	r3, r1
	ldrb	r2, [r0]
	add	r3, #0x26
	strb	r6, [r3]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r2, [r1, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	ldr	r3, =0x1999
	str	r3, [r5, #0x18]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	mov	r0, r5
	mov	r1, #2
	bl	__Actor_SetAnim
	mov	r1, #0xa3
	mov	r3, #0xf0
	mov	r0, r5
	lsl	r1, #17
	mov	r2, #0
	lsl	r3, #16
	bl	__Actor_TravelTo
	ldr	r1, =gScript_917__02009d9c
	mov	r0, r5
	bl	__Actor_SetScript
.Lm917_129e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_2009218

.thumb_func_start OvlFunc_917_20092b4
	push	{r5, lr}
	ldr	r5, =.Lm917_1dd4
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.Lm917_12cc
	mov	r0, #0
	bl	OvlFunc_917_20098b8
	mov	r0, #0x14
	bl	__Func_8091254
	b	.Lm917_12dc
.Lm917_12cc:
	cmp	r3, #0x14
	bne	.Lm917_12dc
	mov	r0, #1
	bl	OvlFunc_917_20098b8
	mov	r0, #8
	bl	__Func_8091254
.Lm917_12dc:
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	cmp	r3, #0x1e
	bne	.Lm917_12ea
	mov	r3, #0
	str	r3, [r5]
.Lm917_12ea:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_20092b4

.thumb_func_start OvlFunc_917_20092f4
	push	{lr}
	cmp	r0, #0xa
	beq	.Lm917_12fc
	b	.Lm917_1454
.Lm917_12fc:
	cmp	r1, #0xb
	bls	.Lm917_1302
	b	.Lm917_1518
.Lm917_1302:
	ldr	r2, =.Lm917_130c
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm917_130c:
	.word	.Lm917_133c
	.word	.Lm917_134e
	.word	.Lm917_1352
	.word	.Lm917_1364
	.word	.Lm917_1376
	.word	.Lm917_13b2
	.word	.Lm917_13ca
	.word	.Lm917_144a
	.word	.Lm917_13e2
	.word	.Lm917_13fa
	.word	.Lm917_1412
	.word	.Lm917_144a
.Lm917_133c:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	b	.Lm917_1488
.Lm917_134e:
	mov	r0, #8
	b	.Lm917_14fa
.Lm917_1352:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	b	.Lm917_14a0
.Lm917_1364:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	b	.Lm917_14b8
.Lm917_1376:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	b	.Lm917_14fa
.Lm917_13b2:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_13ca:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #8
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_13e2:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #9
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_13fa:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #0xa
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_1412:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #8
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #8
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
.Lm917_144a:
	mov	r0, #8
	mov	r1, #6
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_1454:
	cmp	r1, #5
	bhi	.Lm917_1518
	ldr	r2, =.Lm917_1460
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm917_1460:
	.word	.Lm917_1478
	.word	.Lm917_14f8
	.word	.Lm917_1490
	.word	.Lm917_14a8
	.word	.Lm917_14c0
	.word	.Lm917_1502
.Lm917_1478:
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #9
.Lm917_1488:
	mov	r1, #3
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_1490:
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #9
.Lm917_14a0:
	mov	r1, #5
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_14a8:
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #9
.Lm917_14b8:
	mov	r1, #4
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_14c0:
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
.Lm917_14f8:
	mov	r0, #9
.Lm917_14fa:
	mov	r1, #1
	bl	__MapActor_SetAnim
	b	.Lm917_1518
.Lm917_1502:
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #9
	mov	r1, #2
	bl	__MapActor_SetAnim
.Lm917_1518:
	mov	r0, #0xc
	bl	__WaitFrames
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_20092f4

.thumb_func_start OvlFunc_917_200952c
	push	{r5, r6, r7, lr}
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x64
	mov	r1, #0
	ldrsh	r2, [r7, r1]
	sub	sp, #0xc
	cmp	r2, #0x77
	bgt	.Lm917_1586
	ldr	r3, [r6, #0x38]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0x3c]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x40]
	str	r3, [r5, #8]
	mov	r3, r6
	add	r3, #0x66
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	lsl	r1, r2, #1
	add	r1, r2
	lsl	r1, #8
	lsl	r0, r2, #16
	add	r1, r3
	mov	r2, r5
	bl	__vec3_translate
	ldr	r3, [r5]
	str	r3, [r6, #8]
	ldr	r3, [r5, #4]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	ldr	r2, =0x147
	str	r3, [r6, #0x10]
	ldr	r3, [r6, #0x18]
	add	r3, r2
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	ldrh	r3, [r7]
	add	r3, #1
	strh	r3, [r7]
	b	.Lm917_1594
.Lm917_1586:
	ldr	r3, [r6, #0x50]
	ldrb	r0, [r3, #0x1c]
	bl	__Func_8003f3c
	mov	r0, r6
	bl	__DeleteActor
.Lm917_1594:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_200952c

.thumb_func_start OvlFunc_917_20095a0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r1, =.Lm917_1dcc
	ldr	r3, [r1]
	mov	r0, #0
	mov	r9, r0
	cmp	r3, #0x28
	bls	.Lm917_15b8
	b	.Lm917_16f8
.Lm917_15b8:
	ldr	r2, =.Lm917_15c0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm917_15c0:
	.word	.Lm917_1664
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_1664
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_1664
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_1664
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_1664
.Lm917_1664:
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r2, #0
	ldr	r6, =.Lm917_1dc0
	mov	r8, r2
	mov	r10, r2
	mov	r7, #0
.Lm917_1674:
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	ldr	r0, =0x11d
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm917_16e6
	mov	r1, r9
	ldr	r0, [r5, #0x50]
	bl	__Func_8096c48
	mov	r3, r5
	add	r3, #0x55
	mov	r9, r0
	mov	r0, r10
	strb	r0, [r3]
	ldr	r1, [r5, #0x50]
	mov	r0, #0xd
	ldrb	r2, [r1, #9]
	neg	r0, r0
	mov	r3, r0
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r1, #9]
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r3, r5
	add	r3, #0x64
	mov	r2, r10
	mov	r1, #0xb4
	strh	r2, [r3]
	lsl	r1, #1
	mov	r0, r7
	bl	_udivsi3_RAM
	mov	r3, r5
	add	r3, #0x66
	strh	r0, [r3]
	ldr	r3, [r6]
	str	r3, [r5, #0x38]
	ldr	r3, [r6, #4]
	str	r3, [r5, #0x3c]
	ldr	r3, [r6, #8]
	str	r3, [r5, #0x40]
	ldr	r3, =0x19999
	str	r3, [r5, #0x30]
	ldr	r3, =OvlFunc_917_200952c
	str	r3, [r5, #0x6c]
.Lm917_16e6:
	mov	r0, #1
	mov	r3, #0xf0
	add	r8, r0
	lsl	r3, #14
	mov	r2, r8
	add	r7, r3
	cmp	r2, #5
	bls	.Lm917_1674
	ldr	r1, =.Lm917_1dcc
.Lm917_16f8:
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	cmp	r3, #0x78
	ble	.Lm917_1706
	mov	r3, #0
	str	r3, [r1]
.Lm917_1706:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_20095a0

.thumb_func_start OvlFunc_917_200972c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r8, r1
	bl	__CheckPartyItem
	mov	r7, #1
	mov	r5, r0
	neg	r7, r7
	cmp	r5, r7
	beq	.Lm917_175e
	mov	r1, r6
	bl	__CheckItem
	mov	r6, r0
	cmp	r6, r7
	beq	.Lm917_175e
	mov	r0, r5
	bl	__GetUnit
	lsl	r3, r6, #1
	add	r3, #0xd8
	mov	r2, r8
	strh	r2, [r0, r3]
.Lm917_175e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_200972c

.thumb_func_start OvlFunc_917_2009768
	push	{r5, r6, r7, lr}
	mov	r7, r0
	bl	OvlFunc_917_2009838
	mov	r6, #0
.Lm917_1772:
	ldr	r2, =0xffef0000
	add	r3, r6, r2
	mov	r2, #0xc0
	lsl	r2, #11
	lsr	r5, r6, #16
	cmp	r3, r2
	bls	.Lm917_17a0
	ldr	r2, =0xff3f
	add	r3, r5, r2
	mov	r2, #0xe0
	lsl	r3, #16
	lsl	r2, #11
	cmp	r3, r2
	bls	.Lm917_17a0
	mov	r3, #0xa0
	lsl	r3, #19
	lsl	r5, #1
	add	r5, r3
	ldrh	r0, [r5]
	mov	r1, r7
	bl	OvlFunc_917_20097d0
	strh	r0, [r5]
.Lm917_17a0:
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r6, r2
	mov	r2, #0xdf
	lsl	r2, #16
	mov	r6, r3
	cmp	r3, r2
	bls	.Lm917_1772
	bl	OvlFunc_917_2009878
	bl	OvlFunc_917_2009858
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091200
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_2009768

.thumb_func_start OvlFunc_917_20097d0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0xf8
	lsl	r0, #16
	lsl	r3, #13
	and	r3, r0
	asr	r6, r3, #16
	ldr	r2, =0x1f
	mov	r8, r1
	lsr	r5, r0, #21
	lsr	r7, r0, #26
	lsl	r1, #2
	mov	r0, r6
	and	r5, r2
	and	r7, r2
	bl	_divsi3_RAM
	add	r0, r6, r0
	lsl	r0, #16
	mov	r1, r8
	asr	r6, r0, #16
	mov	r0, r5
	bl	_divsi3_RAM
	sub	r0, r5, r0
	lsl	r0, #16
	asr	r5, r0, #16
	mov	r1, r8
	mov	r0, r7
	bl	_divsi3_RAM
	sub	r0, r7, r0
	lsl	r0, #16
	asr	r7, r0, #16
	b	.Lm917_181c

	.pool_aligned

.Lm917_181c:
	cmp	r6, #0x1f
	ble	.Lm917_1822
	mov	r6, #0x1f
.Lm917_1822:
	lsl	r3, r7, #10
	lsl	r2, r5, #5
	orr	r3, r2
	orr	r6, r3
	lsl	r0, r6, #16
	lsr	r0, #16
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_917_20097d0


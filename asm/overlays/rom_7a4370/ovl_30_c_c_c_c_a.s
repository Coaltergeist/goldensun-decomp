	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_92b4, "ax", %progbits

.thumb_func_start OvlFunc_917_20092f4
	push	{lr}
	cmp	r0, #0xa
	beq	.L12fc
	b	.L1454
.L12fc:
	cmp	r1, #0xb
	bls	.L1302
	b	.L1518
.L1302:
	ldr	r2, =.L130c
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L130c:
	.word	.L133c
	.word	.L134e
	.word	.L1352
	.word	.L1364
	.word	.L1376
	.word	.L13b2
	.word	.L13ca
	.word	.L144a
	.word	.L13e2
	.word	.L13fa
	.word	.L1412
	.word	.L144a
.L133c:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	b	.L1488
.L134e:
	mov	r0, #8
	b	.L14fa
.L1352:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	b	.L14a0
.L1364:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	b	.L14b8
.L1376:
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
	b	.L14fa
.L13b2:
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	b	.L1518
.L13ca:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #8
	bl	__MapActor_SetAnim
	b	.L1518
.L13e2:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #9
	bl	__MapActor_SetAnim
	b	.L1518
.L13fa:
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #0xa
	bl	__MapActor_SetAnim
	b	.L1518
.L1412:
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
.L144a:
	mov	r0, #8
	mov	r1, #6
	bl	__MapActor_SetAnim
	b	.L1518
.L1454:
	cmp	r1, #5
	bhi	.L1518
	ldr	r2, =.L1460
	lsl	r3, r1, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1460:
	.word	.L1478
	.word	.L14f8
	.word	.L1490
	.word	.L14a8
	.word	.L14c0
	.word	.L1502
.L1478:
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #9
.L1488:
	mov	r1, #3
	bl	__MapActor_SetAnim
	b	.L1518
.L1490:
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #9
.L14a0:
	mov	r1, #5
	bl	__MapActor_SetAnim
	b	.L1518
.L14a8:
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #9
.L14b8:
	mov	r1, #4
	bl	__MapActor_SetAnim
	b	.L1518
.L14c0:
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
.L14f8:
	mov	r0, #9
.L14fa:
	mov	r1, #1
	bl	__MapActor_SetAnim
	b	.L1518
.L1502:
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #9
	mov	r1, #2
	bl	__MapActor_SetAnim
.L1518:
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
	bgt	.L1586
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
	b	.L1594
.L1586:
	ldr	r3, [r6, #0x50]
	ldrb	r0, [r3, #0x1c]
	bl	__Func_8003f3c
	mov	r0, r6
	bl	__DeleteActor
.L1594:
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
	ldr	r1, =.L1dcc
	ldr	r3, [r1]
	mov	r0, #0
	mov	r9, r0
	cmp	r3, #0x28
	bls	.L15b8
	b	.L16f8
.L15b8:
	ldr	r2, =.L15c0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L15c0:
	.word	.L1664
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L1664
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L1664
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L1664
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L16f8
	.word	.L1664
.L1664:
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r2, #0
	ldr	r6, =.L1dc0
	mov	r8, r2
	mov	r10, r2
	mov	r7, #0
.L1674:
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	ldr	r0, =0x11d
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L16e6
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
.L16e6:
	mov	r0, #1
	mov	r3, #0xf0
	add	r8, r0
	lsl	r3, #14
	mov	r2, r8
	add	r7, r3
	cmp	r2, #5
	bls	.L1674
	ldr	r1, =.L1dcc
.L16f8:
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	cmp	r3, #0x78
	ble	.L1706
	mov	r3, #0
	str	r3, [r1]
.L1706:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_20095a0

	.section .text.after_972c, "ax", %progbits

	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200b364
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_3380
	bl	OvlFunc_945_200c5d0
	b	.Lm945_34f2

	.pool_aligned

.Lm945_3380:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_338e
	bl	OvlFunc_945_200c5d0
.Lm945_338e:
	ldr	r0, =0x93e
	bl	__GetFlag
	mov	r7, r0
	cmp	r7, #0
	beq	.Lm945_339c
	b	.Lm945_34f2
.Lm945_339c:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_3456
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r6, r0
	mov	r2, #0
	mov	r0, #0xd
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xe4
	mov	r2, #0xa3
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #8
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r3, #0xf0
	lsl	r3, #1
	mov	r8, r3
	mov	r2, #0x96
	mov	r3, #0xb0
	lsl	r3, #8
	lsl	r2, #2
	mov	r0, #9
	mov	r1, r8
	bl	OvlFunc_945_200c890
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r3, r6
	add	r3, #0x66
	ldr	r5, .Lm945_3428	@ 0
	strh	r7, [r3]
	sub	r3, #3
	strb	r5, [r3]
	mov	r1, r6
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #0x80
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, =OvlFunc_945_200812c
	mov	r0, #8
	str	r3, [r6, #0x6c]
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x62
	strb	r5, [r3]
	ldr	r3, =OvlFunc_945_2008284
	str	r3, [r0, #0x6c]
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_34f2
	mov	r3, #0xa0
	ldr	r2, =0x29a
	lsl	r3, #8
	b	.Lm945_344c

	.align	2, 0
.Lm945_3428:
	.word	0
	.pool

.Lm945_344c:
	mov	r0, #0
	mov	r1, r8
	bl	OvlFunc_945_200c890
	b	.Lm945_34f2
.Lm945_3456:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_346e
	mov	r1, #0xde
	mov	r3, #0xd0
	lsl	r1, #1
	ldr	r2, =0x266
	mov	r0, #8
	lsl	r3, #8
	b	.Lm945_3484
.Lm945_346e:
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_3494
	mov	r1, #0xe4
	mov	r2, #0xa2
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #8
	mov	r3, #0
.Lm945_3484:
	bl	OvlFunc_945_200c890
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	b	.Lm945_34f2
.Lm945_3494:
	ldr	r0, =0x921
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_34f2
	mov	r3, #0x80
	ldr	r1, =0x1db
	ldr	r2, =0x256
	lsl	r3, #8
	mov	r0, #8
	mov	r5, #0xb0
	bl	OvlFunc_945_200c890
	lsl	r5, #8
	mov	r1, #0xe7
	lsl	r1, #1
	ldr	r2, =0x26a
	mov	r3, r5
	mov	r0, #9
	bl	OvlFunc_945_200c890
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0xdb
	mov	r3, #0xd0
	strh	r5, [r0, #6]
	lsl	r1, #1
	ldr	r2, =0x293
	lsl	r3, #8
	mov	r0, #0xd
	bl	OvlFunc_945_200c890
	mov	r1, #0xf4
	mov	r2, #0xac
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0xa
	mov	r3, r5
	bl	OvlFunc_945_200c890
.Lm945_34f2:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200b364


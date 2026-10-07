	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_2009444
	push	{r5, lr}
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_1464
	ldr	r0, =0x271
	bl	__ClearFlag
	ldr	r0, =0x272
	bl	__ClearFlag
.Lm943_1464:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_1480
	bl	OvlFunc_943_200b950
	bl	OvlFunc_943_200b9b8
	mov	r0, #0x18
	mov	r1, #2
	bl	__Func_8092950
	b	.Lm943_14ee
.Lm943_1480:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_1496
	bl	OvlFunc_943_200b950
	bl	OvlFunc_943_200b9b8
	b	.Lm943_14ee
.Lm943_1496:
	ldr	r0, =0x927
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm943_14ce
	bl	OvlFunc_943_200b950
	bl	OvlFunc_943_200b284
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_943_200b4bc
	bl	__StartTask
	ldr	r2, =.Lm943_5b50
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r2, #4]
	ldr	r2, =.Lm943_5b60
	ldr	r3, =0x13333
	mov	r1, #0xc8
	str	r3, [r2, #4]
	ldr	r0, =OvlFunc_943_200b1a8
	lsl	r1, #4
	bl	__StartTask
	b	.Lm943_14ee
.Lm943_14ce:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_14ee
	bl	OvlFunc_943_200b950
	ldr	r3, =.Lm943_5b50
	str	r5, [r3, #4]
	ldr	r3, =.Lm943_5b60
	mov	r1, #0xc8
	str	r5, [r3, #4]
	ldr	r0, =OvlFunc_943_200b1a8
	lsl	r1, #4
	bl	__StartTask
.Lm943_14ee:
	ldr	r0, =0x927
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_14fc
	bl	OvlFunc_943_200b710
.Lm943_14fc:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #4
	cmp	r3, #0xf
	bhi	.Lm943_15d0
	ldr	r2, =.Lm943_1518
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm943_1518:
	.word	.Lm943_1558
	.word	.Lm943_15d0
	.word	.Lm943_15d0
	.word	.Lm943_15d0
	.word	.Lm943_15d0
	.word	.Lm943_15d0
	.word	.Lm943_1570
	.word	.Lm943_1586
	.word	.Lm943_158c
	.word	.Lm943_1592
	.word	.Lm943_1598
	.word	.Lm943_159e
	.word	.Lm943_15a4
	.word	.Lm943_15b4
	.word	.Lm943_15ba
	.word	.Lm943_15ca
.Lm943_1558:
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	b	.Lm943_15d0
.Lm943_1570:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_1580
	bl	OvlFunc_943_2009b58
	b	.Lm943_1638
.Lm943_1580:
	bl	OvlFunc_943_2009a98
	b	.Lm943_1638
.Lm943_1586:
	bl	OvlFunc_943_2009d0c
	b	.Lm943_1638
.Lm943_158c:
	bl	OvlFunc_943_2009db0
	b	.Lm943_1638
.Lm943_1592:
	bl	OvlFunc_943_2009f90
	b	.Lm943_1638
.Lm943_1598:
	bl	OvlFunc_943_200a2c0
	b	.Lm943_1638
.Lm943_159e:
	bl	OvlFunc_943_200a618
	b	.Lm943_1638
.Lm943_15a4:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_1604
	bl	OvlFunc_943_200a9d4
	b	.Lm943_1638
.Lm943_15b4:
	bl	OvlFunc_943_200ab7c
	b	.Lm943_1638
.Lm943_15ba:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_1638
	bl	OvlFunc_943_200ac84
	b	.Lm943_1638
.Lm943_15ca:
	bl	OvlFunc_943_200ba0c
	b	.Lm943_1638
.Lm943_15d0:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_15e8
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r2, #0x82
	add	r3, #0xec
	lsl	r2, #15
	str	r2, [r3]
	b	.Lm943_1638
.Lm943_15e8:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_15fa
	bl	OvlFunc_943_20099c0
	b	.Lm943_1638
.Lm943_15fa:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_160a
.Lm943_1604:
	bl	OvlFunc_943_2009920
	b	.Lm943_1638
.Lm943_160a:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_161a
	bl	OvlFunc_943_200985c
	b	.Lm943_1638
.Lm943_161a:
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_162a
	bl	OvlFunc_943_20097a0
	b	.Lm943_1638
.Lm943_162a:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_1638
	bl	OvlFunc_943_2009684
.Lm943_1638:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2009444


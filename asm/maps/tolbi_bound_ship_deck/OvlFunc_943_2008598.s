	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_2008598
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #9
	bls	.Lm943_5aa
	b	.Lm943_708
.Lm943_5aa:
	ldr	r2, =.Lm943_5b4
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm943_5b4:
	.word	.Lm943_5dc
	.word	.Lm943_5f4
	.word	.Lm943_5fa
	.word	.Lm943_61c
	.word	.Lm943_622
	.word	.Lm943_69a
	.word	.Lm943_6a0
	.word	.Lm943_6e2
	.word	.Lm943_6e8
	.word	.Lm943_704
.Lm943_5dc:
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	cmp	r3, #0
	beq	.Lm943_5ee
	b	.Lm943_708
.Lm943_5ee:
	ldrh	r3, [r6]
	add	r3, #1
	b	.Lm943_706
.Lm943_5f4:
	ldrh	r3, [r6]
	add	r3, #1
	b	.Lm943_706
.Lm943_5fa:
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	mov	r1, #0x84
	str	r3, [r5, #0x34]
	mov	r0, r5
	ldr	r3, =0x2960000
	lsl	r1, #17
	mov	r2, #0
	bl	__Actor_TravelTo
	ldrh	r3, [r6]
	add	r3, #1
	b	.Lm943_706
.Lm943_61c:
	ldrh	r3, [r6]
	add	r3, #1
	b	.Lm943_706
.Lm943_622:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.Lm943_708
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.Lm943_708
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.Lm943_708
	ldrh	r3, [r6]
	mov	r0, #0x98
	add	r3, #1
	strh	r3, [r6]
	bl	__PlaySound
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lm943_65c
	mov	r1, #0xb0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	b	.Lm943_668
.Lm943_65c:
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
.Lm943_668:
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #0
	beq	.Lm943_682
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x28]
	b	.Lm943_708
.Lm943_682:
	mov	r0, #0x15
	ldr	r1, =0x103
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	b	.Lm943_708
.Lm943_69a:
	ldrh	r3, [r6]
	add	r3, #1
	b	.Lm943_706
.Lm943_6a0:
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lm943_6d2
	mov	r1, #0xfc
	mov	r0, r5
	lsl	r1, #16
	mov	r2, #0
	ldr	r3, =0x2860000
	bl	__Actor_TravelTo
	b	.Lm943_708
.Lm943_6d2:
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #17
	mov	r2, #0
	ldr	r3, =0x2ae0000
	bl	__Actor_TravelTo
	b	.Lm943_708
.Lm943_6e2:
	ldrh	r3, [r6]
	add	r3, #1
	b	.Lm943_706
.Lm943_6e8:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.Lm943_708
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.Lm943_708
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.Lm943_708
	ldrh	r3, [r6]
	add	r3, #1
	b	.Lm943_706
.Lm943_704:
	mov	r3, #0
.Lm943_706:
	strh	r3, [r6]
.Lm943_708:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_943_2008598


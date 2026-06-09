	.include "macros.inc"

.thumb_func_start OvlFunc_943_2008598
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #9
	bls	.L5aa
	b	.L708
.L5aa:
	ldr	r2, =.L5b4
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L5b4:
	.word	.L5dc
	.word	.L5f4
	.word	.L5fa
	.word	.L61c
	.word	.L622
	.word	.L69a
	.word	.L6a0
	.word	.L6e2
	.word	.L6e8
	.word	.L704
.L5dc:
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	cmp	r3, #0
	beq	.L5ee
	b	.L708
.L5ee:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L706
.L5f4:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L706
.L5fa:
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
	b	.L706
.L61c:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L706
.L622:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L708
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.L708
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.L708
	ldrh	r3, [r6]
	mov	r0, #0x98
	add	r3, #1
	strh	r3, [r6]
	bl	__PlaySound
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L65c
	mov	r1, #0xb0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	b	.L668
.L65c:
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
.L668:
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #0
	beq	.L682
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x28]
	b	.L708
.L682:
	mov	r0, #0x15
	ldr	r1, =0x103
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	b	.L708
.L69a:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L706
.L6a0:
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
	beq	.L6d2
	mov	r1, #0xfc
	mov	r0, r5
	lsl	r1, #16
	mov	r2, #0
	ldr	r3, =0x2860000
	bl	__Actor_TravelTo
	b	.L708
.L6d2:
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #17
	mov	r2, #0
	ldr	r3, =0x2ae0000
	bl	__Actor_TravelTo
	b	.L708
.L6e2:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L706
.L6e8:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L708
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.L708
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.L708
	ldrh	r3, [r6]
	add	r3, #1
	b	.L706
.L704:
	mov	r3, #0
.L706:
	strh	r3, [r6]
.L708:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_943_2008598

.thumb_func_start OvlFunc_943_2008724
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #9
	bls	.L736
	b	.L88c
.L736:
	ldr	r2, =.L740
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L740:
	.word	.L768
	.word	.L780
	.word	.L786
	.word	.L7aa
	.word	.L7b0
	.word	.L826
	.word	.L82c
	.word	.L866
	.word	.L86c
	.word	.L888
.L768:
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	cmp	r3, #0
	beq	.L77a
	b	.L88c
.L77a:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L88a
.L780:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L88a
.L786:
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r1, #0xb0
	mov	r3, #0xae
	lsl	r3, #18
	mov	r0, r5
	lsl	r1, #16
	mov	r2, #0
	bl	__Actor_TravelTo
	ldrh	r3, [r6]
	add	r3, #1
	b	.L88a
.L7aa:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L88a
.L7b0:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L88c
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.L88c
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.L88c
	ldrh	r3, [r6]
	mov	r0, #0x98
	add	r3, #1
	strh	r3, [r6]
	bl	__PlaySound
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L7ea
	mov	r1, #0xd0
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	b	.L7f4
.L7ea:
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
.L7f4:
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #0
	beq	.L80e
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x28]
	b	.L88c
.L80e:
	mov	r0, #0x16
	ldr	r1, =0x103
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	b	.L88c
.L826:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L88a
.L82c:
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
	beq	.L854
	mov	r1, #0xb8
	mov	r3, #0xa8
	b	.L858
.L854:
	mov	r1, #0xca
	mov	r3, #0xad
.L858:
	mov	r0, r5
	lsl	r1, #16
	mov	r2, #0
	lsl	r3, #18
	bl	__Actor_TravelTo
	b	.L88c
.L866:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L88a
.L86c:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L88c
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.L88c
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.L88c
	ldrh	r3, [r6]
	add	r3, #1
	b	.L88a
.L888:
	mov	r3, #0
.L88a:
	strh	r3, [r6]
.L88c:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_943_2008724


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_2008724
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #9
	bls	.Lm943_736
	b	.Lm943_88c
.Lm943_736:
	ldr	r2, =.Lm943_740
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm943_740:
	.word	.Lm943_768
	.word	.Lm943_780
	.word	.Lm943_786
	.word	.Lm943_7aa
	.word	.Lm943_7b0
	.word	.Lm943_826
	.word	.Lm943_82c
	.word	.Lm943_866
	.word	.Lm943_86c
	.word	.Lm943_888
.Lm943_768:
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	cmp	r3, #0
	beq	.Lm943_77a
	b	.Lm943_88c
.Lm943_77a:
	ldrh	r3, [r6]
	add	r3, #1
	b	.Lm943_88a
.Lm943_780:
	ldrh	r3, [r6]
	add	r3, #1
	b	.Lm943_88a
.Lm943_786:
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
	b	.Lm943_88a
.Lm943_7aa:
	ldrh	r3, [r6]
	add	r3, #1
	b	.Lm943_88a
.Lm943_7b0:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.Lm943_88c
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.Lm943_88c
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.Lm943_88c
	ldrh	r3, [r6]
	mov	r0, #0x98
	add	r3, #1
	strh	r3, [r6]
	bl	__PlaySound
	mov	r3, r5
	add	r3, #0x63
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lm943_7ea
	mov	r1, #0xd0
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	b	.Lm943_7f4
.Lm943_7ea:
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
.Lm943_7f4:
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #0
	beq	.Lm943_80e
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x28]
	b	.Lm943_88c
.Lm943_80e:
	mov	r0, #0x16
	ldr	r1, =0x103
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r0, #0x28]
	b	.Lm943_88c
.Lm943_826:
	ldrh	r3, [r6]
	add	r3, #1
	b	.Lm943_88a
.Lm943_82c:
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
	beq	.Lm943_854
	mov	r1, #0xb8
	mov	r3, #0xa8
	b	.Lm943_858
.Lm943_854:
	mov	r1, #0xca
	mov	r3, #0xad
.Lm943_858:
	mov	r0, r5
	lsl	r1, #16
	mov	r2, #0
	lsl	r3, #18
	bl	__Actor_TravelTo
	b	.Lm943_88c
.Lm943_866:
	ldrh	r3, [r6]
	add	r3, #1
	b	.Lm943_88a
.Lm943_86c:
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.Lm943_88c
	ldr	r2, [r5, #0x3c]
	cmp	r2, r3
	bne	.Lm943_88c
	ldr	r3, [r5, #0x40]
	cmp	r3, r2
	bne	.Lm943_88c
	ldrh	r3, [r6]
	add	r3, #1
	b	.Lm943_88a
.Lm943_888:
	mov	r3, #0
.Lm943_88a:
	strh	r3, [r6]
.Lm943_88c:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_943_2008724


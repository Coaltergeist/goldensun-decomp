	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_969_200d6a0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x17
	bl	__MapActor_GetActor
	ldr	r5, =.Lm969_6764
	ldr	r3, [r5]
	mov	r6, r0
	mov	r7, #0
	cmp	r3, #0x30
	bls	.Lm969_56bc
	b	.Lm969_58dc
.Lm969_56bc:
	ldr	r2, =.Lm969_56c4
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm969_56c4:
	.word	.Lm969_5788
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_57a2
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_57b4
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_57c6
	.word	.Lm969_57ee
	.word	.Lm969_584e
	.word	.Lm969_5896
	.word	.Lm969_5896
	.word	.Lm969_5896
	.word	.Lm969_5896
	.word	.Lm969_5896
	.word	.Lm969_5896
	.word	.Lm969_5896
	.word	.Lm969_5896
	.word	.Lm969_58dc
	.word	.Lm969_589a
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58dc
	.word	.Lm969_58d0
.Lm969_5788:
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	ldr	r0, =0x2063ff
	b	.Lm969_57a6
.Lm969_57a2:
	mov	r0, #0x80
	lsl	r0, #9
.Lm969_57a6:
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	b	.Lm969_58dc
.Lm969_57b4:
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	b	.Lm969_58dc
.Lm969_57c6:
	mov	r3, #0x98
	lsl	r3, #17
	str	r3, [r6, #8]
	ldr	r3, =0xfe980000
	str	r3, [r6, #0xc]
	mov	r3, #0xa4
	lsl	r3, #16
	str	r3, [r6, #0x10]
	mov	r3, #0x80
	lsl	r3, #9
	mov	r0, r6
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	bl	OvlFunc_969_200d688
	ldr	r1, =gScript_969__0200e2d0
	mov	r0, #0x17
	bl	__MapActor_SetBehavior
	b	.Lm969_58dc
.Lm969_57ee:
	ldr	r3, [r5]
	sub	r3, #1
	str	r3, [r5]
	ldr	r1, [r6, #0xc]
	cmp	r1, #0
	ble	.Lm969_5876
	mov	r1, #0
	ldr	r0, =0x203210
	bl	__Func_8091200
	mov	r0, #0x10
	bl	__Func_8091254
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, #1
	add	r0, #0x62
	strb	r5, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x62
	strb	r5, [r0]
	mov	r0, #2
	bl	__MapActor_GetActor
	add	r0, #0x62
	strb	r5, [r0]
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x62
	strb	r5, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x62
	strb	r5, [r0]
	mov	r0, #6
	bl	__MapActor_GetActor
	add	r0, #0x62
	strb	r5, [r0]
	b	.Lm969_58dc
.Lm969_584e:
	ldr	r3, [r5]
	sub	r3, #1
	str	r3, [r5]
	mov	r3, #0xa0
	ldr	r1, [r6, #0xc]
	lsl	r3, #14
	cmp	r1, r3
	ble	.Lm969_5876
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	b	.Lm969_58dc
.Lm969_5876:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.Lm969_588a
	mov	r0, #0xf6
	bl	__PlaySound
	ldr	r1, [r6, #0xc]
.Lm969_588a:
	mov	r2, #0x90
	lsl	r2, #10
	add	r3, r1, r2
	mov	r7, #1
	str	r3, [r6, #0xc]
	b	.Lm969_58dc
.Lm969_5896:
	mov	r7, #1
	b	.Lm969_58dc
.Lm969_589a:
	mov	r0, #0xbb
	bl	__PlaySound
	ldr	r0, =0x7fff
	mov	r1, #0
	bl	__Func_8091200
	mov	r0, #0xc
	bl	__Func_8091254
	b	.Lm969_58dc

	.pool_aligned

.Lm969_58d0:
	mov	r0, #0x17
	bl	__MapActor_SetIdle
	ldr	r0, =0x237
	bl	__SetFlag
.Lm969_58dc:
	cmp	r7, #0
	beq	.Lm969_599c
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #4
	ldr	r2, [r6, #0xc]
	lsr	r3, #16
	lsl	r3, #16
	sub	r2, r3
	ldr	r3, =0xfff80000
	mov	r0, #0x8e
	add	r2, r3
	ldr	r1, [r6, #8]
	ldr	r3, [r6, #0x10]
	lsl	r0, #1
	bl	__CreateActor
	mov	r7, r0
	cmp	r7, #0
	beq	.Lm969_599c
	ldr	r1, [r7, #0x50]
	mov	r10, r1
	ldr	r1, =gScript_969__0200e1cc
	bl	__Actor_SetScript
	mov	r1, #1
	mov	r0, r7
	bl	__Func_80929d8
	mov	r3, r7
	add	r3, #0x55
	mov	r5, #0
	strb	r5, [r3]
	bl	__Random
	ldr	r3, =0xffff000
	mov	r2, r7
	add	r2, #0x64
	and	r3, r0
	strh	r3, [r2]
	mov	r3, r7
	ldr	r1, .Lm969_5970	@ 0
	add	r3, #0x66
	strh	r5, [r3]
	mov	r8, r1
	bl	__Random
	mov	r3, r7
	lsr	r0, #13
	add	r3, #0x62
	strb	r0, [r3]
	ldr	r3, =OvlFunc_969_200b660
	str	r3, [r7, #0x6c]
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #16
	sub	r0, r3
	lsr	r0, #20
	bl	__sin
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	str	r3, [r7, #0x30]
	mov	r2, #0x32
	ldrsh	r3, [r6, r2]
	str	r3, [r7, #0x30]
	mov	r3, r10
	add	r3, #0x26
	mov	r1, r8
	b	.Lm969_5988

	.align	2, 0
.Lm969_5970:
	.word	0
	.pool

.Lm969_5988:
	strb	r1, [r3]
	mov	r3, r10
	ldrb	r2, [r3, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r1, r10
	strb	r3, [r1, #9]
.Lm969_599c:
	ldr	r2, =.Lm969_6764
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	mov	r0, #0
	bl	__MapActor_GetActor
	bl	OvlFunc_969_200d9f0
	mov	r0, #1
	bl	__MapActor_GetActor
	bl	OvlFunc_969_200d9f0
	mov	r0, #2
	bl	__MapActor_GetActor
	bl	OvlFunc_969_200d9f0
	mov	r0, #3
	bl	__MapActor_GetActor
	bl	OvlFunc_969_200d9f0
	mov	r0, #0x15
	bl	__MapActor_GetActor
	bl	OvlFunc_969_200d9f0
	mov	r0, #6
	bl	__MapActor_GetActor
	bl	OvlFunc_969_200d9f0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200d6a0


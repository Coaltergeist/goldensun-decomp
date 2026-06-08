	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200820c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4d
	cmp	r2, r3
	bne	.L224
	ldr	r0, =.L4940
	b	.L276
.L224:
	ldr	r3, =0x4f
	cmp	r2, r3
	bne	.L22e
	ldr	r0, =.L49a0
	b	.L276
.L22e:
	ldr	r3, =0x51
	cmp	r2, r3
	bne	.L238
	ldr	r0, =gScript_882__0200ca00
	b	.L276
.L238:
	ldr	r3, =0x52
	cmp	r2, r3
	bne	.L242
	ldr	r0, =.L4a60
	b	.L276
.L242:
	ldr	r3, =0x53
	cmp	r2, r3
	bne	.L24c
	ldr	r0, =.L4aa8
	b	.L276
.L24c:
	ldr	r3, =0x54
	cmp	r2, r3
	bne	.L256
	ldr	r0, =.L4b68
	b	.L276
.L256:
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.L260
	ldr	r0, =.L4b98
	b	.L276
.L260:
	ldr	r3, =0x56
	cmp	r2, r3
	bne	.L26a
	ldr	r0, =.L4c40
	b	.L276
.L26a:
	ldr	r3, =0x57
	cmp	r2, r3
	bne	.L274
	ldr	r0, =.L4cd0
	b	.L276
.L274:
	ldr	r0, =.L4928
.L276:
	pop	{r1}
	bx	r1
.func_end OvlFunc_932_200820c

.thumb_func_start OvlFunc_932_20082cc
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_808e118
	bl	__Func_80916b0
	mov	r1, #0x16
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x98
	bl	__Func_80f9080
	ldr	r1, =0x33333
	ldr	r2, =0x19999
	mov	r0, #0
	bl	__Func_8092064
	ldr	r1, [r5, #0xc]
	ldr	r2, [r6, #0xc]
	sub	r3, r1, r2
	cmp	r3, #0
	bge	.L312
	sub	r3, r2, r1
.L312:
	asr	r3, #14
	mov	r2, #0x80
	lsl	r3, #14
	lsl	r2, #11
	add	r3, r2
	str	r3, [r6, #0x28]
	mov	r0, #0
	mov	r1, #7
	bl	__Func_80924d4
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	mov	r0, r6
	bl	__Func_800d14c
	mov	r0, #0xa
	bl	__Func_80030f8
	ldr	r1, [r6, #0x50]
	ldrb	r3, [r1, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #0
	bl	__Func_80923c4
	b	.L350
.L34a:
	mov	r0, #1
	bl	__Func_80030f8
.L350:
	ldr	r2, [r5, #0xc]
	ldr	r3, [r6, #0xc]
	asr	r2, #14
	asr	r3, #14
	cmp	r2, r3
	blt	.L34a
	bl	__Func_8091750
	mov	r0, #0x9f
	bl	__Func_80f9080
	mov	r0, r7
	mov	r1, #0
	bl	OvlFunc_932_200b850
	mov	r0, #0x14
	bl	__Func_80030f8
	bl	__Func_809202c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20082cc

.thumb_func_start OvlFunc_932_2008388
	push	{lr}
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0x4d
	mov	r1, #0x63
	bl	__Func_8091f90
	mov	r0, #0x35
	mov	r1, #2
	bl	__Func_8091eb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2008388

.thumb_func_start OvlFunc_932_20083b4
	push	{lr}
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0x4f
	mov	r1, #0x63
	bl	__Func_8091f90
	mov	r0, #0x35
	mov	r1, #2
	bl	__Func_8091eb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20083b4

.thumb_func_start OvlFunc_932_20083e0
	push	{lr}
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0x51
	mov	r1, #0x63
	bl	__Func_8091f90
	mov	r0, #0x35
	mov	r1, #2
	bl	__Func_8091eb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20083e0

.thumb_func_start OvlFunc_932_200840c
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L474
	mov	r3, #1
	mov	r7, #0x18
	mov	r6, #0x1a
	mov	r0, #0x18
	mov	r1, #0x1b
	mov	r2, #2
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x19
	bne	.L44a
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_8010704
	b	.L45a
.L44a:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
.L45a:
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
.L474:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200840c

.thumb_func_start OvlFunc_932_200847c
	push	{r5, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #9
	mov	r2, #0xd
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #7
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r5, #0
	beq	.L4b8
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffe00000
	add	r3, r2
	mov	r2, r5
	str	r3, [r5, #0xc]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L4b8:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200847c

.thumb_func_start OvlFunc_932_20084cc
	push	{r5, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x11
	mov	r2, #0xd
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1d
	mov	r1, #1
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	cmp	r5, #0
	beq	.L4f8
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
.L4f8:
	ldr	r0, =0x201
	bl	__Func_8079358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20084cc

.thumb_func_start OvlFunc_932_200850c
	push	{r5, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x1a
	mov	r5, r0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r5, #0
	beq	.L546
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffe00000
	add	r3, r2
	mov	r2, r5
	str	r3, [r5, #0xc]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L546:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200850c

.thumb_func_start OvlFunc_932_200855c
	push	{r5, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x19
	mov	r2, #0xd
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r5, #0
	beq	.L598
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffe00000
	add	r3, r2
	mov	r2, r5
	str	r3, [r5, #0xc]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L598:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200855c

.thumb_func_start OvlFunc_932_20085ac
	push	{r5, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x2b
	mov	r2, #0x29
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x29
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r5, #0
	beq	.L5e8
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffe00000
	add	r3, r2
	mov	r2, r5
	str	r3, [r5, #0xc]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L5e8:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20085ac

.thumb_func_start OvlFunc_932_20085fc
	push	{r5, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x11
	mov	r2, #0xa
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #1
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r5, #0
	beq	.L638
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffe00000
	add	r3, r2
	mov	r2, r5
	str	r3, [r5, #0xc]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L638:
	ldr	r0, =0x201
	bl	__Func_8079358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20085fc

.thumb_func_start OvlFunc_932_2008650
	push	{r5, lr}
	mov	r0, #0xc
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x1a
	mov	r2, #0xf
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #1
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r5, #0
	beq	.L68c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffe00000
	add	r3, r2
	mov	r2, r5
	str	r3, [r5, #0xc]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L68c:
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_8079358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2008650

.thumb_func_start OvlFunc_932_20086a0
	push	{r5, r6, lr}
	mov	r6, #0x80
	lsl	r6, #19
	ldrh	r2, [r6]
	ldr	r3, =0xfdff
	and	r3, r2
	lsl	r3, #16
	asr	r5, r3, #16
	bl	__Random
	mov	r3, #0x64
	mul	r3, r0
	ldr	r2, =.L5238
	ldrh	r2, [r2]
	lsr	r3, #16
	cmp	r3, r2
	bcc	.L6c8
	mov	r3, #0x80
	lsl	r3, #2
	orr	r5, r3
.L6c8:
	lsl	r3, r5, #16
	lsr	r3, #16
	strh	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20086a0

.thumb_func_start OvlFunc_932_20086dc
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e70
	mov	r0, #0xe6
	ldr	r5, [r3]
	sub	sp, #8
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0xb2
	lsl	r2, #1
	ldr	r7, =0x1999
	add	r6, r5, r2
	mov	r5, #0
.L70a:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #4
	bl	__Func_80030f8
	cmp	r5, #8
	bne	.L742
	mov	r0, #8
	bl	__MapActor_GetActor
	str	r7, [r0, #0x18]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0x98
	mov	r2, #0xd8
	str	r7, [r0, #0x1c]
	lsl	r1, #16
	mov	r0, #8
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r0, #8
	ldr	r1, =gScript_932__0200bd48
	bl	__Func_809207c
.L742:
	add	r5, #1
	cmp	r5, #0x17
	ble	.L70a
	ldr	r2, =OvlFunc_932_20086a0
	mov	r0, #1
	mov	r1, #0
	bl	__SetIntrHandler
	ldr	r2, =.L5238
	ldr	r3, .L78c	@ 0
	strh	r3, [r2]
	mov	r5, r2
.L75a:
	mov	r0, #1
	bl	__Func_80030f8
	ldrh	r3, [r5]
	mov	r2, #0xc8
	add	r3, #1
	strh	r3, [r5]
	lsl	r2, #15
	lsl	r3, #16
	cmp	r3, r2
	bls	.L75a
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__SetIntrHandler
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #1
	b	.L7ac

	.align	2, 0
.L78c:
	.word	0
	.pool

.L7ac:
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r3, #3
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	mov	r0, #0
	bl	__Func_8010704
	ldr	r0, =0x8fd
	bl	__Func_8079358
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20086dc

.thumb_func_start OvlFunc_932_20087e8
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e70
	sub	sp, #8
	ldr	r5, [r3]
	mov	r2, #0x1c
	mov	r3, #0x4d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r1, #0x29
	mov	r2, #0x10
	mov	r0, #0x5d
	bl	__Func_80105d4
	mov	r0, #0xe6
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0xb2
	lsl	r2, #1
	add	r5, r2
	mov	r6, #0x17
.L828:
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r5, #0xc]
	mov	r0, #4
	sub	r6, #1
	bl	__Func_80030f8
	cmp	r6, #0
	bge	.L828
	ldr	r2, =OvlFunc_932_20086a0
	mov	r0, #1
	mov	r1, #0
	bl	__SetIntrHandler
	ldr	r2, =.L5238
	ldr	r3, .L880	@ 0
	strh	r3, [r2]
	mov	r5, r2
.L84e:
	mov	r0, #1
	bl	__Func_80030f8
	ldrh	r3, [r5]
	mov	r2, #0xc8
	add	r3, #1
	strh	r3, [r5]
	lsl	r2, #15
	lsl	r3, #16
	cmp	r3, r2
	bls	.L84e
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__SetIntrHandler
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #1
	b	.L898

	.align	2, 0
.L880:
	.word	0
	.pool

.L898:
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r3, #0x4d
	mov	r2, #0x1c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x29
	mov	r2, #0x10
	mov	r3, #4
	mov	r0, #0x4d
	bl	__Func_80105d4
	ldr	r0, =0x8fe
	bl	__Func_8079358
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20087e8

.thumb_func_start OvlFunc_932_20088d4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	sub	sp, #8
	mov	r5, #1
	mov	r8, r3
	mov	r0, #0x71
	mov	r1, #0x1f
	mov	r2, #0x67
	mov	r3, #0x11
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r3, #3
	str	r3, [sp]
	mov	r6, #2
	mov	r0, #0x6f
	mov	r1, #0x20
	mov	r2, #0x68
	mov	r3, #0x12
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r3, #0x12
	mov	r1, #0x20
	mov	r2, #0x67
	mov	r0, #0x40
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0xe6
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r5, #0xb2
	lsl	r5, #1
	add	r5, r8
	mov	r6, #0x17
.L93c:
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r5, #0xc]
	mov	r0, #4
	sub	r6, #1
	bl	__Func_80030f8
	cmp	r6, #0
	bge	.L93c
	ldr	r2, =OvlFunc_932_20086a0
	mov	r0, #1
	mov	r1, #0
	bl	__SetIntrHandler
	ldr	r2, =.L5238
	ldr	r3, .L994	@ 0
	strh	r3, [r2]
	mov	r5, r2
.L962:
	mov	r0, #1
	bl	__Func_80030f8
	ldrh	r3, [r5]
	mov	r2, #0xc8
	add	r3, #1
	strh	r3, [r5]
	lsl	r2, #15
	lsl	r3, #16
	cmp	r3, r2
	bls	.L962
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__SetIntrHandler
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #1
	b	.L9ac

	.align	2, 0
.L994:
	.word	0
	.pool

.L9ac:
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xe
	mov	r2, #0x67
	mov	r3, #0x11
	mov	r0, #0x67
	bl	__Func_8010424
	ldr	r0, =0x907
	bl	__Func_8079358
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20088d4

.thumb_func_start OvlFunc_932_20089ec
	push	{lr}
	ldr	r0, =0x323
	sub	sp, #8
	bl	__Func_8079338
	cmp	r0, #0
	beq	.La2a
	mov	r3, #0x18
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x18
	mov	r3, #0xb
	bl	__Func_8010424
	ldr	r0, =0x323
	bl	__Func_8079374
	b	.La58
.La2a:
	mov	r3, #0x18
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x18
	mov	r3, #0xb
	bl	__Func_8010424
	ldr	r0, =0x323
	bl	__Func_8079358
.La58:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20089ec

.thumb_func_start OvlFunc_932_2008a64
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_801776c
	mov	r0, #0x7d
	bl	__Func_80f9080
	bl	OvlFunc_932_20089ec
	mov	r0, #0x14
	bl	__Func_80030f8
	bl	__Func_809202c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2008a64

.thumb_func_start OvlFunc_932_2008a94
	push	{lr}
	ldr	r0, =0x325
	sub	sp, #8
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lad2
	mov	r3, #0xb
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0x48
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x20
	mov	r2, #0xb
	mov	r3, #4
	bl	__Func_8010424
	ldr	r0, =0x325
	bl	__Func_8079374
	b	.Lb00
.Lad2:
	mov	r3, #0xb
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x48
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x20
	mov	r2, #0xb
	mov	r3, #4
	bl	__Func_8010424
	ldr	r0, =0x325
	bl	__Func_8079358
.Lb00:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2008a94

.thumb_func_start OvlFunc_932_2008b0c
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_801776c
	mov	r0, #0x7d
	bl	__Func_80f9080
	bl	OvlFunc_932_2008a94
	mov	r0, #0x14
	bl	__Func_80030f8
	bl	__Func_809202c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2008b0c

.thumb_func_start OvlFunc_932_2008b3c
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	ldr	r0, =0x1528
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #0x7d
	bl	__Func_80f9080
	ldr	r0, =0x326
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb8c
	mov	r3, #0x10
	mov	r2, #0x5c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x10
	mov	r3, #0x1c
	bl	__Func_8010424
	ldr	r0, =0x326
	bl	__Func_8079374
	b	.Lbba
.Lb8c:
	mov	r3, #0x10
	mov	r2, #0x5c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x1d
	mov	r2, #0x10
	mov	r3, #0x1c
	bl	__Func_8010424
	ldr	r0, =0x326
	bl	__Func_8079358
.Lbba:
	mov	r0, #0x14
	bl	__Func_80030f8
	bl	__Func_809202c
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2008b3c

.thumb_func_start OvlFunc_932_2008bd8
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	ldr	r0, =0x1528
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #0x7d
	bl	__Func_80f9080
	ldr	r0, =0x327
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lc28
	mov	r3, #0x1d
	mov	r2, #0x51
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1c
	mov	r1, #0x52
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1c
	mov	r2, #0x1d
	mov	r3, #0x11
	bl	__Func_8010424
	ldr	r0, =0x327
	bl	__Func_8079374
	b	.Lc56
.Lc28:
	mov	r3, #0x1d
	mov	r2, #0x51
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x52
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x1c
	mov	r2, #0x1d
	mov	r3, #0x11
	bl	__Func_8010424
	ldr	r0, =0x327
	bl	__Func_8079358
.Lc56:
	mov	r0, #0x14
	bl	__Func_80030f8
	bl	__Func_809202c
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2008bd8


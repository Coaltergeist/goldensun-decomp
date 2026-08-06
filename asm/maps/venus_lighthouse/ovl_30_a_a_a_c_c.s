	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200832c
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r4, r0
	ldr	r2, [r3]
	ldr	r3, [r4]
	mov	r1, r2
	mov	r5, #8
	asr	r6, r3, #20
	add	r1, #0x34
.Lm968_33e:
	ldmia	r1!, {r0}
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r6, r3
	bne	.Lm968_360
	ldr	r2, [r4, #4]
	ldr	r3, [r0, #0xc]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.Lm968_360
	ldr	r2, [r4, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	beq	.Lm968_368
.Lm968_360:
	add	r5, #1
	cmp	r5, #0x41
	bls	.Lm968_33e
	mov	r0, #0
.Lm968_368:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_200832c

.thumb_func_start OvlFunc_968_2008374
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	ldrh	r3, [r0, #6]
	mov	r8, r0
	lsr	r3, #12
	ldr	r0, =.Lm968_50e8
	lsl	r5, r3, #2
	ldr	r2, =0xffff0000
	ldr	r1, [r0, r5]
	mov	r10, r2
	mov	r3, r10
	mov	r2, r1
	mov	r9, r0
	mov	r0, r8
	and	r2, r3
	ldr	r3, [r0, #8]
	mov	r7, sp
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r0, #0x10]
	lsl	r1, #16
	add	r3, r1
	str	r3, [r7, #8]
	mov	r0, r7
	mov	r1, r8
	bl	OvlFunc_968_200832c
	mov	r6, r0
	cmp	r6, #0
	bne	.Lm968_3c4
	b	.Lm968_4d6
.Lm968_3c4:
	mov	r2, r9
	ldr	r1, [r2, r5]
	mov	r3, r10
	mov	r2, r1
	and	r2, r3
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	lsl	r1, #16
	add	r3, r1
	str	r3, [r7, #8]
	mov	r0, r7
	mov	r1, r6
	bl	OvlFunc_968_200832c
	cmp	r0, #0
	beq	.Lm968_3fa
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lm968_4d6
.Lm968_3fa:
	ldr	r3, [r6, #8]
	str	r3, [r7]
	mov	r0, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r0, #13
	add	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, r7
	str	r3, [r7, #8]
	mov	r1, r6
	bl	OvlFunc_968_200832c
	cmp	r0, #0
	beq	.Lm968_426
	mov	r3, r0
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lm968_4d6
.Lm968_426:
	mov	r2, r6
	add	r2, #0x22
	mov	r3, #2
	strb	r3, [r2]
	mov	r2, r9
	ldr	r1, [r2, r5]
	mov	r3, r10
	mov	r2, r1
	and	r2, r3
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r7]
	ldr	r3, [r6, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	lsl	r1, #16
	add	r3, r1
	str	r3, [r7, #8]
	mov	r0, r6
	mov	r1, r7
	bl	__TestCollision
	cmp	r0, #0
	bgt	.Lm968_4d6
	mov	r3, r6
	add	r3, #0x62
	ldrb	r3, [r3]
	mov	r10, r3
	cmp	r3, #0
	bne	.Lm968_4d6
	mov	r1, #8
	mov	r0, r8
	bl	__Actor_SetAnim
	ldr	r5, =0x3333
	mov	r0, #0xf
	bl	__WaitFrames
	mov	r0, #0xb9
	bl	__PlaySound
	str	r5, [r6, #0x30]
	str	r5, [r6, #0x34]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	mov	r0, r6
	bl	__Actor_TravelTo
	mov	r0, r8
	str	r5, [r0, #0x30]
	str	r5, [r0, #0x34]
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	bl	__Actor_TravelTo
	mov	r0, r6
	bl	__Actor_WaitMovement
	bl	__MapActor_PlayPendingSound
	ldr	r3, [r7]
	str	r3, [r6, #8]
	ldr	r3, [r7, #8]
	mov	r1, r10
	str	r3, [r6, #0x10]
	str	r1, [r6, #0x24]
	str	r1, [r6, #0x2c]
	mov	r3, #0x80
	mov	r2, r8
	lsl	r3, #24
	str	r3, [r2, #0x38]
	str	r3, [r2, #0x40]
	mov	r0, #0xa
	ldrsh	r3, [r2, r0]
	lsl	r3, #16
	str	r1, [r2, #0x24]
	str	r1, [r2, #0x2c]
	str	r3, [r2, #8]
	mov	r1, #0x12
	ldrsh	r3, [r2, r1]
	lsl	r3, #16
	str	r3, [r2, #0x10]
	mov	r0, r8
	mov	r1, #1
	bl	__Actor_SetAnim
.Lm968_4d6:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2008374

.thumb_func_start OvlFunc_968_20084f4
	push	{r5, r6, lr}
	mov	r4, r3
	ldr	r3, [sp, #0xc]
	mov	r12, r3
	ldr	r3, =iwram_3001e70
	mov	r6, r1
	mov	r1, r2
	ldr	r2, [r3]
	ldr	r5, [sp, #0x10]
	cmp	r2, #0
	beq	.Lm968_548
	cmp	r0, #2
	bhi	.Lm968_51e
	lsl	r3, r0, #1
	add	r3, r0
	mov	r0, #0x98
	lsl	r0, #1
	lsl	r3, #4
	add	r3, r0
	ldr	r0, [r2, r3]
	b	.Lm968_520
.Lm968_51e:
	ldr	r0, =gBuffer
.Lm968_520:
	lsl	r3, r1, #7
	add	r3, r6, r3
	lsl	r3, #2
	mov	r1, #0
	add	r0, r3
	cmp	r1, r12
	bcs	.Lm968_548
.Lm968_52e:
	lsl	r3, r1, #9
	mov	r2, #0
	add	r3, r0, r3
	cmp	r2, r4
	bcs	.Lm968_542
.Lm968_538:
	add	r2, #1
	strb	r5, [r3, #2]
	add	r3, #4
	cmp	r2, r4
	bcc	.Lm968_538
.Lm968_542:
	add	r1, #1
	cmp	r1, r12
	bcc	.Lm968_52e
.Lm968_548:
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_20084f4

.thumb_func_start OvlFunc_968_2008558
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	ldr	r7, =0x212
	mov	r5, r3
	mov	r6, #8
	add	r5, #0x34
.Lm968_566:
	ldmia	r5!, {r0}
	mov	r3, r0
	add	r3, #0x64
	ldrh	r2, [r3]
	lsl	r3, r2, #16
	asr	r3, #20
	cmp	r3, r7
	bne	.Lm968_57e
	mov	r1, #0xf
	and	r1, r2
	bl	__Func_80929d8
.Lm968_57e:
	add	r6, #1
	cmp	r6, #0x41
	bls	.Lm968_566
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2008558

.thumb_func_start OvlFunc_968_2008594
	push	{lr}
	mov	r3, r0
	add	r3, #0x64
	ldrh	r3, [r3]
	mov	r1, #0xf
	and	r1, r3
	bl	__Func_80929d8
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_2008594

.thumb_func_start OvlFunc_968_20085ac
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Lm968_5c2
	mov	r1, #7
	bl	__Func_80929d8
	b	.Lm968_5c8
.Lm968_5c2:
	mov	r1, #0
	bl	__Func_80929d8
.Lm968_5c8:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.Lm968_5da
	mov	r0, #0x8a
	bl	__PlaySound
.Lm968_5da:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_20085ac

.thumb_func_start OvlFunc_968_20085e4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r3, #7
	and	r7, r3
	sub	sp, #0x38
	mov	r10, r0
	cmp	r7, #0
	bne	.Lm968_678
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	mov	r2, #0x10
	mov	r3, #3
	add	r2, sp
	sub	r3, r0
	str	r3, [r2]
	ldr	r3, =0x6666
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r3, #0xe
	str	r3, [r2, #4]
	mov	r8, r2
	bl	__Random
	lsl	r3, r0, #3
	add	r3, r0
	mov	r2, r10
	lsr	r3, #16
	ldr	r6, [r2, #8]
	sub	r3, #4
	lsl	r3, #16
	add	r6, r3
	bl	__Random
	lsl	r0, #5
	mov	r2, r10
	lsr	r0, #16
	mov	r3, #0x20
	ldr	r5, [r2, #0xc]
	sub	r3, r0
	lsl	r3, #16
	add	r5, r3
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsr	r0, #16
	mov	r3, #0xa0
	lsl	r3, #11
	lsl	r0, #16
	add	r0, r3
	mov	r1, #0xa
	bl	_divsi3_RAM
	mov	r3, r10
	ldr	r2, [r3, #0x10]
	mov	r3, #0xb0
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r3, r8
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r6
	mov	r1, r5
	mov	r3, #0
	str	r7, [sp, #4]
	bl	OvlFunc_968_2008118
.Lm968_678:
	mov	r0, #0
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_20085e4


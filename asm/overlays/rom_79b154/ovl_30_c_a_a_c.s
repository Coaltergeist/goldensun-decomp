	.include "macros.inc"

.thumb_func_start OvlFunc_907_200811c
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.L134
	ldr	r0, =.L1498
	b	.L14a
.L134:
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.L13e
	ldr	r0, =.L1600
	b	.L14a
.L13e:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.L148
	ldr	r0, =.L16f0
	b	.L14a
.L148:
	ldr	r0, =.L1480
.L14a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_907_200811c

.thumb_func_start OvlFunc_907_2008170
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x947
	mov	r1, #1
	bl	__Func_801776c
	ldr	r0, =0x29dd
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008170

.thumb_func_start OvlFunc_907_2008198
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.L1b0
	ldr	r0, =.L1744
	b	.L1c6
.L1b0:
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.L1ba
	ldr	r0, =.L1a2c
	b	.L1c6
.L1ba:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.L1c4
	ldr	r0, =.L1bc4
	b	.L1c6
.L1c4:
	ldr	r0, =.L1738
.L1c6:
	pop	{r1}
	bx	r1
.func_end OvlFunc_907_2008198

.thumb_func_start OvlFunc_907_20081ec
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1472
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_20081ec

.thumb_func_start OvlFunc_907_2008208
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x146e
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008208

.thumb_func_start OvlFunc_907_2008224
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1470
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008224

.thumb_func_start OvlFunc_907_2008240
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x13ae
	bl	__Func_8092b94
	ldr	r0, =0x301
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L266
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L266:
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092f84
	ldr	r0, =0x301
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008240

.thumb_func_start OvlFunc_907_2008288
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x13b3
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008288

.thumb_func_start OvlFunc_907_20082a8
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x13b7
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_20082a8

.thumb_func_start OvlFunc_907_20082c8
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x16bf
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_20082c8

.thumb_func_start OvlFunc_907_20082e8
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x16c8
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_20082e8

.thumb_func_start OvlFunc_907_2008308
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x16cc
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008308

.thumb_func_start OvlFunc_907_2008328
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r7, [r3]
	bl	__Func_80916b0
	mov	r5, #8
	mov	r6, #0
.L336:
	mov	r0, r5
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L346
	mov	r3, r0
	add	r3, #0x55
	strb	r6, [r3]
.L346:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L336
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	ldrh	r3, [r3]
	sub	r3, #3
	lsl	r3, #16
	asr	r5, r3, #16
	cmp	r5, #6
	bne	.L366
	mov	r0, #0xbc
	bl	__Func_80f9080
	b	.L36c
.L366:
	mov	r0, #0x9e
	bl	__Func_80f9080
.L36c:
	ldr	r2, =.L1d0c
	lsl	r0, r5, #2
	ldrsh	r1, [r2, r0]
	add	r3, r0, #2
	ldrsh	r2, [r2, r3]
	ldr	r3, =.L1cf0
	ldr	r0, [r3, r0]
	bl	__Func_8010560
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092064
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	cmp	r5, #6
	bne	.L3c0
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80924d4
	mov	r2, #4
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_809228c
	b	.L3cc
.L3c0:
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #3
	neg	r2, r2
	bl	__Func_8092208
.L3cc:
	cmp	r5, #4
	bne	.L3da
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092b08
	b	.L3e2
.L3da:
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092b08
.L3e2:
	mov	r0, #0x10
	bl	__Func_809163c
	add	r0, r5, #3
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008328

.thumb_func_start OvlFunc_907_2008404
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__Func_8092054
	mov	r7, r0
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #6
	beq	.L420
	b	.L554
.L420:
	bl	__Func_80916b0
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_8092b08
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_8092064
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0xb
	bl	__Func_8092064
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r6, =0xffff0000
	mov	r3, r5
	add	r3, #0x55
	mov	r2, #0
	mov	r1, #0x81
	strb	r2, [r3]
	mov	r0, #0
	lsl	r1, #1
	str	r6, [r7, #0x18]
	bl	__Func_8093874
	mov	r5, #0x80
	mov	r0, #0
	mov	r1, #0x10
	bl	__Func_80924d4
	lsl	r5, #9
	mov	r0, #0xb
	mov	r1, #0x6f
	mov	r2, #0xc4
	bl	__Func_8092158
	mov	r2, #0xb9
	mov	r1, #0x80
	mov	r0, #0
	str	r5, [r7, #0x18]
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	str	r6, [r7, #0x18]
	bl	__Func_8093874
	mov	r0, #0
	mov	r1, #0x10
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #0x79
	mov	r2, #0xbe
	bl	__Func_8092158
	mov	r2, #0xbd
	mov	r1, #0x8d
	mov	r0, #0
	str	r5, [r7, #0x18]
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	str	r6, [r7, #0x18]
	bl	__Func_8093874
	mov	r0, #0
	mov	r1, #0x10
	bl	__Func_80924d4
	mov	r1, #0x84
	mov	r2, #0xba
	mov	r0, #0xb
	bl	__Func_8092158
	str	r5, [r7, #0x18]
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r1, =0x9999
	mov	r0, #0
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #0xa6
	mov	r2, #0xb9
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_8092b08
	mov	r1, #0xb
	mov	r0, #0
	bl	__Func_8097540
	mov	r0, #0xa
	bl	__Func_80030f8
	ldr	r0, =0x1774
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092f84
	bl	__Func_8097608
	mov	r0, #0xa
	bl	__Func_80030f8
	ldr	r0, =0x848
	bl	__Func_8079358
	bl	__Func_8091750
.L554:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008404


	.include "macros.inc"

.thumb_func_start OvlFunc_911_20081dc
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x24
	cmp	r2, r3
	bne	.L204
	ldr	r0, =0x845
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L200
	ldr	r0, =.L3098
	bl	OvlFunc_911_20080a0
.L200:
	ldr	r0, =.L3098
	b	.L210
.L204:
	ldr	r3, =0x27
	cmp	r2, r3
	bne	.L20e
	ldr	r0, =.L3368
	b	.L210
.L20e:
	ldr	r0, =.L3080
.L210:
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_20081dc

.thumb_func_start OvlFunc_911_2008230
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L250
	mov	r0, #0x10
	bl	__Func_80b29a8
	b	.L25e
.L250:
	ldr	r0, =0x16b3
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093054
.L25e:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_2008230

.thumb_func_start OvlFunc_911_2008274
	push	{lr}
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #1
	bl	__Func_80955b0
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_2008274

.thumb_func_start OvlFunc_911_2008284
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x27
	cmp	r2, r3
	bne	.L29c
	ldr	r0, =.L3590
	b	.L29e
.L29c:
	ldr	r0, =.L33b0
.L29e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_2008284

.thumb_func_start OvlFunc_911_20082b4
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0
	add	r0, #0x55
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80924d4
	mov	r2, #8
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_809228c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, r5
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_20082b4

.thumb_func_start OvlFunc_911_2008304
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r7, [r3]
	bl	__Func_80916b0
	mov	r0, #0x9e
	bl	__Func_80f9080
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #5
	mov	r6, #0
	mov	r5, #0
	cmp	r3, #4
	bhi	.L39a
	ldr	r2, =.L330
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L330:
	.word	.L344
	.word	.L34a
	.word	.L350
	.word	.L356
	.word	.L35c
.L344:
	mov	r6, #0x47
	mov	r5, #9
	b	.L39a
.L34a:
	mov	r6, #0x49
	mov	r5, #0x11
	b	.L39a
.L350:
	mov	r6, #0x50
	mov	r5, #0x15
	b	.L39a
.L356:
	mov	r6, #0x54
	mov	r5, #0xc
	b	.L39a
.L35c:
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0
	add	r0, #0x55
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r1, #8
	mov	r0, #0
	lsl	r2, #7
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #0
	mov	r2, #8
	bl	__Func_809228c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	mov	r0, #9
	bl	__Func_8091e9c
	bl	__Func_8091750
	b	.L3b6
.L39a:
	ldr	r0, =.L2e48
	mov	r1, r6
	mov	r2, r5
	bl	__Func_8010560
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	OvlFunc_911_20082b4
	bl	__Func_8091750
.L3b6:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_2008304

.thumb_func_start OvlFunc_911_20083c8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xa8
	mov	r2, #0xf6
	mov	r3, #1
	mov	r1, #0
	lsl	r2, #16
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0x1786
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xa8
	mov	r2, #0xea
	mov	r3, #1
	lsl	r0, #16
	mov	r1, #0
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	mov	r2, #0x8b
	mov	r0, #0
	mov	r1, #0xae
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x90
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r1, #10
	mov	r0, #8
	lsl	r2, #9
	bl	__Func_8092064
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0xe0
	mov	r2, #0xc5
	mov	r0, #8
	bl	__Func_8092158
	mov	r0, #0xb0
	bl	__Func_80f9080
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xea
	mov	r2, #0xc8
	mov	r0, #8
	bl	__Func_8092158
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xc6
	bl	__Func_80f9080
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r5, #5
	mov	r6, #4
	mov	r1, #0
	mov	r2, #0x48
	mov	r3, #9
	mov	r0, #0x5b
	str	r6, [sp, #4]
	str	r5, [sp]
	bl	__Func_8010424
	mov	r0, #0xc
	bl	__Func_809163c
	mov	r3, #9
	mov	r1, #4
	mov	r2, #0x48
	mov	r0, #0x5b
	str	r6, [sp, #4]
	str	r5, [sp]
	bl	__Func_8010424
	mov	r0, #9
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #8
	mov	r2, #0x48
	mov	r3, #9
	mov	r0, #0x5b
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r0, #6
	bl	__Func_809163c
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r1, #0xd
	mov	r2, #0x48
	mov	r3, #9
	mov	r0, #0x5b
	str	r5, [sp]
	bl	__Func_8010424
	mov	r0, #3
	bl	__Func_809163c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0x80
	lsl	r0, #9
	mov	r7, #0x94
	mov	r6, #0
	mov	r8, r0
	lsl	r7, #16
.L564:
	mov	r3, #0x81
	mov	r0, #0xde
	mov	r1, r7
	mov	r2, #0
	lsl	r3, #17
	bl	__Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L5d4
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	bl	__Func_800c528
	ldr	r1, [r5, #0x50]
	mov	r0, #0xd
	ldrb	r3, [r1, #9]
	neg	r0, r0
	mov	r2, r0
	and	r3, r2
	strb	r3, [r1, #9]
	bl	__Func_8004458
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	mov	r2, r5
	add	r3, #0x28
	add	r2, #0x64
	strh	r3, [r2]
	mov	r3, #3
	and	r3, r6
	lsl	r3, #16
	add	r3, r8
	asr	r2, r3, #1
	mov	r3, r8
	str	r3, [r5, #0x2c]
	mov	r3, #1
	and	r3, r6
	str	r2, [r5, #0x24]
	cmp	r3, #0
	beq	.L5c4
	neg	r3, r2
	str	r3, [r5, #0x24]
.L5c4:
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c300
	mov	r0, r5
	ldr	r1, =.L2e20
	bl	__Func_800c2d8
.L5d4:
	mov	r0, #0x80
	lsl	r0, #11
	add	r6, #1
	add	r7, r0
	cmp	r6, #9
	bls	.L564
	mov	r3, #5
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5b
	mov	r1, #0x13
	mov	r2, #0x48
	mov	r3, #9
	bl	__Func_8010424
	mov	r3, #8
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #7
	mov	r0, #0x17
	mov	r1, #0xb
	mov	r2, #5
	bl	__Func_8010704
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	mov	r0, #0
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092560
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r1, #0x80
	ldr	r2, =.L2e34
	lsl	r1, #9
	mov	r0, #8
	bl	__Func_8092a1c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0
	bl	__Func_80937b8
	ldr	r0, =0x847
	bl	__Func_8079358
	bl	__Func_8091750
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_20083c8

.thumb_func_start OvlFunc_911_2008694
	push	{r5, lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x27
	sub	sp, #8
	cmp	r2, r3
	bne	.L6b0
	bl	OvlFunc_911_200a910
	b	.L7d4
.L6b0:
	ldr	r3, =0x26
	cmp	r2, r3
	bne	.L6c6
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	b	.L7d4
.L6c6:
	mov	r0, #0x17
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x19
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x1a
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	ldr	r5, =.L2dd8
	mov	r0, #0x17
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x18
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x19
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x1a
	mov	r1, r5
	bl	__Func_809207c
	ldr	r0, =0x845
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L770
	mov	r5, #8
.L724:
	mov	r0, r5
	bl	__Func_8092054
	add	r5, #1
	mov	r1, #0
	bl	__Func_800c528
	cmp	r5, #0x10
	bls	.L724
	mov	r3, #0xd
	str	r3, [sp]
	mov	r5, #8
	mov	r0, #0xd
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xf
	str	r3, [sp]
	mov	r0, #0xd
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xe
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xd
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L770:
	ldr	r0, =0x843
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L78e
	ldr	r3, =ewram_2000240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	bne	.L78e
	bl	OvlFunc_911_20088ec
.L78e:
	ldr	r0, =0x843
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L7d4
	mov	r0, #1
	bl	__Func_8092924
	mov	r0, #2
	bl	__Func_8092924
	mov	r0, #3
	bl	__Func_8092924
	mov	r0, #0x11
	bl	__Func_8092924
	mov	r0, #0x12
	bl	__Func_8092924
	mov	r0, #0x13
	bl	__Func_8092924
	mov	r0, #0x14
	bl	__Func_8092924
	mov	r0, #0x15
	bl	__Func_8092924
	mov	r0, #0x16
	bl	__Func_8092924
	ldr	r0, =.L32d8
	bl	__Func_80917ac
.L7d4:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_2008694

.thumb_func_start OvlFunc_911_2008800
	push	{lr}
	mov	r0, #0x13
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L82a
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L824
	str	r2, [r0, #0xc]
	b	.L82a
.L824:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L82a:
	mov	r0, #0x14
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L852
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L84c
	str	r1, [r0, #0xc]
	b	.L852
.L84c:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L852:
	mov	r0, #0x15
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L87a
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L874
	str	r2, [r0, #0xc]
	b	.L87a
.L874:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L87a:
	mov	r0, #0x16
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L8a2
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L89c
	str	r1, [r0, #0xc]
	b	.L8a2
.L89c:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L8a2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_2008800

.thumb_func_start OvlFunc_911_20088ac
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	mov	r0, #0x8d
	mov	r1, #1
	bl	__Func_8096fb0
	mov	r0, r5
	mov	r1, r6
	bl	__Func_80970f8
	bl	__Func_809728c
	mov	r0, #1
	bl	__Func_80967e4
	mov	r0, #1
	bl	__Func_80030f8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_20088ac

.thumb_func_start OvlFunc_911_20088d8
	push	{lr}
	mov	r0, #2
	bl	__Func_80967e4
	bl	__Func_8097174
	bl	__Func_8097194
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_20088d8

.thumb_func_start OvlFunc_911_20088ec
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	bl	__Func_80916b0
	mov	r0, #3
	ldr	r5, =.L369c
	bl	__Func_8079338
	str	r0, [r5]
	mov	r0, #0x13
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x14
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x15
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x16
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xd0
	mov	r1, #1
	mov	r2, #0x80
	mov	r3, #0
	lsl	r0, #15
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r1, #0xb8
	mov	r2, #0xf7
	lsl	r1, #13
	lsl	r2, #16
	mov	r0, #0
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #0x79
	mov	r2, #0xee
	bl	__Func_80921c4
	mov	r0, #1
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L9a0
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L9a0:
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L9b4
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_80923e4
.L9b4:
	ldr	r1, =.L2bd4
	mov	r0, #1
	bl	__Func_809207c
	ldr	r1, =.L2c08
	mov	r0, #2
	bl	__Func_809207c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L9f0
	mov	r0, #3
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L9e8
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_80923e4
.L9e8:
	ldr	r1, =.L2c3c
	mov	r0, #3
	bl	__Func_809207c
.L9f0:
	mov	r0, #2
	bl	__Func_80920e8
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r5, =.L369c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.La2e
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
.La2e:
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_8092adc
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.La64
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.La64:
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.La94
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
.La94:
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_809259c
	ldr	r0, =0x1473
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r2, #0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0x8f
	mov	r0, #2
	mov	r1, #0x48
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0x97
	mov	r0, #2
	mov	r1, #0x48
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0x9b
	lsl	r2, #1
	mov	r0, #2
	mov	r1, #0x58
	bl	__Func_80921c4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lb28
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
.Lb28:
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lb44
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
.Lb44:
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #9
	mov	r0, #2
	bl	OvlFunc_911_20088ac
	mov	r0, #0x28
	bl	__Func_809163c
	bl	OvlFunc_911_20088d8
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #2
	bl	__Func_8092064
	mov	r0, #2
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r7, #0xfe
	mov	r3, r7
	and	r3, r2
	mov	r2, #0x9b
	strb	r3, [r0]
	mov	r1, #0x50
	lsl	r2, #1
	mov	r0, #2
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #2
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	mov	r1, #0x81
	strb	r3, [r0]
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lc08
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
.Lc08:
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x3c
	bl	__Func_8092848
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lc24
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.Lc24:
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	lsl	r2, #7
	mov	r0, #2
	bl	__Func_8092064
	mov	r0, #2
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r7
	and	r3, r2
	mov	r2, #0x8f
	strb	r3, [r0]
	mov	r1, #0x48
	lsl	r2, #1
	mov	r0, #2
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #2
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r6
	strb	r3, [r0]
	ldr	r1, =.L2c08
	mov	r0, #2
	bl	__Func_809207c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lce4
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	b	.Lcf4

	.pool_aligned

.Lce4:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lcf4:
	mov	r2, #0
	mov	r0, #2
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_8093874
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #1
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Ld68
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	b	.Ld80
.Ld68:
	mov	r0, #1
	mov	r1, #4
	bl	__Func_8092548
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Ld80:
	mov	r5, #0x80
	lsl	r5, #6
	mov	r0, #1
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
	mov	r1, r5
	mov	r0, #2
	mov	r2, #0x28
	bl	OvlFunc_911_200a5c0
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r2, #0x80
	lsl	r2, #7
	mov	r8, r2
	mov	r0, #2
	mov	r1, r8
	mov	r2, #0x28
	bl	OvlFunc_911_200a5c0
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80937b8
	mov	r6, #0xc0
	mov	r0, #0x3c
	bl	__Func_809163c
	lsl	r6, #7
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x3c
	bl	OvlFunc_911_200a5c0
	mov	r1, r5
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r1, r5
	mov	r5, #0xa0
	lsl	r5, #8
	mov	r0, #1
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, r6
	bl	OvlFunc_911_200a5c0
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	ldr	r0, =0x147b
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r10, r3
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, r10
	bl	OvlFunc_911_200a5c0
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0x28
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x1e
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r1, #0xe0
	mov	r2, #0x1e
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_911_200a5c0
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r2, #0xa
	mov	r1, r10
	mov	r0, #2
	bl	OvlFunc_911_200a5c0
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r0, #0xce
	bl	__Func_80f9080
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r2, =.L36a0
	mov	r3, #1
	mov	r1, #0xc8
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_911_200a608
	bl	__Func_80041d8
	mov	r0, #0x14
	bl	__Func_80030f8
	ldr	r0, =0x405210
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__Func_80030f8
	ldr	r5, =.L2c70
	mov	r0, #0
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #1
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #2
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_809207c
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
	ldr	r3, =.L369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lfb0
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
	b	.Lfc0

	.pool_aligned

.Lfb0:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lfc0:
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r7, =.L369c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1018
	mov	r0, #3
	bl	__Func_8092054
	mov	r5, #0x80
	lsl	r5, #10
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, r5
	mov	r2, r5
	bl	__Func_8092064
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	neg	r1, r1
	bl	__Func_809228c
	ldr	r1, =.L2cfc
	mov	r0, #3
	bl	__Func_809207c
	mov	r0, #3
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #3
	mov	r1, #0x13
	bl	__Func_80924d4
	mov	r0, #0xa
	bl	__Func_809163c
.L1018:
	mov	r0, #0
	bl	__Func_8092054
	mov	r5, #0x80
	lsl	r5, #10
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, r5
	mov	r1, r5
	mov	r0, #0
	bl	__Func_8092064
	ldr	r6, =.L2cfc
	mov	r0, #0
	mov	r1, r6
	bl	__Func_809207c
	mov	r0, #0
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0x13
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	bl	__Func_8092054
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, r5
	mov	r1, r5
	mov	r0, #1
	bl	__Func_8092064
	mov	r1, r6
	mov	r0, #1
	bl	__Func_809207c
	mov	r0, #1
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0x13
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #2
	bl	__Func_8092054
	str	r5, [r0, #0x28]
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, r6
	mov	r0, #2
	bl	__Func_809207c
	mov	r0, #2
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0x13
	mov	r0, #2
	bl	__Func_80924d4
	ldr	r3, =.L36a0
	mov	r5, #0
	str	r5, [r3]
	mov	r0, #0xa0
	bl	__Func_809163c
	ldr	r0, =OvlFunc_911_200a608
	bl	__Func_8004278
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__Func_80030f8
	ldr	r3, =.L3690
	ldr	r2, =.L368c
	str	r5, [r3]
	mov	r3, #0x80
	ldr	r5, =.L3694
	lsl	r3, #16
	str	r3, [r2]
	mov	r1, #0xc8
	mov	r3, #1
	str	r3, [r5]
	lsl	r1, #4
	ldr	r0, =OvlFunc_911_200a7ac
	bl	__Func_80041d8
	mov	r0, #0xb4
	bl	__Func_809163c
	mov	r0, #0x15
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #0x50
	bl	OvlFunc_911_200a5a8
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r3, #2
	str	r3, [r5]
	mov	r1, #2
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_8093874
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1214
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_8093874
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	b	.L1224

	.pool_aligned

.L1214:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1224:
	ldr	r7, =.L3694
	mov	r3, #3
	str	r3, [r7]
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x23
	mov	r6, #0xfe
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #3
	mov	r1, #3
	bl	__Func_8092b08
	ldr	r3, =.L3698
	mov	r5, #0
	mov	r1, #0xc8
	str	r5, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_911_2008800
	bl	__Func_80041d8
	mov	r0, #0xdc
	bl	__Func_80f9080
	mov	r0, #0x13
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_8092b08
	mov	r1, #0xf0
	mov	r2, #0xf8
	lsl	r2, #16
	mov	r0, #0x13
	lsl	r1, #15
	bl	__Func_80923e4
	ldr	r5, =.L2d20
	mov	r0, #0x13
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_8092b08
	mov	r1, #0xc8
	mov	r2, #0x89
	mov	r0, #0x14
	lsl	r1, #15
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r0, #0x14
	mov	r1, r5
	bl	__Func_809207c
	ldr	r3, =.L369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1336
	mov	r0, #0x15
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_8092b08
	mov	r1, #0x94
	mov	r2, #0xfe
	mov	r0, #0x15
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r0, #0x15
	mov	r1, r5
	bl	__Func_809207c
.L1336:
	mov	r0, #0x16
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r6
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_8092b08
	mov	r1, #0xbc
	mov	r2, #0xe1
	mov	r0, #0x16
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r0, #0x16
	mov	r1, r5
	bl	__Func_809207c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1378
	mov	r5, r7
.L136c:
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L136c
.L1378:
	mov	r0, #0x96
	lsl	r0, #1
	bl	__Func_809163c
	ldr	r0, =OvlFunc_911_200a7ac
	bl	__Func_8004278
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__Func_80030f8
	mov	r0, #0x13
	bl	__Func_80920a0
	mov	r0, #0x14
	bl	__Func_80920a0
	ldr	r7, =.L369c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L13c2
	mov	r0, #0x15
	bl	__Func_80920a0
.L13c2:
	mov	r0, #0x16
	bl	__Func_80920a0
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r5, =.L2d7c
	mov	r0, #0x13
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x14
	mov	r1, r5
	bl	__Func_809207c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L13ee
	mov	r0, #0x15
	mov	r1, r5
	bl	__Func_809207c
.L13ee:
	mov	r1, r5
	mov	r0, #0x16
	bl	__Func_80920fc
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r1, #0xae
	mov	r2, #0x8b
	mov	r0, #0x11
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xae
	mov	r2, #0x8b
	lsl	r1, #15
	mov	r0, #0x12
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L1450
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1450:
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1490
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x1488
	bl	__Func_8092b94
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
.L1490:
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	ldr	r0, =0x1489
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_8092b08
	mov	r0, #1
	bl	__Func_8092054
	mov	r2, #1
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r8, r2
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r2, #0
	mov	r0, #1
	mov	r1, #6
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r5, #0x80
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	lsl	r5, #6
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r6, #0xc0
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	lsl	r6, #7
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x28
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092560
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092560
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092560
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L166e
	b	.L15e8

	.pool_aligned

.L15e8:
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_8092b08
	mov	r0, #3
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, r8
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r0, #3
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	neg	r1, r1
	bl	__Func_809228c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0xe0
	mov	r2, #0x3c
	lsl	r1, #8
	mov	r0, #3
	bl	OvlFunc_911_200a5c0
	mov	r1, #2
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	b	.L167e
.L166e:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L167e:
	mov	r6, #0x80
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	lsl	r6, #7
	bl	__Func_8092560
	mov	r7, #0x80
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, r6
	bl	OvlFunc_911_200a5c0
	lsl	r7, #6
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, r7
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #2
	bl	__Func_8092b08
	mov	r0, #2
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r2, #0
	mov	r0, #2
	mov	r1, #4
	bl	__Func_8092560
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r0, #0
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r5, #0xc0
	mov	r2, #0
	mov	r0, #0
	mov	r1, #4
	bl	__Func_8092560
	lsl	r5, #7
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0x3c
	bl	OvlFunc_911_200a5c0
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_80937b8
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1856
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L1878
.L1856:
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
.L1878:
	mov	r1, #0x80
	mov	r2, #0xa
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #0xc0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_911_200a5c0
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	ldr	r3, =.L369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L18f4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #3
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	b	.L1904

	.pool_aligned

.L18f4:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1904:
	mov	r1, #0x80
	mov	r6, #0xa0
	lsl	r6, #8
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, r6
	bl	OvlFunc_911_200a5c0
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r5, #0x80
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	lsl	r5, #7
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, r5
	bl	OvlFunc_911_200a5c0
	mov	r1, #4
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r1, #0xe0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_911_200a5c0
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0x28
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r0, #0
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r1, #0xc0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #2
	bl	OvlFunc_911_200a5c0
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0xa
	lsl	r1, #6
	mov	r0, #1
	bl	OvlFunc_911_200a5c0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1a68
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	b	.L1a8c

	.pool_aligned

.L1a68:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1a8c:
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0x15
	bl	__Func_80f9080
	mov	r1, #1
	ldr	r0, =0x406218
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__Func_80030f8
	ldr	r2, =.L3690
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =.L368c
	mov	r3, #0x80
	lsl	r3, #16
	ldr	r6, =.L3694
	str	r3, [r2]
	mov	r1, #0xc8
	mov	r3, #1
	str	r3, [r6]
	lsl	r1, #4
	ldr	r0, =OvlFunc_911_200a7ac
	bl	__Func_80041d8
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r5, #0xc0
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	lsl	r5, #8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r1, r5
	mov	r0, #2
	bl	OvlFunc_911_200a5c0
	ldr	r0, =0x149d
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	ldr	r7, =.L369c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1b3a
	mov	r0, #3
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
.L1b3a:
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092b08
	mov	r3, #2
	str	r3, [r6]
	mov	r0, #0xdc
	bl	__Func_80f9080
	mov	r1, #0xf0
	mov	r2, #0xf8
	lsl	r2, #16
	mov	r0, #0x13
	lsl	r1, #15
	bl	__Func_80923e4
	ldr	r5, =.L2d20
	mov	r0, #0x13
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, #0xc8
	mov	r2, #0x89
	mov	r0, #0x14
	lsl	r1, #15
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r0, #0x14
	mov	r1, r5
	bl	__Func_809207c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1bee
	mov	r1, #0x94
	mov	r2, #0xfe
	mov	r0, #0x15
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r0, #0x15
	mov	r1, r5
	bl	__Func_809207c
.L1bee:
	mov	r1, #0xbc
	mov	r2, #0xe1
	lsl	r2, #16
	mov	r0, #0x16
	lsl	r1, #15
	bl	__Func_80923e4
	mov	r1, r5
	mov	r0, #0x16
	bl	__Func_809207c
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r3, #3
	str	r3, [r6]
	mov	r5, r6
.L1c10:
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L1c10
	mov	r0, #0x11
	mov	r1, #0x50
	bl	OvlFunc_911_200a5a8
	mov	r0, #0x12
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x11
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	mov	r6, #0xc0
	lsl	r6, #8
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #2
	mov	r1, r6
	bl	OvlFunc_911_200a5c0
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_8093874
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x50
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_911_200a5c0
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_911_200a5c0
	mov	r0, #0x11
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_911_200a5c0
	mov	r0, #0
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #4
	bl	__Func_80924d4
	mov	r1, #4
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x12
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_911_200a5c0
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	b	.L1e94

	.pool_aligned

.L1e94:
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #3
	mov	r1, r6
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_911_200a5c0
	mov	r0, #0x11
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_911_200a5c0
	mov	r0, #0x12
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8092f84
	ldr	r0, =OvlFunc_911_200a7ac
	bl	__Func_8004278
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__Func_80030f8
	mov	r0, #0x13
	bl	__Func_80920a0
	mov	r0, #0x14
	bl	__Func_80920a0
	mov	r0, #0x15
	ldr	r7, =.L369c
	bl	__Func_80920a0
	mov	r0, #0x16
	bl	__Func_80920a0
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r5, =.L2d7c
	mov	r0, #0x13
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x14
	mov	r1, r5
	bl	__Func_809207c
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L2014
	mov	r0, #0x15
	mov	r1, r5
	bl	__Func_809207c
.L2014:
	mov	r1, r5
	mov	r0, #0x16
	bl	__Func_80920fc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092b08
	mov	r0, #1
	mov	r1, #2
	bl	__Func_8092b08
	mov	r0, #2
	mov	r1, #2
	bl	__Func_8092b08
	mov	r1, #2
	mov	r0, #3
	bl	__Func_8092b08
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #3
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r5, #0xe0
	mov	r0, #2
	mov	r1, #2
	lsl	r5, #8
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, r5
	bl	OvlFunc_911_200a5c0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L21bc
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2152
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #2
	mov	r1, r6
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, r5
	bl	OvlFunc_911_200a5c0
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #1
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	b	.L21aa
.L2152:
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_911_200a5c0
	ldr	r0, =0x14b4
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
.L21aa:
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	b	.L236e
.L21bc:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x14b6
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_911_200a5c0
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #4
	bl	__Func_8092548
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L222a
	b	.L239c
.L222a:
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =0x103
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, r5
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L2274
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #3
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	b	.L2284
.L2274:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L2284:
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
	ldr	r3, =.L369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L22ec
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #3
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #3
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	b	.L22fc
.L22ec:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L22fc:
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r3, =.L369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L232a
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x28
	bl	OvlFunc_911_200a5c0
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #2
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
.L232a:
	mov	r0, #2
	mov	r1, #0xa
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
.L236e:
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	b	.L24a0

	.pool_aligned

.L239c:
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	ldr	r0, =0x14bf
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L23e4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0xa
	bl	OvlFunc_911_200a5c0
	mov	r0, #3
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	b	.L23f4
.L23e4:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L23f4:
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
	ldr	r3, =.L369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L245c
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #3
	mov	r2, #0x14
	bl	OvlFunc_911_200a5c0
	mov	r0, #3
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #0x28
	bl	OvlFunc_911_200a5a8
	b	.L246c
.L245c:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L246c:
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_911_200a5a8
.L24a0:
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #3
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L24e4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.L24e4:
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2514
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_8092128
.L2514:
	mov	r0, #2
	bl	__Func_80923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	ldr	r3, =.L369c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2570
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2560
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_8092128
.L2560:
	mov	r0, #3
	bl	__Func_80923c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L2570:
	ldr	r0, =0x843
	bl	__Func_8079358
	bl	__Func_808acc4
	bl	__Func_8091750
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_20088ec

.thumb_func_start OvlFunc_911_200a5a8
	push	{r5, lr}
	mov	r5, r1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, r5
	bl	__Func_809163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_200a5a8

.thumb_func_start OvlFunc_911_200a5c0
	push	{r5, lr}
	mov	r5, r2
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, r5
	bl	__Func_809163c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_200a5c0

.thumb_func_start OvlFunc_911_200a5d8
	push	{lr}
	ldr	r3, [r0, #0x18]
	ldr	r2, =0x1eb8
	add	r3, r2
	str	r3, [r0, #0x18]
	mov	r2, #0x80
	ldr	r3, [r0, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L25fc
	ldr	r2, [r0, #0x3c]
	cmp	r2, r3
	bne	.L25fc
	ldr	r3, [r0, #0x40]
	cmp	r3, r2
	bne	.L25fc
	bl	__Func_800c0f4
.L25fc:
	mov	r0, #1
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_200a5d8

.thumb_func_start OvlFunc_911_200a608
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e40
	ldr	r6, [r3]
	mov	r3, #7
	and	r6, r3
	cmp	r6, #0
	bne	.L268a
	ldr	r3, =.L36a0
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2624
	mov	r0, #0xc8
	bl	__Func_80f9080
.L2624:
	mov	r1, #0xc4
	mov	r3, #0xd2
	mov	r0, #0x1a
	lsl	r1, #15
	mov	r2, #0
	lsl	r3, #15
	bl	__Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L268a
	ldr	r1, [r5, #0x50]
	add	r0, #0x23
	mov	r3, r1
	ldrb	r2, [r0]
	add	r3, #0x26
	strb	r6, [r3]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r2, [r1, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	ldr	r3, =0x1999
	str	r3, [r5, #0x18]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	mov	r0, r5
	mov	r1, #2
	bl	__Func_800c300
	mov	r1, #0xc4
	mov	r0, r5
	lsl	r1, #15
	mov	r2, #0
	ldr	r3, =0x10d0000
	bl	__Func_800d14c
	ldr	r1, =.L35d8
	mov	r0, r5
	bl	__Func_800c2d8
.L268a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_200a608


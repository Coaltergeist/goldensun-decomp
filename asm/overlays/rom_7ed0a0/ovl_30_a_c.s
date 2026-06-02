	.include "macros.inc"

.thumb_func_start OvlFunc_964_20092e0
	push	{r5, lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xac
	cmp	r2, r3
	bne	.L12f8
	ldr	r5, =.L38f4
	b	.L12fa
.L12f8:
	ldr	r5, =.L3a74
.L12fa:
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_964_20092e0

.thumb_func_start OvlFunc_964_2009318
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r3, #9
	mov	r2, #0x26
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x49
	mov	r1, #0x26
	mov	r2, #5
	mov	r3, #5
	bl	__Func_8010704
	bl	OvlFunc_964_20080c4
	bl	OvlFunc_964_200a3a0
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009318

.thumb_func_start OvlFunc_964_2009348
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_8092054
	ldr	r1, =0xffe00000
	ldr	r3, [r0, #8]
	mov	r2, sp
	add	r3, r1
	str	r3, [r2]
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #4]
	ldr	r3, [r0, #0x10]
	mov	r0, r2
	str	r3, [r2, #8]
	bl	OvlFunc_964_2008cd0
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009348

.thumb_func_start OvlFunc_964_2009374
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r3, #0x1d
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5d
	mov	r1, #0x1e
	mov	r2, #6
	mov	r3, #5
	bl	__Func_8010704
	bl	OvlFunc_964_20080c4
	bl	OvlFunc_964_200a410
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009374

.thumb_func_start OvlFunc_964_20093a4
	push	{lr}
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092708
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20093a4

.thumb_func_start OvlFunc_964_20093b4
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_8092054
	mov	r1, #0x80
	ldr	r3, [r0, #8]
	lsl	r1, #14
	mov	r2, sp
	add	r3, r1
	str	r3, [r2]
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #4]
	ldr	r3, [r0, #0x10]
	mov	r0, r2
	str	r3, [r2, #8]
	bl	OvlFunc_964_2008cd0
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20093b4

.thumb_func_start OvlFunc_964_20093e0
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r3, #0x31
	str	r3, [sp, #4]
	mov	r5, #0x19
	mov	r0, #0x59
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x33
	str	r3, [sp, #4]
	mov	r0, #0x59
	mov	r1, #0x33
	mov	r2, #8
	mov	r3, #5
	str	r5, [sp]
	bl	__Func_8010704
	bl	OvlFunc_964_20080c4
	bl	OvlFunc_964_200a480
	bl	__Func_8091750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20093e0

.thumb_func_start OvlFunc_964_2009424
	push	{lr}
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	mov	r2, sp
	str	r3, [r2]
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #4]
	mov	r1, #0x80
	ldr	r3, [r0, #0x10]
	lsl	r1, #14
	add	r3, r1
	str	r3, [r2, #8]
	mov	r0, r2
	bl	OvlFunc_964_2008cd0
	cmp	r0, #0
	beq	.L1450
	bl	OvlFunc_964_20093e0
.L1450:
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009424

.thumb_func_start OvlFunc_964_2009458
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x201
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1488
	mov	r0, #0xe
	bl	__Func_8092054
	mov	r3, #0
	add	r0, #0x62
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_8092054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0xf7
	and	r3, r2
	b	.L14a2
.L1488:
	mov	r0, #0xe
	bl	__Func_8092054
	mov	r3, #1
	add	r0, #0x62
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_8092054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
.L14a2:
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009458

.thumb_func_start OvlFunc_964_20094ac
	push	{lr}
	ldr	r0, =0x201
	bl	__Func_8079358
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L14dc
	mov	r0, #0xe
	bl	__Func_8092054
	mov	r3, #0
	add	r0, #0x62
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_8092054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0xf7
	and	r3, r2
	b	.L14f6
.L14dc:
	mov	r0, #0xe
	bl	__Func_8092054
	mov	r3, #1
	add	r0, #0x62
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_8092054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
.L14f6:
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20094ac

.thumb_func_start OvlFunc_964_2009500
	push	{lr}
	mov	r0, #0x97
	lsl	r0, #4
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009500

.thumb_func_start OvlFunc_964_2009510
	push	{lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x20
	bne	.L1528
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x32
	beq	.L152c
.L1528:
	bl	OvlFunc_964_2009348
.L152c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009510

.thumb_func_start OvlFunc_964_2009530
	push	{lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1e
	bne	.L1548
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0x34
	beq	.L154c
.L1548:
	bl	OvlFunc_964_2008df4
.L154c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009530

.thumb_func_start OvlFunc_964_2009550
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	bl	__Func_80916b0
	mov	r0, #0x12
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x2e
	beq	.L156c
	b	.L16d2
.L156c:
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xba
	mov	r2, #0xb8
	lsl	r2, #16
	mov	r1, #0
	mov	r3, #0xfd
	lsl	r0, #18
	bl	OvlFunc_964_20089f4
	ldr	r3, =0x9999
	add	r6, sp, #0x10
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #7
	str	r3, [r6, #4]
	mov	r8, r0
	mov	r0, #0x12
	bl	__Func_8092054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xb9
	bl	__Func_80f9080
	mov	r7, #0
.L15a4:
	mov	r0, #3
	bl	__Func_80030f8
	mov	r0, #0x12
	bl	__Func_8092054
	ldr	r2, =0xffff0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	bl	__Func_8004458
	mov	r5, r0
	lsl	r5, #4
	lsr	r5, #16
	mov	r3, #0xb8
	lsl	r3, #18
	lsl	r5, #16
	add	r5, r3
	bl	__Func_8004458
	lsl	r2, r0, #3
	add	r2, r0
	lsl	r2, #1
	lsr	r2, #16
	mov	r3, #0x80
	lsl	r3, #16
	lsl	r2, #16
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r1, #0
	mov	r3, #0
	add	r7, #1
	str	r6, [sp, #0xc]
	bl	OvlFunc_964_2008ae8
	cmp	r7, #0xf
	bls	.L15a4
	mov	r3, #0x31
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	mov	r5, #8
	mov	r0, #0x33
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x12
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_80924d4
	mov	r0, r8
	bl	__Func_800c0f4
	mov	r3, #0x2e
	str	r3, [sp]
	mov	r0, #0x2d
	mov	r3, #1
	mov	r1, #4
	mov	r2, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, #0xba
	mov	r2, #0x88
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #0x14
	bl	__Func_80923e4
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r5, #1
	mov	r3, #8
	mov	r6, #3
	mov	r0, #0x3a
	mov	r1, #8
	mov	r2, #0x31
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r1, #0xa0
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r3, #8
	mov	r0, #0x3b
	mov	r1, #8
	mov	r2, #0x31
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r1, #0xa0
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x971
	bl	__Func_8079358
.L16d2:
	bl	__Func_8091750
	add	sp, #0x38
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009550

.thumb_func_start OvlFunc_964_20096f4
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_964_20080c4
	bl	__Func_8091750
	bl	OvlFunc_964_2009550
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20096f4

.thumb_func_start OvlFunc_964_200970c
	push	{lr}
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_200970c

.thumb_func_start OvlFunc_964_2009744
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x38
	bl	__Func_80916b0
	mov	r0, #0x13
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x30
	beq	.L1760
	b	.L18d0
.L1760:
	ldr	r0, =0x202
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L176c
	b	.L18d0
.L176c:
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0x89
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	ldr	r0, =0x3020000
	bl	OvlFunc_964_20089f4
	ldr	r3, =0x9999
	add	r6, sp, #0x10
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #7
	str	r3, [r6, #4]
	mov	r8, r0
	mov	r0, #0x13
	bl	__Func_8092054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xb9
	bl	__Func_80f9080
	mov	r7, #0
.L17a2:
	mov	r0, #3
	bl	__Func_80030f8
	mov	r0, #0x13
	bl	__Func_8092054
	ldr	r2, =0xffff0000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	bl	__Func_8004458
	mov	r5, r0
	lsl	r5, #4
	lsr	r5, #16
	mov	r3, #0xc0
	lsl	r3, #18
	lsl	r5, #16
	add	r5, r3
	bl	__Func_8004458
	lsl	r2, r0, #3
	add	r2, r0
	lsl	r2, #1
	lsr	r2, #16
	mov	r3, #0xe0
	lsl	r3, #16
	lsl	r2, #16
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r1, #0
	mov	r3, #0
	add	r7, #1
	str	r6, [sp, #0xc]
	bl	OvlFunc_964_2008ae8
	cmp	r7, #0xf
	bls	.L17a2
	mov	r3, #0x2d
	str	r3, [sp]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	mov	r5, #0xe
	mov	r0, #0x33
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x13
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_80924d4
	mov	r0, r8
	bl	__Func_800c0f4
	mov	r3, #0x30
	str	r3, [sp]
	mov	r0, #0x2d
	mov	r3, #1
	mov	r1, #4
	mov	r2, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, #0xc2
	mov	r2, #0xe8
	lsl	r1, #18
	lsl	r2, #16
	mov	r0, #0x15
	bl	__Func_80923e4
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r5, #1
	mov	r3, #0xe
	mov	r6, #3
	mov	r0, #0x3a
	mov	r1, #8
	mov	r2, #0x2d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r1, #0xa0
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r3, #0xe
	mov	r0, #0x3b
	mov	r1, #8
	mov	r2, #0x2d
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r1, #0xa0
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x972
	bl	__Func_8079358
.L18d0:
	bl	__Func_8091750
	add	sp, #0x38
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009744

.thumb_func_start OvlFunc_964_20098f8
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_964_20080c4
	bl	__Func_8091750
	bl	OvlFunc_964_2009744
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20098f8

.thumb_func_start OvlFunc_964_2009910
	push	{lr}
	ldr	r1, =.L33b8
	mov	r0, #0x13
	bl	__Func_809207c
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009910

.thumb_func_start OvlFunc_964_2009924
	push	{lr}
	ldr	r0, =0x202
	bl	__Func_8079358
	bl	OvlFunc_964_2009744
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009924

.thumb_func_start OvlFunc_964_2009938
	push	{lr}
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80924d4
	mov	r0, #0x15
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x201
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009938

.thumb_func_start OvlFunc_964_2009970
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	ldr	r0, =0x982
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1992
	ldr	r0, =0x983
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L199c
.L1992:
	ldr	r0, =0x268a
	mov	r1, #1
	bl	__Func_801776c
	b	.L19a4
.L199c:
	ldr	r0, =0x2689
	mov	r1, #1
	bl	__Func_801776c
.L19a4:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009970

.thumb_func_start OvlFunc_964_20099bc
	push	{lr}
	bl	__Func_80916b0
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20099bc

.thumb_func_start OvlFunc_964_20099cc
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_964_20080c4
	bl	__Func_8091750
	bl	OvlFunc_964_20099bc
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20099cc

.thumb_func_start OvlFunc_964_20099e4
	push	{lr}
	ldr	r1, =.L33b8
	mov	r0, #8
	bl	__Func_809207c
	ldr	r0, =0x203
	bl	__Func_8079358
	mov	r0, #9
	bl	__Func_8092054
	ldr	r3, =OvlFunc_964_2008fe8
	str	r3, [r0, #0x6c]
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20099e4

.thumb_func_start OvlFunc_964_2009a10
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r0, #9
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80924d4
	mov	r0, #9
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_8079358
	mov	r0, #9
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #9
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #9
	bl	__Func_8092054
	ldr	r5, =OvlFunc_964_2008ec8
	str	r5, [r0, #0x6c]
	mov	r0, #8
	bl	__Func_8092054
	str	r5, [r0, #0x6c]
	bl	__Func_8091750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009a10


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_2008310
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	str	r2, [sp]
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	str	r1, [sp, #4]
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_8092054
	mov	r7, r0
	bl	__Func_80916b0
	ldr	r3, [sp, #4]
	lsl	r3, #16
	mov	r11, r3
	ldr	r3, [r6, #8]
	ldr	r2, =0xfff00000
	add	r3, r11
	mov	r5, #0x80
	lsl	r5, #12
	and	r3, r2
	add	r1, r3, r5
	ldr	r3, [sp]
	lsl	r3, #16
	mov	r9, r3
	ldr	r3, [r6, #0x10]
	add	r3, r9
	mov	r10, r2
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r6, #0x30]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	mov	r8, r2
	str	r2, [r6, #0x34]
	mov	r0, r6
	ldr	r2, [r6, #0xc]
	bl	__Func_800d14c
	mov	r0, r6
	mov	r1, #0x1b
	bl	__Func_800c300
	ldr	r3, [r7, #8]
	mov	r2, r10
	add	r3, r11
	and	r3, r2
	add	r1, r3, r5
	ldr	r3, [r7, #0x10]
	add	r3, r9
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	str	r2, [r7, #0x30]
	mov	r2, r8
	add	r3, r5
	str	r2, [r7, #0x34]
	mov	r0, r7
	ldr	r2, [r7, #0xc]
	bl	__Func_800d14c
	ldr	r3, [sp, #4]
	cmp	r3, #0
	blt	.L3b4
	ldr	r2, [sp]
	cmp	r2, #0
	bge	.L3be
.L3b4:
	mov	r0, r7
	mov	r1, #4
	bl	__Func_800c300
	b	.L3c6
.L3be:
	mov	r0, r7
	mov	r1, #3
	bl	__Func_800c300
.L3c6:
	mov	r0, #0xe2
	bl	__Func_80f9080
	mov	r0, r6
	bl	__Func_800ca6c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_80f9080
	mov	r0, r7
	mov	r1, #2
	bl	__Func_800c300
	bl	__Func_8091750
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008310

.thumb_func_start OvlFunc_955_2008400
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #8
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r6, r3, #20
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	mov	r5, #0
	mov	r7, #0x20
	cmp	r3, #0xc
	ble	.L424
	mov	r7, #0x21
.L424:
	mov	r0, r7
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, r6
	bne	.L4ae
	cmp	r6, #0x33
	ble	.L448
	ldr	r3, =iwram_3001ae8
	ldr	r3, [r3]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.L456
	mov	r5, #0x40
	neg	r5, r5
	b	.L456
.L448:
	ldr	r3, =iwram_3001ae8
	ldr	r3, [r3]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L456
	mov	r5, #0x40
.L456:
	cmp	r5, #0
	beq	.L4ae
	mov	r1, r5
	mov	r0, r7
	mov	r2, #0
	bl	OvlFunc_955_2008310
	mov	r3, #0x30
	str	r3, [sp]
	mov	r1, #0xa
	mov	r2, #5
	mov	r3, #6
	mov	r5, #0xa
	mov	r0, #0x78
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x20
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	mov	r1, #0x1c
	asr	r6, r3, #20
	mov	r2, #1
	mov	r3, #3
	mov	r0, #0x34
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x21
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r6, r3, #20
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x34
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_8010704
.L4ae:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008400

.thumb_func_start OvlFunc_955_20084c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	ldr	r3, =ewram_2000240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r3, [r3]
	mov	r9, r3
	mov	r5, r0
	mov	r0, r9
	mov	r10, r2
	sub	sp, #4
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, r5
	bl	__Func_8092054
	ldrh	r3, [r6, #6]
	mov	r2, #0x80
	lsl	r2, #5
	add	r2, r3
	mov	r3, #0xe0
	mov	r5, r0
	lsl	r3, #8
	and	r2, r3
	ldr	r1, [r5, #8]
	lsr	r3, r7, #31
	add	r3, r7, r3
	mov	r8, r2
	asr	r3, #1
	asr	r2, r1, #20
	mov	r0, #0
	cmp	r2, r3
	beq	.L514
	mov	r0, #1
.L514:
	mov	r3, r10
	lsl	r3, #19
	lsl	r7, #19
	mov	r10, r3
	cmp	r0, #0
	beq	.L530
	sub	r3, r7, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r1, #0
	mov	r11, r3
	str	r1, [sp]
	b	.L542
.L530:
	ldr	r3, [r5, #0x10]
	mov	r1, r10
	mov	r2, #0
	sub	r3, r1, r3
	mov	r11, r2
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r3, [sp]
.L542:
	bl	__Func_80916b0
	mov	r0, r9
	mov	r1, #8
	bl	__Func_80924d4
	mov	r0, #6
	bl	__Func_809163c
	ldr	r3, =0x3333
	mov	r2, #0x80
	lsl	r2, #8
	str	r3, [r5, #0x34]
	mov	r3, r8
	str	r2, [r5, #0x30]
	ldr	r2, =.L40c0
	cmp	r3, #0
	bge	.L56a
	ldr	r1, =0x3fff
	add	r3, r1
.L56a:
	asr	r3, #14
	ldrb	r1, [r2, r3]
	mov	r0, r5
	bl	__Func_800c300
	mov	r3, r10
	mov	r2, #0
	mov	r1, r7
	mov	r0, r5
	bl	__Func_800d14c
	mov	r0, #6
	bl	__Func_809163c
	mov	r0, r9
	mov	r1, #2
	bl	__Func_80924d4
	ldr	r1, =0xccc
	mov	r0, #0x1b
	bl	__Func_80048f4
	mov	r2, #0xf0
	lsl	r2, #1
	add	r0, r2
	mov	r1, r5
	ldr	r0, [r0]
	bl	__Func_800c4bc
	mov	r1, #0x80
	mov	r0, r9
	ldr	r2, =0x3333
	lsl	r1, #8
	bl	__Func_8092064
	mov	r0, r6
	mov	r1, #2
	bl	__Func_800c300
	ldr	r1, [r6, #8]
	ldr	r2, [sp]
	ldr	r3, [r6, #0x10]
	add	r1, r11
	add	r3, r2
	mov	r0, r6
	mov	r2, #0
	bl	__Func_800d14c
	mov	r0, #0xef
	bl	__Func_80f9080
	mov	r0, r6
	bl	__Func_800ca6c
	mov	r1, #1
	mov	r0, r6
	bl	__Func_800c300
	mov	r0, r5
	bl	__Func_800ca6c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_80f9080
	mov	r0, #0xd5
	bl	__Func_80f9080
	mov	r1, #1
	mov	r0, r5
	bl	__Func_800c300
	mov	r0, #0xf
	bl	__Func_809163c
	bl	__Func_8091750
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20084c0

.thumb_func_start OvlFunc_955_200862c
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0xe
	str	r3, [sp]
	mov	r5, #0xb
	mov	r1, #0xb
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0x64
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xf
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	str	r2, [sp]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #4
	mov	r0, #0xd
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x10
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r2, r3, #20
	str	r2, [sp]
	mov	r1, #0x1c
	mov	r2, #1
	mov	r3, #4
	mov	r0, #0xd
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x11
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r2, r3, #20
	mov	r3, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xd
	mov	r1, #0x1c
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_200862c

.thumb_func_start OvlFunc_955_200869c
	push	{lr}
	mov	r0, #0xf
	mov	r1, #0x1d
	mov	r2, #0x1a
	bl	OvlFunc_955_20084c0
	bl	OvlFunc_955_200862c
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_200869c

.thumb_func_start OvlFunc_955_20086b0
	push	{lr}
	mov	r0, #0xf
	mov	r1, #0x21
	mov	r2, #0x1a
	bl	OvlFunc_955_20084c0
	bl	OvlFunc_955_200862c
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20086b0

.thumb_func_start OvlFunc_955_20086c4
	push	{lr}
	mov	r0, #0x10
	mov	r1, #0x2d
	mov	r2, #0x1a
	bl	OvlFunc_955_20084c0
	bl	OvlFunc_955_200862c
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20086c4

.thumb_func_start OvlFunc_955_20086d8
	push	{lr}
	mov	r0, #0x10
	mov	r1, #0x31
	mov	r2, #0x1a
	bl	OvlFunc_955_20084c0
	bl	OvlFunc_955_200862c
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20086d8

.thumb_func_start OvlFunc_955_20086ec
	push	{lr}
	mov	r0, #0x11
	mov	r1, #0x28
	mov	r2, #0x17
	bl	OvlFunc_955_20084c0
	bl	OvlFunc_955_200862c
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20086ec

.thumb_func_start OvlFunc_955_2008700
	push	{lr}
	mov	r0, #0x11
	mov	r1, #0x28
	mov	r2, #0x19
	bl	OvlFunc_955_20084c0
	bl	OvlFunc_955_200862c
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008700

.thumb_func_start OvlFunc_955_2008714
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #8
	bl	__Func_8092054
	mov	r7, #0x16
	mov	r6, r0
.L72a:
	mov	r0, r7
	bl	__Func_8092054
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r5, #8]
	ldr	r3, [r6, #8]
	sub	r2, r1, r3
	cmp	r2, #0
	blt	.L74c
	ldr	r3, =0x9ffff
	cmp	r2, r3
	ble	.L754
	b	.L786
.L74c:
	ldr	r2, =0x9ffff
	sub	r3, r1
	cmp	r3, r2
	bgt	.L786
.L754:
	ldr	r1, [r5, #0x10]
	ldr	r3, [r6, #0x10]
	sub	r2, r1, r3
	cmp	r2, #0
	blt	.L766
	ldr	r3, =0x9ffff
	cmp	r2, r3
	ble	.L76e
	b	.L786
.L766:
	ldr	r2, =0x9ffff
	sub	r3, r1
	cmp	r3, r2
	bgt	.L786
.L76e:
	mov	r0, #0x82
	lsl	r0, #1
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L77e
	ldr	r3, [r5, #0x10]
	b	.L784
.L77e:
	ldr	r3, [r6, #0x10]
	ldr	r2, [r5, #0x2c]
	add	r3, r2
.L784:
	str	r3, [r6, #0x10]
.L786:
	add	r7, #1
	cmp	r7, #0x19
	ble	.L72a
	ldr	r3, =.L4838
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L7cc
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L7cc
	ldr	r3, =.L4834
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L7b6
	mov	r3, #0x3a
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0x1c
	mov	r2, #7
	b	.L7c4
.L7b6:
	mov	r3, #0x3a
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0xa
	mov	r2, #1
.L7c4:
	mov	r3, #1
	bl	__Func_8010704
	b	.L7f2
.L7cc:
	mov	r3, #0xb
	mov	r5, #0x3a
	str	r3, [sp, #4]
	mov	r0, #0x39
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0xe
	mov	r2, #7
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
.L7f2:
	ldr	r5, =.L4838
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L8ba
	ldr	r3, =.L4834
	ldr	r2, [r3]
	mov	r1, #1
	eor	r2, r1
	str	r2, [r3]
	cmp	r2, #0
	beq	.L862
	mov	r0, #0x16
	bl	__Func_8092054
	mov	r1, #0xea
	mov	r3, #0xb8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_800d14c
	mov	r0, #0x17
	bl	__Func_8092054
	mov	r1, #0xf2
	mov	r3, #0xf8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_800d14c
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r1, #0xfa
	mov	r3, #0xb8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_800d14c
	mov	r0, #0x19
	bl	__Func_8092054
	mov	r1, #0x81
	mov	r3, #0xf8
	lsl	r1, #19
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_800d14c
	mov	r0, #0x1f
	mov	r1, #0xb
	bl	__Func_80924d4
	b	.L8ba
.L862:
	mov	r0, #0x16
	bl	__Func_8092054
	mov	r1, #0xea
	mov	r3, #0xd8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_800d14c
	mov	r0, #0x17
	bl	__Func_8092054
	mov	r1, #0xf2
	mov	r3, #0xd8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_800d14c
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r1, #0xfa
	mov	r3, #0xd8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_800d14c
	mov	r0, #0x19
	bl	__Func_8092054
	mov	r1, #0x81
	mov	r3, #0xd8
	lsl	r1, #19
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_800d14c
	mov	r0, #0x1f
	mov	r1, #0xa
	bl	__Func_80924d4
.L8ba:
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	cmp	r3, #0x77
	bls	.L8d2
	mov	r0, #0x82
	lsl	r0, #1
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L8d2
	str	r0, [r5]
.L8d2:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008714

.thumb_func_start OvlFunc_955_20088ec
	push	{lr}
	ldr	r3, =.L4838
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, =.L4834
	ldr	r0, =OvlFunc_955_2008714
	str	r2, [r3]
	bl	__Func_8004278
	mov	r1, #0xea
	mov	r2, #0xd8
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xf2
	mov	r2, #0xd8
	mov	r0, #0x17
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xfa
	mov	r2, #0xd8
	mov	r0, #0x18
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0x81
	mov	r2, #0xd8
	mov	r0, #0x19
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r0, #0x1f
	mov	r1, #0xa
	bl	__Func_80924d4
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20088ec

.thumb_func_start OvlFunc_955_2008950
	push	{lr}
	ldr	r1, =0xc85
	ldr	r0, =OvlFunc_955_2008714
	bl	__Func_80041d8
	mov	r0, #0x82
	lsl	r0, #1
	bl	__Func_8079374
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008950

.thumb_func_start OvlFunc_955_2008970
	push	{r5, lr}
	mov	r0, #0xa
	bl	__Func_80030f8
	ldr	r3, =.L4834
	ldr	r3, [r3]
	mov	r5, #0
	b	.L994
.L980:
	mov	r0, #1
	bl	__Func_80030f8
	mov	r3, #0x96
	add	r5, #1
	lsl	r3, #2
	cmp	r5, r3
	bge	.L9a0
	ldr	r3, =.L4834
	ldr	r3, [r3]
.L994:
	cmp	r3, #0
	bne	.L980
	ldr	r3, =.L4838
	ldr	r3, [r3]
	cmp	r3, #0x4b
	bne	.L980
.L9a0:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008970

.thumb_func_start OvlFunc_955_20089b0
	push	{r5, lr}
	mov	r0, #0x1f
	sub	sp, #8
	bl	__Func_809ad90
	mov	r0, #0xcd
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r3, =.L4834
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L9d0
	ldr	r2, =.L4838
	mov	r3, #0
	str	r3, [r2]
.L9d0:
	mov	r0, #0x1e
	bl	__Func_80030f8
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r0, =OvlFunc_955_2008714
	bl	__Func_8004278
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r5, #0x3a
	mov	r0, #0x3a
	mov	r1, #0x1c
	mov	r2, #7
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r0, #0x39
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20089b0

.thumb_func_start OvlFunc_955_2008a1c
	push	{r5, r6, lr}
	bl	OvlFunc_common1_16f8
	bl	__Func_80916b0
	mov	r1, #0x59
	mov	r0, #0x4d
	bl	OvlFunc_common1_1814
	mov	r6, r0
	bl	OvlFunc_common1_1708
	mov	r5, #9
.La36:
	mov	r0, #8
	sub	r5, #1
	bl	__Func_80920e8
	cmp	r5, #0
	bge	.La36
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0x80
	mov	r0, #8
	mov	r1, #0x58
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0x80
	lsl	r2, #1
	mov	r0, #0
	mov	r1, #0x78
	bl	__Func_80921c4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80924d4
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r2, #0x80
	mov	r0, #0
	mov	r1, #0x70
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0x80
	lsl	r2, #1
	mov	r0, #8
	mov	r1, #0x60
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0x10
	bl	__Func_80924d4
	mov	r1, #9
	mov	r0, #8
	bl	__Func_80924d4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	sub	r1, r6
	add	r1, #1
	mov	r0, #0x48
	bl	__Func_8091eb0
	ldr	r3, =ewram_2000240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r5, =0x90
	mov	r1, #4
	mov	r0, r5
	bl	__Func_8091f90
	mov	r0, r5
	mov	r1, #5
	bl	__Func_8091fa8
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_8079358
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008a1c


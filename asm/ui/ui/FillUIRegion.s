	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start FillUIRegion  @ 0x080170f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r3
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r11, r3
	lsl	r3, r1, #5
	add	r3, r0
	mov	r8, r2
	lsl	r3, #1
	mov	r2, r11
	add	r5, r3, r2
	mov	r3, r8
	cmp	r3, #1
	bhi	.L17122
	b	.L17230
.L17122:
	cmp	r7, #1
	bhi	.L17128
	b	.L17230
.L17128:
	cmp	r3, #0x1e
	bls	.L1712e
	b	.L17230
.L1712e:
	cmp	r7, #0x1e
	bls	.L17134
	b	.L17230
.L17134:
	mov	r3, r7
	mov	r2, r8
	bl	Func_801e260
	ldr	r3, =0xea4
	add	r3, r11
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L1714a
	ldr	r3, .L17170	@ 0xf01c
	b	.L1714c
.L1714a:
	ldr	r3, .L17174	@ 0xf010
.L1714c:
	strh	r3, [r5]
	add	r5, #2
	mov	r2, #2
	neg	r2, r2
	add	r2, r8
	mov	r0, r5
	ldr	r1, =0xf011f011
	mov	r10, r2
	bl	Func_80170c4
	ldr	r3, =0xea4
	add	r3, r11
	ldrb	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.L17188
	ldr	r3, .L17178	@ 0xf41c
	b	.L1718a

	.align	2, 0
.L17170:
	.word	0xf01c
.L17174:
	.word	0xf010
.L17178:
	.word	0xf41c
	.pool

.L17188:
	ldr	r3, =0xf012
.L1718a:
	strh	r3, [r5]
	add	r5, #2
	mov	r3, #0x20
	mov	r2, r8
	sub	r3, r2
	lsl	r3, #1
	mov	r6, #1
	sub	r7, #1
	add	r5, r3
	cmp	r6, r7
	bcs	.L171d8
	mov	r9, r3
.L171a2:
	ldr	r3, =0xf016
	mov	r2, r8
	strh	r3, [r5]
	add	r5, #2
	cmp	r2, #2
	beq	.L171ca
	mov	r0, r5
	ldr	r1, =0xf020f020
	mov	r2, r10
	bl	Func_80170c4
	b	.L171c8

	.pool_aligned

.L171c8:
	mov	r5, r0
.L171ca:
	ldr	r3, .L171e8	@ 0xf017
	add	r6, #1
	strh	r3, [r5]
	add	r5, #2
	add	r5, r9
	cmp	r6, r7
	bcc	.L171a2
.L171d8:
	ldr	r3, =0xea4
	add	r3, r11
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L171f4
	ldr	r3, .L171ec	@ 0xf81c
	b	.L171f6

	.align	2, 0
.L171e8:
	.word	0xf017
.L171ec:
	.word	0xf81c
	.pool

.L171f4:
	ldr	r3, .L17214	@ 0xf013
.L171f6:
	strh	r3, [r5]
	add	r5, #2
	mov	r0, r5
	ldr	r1, =0xf014f014
	mov	r2, r10
	bl	Func_80170c4
	ldr	r3, =0xea4
	add	r3, r11
	ldrb	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.L17224
	ldr	r3, .L17218	@ 0xfc1c
	b	.L17226

	.align	2, 0
.L17214:
	.word	0xf013
.L17218:
	.word	0xfc1c
	.pool

.L17224:
	ldr	r3, =0xf015
.L17226:
	strh	r3, [r5]
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r11
	strb	r3, [r2]
.L17230:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end FillUIRegion


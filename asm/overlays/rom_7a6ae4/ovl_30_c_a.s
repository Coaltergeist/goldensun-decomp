	.include "macros.inc"

.thumb_func_start OvlFunc_920_2008098
	ldr	r0, =.Lbcc
	bx	lr
.func_end OvlFunc_920_2008098

.thumb_func_start OvlFunc_920_20080a0
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x31
	cmp	r2, r3
	bne	.Lb8
	ldr	r0, =.Lc2c
	b	.Lce
.Lb8:
	ldr	r3, =0x30
	cmp	r2, r3
	bne	.Lc2
	ldr	r0, =.Lc5c
	b	.Lce
.Lc2:
	ldr	r3, =0x2f
	cmp	r2, r3
	bne	.Lcc
	ldr	r0, =.Lcbc
	b	.Lce
.Lcc:
	ldr	r0, =.Lc14
.Lce:
	pop	{r1}
	bx	r1
.func_end OvlFunc_920_20080a0

.thumb_func_start OvlFunc_920_20080f4
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x31
	cmp	r2, r3
	bne	.L10c
	ldr	r0, =.Lea8
	b	.L122
.L10c:
	ldr	r3, =0x30
	cmp	r2, r3
	bne	.L116
	ldr	r0, =.Lefc
	b	.L122
.L116:
	ldr	r3, =0x2f
	cmp	r2, r3
	bne	.L120
	ldr	r0, =.Lf80
	b	.L122
.L120:
	ldr	r0, =.Le9c
.L122:
	pop	{r1}
	bx	r1
.func_end OvlFunc_920_20080f4

.thumb_func_start OvlFunc_920_2008148
	push	{lr}
	sub	sp, #8
	mov	r3, #0x15
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #1
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008148

.thumb_func_start OvlFunc_920_2008168
	push	{lr}
	sub	sp, #8
	mov	r3, #0x15
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008168

.thumb_func_start OvlFunc_920_2008188
	push	{lr}
	sub	sp, #8
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6f
	mov	r1, #0x25
	mov	r2, #0x61
	mov	r3, #0x15
	bl	__Func_8010424
	mov	r3, #0x20
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x26
	mov	r2, #3
	mov	r3, #2
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008188

.thumb_func_start OvlFunc_920_20081bc
	push	{lr}
	sub	sp, #8
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5f
	mov	r1, #0x15
	mov	r2, #0x61
	mov	r3, #0x15
	bl	__Func_8010424
	mov	r3, #0x20
	mov	r2, #0x19
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x26
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_20081bc

.thumb_func_start OvlFunc_920_20081f0
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #0
	mov	r2, #0
	mov	r0, #9
	bl	__Func_80923e4
	ldr	r0, =0x882
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_20081f0

.thumb_func_start OvlFunc_920_2008214
	push	{lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_80923e4
	ldr	r0, =0x883
	bl	__Func_8079358
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_8092548
	mov	r0, #0xf
	bl	__Func_8092054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r0, #0xf
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_8092b08
	mov	r3, #0x12
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	bl	__Func_8091750
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008214

.thumb_func_start OvlFunc_920_2008280
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092950
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xd2
	bl	__Func_80f9080
	mov	r0, #0xf
	mov	r1, #6
	bl	__Func_8092548
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008280

.thumb_func_start OvlFunc_920_20082ac
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092950
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xd2
	bl	__Func_80f9080
	mov	r0, #0x10
	mov	r1, #6
	bl	__Func_8092548
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_20082ac

.thumb_func_start OvlFunc_920_20082d8
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8092950
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xd2
	bl	__Func_80f9080
	mov	r0, #0x11
	mov	r1, #6
	bl	__Func_8092548
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_20082d8

.thumb_func_start OvlFunc_920_2008304
	push	{r5, r6, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0xc
	bl	__Func_8092054
	ldr	r3, [r5, #8]
	asr	r3, #20
	mov	r6, r0
	cmp	r3, #0x23
	bne	.L330
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x17
	bne	.L330
	ldr	r0, =0x303
	bl	__Func_8079358
	b	.L336
.L330:
	ldr	r0, =0x303
	bl	__Func_8079374
.L336:
	ldr	r3, [r6, #8]
	asr	r3, #20
	cmp	r3, #0x23
	bne	.L350
	ldr	r3, [r6, #0x10]
	asr	r3, #20
	cmp	r3, #0x17
	bne	.L350
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_8079358
	b	.L358
.L350:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_8079374
.L358:
	ldr	r0, =0x303
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L36e
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3c2
.L36e:
	ldr	r0, =0x302
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L3ba
	bl	__Func_80916b0
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xd2
	bl	__Func_80f9080
	mov	r0, #0x11
	mov	r1, #6
	bl	__Func_8092548
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #0x24
	mov	r0, #0
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x18
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #2
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	bl	__Func_8091750
.L3ba:
	ldr	r0, =0x302
	bl	__Func_8079358
	b	.L414
.L3c2:
	ldr	r0, =0x302
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L40e
	bl	__Func_80916b0
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xdc
	bl	__Func_80f9080
	mov	r0, #0x11
	mov	r1, #2
	bl	__Func_8092548
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #0x24
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x18
	str	r3, [sp, #4]
	mov	r0, #1
	mov	r1, #2
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	bl	__Func_8091750
.L40e:
	ldr	r0, =0x302
	bl	__Func_8079374
.L414:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008304

.thumb_func_start OvlFunc_920_2008424
	push	{lr}
	sub	sp, #8
	mov	r3, #8
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x1f
	bl	__Func_8010704
	ldr	r0, =0x305
	bl	__Func_8079358
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_2008424


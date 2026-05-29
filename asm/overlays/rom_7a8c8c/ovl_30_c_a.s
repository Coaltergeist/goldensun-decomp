	.include "macros.inc"

.thumb_func_start OvlFunc_922_20080f0
	ldr	r0, =.L28f4
	bx	lr
.func_end OvlFunc_922_20080f0

.thumb_func_start OvlFunc_922_20080f8
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x34
	cmp	r2, r3
	bne	.L110
	ldr	r0, =.L29bc
	b	.L144
.L110:
	ldr	r3, =0x3e
	cmp	r2, r3
	bne	.L11a
	ldr	r0, =.L29ec
	b	.L144
.L11a:
	ldr	r3, =0x3f
	cmp	r2, r3
	bne	.L124
	ldr	r0, =.L2a4c
	b	.L144
.L124:
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.L12e
	ldr	r0, =.L2ac4
	b	.L144
.L12e:
	ldr	r3, =0x41
	cmp	r2, r3
	bne	.L138
	ldr	r0, =.L2b3c
	b	.L144
.L138:
	ldr	r3, =0x43
	cmp	r2, r3
	bne	.L142
	ldr	r0, =.L2b9c
	b	.L144
.L142:
	ldr	r0, =.L29a4
.L144:
	pop	{r1}
	bx	r1
.func_end OvlFunc_922_20080f8

.thumb_func_start OvlFunc_922_2008180
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
	blt	.L224
	ldr	r2, [sp]
	cmp	r2, #0
	bge	.L22e
.L224:
	mov	r0, r7
	mov	r1, #4
	bl	__Func_800c300
	b	.L236
.L22e:
	mov	r0, r7
	mov	r1, #3
	bl	__Func_800c300
.L236:
	mov	r0, r6
	bl	__Func_800ca6c
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
.func_end OvlFunc_922_2008180

.thumb_func_start OvlFunc_922_200825c
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r0, #8
	mov	r1, #0x70
	mov	r2, #0
	bl	OvlFunc_922_2008180
	mov	r1, #0x70
	mov	r2, #0
	mov	r0, #8
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x301
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009050
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_200825c

.thumb_func_start OvlFunc_922_200829c
	push	{r5, lr}
	mov	r5, #0x70
	neg	r5, r5
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, r5
	mov	r0, #8
	mov	r2, #0
	bl	OvlFunc_922_2008180
	mov	r1, r5
	mov	r2, #0
	mov	r0, #8
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x301
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009050
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_200829c

.thumb_func_start OvlFunc_922_20082e0
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x40
	mov	r0, #9
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x302
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009050
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20082e0

.thumb_func_start OvlFunc_922_2008314
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r2, #0x40
	neg	r2, r2
	mov	r1, #0
	mov	r0, #9
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x302
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009050
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008314

.thumb_func_start OvlFunc_922_200834c
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x40
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x303
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009050
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_200834c

.thumb_func_start OvlFunc_922_2008380
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r2, #0x40
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x303
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009050
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008380

.thumb_func_start OvlFunc_922_20083b8
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0x90
	mov	r2, #0
	mov	r0, #8
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009154
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20083b8

.thumb_func_start OvlFunc_922_20083ec
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0x90
	neg	r1, r1
	mov	r2, #0
	mov	r0, #8
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x305
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009154
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20083ec

.thumb_func_start OvlFunc_922_200842c
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0xe
	neg	r1, r1
	mov	r2, #0
	mov	r0, #8
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x305
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009154
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_200842c

.thumb_func_start OvlFunc_922_2008464
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	ldr	r0, =0x306
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L488
	mov	r0, #8
	mov	r1, #0x10
	mov	r2, #0
	bl	OvlFunc_922_2008180
	ldr	r0, =0x305
	bl	__Func_8079374
	b	.L49a
.L488:
	mov	r0, #8
	mov	r1, #0x90
	mov	r2, #0
	bl	OvlFunc_922_2008180
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_8079358
.L49a:
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009154
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008464

.thumb_func_start OvlFunc_922_20084bc
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x40
	mov	r0, #9
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x306
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009154
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20084bc

.thumb_func_start OvlFunc_922_20084f0
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r2, #0x40
	neg	r2, r2
	mov	r1, #0
	mov	r0, #9
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x306
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009154
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20084f0

.thumb_func_start OvlFunc_922_2008528
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x90
	bl	OvlFunc_922_2008180
	mov	r1, #0
	mov	r2, #0x80
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x307
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009154
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008528

.thumb_func_start OvlFunc_922_2008568
	push	{r5, lr}
	mov	r5, #0x60
	neg	r5, r5
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r2, r5
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_922_2008180
	mov	r2, r5
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_922_2008180
	mov	r2, #0x50
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x307
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009154
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008568

.thumb_func_start OvlFunc_922_20085b8
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L5d6
	ldr	r0, =0x30d
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5f2
.L5d6:
	mov	r1, #0x30
	neg	r1, r1
	mov	r0, #8
	mov	r2, #0
	bl	OvlFunc_922_2008180
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x309
	bl	__Func_8079358
	b	.L60c
.L5f2:
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #8
	mov	r2, #0
	bl	OvlFunc_922_2008180
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x309
	bl	__Func_8079374
.L60c:
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20085b8

.thumb_func_start OvlFunc_922_200862c
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x309
	bl	__Func_8079374
	mov	r1, #0x30
	mov	r2, #0
	mov	r0, #8
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_200862c

.thumb_func_start OvlFunc_922_2008668
	push	{lr}
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L6b0
	ldr	r0, =0x30d
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L6b0
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x309
	bl	__Func_8079374
	mov	r1, #0x30
	neg	r1, r1
	mov	r2, #0
	mov	r0, #8
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
.L6b0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008668

.thumb_func_start OvlFunc_922_20086c0
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x309
	bl	__Func_8079374
	mov	r1, #0x60
	mov	r2, #0
	mov	r0, #8
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20086c0

.thumb_func_start OvlFunc_922_20086fc
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0x20
	neg	r1, r1
	mov	r2, #0
	mov	r0, #9
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x30a
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20086fc

.thumb_func_start OvlFunc_922_2008734
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0x20
	mov	r2, #0
	mov	r0, #9
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x30a
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008734

.thumb_func_start OvlFunc_922_2008768
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L7a4
	mov	r2, #0x40
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x30d
	bl	__Func_8079374
	ldr	r0, =0x30e
	bl	__Func_8079374
	b	.L7ca
.L7a4:
	mov	r2, #0x80
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079358
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079374
	ldr	r0, =0x30e
	bl	__Func_8079374
.L7ca:
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008768

.thumb_func_start OvlFunc_922_20087f0
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L824
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x30d
	bl	__Func_8079374
	b	.L878
.L824:
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L850
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x30d
	bl	__Func_8079374
	b	.L878
.L850:
	ldr	r0, =0x311
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L880
	mov	r1, #0
	mov	r2, #0x40
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079358
.L878:
	ldr	r0, =0x30e
	bl	__Func_8079374
	b	.L8a4
.L880:
	mov	r1, #0
	mov	r2, #0x80
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079374
	ldr	r0, =0x30e
	bl	__Func_8079374
.L8a4:
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20087f0

.thumb_func_start OvlFunc_922_20088cc
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x30b
	bl	__Func_8079358
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079374
	ldr	r0, =0x30e
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20088cc

.thumb_func_start OvlFunc_922_2008920
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	ldr	r0, =0x311
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L952
	mov	r1, #0
	mov	r2, #0x30
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079358
	b	.L97c
.L952:
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L984
	mov	r1, #0
	mov	r2, #0x20
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x30d
	bl	__Func_8079374
.L97c:
	ldr	r0, =0x30e
	bl	__Func_8079374
	b	.L9a8
.L984:
	mov	r1, #0
	mov	r2, #0x70
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079374
	ldr	r0, =0x30e
	bl	__Func_8079374
.L9a8:
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008920

.thumb_func_start OvlFunc_922_20089d0
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r2, #0x40
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x30b
	bl	__Func_8079358
	ldr	r0, =0x30d
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20089d0

.thumb_func_start OvlFunc_922_2008a10
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x40
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079374
	ldr	r0, =0x30e
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008a10

.thumb_func_start OvlFunc_922_2008a60
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r2, #0x50
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x30b
	bl	__Func_8079358
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079374
	ldr	r0, =0x30e
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008a60

.thumb_func_start OvlFunc_922_2008ab4
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x40
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079374
	ldr	r0, =0x30e
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008ab4

.thumb_func_start OvlFunc_922_2008b04
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lb22
	ldr	r0, =0x30d
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb44
.Lb22:
	mov	r2, #0x40
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30f
	bl	__Func_8079374
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x311
	bl	__Func_8079358
	b	.Lb70
.Lb44:
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb78
	mov	r2, #0x70
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30f
	bl	__Func_8079374
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x311
	bl	__Func_8079374
.Lb70:
	ldr	r0, =0x312
	bl	__Func_8079374
	b	.Lb9e
.Lb78:
	mov	r2, #0x80
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30f
	bl	__Func_8079358
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x311
	bl	__Func_8079374
	ldr	r0, =0x312
	bl	__Func_8079374
.Lb9e:
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008b04

.thumb_func_start OvlFunc_922_2008bc8
	push	{lr}
	ldr	r0, =0x30f
	bl	__Func_8079374
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x311
	bl	__Func_8079374
	ldr	r0, =0x312
	bl	__Func_8079374
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008bc8

.thumb_func_start OvlFunc_922_2008bf4
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x80
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	bl	OvlFunc_922_2008bc8
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008bf4

.thumb_func_start OvlFunc_922_2008c24
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x30f
	bl	__Func_8079358
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x311
	bl	__Func_8079374
	ldr	r0, =0x312
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008c24

.thumb_func_start OvlFunc_922_2008c78
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x70
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	bl	OvlFunc_922_2008bc8
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008c78

.thumb_func_start OvlFunc_922_2008ca8
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x40
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	bl	OvlFunc_922_2008bc8
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008ca8

.thumb_func_start OvlFunc_922_2008cd8
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x50
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	bl	OvlFunc_922_2008bc8
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008cd8

.thumb_func_start OvlFunc_922_2008d08
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x30
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	bl	OvlFunc_922_2008bc8
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008d08

.thumb_func_start OvlFunc_922_2008d38
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x70
	mov	r0, #8
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x313
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20095dc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008d38

.thumb_func_start OvlFunc_922_2008d6c
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r2, #0x70
	neg	r2, r2
	mov	r1, #0
	mov	r0, #8
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x313
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20095dc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008d6c

.thumb_func_start OvlFunc_922_2008da4
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0x80
	neg	r1, r1
	mov	r2, #0
	mov	r0, #9
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20095dc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008da4

.thumb_func_start OvlFunc_922_2008dd8
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #9
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20095dc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008dd8

.thumb_func_start OvlFunc_922_2008e0c
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x315
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20095dc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008e0c

.thumb_func_start OvlFunc_922_2008e40
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0xa0
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x315
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20095dc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008e40

.thumb_func_start OvlFunc_922_2008e78
	push	{lr}
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80924d4
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008e78

.thumb_func_start OvlFunc_922_2008e90
	push	{lr}
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80924d4
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008e90

.thumb_func_start OvlFunc_922_2008ea8
	push	{lr}
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80924d4
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008ea8

.thumb_func_start OvlFunc_922_2008ec0
	push	{lr}
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80924d4
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008ec0

.thumb_func_start OvlFunc_922_2008ed8
	push	{r5, r6, lr}
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	mov	r0, r3
	mov	r2, r5
	mov	r1, r4
	mov	r3, r6
	bl	__Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.Lf28
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r2, r5
	add	r2, #0x55
	strb	r3, [r1, #9]
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, r5
	mov	r1, #0xf
	bl	__Func_80929d8
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r0, r5
	b	.Lf2a
.Lf28:
	mov	r0, #0
.Lf2a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_922_2008ed8

.thumb_func_start OvlFunc_922_2008f30
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x34
	cmp	r2, r3
	bne	.Lf48
	ldr	r0, =.L2bd8
	b	.Lf86
.Lf48:
	ldr	r3, =0x3e
	cmp	r2, r3
	bne	.Lf52
	ldr	r0, =.L2c08
	b	.Lf86
.Lf52:
	ldr	r3, =0x3f
	cmp	r2, r3
	bne	.Lf5c
	ldr	r0, =.L2d1c
	b	.Lf86
.Lf5c:
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.Lf66
	ldr	r0, =.L2e24
	b	.Lf86
.Lf66:
	ldr	r3, =0x41
	cmp	r2, r3
	bne	.Lf70
	ldr	r0,=.L3058
	b	.Lf86
.Lf70:
	ldr	r3, =0x42
	cmp	r2, r3
	bne	.Lf7a
	ldr	r0, =.L3130
	b	.Lf86
.Lf7a:
	ldr	r3, =0x43
	cmp	r2, r3
	bne	.Lf84
	ldr	r0, =.L3184
	b	.Lf86
.Lf84:
	ldr	r0, =.L2bcc
.Lf86:
	pop	{r1}
	bx	r1
.func_end OvlFunc_922_2008f30

.thumb_func_start OvlFunc_922_2008fcc
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, #0x7b
	bl	__Func_80f9080
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #1
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008fcc

.thumb_func_start OvlFunc_922_2008ff8
	push	{lr}
	bl	OvlFunc_922_200a094
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008ff8

.thumb_func_start OvlFunc_922_2009004
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	bl	__Func_8092054
	mov	r5, r0
	cmp	r5, #0
	beq	.L1046
	mov	r1, #3
	mov	r0, r6
	bl	__Func_8092b08
	mov	r1, r5
	add	r1, #0x22
	mov	r3, #2
	strb	r3, [r1]
	add	r1, #1
	ldrb	r3, [r1]
	mov	r2, #2
	orr	r2, r3
	strb	r2, [r1]
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r3, r7, #20
	add	r3, r2
	mov	r1, r8
	str	r3, [r5, #8]
	lsl	r3, r1, #20
	add	r3, r2
	str	r3, [r5, #0x10]
.L1046:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009004

.thumb_func_start OvlFunc_922_2009050
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x1d
	str	r3, [sp, #4]
	mov	r0, #8
	mov	r5, #8
	mov	r1, #0x2a
	mov	r2, #0xf
	mov	r3, #5
	str	r5, [sp]
	bl	__Func_8010704
	ldr	r0, =0x301
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1090
	mov	r0, #8
	mov	r1, #0x16
	mov	r2, #0x1f
	bl	OvlFunc_922_2009004
	mov	r3, #0x1e
	str	r3, [sp, #4]
	mov	r0, #9
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp]
	bl	__Func_8010704
	b	.L10ae
.L1090:
	mov	r0, #8
	mov	r1, #8
	mov	r2, #0x1f
	bl	OvlFunc_922_2009004
	mov	r3, #0x16
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #9
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
.L10ae:
	ldr	r0, =0x302
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L10d8
	mov	r0, #9
	mov	r1, #0xc
	mov	r2, #0x1d
	bl	OvlFunc_922_2009004
	mov	r3, #0xb
	mov	r2, #0x21
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x21
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	b	.L10f6
.L10d8:
	mov	r0, #9
	mov	r1, #0xc
	mov	r2, #0x21
	bl	OvlFunc_922_2009004
	mov	r3, #0xb
	mov	r2, #0x1d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
.L10f6:
	ldr	r0, =0x303
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1120
	mov	r0, #0xa
	mov	r1, #0x12
	mov	r2, #0x1d
	bl	OvlFunc_922_2009004
	mov	r3, #0x11
	mov	r2, #0x21
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x21
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	b	.L113e
.L1120:
	mov	r0, #0xa
	mov	r1, #0x12
	mov	r2, #0x21
	bl	OvlFunc_922_2009004
	mov	r3, #0x11
	mov	r2, #0x1d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
.L113e:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009050

.thumb_func_start OvlFunc_922_2009154
	push	{r5, r6, r7, lr}
	sub	sp, #8
	mov	r3, #0xc
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x1c
	mov	r2, #0xa
	mov	r3, #0x12
	bl	__Func_8010704
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1198
	mov	r0, #8
	mov	r1, #0x15
	mov	r2, #0x14
	bl	OvlFunc_922_2009004
	mov	r3, #0xd
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	b	.L11b6
.L1198:
	mov	r0, #8
	mov	r1, #0xd
	mov	r2, #0x14
	bl	OvlFunc_922_2009004
	mov	r3, #0x15
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
.L11b6:
	ldr	r0, =0x305
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1226
	mov	r0, #8
	mov	r1, #0xc
	mov	r2, #0x14
	bl	OvlFunc_922_2009004
	mov	r5, #0x13
	mov	r0, #5
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #3
	mov	r7, #0xc
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r6, #0xd
	mov	r0, #0x14
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1226
	mov	r0, #8
	mov	r1, #0x15
	mov	r2, #0x14
	bl	OvlFunc_922_2009004
	mov	r0, #0x14
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x14
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #3
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.L1226:
	ldr	r0, =0x306
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1250
	mov	r0, #9
	mov	r1, #0xf
	mov	r2, #0x15
	bl	OvlFunc_922_2009004
	mov	r3, #0xe
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x12
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	b	.L126e
.L1250:
	mov	r0, #9
	mov	r1, #0xf
	mov	r2, #0x11
	bl	OvlFunc_922_2009004
	mov	r3, #0xe
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x12
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
.L126e:
	ldr	r0, =0x307
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1298
	mov	r0, #0xa
	mov	r1, #0x13
	mov	r2, #8
	bl	OvlFunc_922_2009004
	mov	r3, #0x12
	mov	r2, #0x19
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x12
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	b	.L12b6
.L1298:
	mov	r0, #0xa
	mov	r1, #0x13
	mov	r2, #0x19
	bl	OvlFunc_922_2009004
	mov	r3, #0x12
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x12
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
.L12b6:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009154

.thumb_func_start OvlFunc_922_20092cc
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0xc
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xc
	mov	r1, #3
	mov	r2, #9
	mov	r3, #0x10
	bl	__Func_8010704
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1310
	mov	r0, #8
	mov	r1, #0xe
	mov	r2, #0x19
	bl	OvlFunc_922_2009004
	mov	r3, #0x14
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x10
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	b	.L137c
.L1310:
	ldr	r0, =0x309
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L135e
	mov	r0, #8
	mov	r1, #0x11
	mov	r2, #0x19
	bl	OvlFunc_922_2009004
	mov	r3, #0x14
	mov	r5, #0x18
	str	r3, [sp]
	mov	r0, #0x12
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xe
	str	r3, [sp]
	mov	r0, #0x12
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x11
	str	r3, [sp]
	mov	r0, #8
	mov	r1, #0x29
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	b	.L137c
.L135e:
	mov	r0, #8
	mov	r1, #0x14
	mov	r2, #0x19
	bl	OvlFunc_922_2009004
	mov	r3, #0xe
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x10
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
.L137c:
	ldr	r0, =0x30a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L13a6
	mov	r0, #9
	mov	r1, #0xd
	mov	r2, #0x23
	bl	OvlFunc_922_2009004
	mov	r3, #0xf
	mov	r2, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x22
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	b	.L13c4
.L13a6:
	mov	r0, #9
	mov	r1, #0xf
	mov	r2, #0x23
	bl	OvlFunc_922_2009004
	mov	r3, #0xd
	mov	r2, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x22
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
.L13c4:
	ldr	r0, =0x30b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L13f6
	mov	r0, #0xa
	mov	r1, #0xf
	mov	r2, #0x16
	bl	OvlFunc_922_2009004
	mov	r3, #0x1e
	mov	r5, #0xe
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r0, #5
	mov	r1, #0x29
	b	.L14c0
.L13f6:
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L143a
	mov	r0, #0xa
	mov	r1, #0xf
	mov	r2, #0x17
	bl	OvlFunc_922_2009004
	mov	r3, #0x17
	mov	r5, #0xe
	str	r3, [sp, #4]
	mov	r0, #5
	mov	r1, #0x2a
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x1e
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r0, #0xa
	b	.L14be
.L143a:
	ldr	r0, =0x30d
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L147e
	mov	r0, #0xa
	mov	r1, #0xf
	mov	r2, #0x1a
	bl	OvlFunc_922_2009004
	mov	r3, #0x16
	mov	r5, #0xe
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x1a
	str	r3, [sp, #4]
	mov	r0, #5
	mov	r1, #0x2b
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x1e
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x1d
	b	.L14c0
.L147e:
	ldr	r0, =0x30e
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L14cc
	mov	r0, #0xa
	mov	r1, #0xf
	mov	r2, #0x1b
	bl	OvlFunc_922_2009004
	mov	r3, #0x16
	mov	r5, #0xe
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x1e
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x1b
	str	r3, [sp, #4]
	mov	r0, #5
.L14be:
	mov	r1, #0x2c
.L14c0:
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	b	.L14d6
.L14cc:
	mov	r0, #0xa
	mov	r1, #0xf
	mov	r2, #0x1e
	bl	OvlFunc_922_2009004
.L14d6:
	ldr	r0, =0x30f
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1508
	mov	r0, #0xb
	mov	r1, #0xf
	mov	r2, #0x17
	bl	OvlFunc_922_2009004
	mov	r3, #0x1f
	mov	r5, #0xe
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x17
	str	r3, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x28
	b	.L159e
.L1508:
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L153c
	mov	r0, #0xb
	mov	r1, #0xf
	mov	r2, #0x18
	bl	OvlFunc_922_2009004
	mov	r3, #0x1f
	mov	r5, #0xe
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x18
	str	r3, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x29
	b	.L159e
.L153c:
	ldr	r0, =0x311
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L156e
	mov	r0, #0xb
	mov	r1, #0xf
	mov	r2, #0x1b
	bl	OvlFunc_922_2009004
	mov	r3, #0x1f
	mov	r5, #0xe
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x1b
	str	r3, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x2a
	b	.L159e
.L156e:
	ldr	r0, =0x312
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L15aa
	mov	r0, #0xb
	mov	r1, #0xf
	mov	r2, #0x1c
	bl	OvlFunc_922_2009004
	mov	r3, #0x1f
	mov	r5, #0xe
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x1c
	str	r3, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x2b
.L159e:
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	b	.L15b4
.L15aa:
	mov	r0, #0xb
	mov	r1, #0xf
	mov	r2, #0x1f
	bl	OvlFunc_922_2009004
.L15b4:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20092cc

.thumb_func_start OvlFunc_922_20095dc
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #1
	lsl	r3, #16
	lsl	r2, #9
	sub	sp, #8
	cmp	r3, r2
	bhi	.L160c
	mov	r3, #0xe
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x16
	mov	r1, #0x14
	mov	r2, #9
	mov	r3, #8
	bl	__Func_8010704
	b	.L1620
.L160c:
	mov	r3, #7
	mov	r2, #0x2d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0x2d
	mov	r2, #0xb
	mov	r3, #4
	bl	__Func_8010704
.L1620:
	ldr	r0, =0x313
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L164a
	mov	r0, #8
	mov	r1, #0x14
	mov	r2, #0x11
	bl	OvlFunc_922_2009004
	mov	r3, #0x13
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0xb
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	b	.L1668
.L164a:
	mov	r0, #8
	mov	r1, #0x14
	mov	r2, #0xa
	bl	OvlFunc_922_2009004
	mov	r3, #0x13
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0xb
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
.L1668:
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1694
	mov	r0, #9
	mov	r1, #0xe
	mov	r2, #0x10
	bl	OvlFunc_922_2009004
	mov	r3, #0x16
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x10
	mov	r1, #0xf
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	b	.L16b2
.L1694:
	mov	r0, #9
	mov	r1, #0x16
	mov	r2, #0x10
	bl	OvlFunc_922_2009004
	mov	r3, #0xe
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x10
	mov	r1, #0xf
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
.L16b2:
	ldr	r0, =0x315
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L16dc
	mov	r0, #0xa
	mov	r1, #0x11
	mov	r2, #0x2e
	bl	OvlFunc_922_2009004
	mov	r3, #7
	mov	r2, #0x2d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0xf
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	b	.L16fa
.L16dc:
	mov	r0, #0xa
	mov	r1, #7
	mov	r2, #0x2e
	bl	OvlFunc_922_2009004
	mov	r3, #0x11
	mov	r2, #0x2d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0xf
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
.L16fa:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20095dc

.thumb_func_start OvlFunc_922_200970c
	push	{r5, lr}
	ldr	r3, =.L3328
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1722
	ldr	r3, =iwram_3001ee0
	mov	r0, #0
	ldr	r5, [r3]
	bl	__Func_8092054
	str	r0, [r5, #0x18]
.L1722:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_200970c

.thumb_func_start OvlFunc_922_2009730
	push	{lr}
	ldr	r3, =.L3328
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1742
	ldr	r3, =iwram_3001ee0
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [r2, #0x18]
.L1742:
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009730

.thumb_func_start OvlFunc_922_2009750
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r2, #0x81
	add	r3, r1
	lsl	r2, #2
	str	r2, [r3]
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L178c
	ldr	r3, =ewram_2000240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x34
	cmp	r2, r3
	bne	.L178c
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_8079358
	bl	OvlFunc_922_20097a8
	b	.L1790
.L178c:
	bl	OvlFunc_922_20097e4
.L1790:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_922_2009750

.thumb_func_start OvlFunc_922_20097a8
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #8
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	bl	__Func_8091dc8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #10
	ldr	r2, =0x1999
	bl	__Func_8092064
	mov	r1, #0x84
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xc4
	bl	__Func_8092158
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20097a8

.thumb_func_start OvlFunc_922_20097e4
	push	{r5, r6, r7, lr}
	sub	sp, #8
	bl	OvlFunc_922_2009948
	ldr	r6, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r6, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.L1852
	ldr	r0, =0xf13
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L181a
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #1
	bne	.L181a
	bl	OvlFunc_922_2009b1c
.L181a:
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r1, #0xc0
	sub	r3, #2
	lsl	r3, #16
	lsl	r1, #10
	cmp	r3, r1
	bhi	.L191e
	mov	r5, #0xe2
	lsl	r5, #17
	mov	r0, #0x9c
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_922_2008ed8
	mov	r0, #0xbc
	lsl	r0, #16
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0xdf
	bl	OvlFunc_922_2008ed8
	b	.L191e
.L1852:
	ldr	r3, =0x43
	cmp	r2, r3
	bne	.L191e
	mov	r0, #8
	bl	__Func_8092054
	ldr	r7, =.L3328
	mov	r3, r0
	add	r3, #0x55
	mov	r5, #0
	str	r5, [r7]
	mov	r1, #1
	strb	r5, [r3]
	str	r5, [r0, #0xc]
	mov	r0, #8
	bl	__Func_8092b08
	mov	r1, #0xf
	mov	r0, #8
	bl	__Func_8092950
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #1
	blt	.L18b2
	cmp	r3, #2
	ble	.L1894
	cmp	r3, #5
	beq	.L18a0
	b	.L18b2
.L1894:
	mov	r0, #0
	bl	__Func_8091494
	mov	r3, #1
	str	r3, [r7]
	b	.L18b2
.L18a0:
	mov	r0, #0
	bl	__Func_8091494
	mov	r3, #1
	str	r3, [r7]
	ldr	r3, =iwram_3001ee0
	ldr	r5, [r3]
	mov	r3, #0
	str	r3, [r5, #0x18]
.L18b2:
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #6
	bgt	.L191e
	mov	r0, #0x82
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L18f4
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x39
	mov	r2, #0x13
	mov	r3, #0x39
	bl	__Func_8010424
	mov	r2, #7
	mov	r3, #8
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #8
	mov	r2, #0xc
	str	r3, [sp]
	bl	__Func_8010424
	b	.L191e
.L18f4:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	ldr	r0, =0x203108
	mov	r1, #1
	bl	__Func_8091220
	ldr	r0, =0x203108
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__Func_80030f8
.L191e:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20097e4

.thumb_func_start OvlFunc_922_2009948
	push	{lr}
	ldr	r1, =ewram_2000240
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x3e
	sub	sp, #8
	cmp	r2, r3
	bne	.L1978
	mov	r3, #8
	mov	r2, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #8
	mov	r1, #0x1d
	mov	r2, #0xf
	mov	r3, #5
	bl	__Func_8010704
	bl	OvlFunc_922_2009050
	b	.L1a18
.L1978:
	ldr	r3, =0x3f
	cmp	r2, r3
	bne	.L1998
	mov	r3, #0
	mov	r2, #0x1c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xc
	mov	r1, #8
	mov	r2, #0xa
	mov	r3, #0x12
	bl	__Func_8010704
	bl	OvlFunc_922_2009154
	b	.L1a18
.L1998:
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.L19c6
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #1
	beq	.L19c6
	mov	r3, #0xc
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0x15
	mov	r2, #9
	mov	r3, #0x10
	bl	__Func_8010704
	bl	OvlFunc_922_20092cc
	b	.L1a18
.L19c6:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x41
	cmp	r2, r3
	bne	.L1a18
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	ldrh	r3, [r3]
	mov	r0, #0x80
	sub	r3, #1
	lsl	r3, #16
	lsl	r0, #9
	cmp	r3, r0
	bhi	.L1a00
	mov	r3, #0x16
	mov	r2, #0x14
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0xa
	mov	r2, #9
	mov	r3, #8
	bl	__Func_8010704
	b	.L1a14
.L1a00:
	mov	r3, #0x14
	mov	r2, #0x2d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #7
	mov	r1, #0x2d
	mov	r2, #0xb
	mov	r3, #4
	bl	__Func_8010704
.L1a14:
	bl	OvlFunc_922_20095dc
.L1a18:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009948

.thumb_func_start OvlFunc_922_2009a34
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb6
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r5, =ewram_2000240
	add	r3, r1
	add	r1, #0x54
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x3f
	cmp	r2, r3
	bne	.L1a6e
	cmp	r6, #0x11
	bne	.L1a64
	mov	r1, #0x20
	neg	r1, r1
	mov	r0, #0
	bl	OvlFunc_922_2009ad0
	b	.L1a6e
.L1a64:
	mov	r0, #0x20
	neg	r0, r0
	mov	r1, #0
	bl	OvlFunc_922_2009ad0
.L1a6e:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.L1a94
	cmp	r6, #0x19
	bne	.L1a94
	ldr	r0, =0x309
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1a94
	mov	r0, #0
	mov	r1, #0x20
	bl	OvlFunc_922_2009ad0
.L1a94:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009a34

.thumb_func_start OvlFunc_922_2009ab0
	push	{lr}
	mov	r1, #0x20
	neg	r1, r1
	mov	r0, #0
	bl	OvlFunc_922_2009ad0
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009ab0

.thumb_func_start OvlFunc_922_2009ac0
	push	{lr}
	mov	r0, #0x20
	neg	r0, r0
	mov	r1, #0
	bl	OvlFunc_922_2009ad0
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009ac0

.thumb_func_start OvlFunc_922_2009ad0
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r1
	bl	__Func_80916b0
	mov	r1, #0xa0
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, r5
	mov	r2, r6
	mov	r0, #0
	bl	__Func_809228c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #4
	bl	__Func_8092560
	mov	r1, #7
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #0
	mov	r1, #6
	bl	__Func_80924d4
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009ad0

.thumb_func_start OvlFunc_922_2009b1c
	push	{r5, r6, r7, lr}
	mov	r1, #0xf8
	mov	r2, #0x80
	mov	r3, #0x98
	mov	r0, #0x16
	lsl	r1, #16
	lsl	r2, #12
	lsl	r3, #16
	bl	__Func_800c150
	mov	r7, r0
	mov	r5, #0
	cmp	r7, #0
	beq	.L1b90
	ldr	r6, [r7, #0x50]
	mov	r3, r6
	add	r3, #0x26
	strb	r5, [r3]
	add	r3, #1
	strb	r5, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	strb	r3, [r6, #9]
	mov	r3, r7
	add	r3, #0x55
	mov	r2, r7
	strb	r5, [r3]
	add	r2, #0x5c
	mov	r3, #1
	mov	r1, #0xc1
	strb	r3, [r2]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_80048b0
	mov	r5, r0
	mov	r0, #0xe6
	bl	__Func_801a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r1, #0x80
	mov	r2, r5
	ldrb	r0, [r6, #0x1c]
	bl	__Func_8003fa4
	mov	r0, #0x11
	bl	__Func_8002dd8
	ldr	r3, =.L2488
	str	r7, [r3]
.L1b90:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009b1c

.thumb_func_start OvlFunc_922_2009b9c
	push	{r5, lr}
	bl	__Func_80916b0
	ldr	r5, =.L2488
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L1bb0
	mov	r1, #3
	bl	__Func_808f140
.L1bb0:
	mov	r1, #0
	mov	r0, #0xe6
	bl	__Func_8091a58
	ldr	r0, =0xf13
	bl	__Func_8079358
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L1bc8
	bl	__Func_800c0f4
.L1bc8:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009b9c


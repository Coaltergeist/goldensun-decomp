	.include "macros.inc"

.thumb_func_start OvlFunc_7cb2c0_30
	push	{r5, lr}
	mov	r1, #1
	mov	r5, r0
	bl	__Func_800c300
	mov	r3, #0
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x28]
	str	r3, [r5, #0x2c]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x38]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_7cb2c0_30

.thumb_func_start OvlFunc_7cb2c0_58
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L82
	bl	__Func_8004458
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	lsr	r0, #16
	ldr	r2, =0xffff8000
	sub	r3, r0
	add	r3, r2
	str	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.La2
	mov	r3, #0
	b	.La0
.L82:
	bl	__Func_8004458
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	lsr	r0, #16
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r0
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #12
	str	r3, [r5, #0xc]
	cmp	r3, r2
	ble	.La2
	mov	r3, #1
.La0:
	strh	r3, [r6]
.La2:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_7cb2c0_58

.thumb_func_start OvlFunc_7cb2c0_b0
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_8004458
	lsl	r0, #6
	lsr	r0, #16
	cmp	r0, #6
	bne	.Lc6
	mov	r3, #0xc0
	lsl	r3, #6
	b	.Lce
.Lc6:
	cmp	r0, #9
	bne	.Ld0
	mov	r3, #0xa0
	lsl	r3, #7
.Lce:
	strh	r3, [r5, #6]
.Ld0:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_7cb2c0_b0

.thumb_func_start OvlFunc_7cb2c0_d8
	push	{lr}
	mov	r1, r0
	add	r1, #0x62
	ldrb	r3, [r1]
	mov	r2, #0xa0
	add	r3, #1
	strb	r3, [r1]
	lsl	r2, #23
	lsl	r3, #24
	cmp	r3, r2
	bls	.Lf8
	mov	r2, r0
	add	r2, #0x66
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lf8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_7cb2c0_d8

.thumb_func_start OvlFunc_7cb2c0_fc
	push	{lr}
	ldr	r3, [r0, #0x4c]
	cmp	r3, #0
	beq	.L10a
	sub	r3, #1
	str	r3, [r0, #0x4c]
	b	.L10e
.L10a:
	mov	r0, #1
	b	.L128
.L10e:
	mov	r2, #0x80
	ldr	r3, [r0, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L126
	ldr	r2, [r0, #0x3c]
	cmp	r2, r3
	bne	.L126
	ldr	r3, [r0, #0x40]
	mov	r0, #1
	cmp	r3, r2
	beq	.L128
.L126:
	mov	r0, #0
.L128:
	pop	{r1}
	bx	r1
.func_end OvlFunc_7cb2c0_fc

.thumb_func_start OvlFunc_7cb2c0_12c
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r0, #8
	bl	__Func_8092054
	mov	r6, r5
	add	r6, #0x66
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	mov	r7, r0
	cmp	r3, #0xc
	bls	.L146
	b	.L27c
.L146:
	ldr	r2, =.L150
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L150:
	.word	.L184
	.word	.L270
	.word	.L18c
	.word	.L270
	.word	.L192
	.word	.L1b6
	.word	.L270
	.word	.L1e6
	.word	.L270
	.word	.L218
	.word	.L250
	.word	.L270
	.word	.L278
.L184:
	mov	r3, #0xb0
	lsl	r3, #8
	strh	r3, [r5, #6]
	b	.L200
.L18c:
	mov	r3, #0
	strh	r3, [r5, #6]
	b	.L200
.L192:
	mov	r0, r5
	mov	r1, #2
	bl	__Func_800c300
	mov	r1, #0xea
	mov	r2, #0x80
	mov	r3, #0x9e
	lsl	r3, #18
	mov	r0, r5
	lsl	r1, #17
	lsl	r2, #14
	bl	__Func_800d14c
	mov	r3, #0x3c
	str	r3, [r5, #0x4c]
	ldrh	r3, [r6]
	add	r3, #1
	b	.L27a
.L1b6:
	mov	r0, r5
	bl	OvlFunc_7cb2c0_fc
	cmp	r0, #0
	beq	.L27c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c300
	mov	r2, r5
	mov	r3, #0
	add	r2, #0x62
	strb	r3, [r2]
	mov	r3, r7
	add	r3, #0x5b
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L1e0
	add	r2, #1
	mov	r3, #1
	strb	r3, [r2]
.L1e0:
	ldrh	r3, [r6]
	add	r3, #1
	b	.L27a
.L1e6:
	mov	r3, r7
	add	r3, #0x5b
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L200
	mov	r0, r5
	mov	r1, #3
	bl	__Func_800c300
	mov	r2, r5
	add	r2, #0x63
	mov	r3, #2
	strb	r3, [r2]
.L200:
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	ldr	r2, .L210	@ 0
	mov	r3, r5
	add	r3, #0x62
	strb	r2, [r3]
	b	.L27c

	.align	2, 0
.L210:
	.word	0
	.pool

.L218:
	mov	r0, r5
	mov	r1, #2
	bl	__Func_800c300
	mov	r1, #0xf0
	mov	r2, #0x80
	mov	r3, #0x96
	lsl	r3, #18
	mov	r0, r5
	lsl	r1, #17
	lsl	r2, #14
	bl	__Func_800d14c
	mov	r3, #0x3c
	str	r3, [r5, #0x4c]
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	mov	r3, r7
	add	r3, #0x5b
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L27c
	mov	r2, r5
	add	r2, #0x63
	mov	r3, #3
	strb	r3, [r2]
	b	.L27c
.L250:
	mov	r0, r5
	bl	OvlFunc_7cb2c0_fc
	cmp	r0, #0
	beq	.L27c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c300
	mov	r2, r5
	mov	r3, #0
	add	r2, #0x62
	strb	r3, [r2]
	ldrh	r3, [r6]
	add	r3, #1
	b	.L27a
.L270:
	mov	r0, r5
	bl	OvlFunc_7cb2c0_d8
	b	.L27c
.L278:
	mov	r3, #0
.L27a:
	strh	r3, [r6]
.L27c:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7cb2c0_12c

.thumb_func_start OvlFunc_7cb2c0_284
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r0, #9
	bl	__Func_8092054
	mov	r3, r5
	add	r3, #0x5b
	ldrb	r6, [r3]
	cmp	r6, #0
	bne	.L2e6
	mov	r7, r0
	add	r7, #0x63
	ldrb	r1, [r7]
	cmp	r1, #1
	bne	.L2b6
	mov	r2, #0xd0
	lsl	r2, #8
	strh	r2, [r5, #6]
	ldr	r3, =0
	mov	r2, r5
	add	r2, #0x62
	strb	r1, [r2]
	b	.L2e4
.L2b6:
	cmp	r1, #2
	bne	.L2dc
	mov	r2, #0x62
	add	r2, r5
	ldrb	r3, [r2]
	mov	r8, r2
	cmp	r3, #0
	beq	.L2ce
	mov	r0, r5
	mov	r1, #3
	bl	__Func_800c300
.L2ce:
	mov	r3, r8
	strb	r6, [r3]
	strb	r6, [r7]
	b	.L2e6

	.pool_aligned

.L2dc:
	cmp	r1, #3
	bne	.L2e6
	ldr	r3, =0
	strh	r6, [r5, #6]
.L2e4:
	strb	r3, [r7]
.L2e6:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7cb2c0_284

.thumb_func_start OvlFunc_7cb2c0_2f4
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x59
	mov	r3, #8
	ldr	r5, [r6, #0x50]
	mov	r1, #0
	strb	r3, [r2]
	bl	__Func_800c528
	mov	r2, #0xd
	ldrb	r1, [r5, #9]
	neg	r2, r2
	mov	r3, r2
	and	r3, r1
	mov	r1, #4
	orr	r3, r1
	strb	r3, [r5, #9]
	ldrb	r3, [r5, #0x15]
	and	r2, r3
	orr	r2, r1
	mov	r1, r6
	add	r1, #0x23
	strb	r2, [r5, #0x15]
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r0, r6
	mov	r1, #0xf
	bl	__Func_80929d8
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_7cb2c0_2f4

.thumb_func_start OvlFunc_7cb2c0_340
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6f
	cmp	r2, r3
	bne	.L358
	ldr	r0, =.L6984
	b	.L35a
.L358:
	ldr	r0, =.L696c
.L35a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_7cb2c0_340


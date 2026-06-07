	.include "macros.inc"

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


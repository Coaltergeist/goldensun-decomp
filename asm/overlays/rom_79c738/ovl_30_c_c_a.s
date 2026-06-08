	.include "macros.inc"

.thumb_func_start OvlFunc_909_200809c
	push	{r5, lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x21
	cmp	r2, r3
	bne	.Le4
	ldr	r5, =.L29b4
	mov	r0, r5
	bl	__Func_808b868
	ldr	r0, =0x84e
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Le0
	mov	r1, r5
	mov	r3, #2
	add	r1, #0xa6
	strb	r3, [r1]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0xbe
	strb	r2, [r3]
	mov	r2, r5
	add	r2, #0xd6
	mov	r3, #3
	strb	r3, [r2]
	add	r2, #0x18
	mov	r3, #1
	strb	r3, [r2]
.Le0:
	mov	r0, r5
	b	.Le6
.Le4:
	ldr	r0, =.L299c
.Le6:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_909_200809c

.thumb_func_start OvlFunc_909_2008100
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x21
	cmp	r2, r3
	bne	.L118
	ldr	r0, =.L2ca8
	b	.L11a
.L118:
	ldr	r0, =.L2c9c
.L11a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_909_2008100

.thumb_func_start OvlFunc_909_2008130
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1420
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_2008130

.thumb_func_start OvlFunc_909_2008150
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #0x81
	mov	r2, #0
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =0x1764
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_2008150

.thumb_func_start OvlFunc_909_20081b4
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1750
	bl	__Func_8092b94
	ldr	r0, =0x302
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1d0
	ldr	r0, =0x1768
	bl	__Func_8092b94
.L1d0:
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092f84
	ldr	r0, =0x302
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_20081b4

.thumb_func_start OvlFunc_909_20081f4
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1769
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_20081f4

.thumb_func_start OvlFunc_909_2008214
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x202
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L22c
	ldr	r0, =0x174b
	bl	__Func_8092b94
	b	.L25e
.L22c:
	ldr	r0, =0x84e
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L23e
	ldr	r0, =0x176e
	bl	__Func_8092b94
	b	.L25e
.L23e:
	ldr	r0, =0x1432
	bl	__Func_8092b94
	ldr	r0, =0x84d
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L25e
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L25e:
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_2008214

.thumb_func_start OvlFunc_909_200828c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1756
	bl	__Func_8092b94
	ldr	r0, =0x303
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2a8
	ldr	r0, =0x176c
	bl	__Func_8092b94
.L2a8:
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092f84
	ldr	r0, =0x303
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_200828c

.thumb_func_start OvlFunc_909_20082cc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x202
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2e4
	ldr	r0, =0x174c
	bl	__Func_8092b94
	b	.L30c
.L2e4:
	ldr	r0, =0x845
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2f6
	ldr	r0, =0x1436
	bl	__Func_8092b94
	b	.L30c
.L2f6:
	ldr	r0, =0x1434
	bl	__Func_8092b94
	ldr	r0, =0x84e
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L30c
	ldr	r0, =0x176f
	bl	__Func_8092b94
.L30c:
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_20082cc

.thumb_func_start OvlFunc_909_2008338
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r6, [r3]
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r5, #0
	cmp	r3, #9
	bne	.L35e
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L366
	mov	r0, #0xbc
	b	.L360
.L35e:
	mov	r0, #0x9e
.L360:
	bl	__Func_80f9080
	mov	r5, #1
.L366:
	cmp	r5, #0
	beq	.L376
	mov	r0, #1
	bl	__Func_80118a8
	mov	r0, #2
	bl	__Func_80118a8
.L376:
	bl	__Func_80916b0
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80924d4
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #9
	bne	.L3b2
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #0
	neg	r2, r2
	bl	__Func_809228c
	b	.L3be
.L3b2:
	mov	r2, #0x10
	mov	r0, #0
	mov	r1, #3
	neg	r2, r2
	bl	__Func_8092208
.L3be:
	mov	r0, #0x10
	bl	__Func_809163c
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8091e9c
	bl	__Func_8091750
	mov	r0, #1
	bl	__Func_80118c0
	mov	r0, #2
	bl	__Func_80118c0
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_2008338

.thumb_func_start OvlFunc_909_20083ec
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x174d
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_20083ec

.thumb_func_start OvlFunc_909_2008408
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x174e
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_2008408

.thumb_func_start OvlFunc_909_2008424
	push	{lr}
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L434
	bl	OvlFunc_909_20083ec
	b	.L438
.L434:
	bl	OvlFunc_909_2008408
.L438:
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_2008424


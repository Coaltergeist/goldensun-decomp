	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_928_2008500
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r3, #0x80
	ldr	r2, [r5, #0x38]
	lsl	r3, #24
	mov	r6, #0
	cmp	r2, r3
	bne	.Lm928_518
	ldr	r3, [r5, #0x40]
	mov	r0, #0
	cmp	r3, r2
	beq	.Lm928_594
.Lm928_518:
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, r0
	ldr	r0, [r1, #8]
	asr	r3, r0, #20
	sub	r3, #0x11
	cmp	r3, #1
	bhi	.Lm928_552
	ldr	r3, [r1, #0x10]
	asr	r3, #20
	cmp	r3, #0xe
	bne	.Lm928_552
	ldr	r2, [r5, #8]
	asr	r3, r2, #20
	cmp	r3, #0x13
	bgt	.Lm928_552
	ldr	r3, [r5, #0x24]
	cmp	r3, #0
	bgt	.Lm928_552
	cmp	r0, r2
	bgt	.Lm928_55a
	mov	r2, r5
	add	r2, #0x62
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	mov	r6, #1
	b	.Lm928_55a
.Lm928_552:
	mov	r2, r5
	add	r2, #0x62
	mov	r3, #0
	strb	r3, [r2]
.Lm928_55a:
	cmp	r6, #0
	beq	.Lm928_57e
	mov	r2, #0x62
	add	r2, r5
	ldrb	r3, [r2]
	mov	r12, r2
	cmp	r3, #0x77
	bls	.Lm928_57e
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xc1
	ldr	r3, [r3]
	lsl	r2, #1
	add	r0, r3, r2
	mov	r3, #0xc8
	ldr	r2, .Lm928_58c	@ 0
	strh	r3, [r0]
	mov	r3, r12
	strb	r2, [r3]
.Lm928_57e:
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, r6
	bl	OvlFunc_928_2008408
	mov	r0, #0
	b	.Lm928_594

	.align	2, 0
.Lm928_58c:
	.word	0
	.pool

.Lm928_594:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_928_2008500


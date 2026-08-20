	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200b9c8
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ed0
	ldr	r4, =.Lm932_525c
	ldr	r6, [r3]
	mov	r2, #0
	ldrsh	r3, [r4, r2]
	cmp	r3, #0
	bgt	.Lm932_3a28
.Lm932_39d8:
	ldr	r1, =.Lm932_5260
	ldrh	r3, [r1]
	ldr	r5, =s8_ARRAY_932__0200bd28
	add	r2, r3, #1
	lsl	r3, #16
	asr	r3, #16
	ldrsb	r0, [r5, r3]
	mov	r3, #1
	neg	r3, r3
	strh	r2, [r1]
	cmp	r0, r3
	bne	.Lm932_3a0c
	ldr	r3, .Lm932_39f8	@ 0
	strh	r3, [r1]
	b	.Lm932_39d8

	.align	2, 0
.Lm932_39f8:
	.word	0
	.pool

.Lm932_3a0c:
	add	r3, r2, #1
	strh	r3, [r1]
	lsl	r3, r2, #16
	asr	r3, #16
	ldrsb	r3, [r5, r3]
	ldr	r4, =.Lm932_525c
	lsl	r0, #1
	strh	r3, [r4]
	add	r0, r6, r0
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x5000006
	ldr	r2, =0x80000009
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
.Lm932_3a28:
	ldrh	r3, [r4]
	sub	r3, #1
	strh	r3, [r4]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b9c8


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AltmillerCave_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x93
	cmp	r2, r3
	bne	.Lm957_a18
	ldr	r0, =.Lm957_41b0
	b	.Lm957_a2e
.Lm957_a18:
	ldr	r3, =0x95
	cmp	r2, r3
	bne	.Lm957_a22
	ldr	r0, =.Lm957_4270
	b	.Lm957_a2e
.Lm957_a22:
	ldr	r3, =0x97
	cmp	r2, r3
	bne	.Lm957_a2c
	ldr	r0, =.Lm957_4318
	b	.Lm957_a2e
.Lm957_a2c:
	ldr	r0, =.Lm957_4198
.Lm957_a2e:
	pop	{r1}
	bx	r1
.func_end AltmillerCave_GetActors

.thumb_func_start OvlFunc_957_2008a54
	push	{lr}
	ldr	r3, =ewram_2001004
	ldrb	r2, [r3]
	ldr	r1, =0x3f42
	ldr	r3, =REG_BLDCNT
	strh	r1, [r3]
	lsl	r2, #24
	asr	r2, #24
	cmp	r2, #0
	bne	.Lm957_a70
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, #2
	b	.Lm957_aa6
.Lm957_a70:
	cmp	r2, #1
	bne	.Lm957_a7c
	mov	r2, #0xe0
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #4
	b	.Lm957_aa6
.Lm957_a7c:
	cmp	r2, #2
	bne	.Lm957_a88
	mov	r2, #0xc0
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #4
	b	.Lm957_aa6
.Lm957_a88:
	cmp	r2, #3
	bne	.Lm957_a94
	mov	r2, #0xa0
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #4
	b	.Lm957_aa6
.Lm957_a94:
	cmp	r2, #4
	bne	.Lm957_aa0
	mov	r2, #0x80
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #4
	b	.Lm957_aa6
.Lm957_aa0:
	mov	r2, #0xc0
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #3
.Lm957_aa6:
	strh	r2, [r3]
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008a54


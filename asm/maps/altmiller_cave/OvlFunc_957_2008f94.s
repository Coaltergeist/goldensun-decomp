	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_2008f94
	push	{r5, r6, r7, lr}
	ldr	r4, =.Lm957_3f6c
	ldr	r5, [r4]
	mov	r0, #0
	ldrsh	r2, [r5, r0]
	sub	sp, #4
	mov	r7, #1
	ldrh	r1, [r5]
	cmp	r2, #0
	bne	.Lm957_fbe
	ldrh	r3, [r5, #8]
	ldr	r0, =0xbff0000
	add	r3, #0x10
	strh	r3, [r5, #8]
	lsl	r3, #16
	cmp	r3, r0
	bls	.Lm957_1032
	add	r3, r1, #1
	strh	r3, [r5]
	strh	r2, [r5, #2]
	b	.Lm957_1032
.Lm957_fbe:
	cmp	r2, #1
	bne	.Lm957_fcc
	mov	r2, #2
	ldrsh	r3, [r5, r2]
	cmp	r3, #0x1e
	bne	.Lm957_1032
	b	.Lm957_fe0
.Lm957_fcc:
	cmp	r2, #2
	bne	.Lm957_fe6
	ldrh	r3, [r5, #8]
	ldr	r0, =0xfff8
	ldr	r2, =0x2ff0000
	add	r3, r0
	strh	r3, [r5, #8]
	lsl	r3, #16
	cmp	r3, r2
	bhi	.Lm957_1032
.Lm957_fe0:
	add	r3, r1, #1
	strh	r3, [r5]
	b	.Lm957_1032
.Lm957_fe6:
	cmp	r2, #3
	bne	.Lm957_102c
	ldr	r3, =ewram_2001002
	mov	r6, #0
	ldrsb	r6, [r3, r6]
	mov	r1, #5
	lsl	r0, r6, #16
	str	r4, [sp]
	bl	_divsi3_RAM
	ldrh	r3, [r5, #6]
	ldr	r2, =0xc2ff0000
	sub	r3, r0
	lsl	r3, #16
	add	r3, r2
	ldr	r2, =0x5fe0000
	ldr	r4, [sp]
	cmp	r3, r2
	bhi	.Lm957_1032
	mov	r2, #0x80
	lsl	r2, #7
	add	r3, r0, r2
	strh	r3, [r5, #6]
	mov	r2, #0
	mov	r3, #0x63
	mov	r0, r6
	strh	r3, [r5]
	strh	r2, [r5, #8]
	add	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_957_2008ee0
	ldr	r4, [sp]
	str	r3, [r0, #0x6c]
	b	.Lm957_1032
.Lm957_102c:
	cmp	r2, #0x63
	bne	.Lm957_1032
	mov	r7, #0
.Lm957_1032:
	cmp	r7, #0
	beq	.Lm957_106a
	ldr	r2, [r4]
	ldrh	r3, [r2, #6]
	ldrh	r1, [r2, #8]
	add	r3, r1
	strh	r3, [r2, #6]
	ldrh	r0, [r2, #6]
	str	r4, [sp]
	bl	OvlFunc_957_2008f6c
	ldr	r4, [sp]
	ldr	r1, [r4]
	ldrh	r3, [r1, #0xa]
	ldrh	r2, [r1, #8]
	mov	r0, #0xc0
	add	r3, r2
	strh	r3, [r1, #0xa]
	lsl	r0, #22
	lsl	r3, #16
	cmp	r3, r0
	bls	.Lm957_106a
	mov	r3, #0
	strh	r3, [r1, #0xa]
	mov	r0, #0x87
	bl	__PlaySound
	ldr	r4, [sp]
.Lm957_106a:
	ldr	r2, [r4]
	ldrh	r3, [r2, #2]
	add	r3, #1
	strh	r3, [r2, #2]
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008f94


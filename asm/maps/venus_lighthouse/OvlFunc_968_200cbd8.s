	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200cbd8
	push	{r5, r6, r7, lr}
	mov	r5, r0
	ldr	r3, [r5, #8]
	sub	sp, #0xc
	mov	r0, sp
	str	r3, [r0]
	ldr	r1, =0xfff00000
	ldr	r3, [r5, #0xc]
	add	r3, r1
	str	r3, [r0, #4]
	ldr	r3, [r5, #0x10]
	mov	r1, #0
	str	r3, [r0, #8]
	bl	OvlFunc_968_200832c
	mov	r7, r0
	ldr	r6, [r7, #0x50]
	ldr	r3, [r6, #0x28]
	mov	r1, #0x80
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	lsl	r1, #1
	cmp	r3, r1
	beq	.Lm968_4c0a
	b	.Lm968_4d4c
.Lm968_4c0a:
	ldr	r2, [r5, #0x24]
	mov	r4, r2
	cmp	r2, #0
	bge	.Lm968_4c14
	neg	r4, r2
.Lm968_4c14:
	ldr	r3, [r5, #0x2c]
	mov	r1, r3
	cmp	r3, #0
	bge	.Lm968_4c1e
	neg	r1, r3
.Lm968_4c1e:
	cmp	r4, r1
	ble	.Lm968_4c38
	mov	r3, r2
	cmp	r3, #0
	bge	.Lm968_4c2c
	ldr	r2, =0xffff
	add	r3, r2
.Lm968_4c2c:
	cmp	r3, #0
	bge	.Lm968_4c34
	ldr	r4, =.Lm968_51a4
	b	.Lm968_4c4a
.Lm968_4c34:
	ldr	r4, =.Lm968_51a8
	b	.Lm968_4c4a
.Lm968_4c38:
	cmp	r3, #0
	bge	.Lm968_4c40
	ldr	r1, =0xffff
	add	r3, r1
.Lm968_4c40:
	cmp	r3, #0
	bge	.Lm968_4c48
	ldr	r4, =.Lm968_51ac
	b	.Lm968_4c4a
.Lm968_4c48:
	ldr	r4, =.Lm968_51b0
.Lm968_4c4a:
	ldrb	r1, [r4]
	mov	r0, r1
	cmp	r0, #0
	beq	.Lm968_4c74
	mov	r2, r6
	add	r2, #0x24
	ldrb	r3, [r2]
	cmp	r3, r0
	beq	.Lm968_4c6e
	mov	r6, r2
.Lm968_4c5e:
	add	r4, #1
	ldrb	r1, [r4]
	mov	r2, r1
	cmp	r2, #0
	beq	.Lm968_4c74
	ldrb	r3, [r6]
	cmp	r3, r2
	bne	.Lm968_4c5e
.Lm968_4c6e:
	mov	r3, r1
	cmp	r3, #0
	bne	.Lm968_4c7e
.Lm968_4c74:
	mov	r0, r5
	ldr	r1, =gScript_968__0200d564
	bl	__Actor_SetScript
	b	.Lm968_4d54
.Lm968_4c7e:
	ldr	r3, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb9
	cmp	r2, r3
	bne	.Lm968_4ce8
	ldr	r0, =.Lm968_5128
	mov	r4, #0
	ldr	r6, [r5, #8]
	ldr	r3, [r0, r4]
	asr	r2, r6, #20
	cmp	r2, r3
	bne	.Lm968_4ca8
	ldr	r3, [r5, #0x10]
	ldr	r2, [r0, #4]
	asr	r3, #20
	cmp	r3, r2
	beq	.Lm968_4cc4
.Lm968_4ca8:
	add	r4, #1
	cmp	r4, #3
	bhi	.Lm968_4cc4
	lsl	r1, r4, #3
	ldr	r3, [r0, r1]
	asr	r2, r6, #20
	cmp	r2, r3
	bne	.Lm968_4ca8
	ldr	r3, [r5, #0x10]
	add	r2, r1, #4
	ldr	r2, [r0, r2]
	asr	r3, #20
	cmp	r3, r2
	bne	.Lm968_4ca8
.Lm968_4cc4:
	mov	r6, #0
	lsl	r4, #2
	b	.Lm968_4cd0
.Lm968_4cca:
	add	r3, r1, #1
	str	r3, [r0, r4]
	add	r6, #1
.Lm968_4cd0:
	ldr	r0, =.Lm968_772c
	ldr	r1, [r0, r4]
	ldrb	r2, [r1]
	cmp	r2, #0
	beq	.Lm968_4c74
	ldr	r3, [r7, #0x50]
	add	r3, #0x24
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.Lm968_4cca
	ldr	r3, =.Lm968_777c
	b	.Lm968_4d3e
.Lm968_4ce8:
	ldr	r0, =.Lm968_5164
	mov	r4, #0
	ldr	r6, [r5, #8]
	ldr	r3, [r0, r4]
	asr	r2, r6, #20
	cmp	r2, r3
	bne	.Lm968_4d00
	ldr	r3, [r5, #0x10]
	ldr	r2, [r0, #4]
	asr	r3, #20
	cmp	r3, r2
	beq	.Lm968_4d1c
.Lm968_4d00:
	add	r4, #1
	cmp	r4, #7
	bhi	.Lm968_4d1c
	lsl	r1, r4, #3
	ldr	r3, [r0, r1]
	asr	r2, r6, #20
	cmp	r2, r3
	bne	.Lm968_4d00
	ldr	r3, [r5, #0x10]
	add	r2, r1, #4
	ldr	r2, [r0, r2]
	asr	r3, #20
	cmp	r3, r2
	bne	.Lm968_4d00
.Lm968_4d1c:
	mov	r6, #0
	lsl	r4, #2
	b	.Lm968_4d28
.Lm968_4d22:
	add	r3, r1, #1
	str	r3, [r0, r4]
	add	r6, #1
.Lm968_4d28:
	ldr	r0, =.Lm968_778c
	ldr	r1, [r0, r4]
	ldrb	r2, [r1]
	cmp	r2, #0
	beq	.Lm968_4c74
	ldr	r3, [r7, #0x50]
	add	r3, #0x24
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.Lm968_4d22
	ldr	r3, =.Lm968_77ec
.Lm968_4d3e:
	ldr	r2, [r3, r4]
	lsl	r3, r6, #2
	ldr	r1, [r3, r2]
	mov	r0, r5
	bl	__Actor_SetScript
	b	.Lm968_4d54
.Lm968_4d4c:
	ldr	r1, =gScript_968__0200d564
	mov	r0, r5
	bl	__Actor_SetScript
.Lm968_4d54:
	mov	r0, #0
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_200cbd8


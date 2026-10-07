	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MP2KPlayerMain  @ 0x080f9c90
	ldr	r2, .Lf9ef4	@ 0x68736d53
	ldr	r3, [r0, #0x34]
	cmp	r2, r3
	beq	.Lf9c9a
	bx	lr
.Lf9c9a:
	add	r3, #1
	str	r3, [r0, #0x34]
	push	{r0, lr}
	ldr	r3, [r0, #0x38]
	cmp	r3, #0
	beq	.Lf9cac
	ldr	r0, [r0, #0x3c]
	bl	Func_80f9ee8
.Lf9cac:
	pop	{r0}
	push	{r4, r5, r6, r7}
	mov	r4, r8
	mov	r5, r9
	mov	r6, r10
	mov	r7, r11
	push	{r4, r5, r6, r7}
	mov	r7, r0
	ldr	r0, [r7, #4]
	cmp	r0, #0
	bge	.Lf9cc4
	b	.Lf9ed8
.Lf9cc4:
	ldr	r0, .Lf9ef0	@ SOUND_INFO_PTR
	ldr	r0, [r0]
	mov	r8, r0
	mov	r0, r7
	bl	FadeOutBody
	ldr	r0, [r7, #4]
	cmp	r0, #0
	bge	.Lf9cd8
	b	.Lf9ed8
.Lf9cd8:
	ldrh	r0, [r7, #0x22]
	ldrh	r1, [r7, #0x20]
	add	r0, r1
	b	.Lf9e28
.Lf9ce0:
	ldrb	r6, [r7, #8]
	ldr	r5, [r7, #0x2c]
	mov	r3, #1
	mov	r4, #0
.Lf9ce8:
	ldrb	r0, [r5]
	mov	r1, #0x80
	tst	r1, r0
	bne	.Lf9cf2
	b	.Lf9e04
.Lf9cf2:
	mov	r10, r3
	orr	r4, r3
	mov	r11, r4
	ldr	r4, [r5, #0x20]
	cmp	r4, #0
	beq	.Lf9d26
.Lf9cfe:
	ldrb	r1, [r4]
	mov	r0, #0xc7
	tst	r0, r1
	beq	.Lf9d1a
	ldrb	r0, [r4, #0x10]
	cmp	r0, #0
	beq	.Lf9d20
	sub	r0, #1
	strb	r0, [r4, #0x10]
	bne	.Lf9d20
	mov	r0, #0x40
	orr	r1, r0
	strb	r1, [r4]
	b	.Lf9d20
.Lf9d1a:
	mov	r0, r4
	bl	ClearChain
.Lf9d20:
	ldr	r4, [r4, #0x34]
	cmp	r4, #0
	bne	.Lf9cfe
.Lf9d26:
	ldrb	r3, [r5]
	mov	r0, #0x40
	tst	r0, r3
	beq	.Lf9da4
	mov	r0, r5
	bl	Clear64byte
	mov	r0, #0x80
	strb	r0, [r5]
	mov	r0, #2
	strb	r0, [r5, #0xf]
	mov	r0, #0x40
	strb	r0, [r5, #0x13]
	mov	r0, #0x16
	strb	r0, [r5, #0x19]
	mov	r0, #1
	add	r1, r5, #6
	strb	r0, [r1, #0x1e]
	b	.Lf9da4
.Lf9d4c:
	ldr	r2, [r5, #0x40]
	ldrb	r1, [r2]
	cmp	r1, #0x80
	bcs	.Lf9d58
	ldrb	r1, [r5, #7]
	b	.Lf9d62
.Lf9d58:
	add	r2, #1
	str	r2, [r5, #0x40]
	cmp	r1, #0xbd
	bcc	.Lf9d62
	strb	r1, [r5, #7]
.Lf9d62:
	cmp	r1, #0xcf
	bcc	.Lf9d78
	mov	r0, r8
	ldr	r3, [r0, #0x38]
	mov	r0, r1
	sub	r0, #0xcf
	mov	r1, r7
	mov	r2, r5
	bl	Func_80f9ee8
	b	.Lf9da4
.Lf9d78:
	cmp	r1, #0xb0
	bls	.Lf9d9a
	mov	r0, r1
	sub	r0, #0xb1
	strb	r0, [r7, #0xa]
	mov	r3, r8
	ldr	r3, [r3, #0x34]
	lsl	r0, #2
	ldr	r3, [r3, r0]
	mov	r0, r7
	mov	r1, r5
	bl	Func_80f9ee8
	ldrb	r0, [r5]
	cmp	r0, #0
	beq	.Lf9e00
	b	.Lf9da4
.Lf9d9a:
	ldr	r0, .Lf9eec	@ Data_fba14
	sub	r1, #0x80
	add	r1, r0
	ldrb	r0, [r1]
	strb	r0, [r5, #1]
.Lf9da4:
	ldrb	r0, [r5, #1]
	cmp	r0, #0
	beq	.Lf9d4c
	sub	r0, #1
	strb	r0, [r5, #1]
	ldrb	r1, [r5, #0x19]
	cmp	r1, #0
	beq	.Lf9e00
	ldrb	r0, [r5, #0x17]
	cmp	r0, #0
	beq	.Lf9e00
	ldrb	r0, [r5, #0x1c]
	cmp	r0, #0
	beq	.Lf9dc6
	sub	r0, #1
	strb	r0, [r5, #0x1c]
	b	.Lf9e00
.Lf9dc6:
	ldrb	r0, [r5, #0x1a]
	add	r0, r1
	strb	r0, [r5, #0x1a]
	mov	r1, r0
	sub	r0, #0x40
	lsl	r0, #24
	bpl	.Lf9dda
	lsl	r2, r1, #24
	asr	r2, #24
	b	.Lf9dde
.Lf9dda:
	mov	r0, #0x80
	sub	r2, r0, r1
.Lf9dde:
	ldrb	r0, [r5, #0x17]
	mul	r0, r2
	asr	r2, r0, #6
	ldrb	r0, [r5, #0x16]
	eor	r0, r2
	lsl	r0, #24
	beq	.Lf9e00
	strb	r2, [r5, #0x16]
	ldrb	r0, [r5]
	ldrb	r1, [r5, #0x18]
	cmp	r1, #0
	bne	.Lf9dfa
	mov	r1, #0xc
	b	.Lf9dfc
.Lf9dfa:
	mov	r1, #3
.Lf9dfc:
	orr	r0, r1
	strb	r0, [r5]
.Lf9e00:
	mov	r3, r10
	mov	r4, r11
.Lf9e04:
	sub	r6, #1
	ble	.Lf9e10
	mov	r0, #0x50
	add	r5, r0
	lsl	r3, #1
	b	.Lf9ce8
.Lf9e10:
	ldr	r0, [r7, #0xc]
	add	r0, #1
	str	r0, [r7, #0xc]
	cmp	r4, #0
	bne	.Lf9e22
	mov	r0, #0x80
	lsl	r0, #24
	str	r0, [r7, #4]
	b	.Lf9ed8
.Lf9e22:
	str	r4, [r7, #4]
	ldrh	r0, [r7, #0x22]
	sub	r0, #0x96
.Lf9e28:
	strh	r0, [r7, #0x22]
	cmp	r0, #0x96
	bcc	.Lf9e30
	b	.Lf9ce0
.Lf9e30:
	ldrb	r2, [r7, #8]
	ldr	r5, [r7, #0x2c]
.Lf9e34:
	ldrb	r0, [r5]
	mov	r1, #0x80
	tst	r1, r0
	beq	.Lf9ece
	mov	r1, #0xf
	tst	r1, r0
	beq	.Lf9ece
	mov	r9, r2
	mov	r0, r7
	mov	r1, r5
	bl	TrkVolPitSet
	ldr	r4, [r5, #0x20]
	cmp	r4, #0
	beq	.Lf9ec4
.Lf9e52:
	ldrb	r1, [r4]
	mov	r0, #0xc7
	tst	r0, r1
	bne	.Lf9e62
	mov	r0, r4
	bl	ClearChain
	b	.Lf9ebe
.Lf9e62:
	ldrb	r0, [r4, #1]
	mov	r6, #7
	and	r6, r0
	ldrb	r3, [r5]
	mov	r0, #3
	tst	r0, r3
	beq	.Lf9e80
	bl	Func_80f9f3c
	cmp	r6, #0
	beq	.Lf9e80
	ldrb	r0, [r4, #0x1d]
	mov	r1, #1
	orr	r0, r1
	strb	r0, [r4, #0x1d]
.Lf9e80:
	ldrb	r3, [r5]
	mov	r0, #0xc
	tst	r0, r3
	beq	.Lf9ebe
	ldrb	r1, [r4, #8]
	mov	r0, #8
	ldrsb	r0, [r5, r0]
	add	r2, r1, r0
	bpl	.Lf9e94
	mov	r2, #0
.Lf9e94:
	cmp	r6, #0
	beq	.Lf9eb2
	mov	r0, r8
	ldr	r3, [r0, #0x30]
	mov	r1, r2
	ldrb	r2, [r5, #9]
	mov	r0, r6
	bl	Func_80f9ee8
	str	r0, [r4, #0x20]
	ldrb	r0, [r4, #0x1d]
	mov	r1, #2
	orr	r0, r1
	strb	r0, [r4, #0x1d]
	b	.Lf9ebe
.Lf9eb2:
	mov	r1, r2
	ldrb	r2, [r5, #9]
	ldr	r0, [r4, #0x24]
	bl	MidiKeyToFreq
	str	r0, [r4, #0x20]
.Lf9ebe:
	ldr	r4, [r4, #0x34]
	cmp	r4, #0
	bne	.Lf9e52
.Lf9ec4:
	ldrb	r0, [r5]
	mov	r1, #0xf0
	and	r0, r1
	strb	r0, [r5]
	mov	r2, r9
.Lf9ece:
	sub	r2, #1
	ble	.Lf9ed8
	mov	r0, #0x50
	add	r5, r0
	bgt	.Lf9e34
.Lf9ed8:
	ldr	r0, .Lf9ef4	@ 0x68736d53
	str	r0, [r7, #0x34]
	pop	{r0, r1, r2, r3, r4, r5, r6, r7}
	mov	r8, r0
	mov	r9, r1
	mov	r10, r2
	mov	r11, r3
	pop	{r3}
.func_end MP2KPlayerMain


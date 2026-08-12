	.include "macros.inc"

.thumb_func_start Func_807a0f4  @ 0x0807a0f4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	lsl	r3, r7, #2
	add	r3, r7
	mov	r10, r1
	lsl	r3, #2
	add	r3, r10
	add	r3, #0x30
	mov	r11, r3
	ldr	r3, =0x3e7
	mov	r2, #0
	mov	r0, r11
	mov	r9, r2
	mov	r8, r3
	bl	GetFlag
	cmp	r0, #0
	beq	.L7a12a
	mov	r0, #1
	neg	r0, r0
	b	.L7a19a
.L7a12a:
	bl	GetPartySize
	cmp	r9, r0
	bge	.L7a172
	ldr	r3, =gState
	mov	r2, #0xfc
	lsl	r2, #1
	add	r6, r3, r2
	mov	r5, r0
.L7a13c:
	ldrb	r0, [r6]
	bl	GetUnit
	mov	r2, #0x8c
	lsl	r2, #1
	add	r3, r7, r2
	ldrb	r3, [r0, r3]
	cmp	r3, #9
	bhi	.L7a16a
	add	r0, r2
	mov	r1, #0
	mov	r2, #3
.L7a154:
	ldrb	r3, [r0]
	sub	r2, #1
	add	r0, #1
	add	r1, r3
	cmp	r2, #0
	bge	.L7a154
	cmp	r8, r1
	ble	.L7a16a
	ldrb	r3, [r6]
	mov	r8, r1
	mov	r9, r3
.L7a16a:
	sub	r5, #1
	add	r6, #1
	cmp	r5, #0
	bne	.L7a13c
.L7a172:
	ldr	r2, =0x3e7
	cmp	r8, r2
	bne	.L7a17e
	mov	r0, #2
	neg	r0, r0
	b	.L7a19a
.L7a17e:
	mov	r1, r7
	mov	r2, r10
	mov	r0, r9
	bl	GiveDjinni
	mov	r1, r7
	mov	r2, r10
	mov	r0, r9
	bl	Func_807a458
	mov	r0, r11
	bl	SetFlag
	mov	r0, r9
.L7a19a:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a0f4

.thumb_func_start GiveDjinni  @ 0x0807a1b4
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r7, r2
	bl	GetUnit
	mov	r3, #0x8c
	lsl	r3, #1
	add	r6, r5, r3
	ldrb	r4, [r0, r6]
	mov	r3, r4
	cmp	r3, #9
	bhi	.L7a1de
	lsl	r3, r5, #2
	mov	r1, r3
	add	r1, #0xf8
	mov	r2, #1
	ldr	r3, [r0, r1]
	lsl	r2, r7
	and	r3, r2
	cmp	r3, #0
	beq	.L7a1e4
.L7a1de:
	mov	r0, #1
	neg	r0, r0
	b	.L7a1f0
.L7a1e4:
	add	r3, r4, #1
	strb	r3, [r0, r6]
	ldr	r3, [r0, r1]
	orr	r3, r2
	str	r3, [r0, r1]
	mov	r0, #0
.L7a1f0:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end GiveDjinni

.thumb_func_start Func_807a1f8  @ 0x0807a1f8
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r6, r2
	mov	r7, r0
	bl	GetUnit
	mov	r2, #0x8c
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r0, r3]
	cmp	r3, #0
	beq	.L7a2b2
	mov	r3, #0x8e
	lsl	r3, #1
	add	r2, r5, r3
	ldrb	r3, [r0, r2]
	cmp	r3, #9
	bls	.L7a222
	mov	r3, #0xa
	strb	r3, [r0, r2]
	b	.L7a2b2
.L7a222:
	lsl	r1, r5, #2
	mov	r3, r1
	add	r3, #0xf8
	mov	r2, #1
	ldr	r3, [r0, r3]
	lsl	r2, r6
	and	r3, r2
	cmp	r3, #0
	beq	.L7a2b2
	mov	r4, #0x84
	lsl	r4, #1
	add	r3, r1, r4
	ldr	r3, [r0, r3]
	and	r3, r2
	mov	r0, #0
	cmp	r3, #0
	bne	.L7a2b4
	cmp	r7, #7
	bls	.L7a24a
	mov	r0, #1
.L7a24a:
	bl	Func_8077330
	mov	r2, #0x84
	mov	r3, r0
	lsl	r2, #1
	mov	r1, r3
	add	r3, r2
	ldr	r3, [r3]
	mov	r4, #0
	add	r1, #8
	cmp	r4, r3
	bge	.L7a28c
	ldrb	r3, [r1]
	cmp	r5, r3
	bne	.L7a26e
	ldrb	r3, [r1, #1]
	cmp	r6, r3
	beq	.L7a28c
.L7a26e:
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	add	r4, #1
	cmp	r4, r3
	bge	.L7a28c
	lsl	r2, r4, #2
	ldrb	r3, [r1, r2]
	cmp	r5, r3
	bne	.L7a26e
	add	r3, r1, r2
	ldrb	r3, [r3, #1]
	cmp	r6, r3
	bne	.L7a26e
.L7a28c:
	mov	r2, #0x80
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r3, [r3]
	cmp	r4, r3
	beq	.L7a2ae
	lsl	r3, r4, #2
	add	r3, r1, r3
	ldrb	r3, [r3, #3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bgt	.L7a2b2
	mov	r4, #2
	neg	r4, r4
	cmp	r3, r4
	beq	.L7a2b2
.L7a2ae:
	mov	r0, #1
	b	.L7a2b4
.L7a2b2:
	mov	r0, #0
.L7a2b4:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_807a1f8

.thumb_func_start Func_807a2bc  @ 0x0807a2bc
	push	{r5, r6, lr}
	mov	r6, r2
	mov	r5, r1
	bl	GetUnit
	mov	r3, #0x84
	lsl	r3, #1
	lsl	r5, #2
	add	r5, r3
	ldr	r3, [r0, r5]
	mov	r2, #1
	lsl	r2, r6
	and	r3, r2
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_807a2bc

.thumb_func_start SetDjinni  @ 0x0807a2e4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r6, r1
	mov	r8, r2
	bl	GetUnit
	mov	r1, r6
	mov	r5, r0
	mov	r2, r8
	mov	r0, r7
	bl	Func_807a1f8
	mov	r10, r0
	cmp	r0, #0
	beq	.L7a340
	lsl	r2, r6, #2
	mov	r3, r2
	add	r3, #0xf8
	mov	r1, #1
	mov	r0, r8
	ldr	r3, [r5, r3]
	lsl	r1, r0
	and	r3, r1
	cmp	r3, #0
	beq	.L7a32a
	mov	r3, #0x84
	lsl	r3, #1
	add	r2, r3
	ldr	r3, [r5, r2]
	orr	r3, r1
	str	r3, [r5, r2]
	b	.L7a32e
.L7a32a:
	mov	r0, #0
	b	.L7a342
.L7a32e:
	mov	r0, #0x8e
	lsl	r0, #1
	add	r2, r6, r0
	ldrb	r3, [r5, r2]
	add	r3, #1
	strb	r3, [r5, r2]
	mov	r0, r7
	bl	Func_8079ae8
.L7a340:
	mov	r0, r10
.L7a342:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end SetDjinni


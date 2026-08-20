	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_918_2009244
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xbf
	ldr	r2, [r3]
	ldr	r3, [r3, #0x14]
	lsl	r1, #1
	mov	r8, r3
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #4
	cmp	r3, #0
	beq	.Lm918_1268
	b	.Lm918_1400
.Lm918_1268:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0x1f
	and	r3, r2
	cmp	r3, #0
	beq	.Lm918_1276
	b	.Lm918_1400
.Lm918_1276:
	ldr	r1, =0x5000020
	mov	r3, #0x20
	mov	r2, #0
	add	r8, r3
	mov	r9, r1
	mov	r10, r2
.Lm918_1282:
	ldr	r3, =.Lm918_2db8
	ldr	r3, [r3]
	ldr	r1, =.Lm918_1f00
	lsl	r3, #2
	add	r2, r3, #4
	ldr	r4, [r1, r3]
	add	r3, #8
	ldr	r6, [r1, r3]
	mov	r3, r10
	ldr	r7, [r1, r2]
	cmp	r3, #0x2f
	bls	.Lm918_12da
	lsr	r5, r4, #31
	mov	r0, r4
	mov	r1, #3
	str	r4, [sp]
	add	r5, r4, r5
	bl	_divsi3_RAM
	asr	r5, #1
	ldr	r4, [sp]
	add	r5, r0
	sub	r4, r5
	mov	r0, r7
	mov	r1, #3
	str	r4, [sp]
	bl	_divsi3_RAM
	lsr	r5, r7, #31
	add	r5, r7, r5
	asr	r5, #1
	add	r5, r0
	mov	r1, #3
	mov	r0, r6
	bl	_divsi3_RAM
	sub	r7, r5
	lsr	r5, r6, #31
	add	r5, r6, r5
	asr	r5, #1
	add	r5, r0
	sub	r6, r5
	ldr	r4, [sp]
	b	.Lm918_1384
.Lm918_12da:
	mov	r1, r10
	cmp	r1, #0x1f
	bls	.Lm918_1330
	mov	r0, r4
	mov	r1, #3
	str	r4, [sp]
	bl	_divsi3_RAM
	ldr	r4, [sp]
	mov	r3, r4
	cmp	r4, #0
	bge	.Lm918_12f4
	add	r3, r4, #3
.Lm918_12f4:
	asr	r3, #2
	add	r3, r0, r3
	sub	r4, r3
	mov	r0, r7
	mov	r1, #3
	str	r4, [sp]
	bl	_divsi3_RAM
	mov	r3, r7
	ldr	r4, [sp]
	cmp	r7, #0
	bge	.Lm918_130e
	add	r3, r7, #3
.Lm918_130e:
	asr	r3, #2
	add	r3, r0, r3
	mov	r1, #3
	mov	r0, r6
	sub	r7, r3
	str	r4, [sp]
	bl	_divsi3_RAM
	mov	r3, r6
	ldr	r4, [sp]
	cmp	r6, #0
	bge	.Lm918_1328
	add	r3, r6, #3
.Lm918_1328:
	asr	r3, #2
	add	r3, r0, r3
	sub	r6, r3
	b	.Lm918_1384
.Lm918_1330:
	mov	r2, r10
	cmp	r2, #0xf
	bls	.Lm918_1384
	mov	r5, r4
	cmp	r4, #0
	bge	.Lm918_133e
	add	r5, r4, #3
.Lm918_133e:
	mov	r0, r4
	mov	r1, #5
	str	r4, [sp]
	bl	_divsi3_RAM
	asr	r5, #2
	ldr	r4, [sp]
	add	r5, r0
	sub	r4, r5
	mov	r5, r7
	cmp	r7, #0
	bge	.Lm918_1358
	add	r5, r7, #3
.Lm918_1358:
	mov	r0, r7
	mov	r1, #5
	str	r4, [sp]
	bl	_divsi3_RAM
	asr	r5, #2
	add	r5, r0
	sub	r7, r5
	ldr	r4, [sp]
	mov	r5, r6
	cmp	r6, #0
	bge	.Lm918_1372
	add	r5, r6, #3
.Lm918_1372:
	mov	r0, r6
	mov	r1, #5
	str	r4, [sp]
	bl	_divsi3_RAM
	asr	r5, #2
	add	r5, r0
	ldr	r4, [sp]
	sub	r6, r5
.Lm918_1384:
	mov	r1, r8
	ldrh	r3, [r1]
	mov	r2, #0x1f
	mov	r0, r3
	lsr	r1, r3, #5
	and	r0, r2
	lsr	r3, #10
	and	r1, r2
	and	r3, r2
	add	r0, r4
	add	r1, r7
	add	r3, r6
	cmp	r0, #0x1f
	ble	.Lm918_13a2
	mov	r0, #0x1f
.Lm918_13a2:
	cmp	r1, #0x1f
	ble	.Lm918_13a8
	mov	r1, #0x1f
.Lm918_13a8:
	cmp	r3, #0x1f
	ble	.Lm918_13ae
	mov	r3, #0x1f
.Lm918_13ae:
	cmp	r0, #0
	bge	.Lm918_13b4
	mov	r0, #0
.Lm918_13b4:
	cmp	r1, #0
	bge	.Lm918_13ba
	mov	r1, #0
.Lm918_13ba:
	cmp	r3, #0
	bge	.Lm918_13c0
	mov	r3, #0
.Lm918_13c0:
	lsl	r2, r1, #5
	lsl	r3, #10
	orr	r3, r2
	mov	r1, #1
	mov	r2, r9
	orr	r3, r0
	add	r10, r1
	strh	r3, [r2]
	mov	r3, #2
	mov	r2, r10
	add	r9, r3
	add	r8, r3
	cmp	r2, #0x3e
	bhi	.Lm918_13de
	b	.Lm918_1282
.Lm918_13de:
	ldr	r5, =.Lm918_2db8
	bl	__Random
	mov	r3, #7
	and	r0, r3
	lsl	r2, r0, #1
	ldr	r3, [r5]
	add	r2, r0
	add	r3, r2
	str	r3, [r5]
	ldr	r2, =.Lm918_1f00
	lsl	r3, #2
	ldr	r3, [r2, r3]
	cmp	r3, #0x63
	bne	.Lm918_1400
	mov	r3, #0
	str	r3, [r5]
.Lm918_1400:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_918_2009244


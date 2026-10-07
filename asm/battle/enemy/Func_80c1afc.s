	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c1afc  @ 0x080c1afc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r2, #0
	mov	r11, r0
	mov	r0, #0x80
	sub	sp, #0x10
	mov	r9, r2
	bl	alloc_ewram
	mov	r5, sp
	mov	r3, #0
	mov	r10, r0
	mov	r0, r5
	mov	r8, r3
	bl	Func_80b6a60
	mov	r7, r0
	cmp	r7, #0
	ble	.Lc1b42
	mov	r6, r5
	mov	r5, r7
.Lc1b30:
	ldrh	r0, [r6]
	bl	_GetUnit
	ldrb	r3, [r0, #0xf]
	sub	r5, #1
	add	r6, #2
	add	r8, r3
	cmp	r5, #0
	bne	.Lc1b30
.Lc1b42:
	mov	r1, r7
	mov	r0, r8
	bl	__divsi3
	mov	r8, r0
	mov	r0, #0xfe
	lsl	r0, #2
	bl	_GetFlagByte
	lsl	r0, #24
	asr	r0, #24
	add	r8, r0
	mov	r7, r8
	cmp	r7, #0
	bgt	.Lc1b64
	mov	r2, #1
	mov	r8, r2
.Lc1b64:
	mov	r3, r8
	cmp	r3, #0x63
	ble	.Lc1b6e
	mov	r7, #0x63
	mov	r8, r7
.Lc1b6e:
	ldr	r1, =0xffff
	mov	r2, r10
	mov	r5, #0x1f
.Lc1b74:
	ldrh	r3, [r2, #2]
	sub	r5, #1
	orr	r3, r1
	strh	r3, [r2, #2]
	add	r2, #4
	cmp	r5, #0
	bge	.Lc1b74
	ldr	r7, =.Lc73f8
	mov	r5, #0
	mov	r6, #0
	b	.Lc1b94

	.pool_aligned

.Lc1b94:
	ldrh	r0, [r6, r7]
	bl	_GetEnemyInfo
	ldrh	r0, [r6, r7]
	mov	r2, #0xc0
	lsl	r2, #3
	add	r0, r2
	add	r5, #1
	bl	_ClearFlag
	add	r6, #2
	cmp	r5, #0x13
	bls	.Lc1b94
	mov	r5, #0
.Lc1bb0:
	mov	r0, r5
	bl	Func_80c1a34
	cmp	r0, #0
	blt	.Lc1bf0
	mov	r3, r8
	add	r3, #3
	cmp	r0, r3
	bgt	.Lc1bf0
	mov	r6, #1
	ldr	r3, =0x3e7
	neg	r6, r6
	mov	r4, #0
	mov	r1, r10
.Lc1bcc:
	mov	r7, #2
	ldrsh	r2, [r1, r7]
	cmp	r2, r3
	bge	.Lc1bd8
	mov	r3, r2
	mov	r6, r4
.Lc1bd8:
	add	r4, #1
	add	r1, #4
	cmp	r4, #0x1f
	ble	.Lc1bcc
	cmp	r6, #0
	blt	.Lc1bf0
	lsl	r3, r6, #2
	add	r3, r10
	mov	r2, #1
	strh	r0, [r3, #2]
	strh	r5, [r3]
	add	r9, r2
.Lc1bf0:
	ldr	r3, =0x17b
	add	r5, #1
	cmp	r5, r3
	bls	.Lc1bb0
	mov	r7, r9
	cmp	r7, #0x20
	ble	.Lc1c02
	mov	r2, #0x20
	mov	r9, r2
.Lc1c02:
	mov	r3, r9
	cmp	r3, #0
	beq	.Lc1c28
	bl	Random
	mov	r3, r9
	mul	r3, r0
	lsr	r3, #16
	lsl	r3, #2
	add	r3, r10
	mov	r7, #0
	ldrsh	r5, [r3, r7]
	mov	r2, #2
	ldrsh	r3, [r3, r2]
	mov	r7, r8
	sub	r3, r7, r3
	mov	r2, r11
	str	r3, [r2]
	b	.Lc1c30
.Lc1c28:
	mov	r3, r9
	mov	r7, r11
	str	r3, [r7]
	mov	r5, #1
.Lc1c30:
	mov	r0, r10
	bl	free
	mov	r0, r5
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80c1afc


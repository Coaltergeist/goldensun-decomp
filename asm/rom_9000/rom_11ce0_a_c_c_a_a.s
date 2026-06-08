	.include "macros.inc"

.thumb_func_start HeightTile_3  @ 0x08011d34
	push	{lr}
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	lsl	r4, r3, #19
	mov	r3, #1
	ldrsb	r3, [r0, r3]
	lsl	r0, r3, #19
	mov	r3, r4
	cmp	r0, r4
	ble	.L11d4a
	mov	r3, r0
.L11d4a:
	add	r1, r2
	cmp	r1, #0xf
	bne	.L11d54
	mov	r0, r3
	b	.L11d5a
.L11d54:
	cmp	r1, #0xe
	bhi	.L11d5a
	mov	r0, r4
.L11d5a:
	pop	{r1}
	bx	r1
.func_end HeightTile_3

.thumb_func_start HeightTile_4  @ 0x08011d60
	push	{r5, lr}
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	lsl	r4, r3, #19
	mov	r3, #1
	ldrsb	r3, [r0, r3]
	lsl	r0, r3, #19
	mov	r5, r2
	mov	r2, r4
	cmp	r0, r4
	ble	.L11d78
	mov	r2, r0
.L11d78:
	sub	r3, r5, r1
	mov	r1, r3
	add	r1, #0xf
	cmp	r1, #0xf
	bne	.L11d86
	mov	r0, r2
	b	.L11d8c
.L11d86:
	cmp	r1, #0xe
	bhi	.L11d8c
	mov	r0, r4
.L11d8c:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end HeightTile_4

.thumb_func_start HeightTile_5  @ 0x08011d94
	push	{r5, r6, lr}
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	add	r0, #1
	lsl	r6, r3, #19
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	lsl	r5, r3, #19
	mov	r3, #1
	ldrsb	r3, [r0, r3]
	add	r1, r2
	lsl	r3, #19
	mov	r0, r5
	cmp	r1, #0xf
	beq	.L11dd6
	cmp	r1, #0xe
	bhi	.L11dc6
	sub	r3, r5, r6
	mov	r0, r1
	mul	r0, r3
	mov	r1, #0xf
	bl	__divsi3
	add	r0, r6, r0
	b	.L11dd6
.L11dc6:
	sub	r1, #0xf
	sub	r3, r5
	mov	r0, r1
	mul	r0, r3
	mov	r1, #0xf
	bl	__divsi3
	add	r0, r5, r0
.L11dd6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end HeightTile_5

.thumb_func_start HeightTile_6  @ 0x08011ddc
	push	{r5, lr}
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	add	r0, #1
	lsl	r5, r3, #19
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	lsl	r4, r3, #19
	mov	r3, #1
	ldrsb	r3, [r0, r3]
	sub	r0, r2, r1
	mov	r1, r0
	add	r1, #0xf
	lsl	r3, #19
	cmp	r1, #0xf
	bne	.L11e00
	mov	r0, r4
	b	.L11e24
.L11e00:
	cmp	r1, #0xe
	bhi	.L11e16
	sub	r3, r4, r5
	mov	r0, r1
	mul	r0, r3
	cmp	r0, #0
	bge	.L11e10
	add	r0, #0xf
.L11e10:
	asr	r0, #4
	add	r0, r5, r0
	b	.L11e24
.L11e16:
	sub	r3, r4
	mul	r0, r3
	cmp	r0, #0
	bge	.L11e20
	add	r0, #0xf
.L11e20:
	asr	r0, #4
	add	r0, r4, r0
.L11e24:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end HeightTile_6

.thumb_func_start HeightTile_7  @ 0x08011e2c
	mov	r3, r0
	mov	r0, #0
	ldrsb	r0, [r3, r0]
	mov	r4, #1
	ldrsb	r4, [r3, r4]
	lsl	r2, #4
	ldr	r3, =.L132fc
	add	r1, r2
	lsl	r0, #19
	ldrb	r3, [r3, r1]
	lsl	r4, #19
	sub	r4, r0
	mul	r3, r4
	add	r0, r3
	bx	lr
.func_end HeightTile_7


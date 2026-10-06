	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b9470  @ 0x080b9470
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r7, r1
	sub	sp, #0x10
	mov	r11, r0
	cmp	r7, #0
	ble	.Lb94e4
	mov	r5, r11
	mov	r6, r7
.Lb948c:
	mov	r1, #6
	ldrsh	r3, [r5, r1]
	cmp	r3, #5
	bne	.Lb94dc
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	bl	_GetUnit
	ldrh	r2, [r5, #8]
	ldr	r3, =0xf
	lsl	r0, r2, #16
	asr	r0, #24
	mov	r1, #0xff
	and	r1, r2
	and	r0, r3
	bl	_Func_807a5b0
	bl	_GetMoveInfo
	ldrb	r2, [r0, #3]
	mov	r3, r2
	add	r3, #0xd2
	mov	r1, #0x80
	lsl	r3, #24
	lsl	r1, #17
	cmp	r3, r1
	bls	.Lb94c8
	mov	r3, r2
	cmp	r3, #0x35
	bne	.Lb94dc
.Lb94c8:
	ldrh	r3, [r5, #4]
	ldr	r2, =0x2710
	add	r3, r2
	strh	r3, [r5, #4]
	b	.Lb94dc

	.pool_aligned

.Lb94dc:
	sub	r6, #1
	add	r5, #0x10
	cmp	r6, #0
	bne	.Lb948c
.Lb94e4:
	sub	r7, #1
	mov	r9, r7
.Lb94e8:
	mov	r3, #0
	mov	r7, r9
	mov	r10, r3
	cmp	r7, #0
	ble	.Lb9538
	lsl	r3, r7, #4
	add	r3, r11
	ldr	r1, =Func_8001af8
	mov	r5, r3
	mov	r8, r1
	sub	r5, #0x10
	mov	r6, r3
.Lb9500:
	mov	r3, #0x14
	ldrsh	r2, [r5, r3]
	mov	r1, #4
	ldrsh	r3, [r5, r1]
	cmp	r2, r3
	ble	.Lb952e
	mov	r0, sp
	mov	r1, r6
	mov	r2, #0x10
	bl	_call_via_r8
	mov	r1, r5
	mov	r2, #0x10
	mov	r0, r6
	bl	_call_via_r8
	mov	r2, #0x10
	mov	r0, r5
	mov	r1, sp
	bl	_call_via_r8
	mov	r2, #1
	add	r10, r2
.Lb952e:
	sub	r7, #1
	sub	r5, #0x10
	sub	r6, #0x10
	cmp	r7, #0
	bgt	.Lb9500
.Lb9538:
	mov	r3, r10
	cmp	r3, #0
	bne	.Lb94e8
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b9470

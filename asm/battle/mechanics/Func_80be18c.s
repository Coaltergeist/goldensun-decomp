	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80be18c  @ 0x080be18c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	add	r3, sp, #0x18
	mov	r1, r9
	str	r1, [r3]
	mov	r10, r1
	bl	_GetMoveInfo
	mov	r3, #0
	ldrb	r2, [r0]
	str	r3, [sp, #0x14]
	ldrb	r3, [r0, #3]
	cmp	r3, #5
	beq	.Lbe1c0
	cmp	r3, #5
	blt	.Lbe1c4
	cmp	r3, #0x39
	bgt	.Lbe1c4
	cmp	r3, #0x38
	blt	.Lbe1c4
.Lbe1c0:
	mov	r0, #1
	str	r0, [sp, #0x14]
.Lbe1c4:
	cmp	r2, #0
	beq	.Lbe1dc
	cmp	r2, #4
	beq	.Lbe1f4
	mov	r2, #0xc
	neg	r2, r2
	mov	r1, #0
	add	r2, r10
	mov	r9, r1
	mov	r6, #0
	mov	r11, r2
	b	.Lbe210
.Lbe1dc:
	mov	r3, r10
	sub	r3, #4
	ldr	r3, [r3]
	mov	r1, #1
	strb	r2, [r3, #0x10]
	strb	r1, [r3, #1]
	mov	r2, r10
	sub	r2, #8
	ldr	r2, [r2]
	strb	r1, [r3, #0x1e]
	strb	r2, [r3, #2]
	b	.Lbe35c
.Lbe1f4:
	mov	r3, r10
	sub	r3, #4
	ldr	r2, [r3]
	mov	r1, #1
	mov	r3, #0
	strb	r3, [r2, #0x10]
	strb	r1, [r2, #1]
	mov	r3, r10
	sub	r3, #8
	ldr	r3, [r3]
	strb	r1, [r2, #0x1e]
	strb	r3, [r2, #2]
	b	.Lbe35c
.Lbe20e:
	add	r6, #1
.Lbe210:
	mov	r3, r11
	ldr	r1, [r3]
	lsl	r3, r6, #1
	add	r3, #0x58
	ldrsh	r3, [r1, r3]
	cmp	r3, #0xff
	bne	.Lbe20e
	str	r6, [sp, #0x10]
	mov	r3, #0x64
	add	r2, r1, #2
	ldrsh	r3, [r2, r3]
	mov	r6, #0
	cmp	r3, #0xff
	beq	.Lbe23a
	add	r2, #0x64
.Lbe22e:
	add	r2, #2
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	add	r6, #1
	cmp	r3, #0xff
	bne	.Lbe22e
.Lbe23a:
	mov	r2, r10
	sub	r2, #0x10
	str	r6, [sp, #0xc]
	str	r2, [sp, #8]
	ldr	r2, [r2]
	ldrh	r3, [r2, #0xa]
	mov	r4, #0xf
	and	r4, r3
	mov	r0, #0xc
	ldrsh	r3, [r2, r0]
	sub	r2, r4, r3
	add	r3, r4, r3
	sub	r3, #1
	add	r6, r2, #1
	str	r3, [sp, #4]
	cmp	r6, r3
	bgt	.Lbe318
	mov	r1, #4
	neg	r1, r1
	lsl	r3, r6, #1
	add	r1, r10
	mov	r7, r3
	mov	r8, r1
	add	r7, #0x64
.Lbe26a:
	cmp	r6, #0
	blt	.Lbe30c
	ldr	r2, [sp, #8]
	ldr	r3, [r2]
	ldrh	r2, [r3, #0xa]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lbe2c4
	ldr	r3, [sp, #0xc]
	cmp	r6, r3
	bge	.Lbe30c
	mov	r0, r11
	ldr	r3, [r0]
	add	r3, #2
	ldrsh	r5, [r3, r7]
	cmp	r5, #0xfe
	beq	.Lbe30c
	ldr	r2, [sp, #0x14]
	cmp	r2, #0
	bne	.Lbe2a6
	mov	r0, r5
	str	r4, [sp]
	bl	_GetUnit
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	ldr	r4, [sp]
	cmp	r3, #0
	beq	.Lbe30c
.Lbe2a6:
	mov	r2, r8
	ldr	r0, [r2]
	mov	r2, r9
	add	r1, r0, #2
	add	r2, #0x1c
	mov	r3, #1
	strb	r3, [r1, r2]
	sub	r3, r6, r4
	sub	r2, #0xc
	strb	r3, [r0, r2]
	mov	r3, r9
	mov	r0, #1
	strb	r5, [r1, r3]
	add	r9, r0
	b	.Lbe30c
.Lbe2c4:
	ldr	r1, [sp, #0x10]
	cmp	r6, r1
	bge	.Lbe30c
	mov	r3, r11
	ldr	r2, [r3]
	lsl	r3, r6, #1
	add	r3, #0x58
	ldrsh	r5, [r2, r3]
	cmp	r5, #0xfe
	beq	.Lbe30c
	ldr	r1, [sp, #0x14]
	cmp	r1, #0
	bne	.Lbe2f0
	mov	r0, r5
	str	r4, [sp]
	bl	_GetUnit
	mov	r2, #0x38
	ldrsh	r3, [r0, r2]
	ldr	r4, [sp]
	cmp	r3, #0
	beq	.Lbe30c
.Lbe2f0:
	mov	r3, r8
	ldr	r0, [r3]
	mov	r2, r9
	add	r1, r0, #2
	add	r2, #0x1c
	mov	r3, #1
	strb	r3, [r1, r2]
	sub	r2, #0xc
	sub	r3, r6, r4
	strb	r3, [r0, r2]
	mov	r0, r9
	strb	r5, [r1, r0]
	mov	r1, #1
	add	r9, r1
.Lbe30c:
	ldr	r2, [sp, #4]
	add	r6, #1
	add	r7, #2
	cmp	r6, r2
	ble	.Lbe26a
	b	.Lbe320
.Lbe318:
	mov	r3, #4
	neg	r3, r3
	add	r3, r10
	mov	r8, r3
.Lbe320:
	mov	r0, r8
	ldr	r3, [r0]
	mov	r1, r9
	mov	r2, r9
	strb	r1, [r3, #1]
	cmp	r2, #0
	bgt	.Lbe35c
	ldr	r0, [sp, #8]
	ldr	r3, [r0]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x816
	bl	_Func_80175a0
	mov	r3, r10
	sub	r3, #0x14
	ldr	r3, [r3]
	ldr	r0, =0x12b
	add	r2, r3, r0
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	bne	.Lbe358
	mov	r3, #1
	strb	r3, [r2]
.Lbe358:
	mov	r0, #1
	neg	r0, r0
.Lbe35c:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80be18c

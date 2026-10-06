	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b9934  @ 0x080b9934
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e74
	mov	r4, #0xbb
	ldr	r5, [r3]
	mov	r1, #0x80
	lsl	r4, #2
	mov	r7, r0
	mov	r2, #0
	mov	r0, #0xff
	lsl	r1, #8
	add	r3, r5, r4
.Lb994a:
	add	r2, #1
	strh	r0, [r3]
	strh	r1, [r3, #4]
	add	r3, #0x10
	cmp	r2, #0x13
	bls	.Lb994a
	bl	Func_80b90ac
	mov	r0, #8
	bl	Func_80b98b4
	ldr	r0, =0x16b
	bl	_SetFlag
	add	r5, #0x45
	mov	r0, #0
	bl	Func_80b8fd4
	bl	_Func_80174d8
	ldrb	r3, [r5]
	cmp	r3, #2
	beq	.Lb999e
	mov	r0, r7
	bl	Func_80b920c
	mov	r6, r0
	cmp	r6, #0
	blt	.Lb9a16
	cmp	r6, #0
	beq	.Lb99a0
	mov	r1, #6
	ldrsh	r3, [r7, r1]
	cmp	r3, #0x63
	bne	.Lb99a0
	bl	Func_80b90f8
	cmp	r0, #0
	bne	.Lb99a0
	mov	r3, #2
	strb	r3, [r5]
	b	.Lb99a0
.Lb999e:
	mov	r6, #0
.Lb99a0:
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x44
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb99ca
	mov	r0, r7
	mov	r1, r6
	bl	Func_80b9724
	mov	r5, r0
	bl	Func_80b60a0
	cmp	r0, #0
	blt	.Lb99c4
	add	r6, r5
	cmp	r5, #0
	bge	.Lb99d4
.Lb99c4:
	mov	r6, #1
	neg	r6, r6
	b	.Lb9a16
.Lb99ca:
	lsl	r0, r6, #4
	add	r0, r7, r0
	bl	Func_80b9324
	add	r6, r0
.Lb99d4:
	mov	r0, r7
	mov	r1, r6
	bl	Func_80b9470
	cmp	r6, #0
	ble	.Lb9a16
	mov	r5, r7
	mov	r7, r6
.Lb99e4:
	mov	r2, #6
	ldrsh	r3, [r5, r2]
	cmp	r3, #3
	beq	.Lb99f0
	cmp	r3, #7
	bne	.Lb9a0e
.Lb99f0:
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	bl	_GetUnit
	mov	r4, #6
	ldrsh	r2, [r5, r4]
	mov	r3, #3
	eor	r2, r3
	neg	r3, r2
	orr	r3, r2
	ldr	r1, =0x12b
	lsr	r3, #31
	add	r3, #1
	add	r2, r0, r1
	strb	r3, [r2]
.Lb9a0e:
	sub	r7, #1
	add	r5, #0x10
	cmp	r7, #0
	bne	.Lb99e4
.Lb9a16:
	ldr	r0, =0x16b
	bl	_ClearFlag
	bl	Func_80b7f9c
	ldr	r3, =iwram_3001f00
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #6
	str	r3, [r2]
	mov	r0, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b9934

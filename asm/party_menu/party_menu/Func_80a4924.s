	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a4924  @ 0x080a4924
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	ldr	r0, =0x1ff
	sub	sp, #0xc
	mov	r5, #0
	and	r0, r1
	mov	r11, r1
	str	r5, [sp, #8]
	bl	_GetItemInfo
	ldrb	r3, [r0, #2]
	mov	r10, r0
	cmp	r3, #0
	beq	.La49f8
	ldr	r3, [r0, #8]
	ldr	r2, =0xffffff
	and	r3, r2
	mov	r1, #0
	cmp	r3, #0
	bne	.La4978
	mov	r2, r10
	mov	r9, r1
	add	r2, #0x18
.La495e:
	mov	r0, r9
	cmp	r0, #3
	bgt	.La497a
	ldrb	r3, [r2]
	cmp	r3, #0
	bne	.La4978
	mov	r0, r10
	ldrb	r3, [r0, #0xc]
	mov	r0, #1
	add	r2, #4
	add	r9, r0
	cmp	r3, #3
	bne	.La495e
.La4978:
	mov	r1, #1
.La497a:
	cmp	r1, #1
	bne	.La498c
	ldr	r0, =0xb6d
	mov	r1, r8
	mov	r2, #0x10
	mov	r3, #0
	bl	_Func_801e7c0
	mov	r5, #1
.La498c:
	mov	r2, r10
	mov	r1, #8
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	beq	.La49c2
	lsl	r5, #24
	asr	r5, #24
	lsl	r6, r5, #3
	mov	r3, r6
	ldr	r0, =0xaf7
	mov	r1, r8
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r0, r10
	mov	r3, #8
	ldrsh	r7, [r0, r3]
	mov	r1, #3
	mov	r0, r7
	mov	r2, r8
	mov	r3, #0x40
	str	r6, [sp]
	bl	Func_80a4db4
	add	r5, #1
	lsl	r5, #24
	lsr	r5, #24
.La49c2:
	mov	r1, r10
	mov	r3, #0xa
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	beq	.La49f8
	lsl	r5, #24
	asr	r5, #24
	lsl	r6, r5, #3
	ldr	r0, =0xaf8
	mov	r1, r8
	mov	r2, #0
	mov	r3, r6
	bl	_Func_801e7c0
	mov	r2, r10
	mov	r7, #0xa
	ldrsb	r7, [r2, r7]
	mov	r1, #3
	mov	r0, r7
	mov	r2, r8
	mov	r3, #0x40
	str	r6, [sp]
	bl	Func_80a4db4
	add	r5, #1
	lsl	r5, #24
	lsr	r5, #24
.La49f8:
	mov	r3, #0
	mov	r9, r3
.La49fc:
	mov	r0, r9
	lsl	r1, r0, #2
	mov	r2, r1
	add	r2, #0x18
	mov	r0, r10
	ldrb	r3, [r0, r2]
	cmp	r3, #0
	bne	.La4a0e
	b	.La4b9e
.La4a0e:
	add	r3, r0, r2
	mov	r7, #1
	ldrsb	r7, [r3, r7]
	ldrb	r3, [r3]
	cmp	r3, #0x1b
	bls	.La4a1c
	b	.La4b94
.La4a1c:
	ldr	r2, =.La4a24
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.La4a24:
	.word	.La4b94
	.word	.La4a94
	.word	.La4a94
	.word	.La4a94
	.word	.La4a94
	.word	.La4a94
	.word	.La4a94
	.word	.La4b06
	.word	.La4b06
	.word	.La4b06
	.word	.La4b06
	.word	.La4b06
	.word	.La4b06
	.word	.La4b06
	.word	.La4b06
	.word	.La4aaa
	.word	.La4aaa
	.word	.La4aaa
	.word	.La4aaa
	.word	.La4aaa
	.word	.La4aaa
	.word	.La4aaa
	.word	.La4aaa
	.word	.La4b7a
	.word	.La4b94
	.word	.La4b7a
	.word	.La4a94
	.word	.La4b7a
.La4a94:
	mov	r3, r1
	add	r3, #0x18
	mov	r1, r10
	ldrb	r0, [r1, r3]
	lsl	r6, r5, #24
	ldr	r3, =0xb3b
	asr	r5, r6, #21
	add	r0, r3
	mov	r1, r8
	mov	r2, #0
	b	.La4af0
.La4aaa:
	mov	r4, r1
	mov	r3, r10
	add	r4, #0x18
	ldrb	r2, [r3, r4]
	mov	r3, r2
	sub	r3, #0xf
	mov	r1, r3
	cmp	r3, #0
	bge	.La4ac0
	mov	r1, r2
	sub	r1, #0xc
.La4ac0:
	asr	r1, #2
	lsl	r1, #2
	sub	r1, r3, r1
	lsl	r1, #24
	lsl	r6, r5, #24
	asr	r5, r6, #24
	mov	r3, #2
	lsr	r1, #24
	str	r3, [sp]
	add	r1, #1
	mov	r3, r5
	mov	r0, r8
	mov	r2, #0
	str	r4, [sp, #4]
	bl	_Func_8019000
	ldr	r4, [sp, #4]
	mov	r1, r10
	ldrb	r0, [r1, r4]
	ldr	r3, =0xb3b
	lsl	r5, #3
	add	r0, r3
	mov	r1, r8
	mov	r2, #8
.La4af0:
	mov	r3, r5
	bl	_Func_801e7c0
	mov	r0, r7
	mov	r1, #3
	mov	r2, r8
	mov	r3, #0x40
	str	r5, [sp]
	bl	Func_80a4db4
	b	.La4b96
.La4b06:
	mov	r3, r1
	add	r3, #0x18
	mov	r2, r10
	ldrb	r0, [r2, r3]
	lsl	r6, r5, #24
	ldr	r3, =0xb3b
	asr	r5, r6, #21
	add	r0, r3
	mov	r1, r8
	mov	r2, #0
	mov	r3, r5
	bl	_Func_801e7c0
	ldr	r0, =.Laf21c
	mov	r1, r8
	mov	r2, #0x40
	mov	r3, r5
	bl	_UIDrawText
	cmp	r7, #9
	ble	.La4b50
	mov	r0, #1
	mov	r1, #1
	mov	r2, r8
	mov	r3, #0x48
	str	r5, [sp]
	bl	_Func_801ea08
	ldr	r0, =.Laf220
	mov	r1, r8
	mov	r2, #0x50
	mov	r3, r5
	bl	_UIDrawText
	mov	r0, r7
	sub	r0, #0xa
	b	.La4b6c
.La4b50:
	mov	r0, #0
	mov	r1, #1
	mov	r2, r8
	mov	r3, #0x48
	str	r5, [sp]
	bl	_Func_801ea08
	ldr	r0, =.Laf220
	mov	r1, r8
	mov	r2, #0x50
	mov	r3, r5
	bl	_UIDrawText
	mov	r0, r7
.La4b6c:
	mov	r1, #1
	mov	r2, r8
	mov	r3, #0x58
	str	r5, [sp]
	bl	_Func_801ea08
	b	.La4b96
.La4b7a:
	mov	r3, r1
	add	r3, #0x18
	mov	r1, r10
	ldrb	r0, [r1, r3]
	ldr	r3, =0xb3b
	lsl	r6, r5, #24
	add	r0, r3
	mov	r1, r8
	asr	r3, r6, #21
	mov	r2, #0
	bl	_Func_801e7c0
	b	.La4b96
.La4b94:
	lsl	r6, r5, #24
.La4b96:
	mov	r2, #0x80
	lsl	r2, #17
	add	r3, r6, r2
	lsr	r5, r3, #24
.La4b9e:
	mov	r3, #1
	add	r9, r3
	mov	r0, r9
	cmp	r0, #3
	bgt	.La4baa
	b	.La49fc
.La4baa:
	mov	r1, r10
	ldrb	r2, [r1, #3]
	and	r3, r2
	cmp	r3, #0
	beq	.La4bca
	lsl	r5, #24
	asr	r5, #24
	lsl	r3, r5, #3
	ldr	r0, =0xb76
	mov	r1, r8
	mov	r2, #0
	bl	_Func_801e7c0
	add	r5, #1
	lsl	r5, #24
	lsr	r5, #24
.La4bca:
	mov	r3, r10
	ldrb	r2, [r3, #0xc]
	mov	r3, r2
	cmp	r3, #3
	bne	.La4bf2
	lsl	r5, #24
	asr	r5, #24
	ldr	r0, =0xb65
	lsl	r3, r5, #3
	mov	r1, r8
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r0, #1
	str	r0, [sp, #8]
	add	r5, #1
	mov	r1, r10
	lsl	r5, #24
	ldrb	r2, [r1, #0xc]
	lsr	r5, #24
.La4bf2:
	mov	r3, r2
	cmp	r3, #4
	beq	.La4cdc
	cmp	r3, #0
	beq	.La4cdc
	ldr	r2, [sp, #8]
	cmp	r2, #0
	bne	.La4c18
	lsl	r5, #24
	asr	r5, #24
	lsl	r3, r5, #3
	ldr	r0, =0xb6e
	mov	r1, r8
	mov	r2, #0x10
	bl	_Func_801e7c0
	add	r5, #1
	lsl	r5, #24
	lsr	r5, #24
.La4c18:
	mov	r0, r10
	ldrb	r3, [r0, #0xc]
	cmp	r3, #1
	beq	.La4c2a
	cmp	r3, #1
	ble	.La4cdc
	cmp	r3, #2
	beq	.La4c40
	b	.La4cdc
.La4c2a:
	lsl	r5, #24
	asr	r5, #24
	lsl	r3, r5, #3
	add	r5, #1
	ldr	r0, =0xb63
	mov	r1, r8
	mov	r2, #0
	lsl	r5, #24
	bl	_Func_801e7c0
	b	.La4cda
.La4c40:
	mov	r3, #0x80
	lsl	r3, #3
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0
	beq	.La4cb0
	lsl	r5, #24
	asr	r5, #24
	ldr	r6, =0xb73
	lsl	r3, r5, #3
	add	r5, #1
	lsl	r5, #24
	mov	r0, r6
	mov	r1, r8
	mov	r2, #0
	asr	r5, #24
	bl	_Func_801e7c0
	add	r6, #1
	lsl	r3, r5, #3
	add	r5, #1
	mov	r0, r6
	mov	r1, r8
	mov	r2, #0
	lsl	r5, #24
	bl	_Func_801e7c0
	b	.La4cda

	.pool_aligned

.La4cb0:
	lsl	r5, #24
	asr	r5, #24
	ldr	r6, =0xb71
	lsl	r3, r5, #3
	add	r5, #1
	lsl	r5, #24
	mov	r0, r6
	mov	r1, r8
	mov	r2, #0
	asr	r5, #24
	add	r6, #1
	bl	_Func_801e7c0
	lsl	r3, r5, #3
	mov	r0, r6
	mov	r1, r8
	mov	r2, #0
	bl	_Func_801e7c0
	add	r5, #1
	lsl	r5, #24
.La4cda:
	lsr	r5, #24
.La4cdc:
	mov	r3, r10
	ldrb	r2, [r3, #3]
	mov	r3, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.La4d3c
	lsl	r6, r5, #24
	asr	r3, r6, #24
	cmp	r3, #0
	beq	.La4cf4
	add	r3, #1
	lsl	r6, r3, #24
.La4cf4:
	ldr	r0, =0xb6f
	asr	r5, r6, #24
	lsl	r3, r5, #3
	mov	r1, r8
	mov	r2, #0x10
	mov	r9, r0
	bl	_Func_801e7c0
	mov	r0, #0xf8
	add	r5, #1
	lsl	r0, #8
	mov	r1, r11
	lsl	r5, #24
	and	r0, r1
	lsr	r5, #24
	cmp	r0, #0
	bge	.La4d1a
	ldr	r2, =0x7ff
	add	r0, r2
.La4d1a:
	asr	r7, r0, #11
	add	r0, r7, #1
	mov	r1, #5
	lsl	r5, #24
	bl	_Func_8019908
	asr	r5, #24
	mov	r0, r9
	lsl	r3, r5, #3
	add	r0, #1
	mov	r1, r8
	mov	r2, #0
	bl	_Func_801e7c0
	add	r5, #1
	lsl	r5, #24
	lsr	r5, #24
.La4d3c:
	mov	r1, #0
	cmp	r5, #0
	bne	.La4d8a
	mov	r3, r10
	ldrb	r2, [r3, #3]
	mov	r3, #4
	and	r3, r2
	cmp	r3, #0
	beq	.La4d5c
	mov	r1, r8
	ldr	r0, =0xb69
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	mov	r1, #1
.La4d5c:
	cmp	r1, #0
	bne	.La4d8a
	mov	r0, r10
	ldrb	r2, [r0, #3]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	beq	.La4d7a
	mov	r1, r8
	ldr	r0, =0xb6a
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	mov	r1, #1
.La4d7a:
	cmp	r1, #0
	bne	.La4d8a
	ldr	r0, =0xb6c
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
.La4d8a:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a4924


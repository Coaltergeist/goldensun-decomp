	.include "macros.inc"

.thumb_func_start Func_80c1a34
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =.Lc5c38
	lsl	r0, #4
	add	r0, r3
	ldrb	r3, [r0, #6]
	mov	r2, #0
	sub	sp, #0x1c
	mov	r9, r2
	mov	r11, r2
	mov	r10, r0
	mov	r7, #0
	cmp	r3, #0
	bne	.Lc1a6c
	mov	r2, r10
	add	r2, #6
.Lc1a5e:
	add	r7, #1
	cmp	r7, #4
	bhi	.Lc1a6c
	add	r2, #1
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lc1a5e
.Lc1a6c:
	cmp	r7, #5
	bne	.Lc1a76
	mov	r0, #1
	neg	r0, r0
	b	.Lc1ae6
.Lc1a76:
	mov	r3, #0xb
	add	r3, r10
	mov	r7, #0
	mov	r8, r3
.Lc1a7e:
	mov	r2, r8
	ldrb	r3, [r2]
	mov	r2, #1
	add	r8, r2
	cmp	r3, #0
	beq	.Lc1ac6
	mov	r3, r10
	add	r3, #1
	ldrb	r6, [r3, r7]
	mov	r0, r6
	add	r0, #8
	bl	_GetEnemyInfo
	mov	r5, r0
	cmp	r5, #0
	beq	.Lc1ac6
	ldrb	r3, [r5, #0xf]
	cmp	r3, #3
	bls	.Lc1abe
	mov	r0, #0xba
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.Lc1abe
	mov	r3, #0xc1
	lsl	r3, #3
	add	r0, r6, r3
	bl	_GetFlag
	cmp	r0, #0
	beq	.Lc1ad8
.Lc1abe:
	ldrb	r3, [r5, #0xf]
	mov	r2, #1
	add	r11, r3
	add	r9, r2
.Lc1ac6:
	add	r7, #1
	cmp	r7, #4
	bls	.Lc1a7e
	mov	r3, r9
	cmp	r3, #0
	bne	.Lc1ade
	mov	r0, #3
	neg	r0, r0
	b	.Lc1ae6
.Lc1ad8:
	mov	r0, #2
	neg	r0, r0
	b	.Lc1ae6
.Lc1ade:
	mov	r0, r11
	mov	r1, r9
	bl	__divsi3
.Lc1ae6:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80c1a34

.thumb_func_start Func_80c1afc
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
	bl	Func_8004970
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

.thumb_func_start Func_80c1c54
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	str	r0, [sp, #8]
	mov	r0, #0x24
	mov	r10, r1
	bl	Func_8004970
	mov	r9, r0
	ldr	r0, [sp, #8]
	bl	_GetUnit
	mov	r7, r0
	mov	r6, r7
	add	r6, #0x10
	mov	r2, #0x24
	ldr	r3, =Func_8001af8
	mov	r1, r6
	mov	r0, r9
	bl	_call_via_r3
	mov	r1, r10
	lsl	r3, r1, #1
	add	r3, r10
	mov	r0, #0
	ldrsh	r5, [r6, r0]
	lsl	r0, r3, #5
	mov	r1, #0xa
	add	r0, r10
	mov	r11, r3
	bl	__divsi3
	add	r5, r0
	mov	r0, r9
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	cmp	r5, r0
	bge	.Lc1cb6
	mov	r5, r0
.Lc1cb6:
	ldr	r1, =0x270f
	mov	r8, r1
	cmp	r5, r8
	ble	.Lc1cc0
	mov	r5, r8
.Lc1cc0:
	mov	r3, r10
	lsl	r3, #4
	strh	r5, [r6]
	mov	r1, r10
	sub	r0, r3, r1
	mov	r1, #0xa
	mov	r2, #0x12
	ldrsh	r5, [r7, r2]
	str	r3, [sp, #4]
	bl	__divsi3
	add	r5, r0
	mov	r0, r9
	mov	r2, #2
	ldrsh	r3, [r0, r2]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	cmp	r5, r0
	bge	.Lc1cee
	mov	r5, r0
.Lc1cee:
	cmp	r5, r8
	ble	.Lc1cf4
	mov	r5, r8
.Lc1cf4:
	mov	r1, r10
	lsl	r1, #5
	mov	r2, r10
	sub	r0, r1, r2
	lsl	r0, #2
	strh	r5, [r7, #0x12]
	mov	r8, r1
	sub	r0, r2
	mov	r1, #0xa
	bl	__divsi3
	ldrh	r5, [r7, #0x18]
	add	r5, r0
	mov	r0, r9
	ldrh	r3, [r0, #8]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	cmp	r5, r0
	bge	.Lc1d22
	mov	r5, r0
.Lc1d22:
	ldr	r6, =0x3e7
	cmp	r5, r6
	ble	.Lc1d2a
	mov	r5, r6
.Lc1d2a:
	mov	r0, r8
	strh	r5, [r7, #0x18]
	mov	r1, #0xa
	add	r0, r10
	bl	__divsi3
	mov	r1, r9
	ldrh	r3, [r1, #0xa]
	ldrh	r5, [r7, #0x1a]
	add	r5, r0
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	cmp	r5, r0
	bge	.Lc1d4e
	mov	r5, r0
.Lc1d4e:
	cmp	r5, r6
	ble	.Lc1d54
	mov	r5, r6
.Lc1d54:
	mov	r2, r11
	lsl	r0, r2, #4
	strh	r5, [r7, #0x1a]
	mov	r1, #0xa
	add	r0, r11
	bl	__divsi3
	ldrh	r5, [r7, #0x1c]
	add	r5, r0
	mov	r0, r9
	ldrh	r3, [r0, #0xc]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	cmp	r5, r0
	bge	.Lc1d7a
	mov	r5, r0
.Lc1d7a:
	cmp	r5, r6
	ble	.Lc1d80
	mov	r5, r6
.Lc1d80:
	mov	r1, #0x14
	strh	r5, [r7, #0x1c]
	mov	r8, r1
	mov	r6, #0x24
	mov	r4, #3
.Lc1d8a:
	ldr	r0, [sp, #4]
	ldrsh	r2, [r6, r7]
	mov	r1, r10
	sub	r3, r0, r1
	add	r5, r2, r3
	mov	r1, r9
	mov	r2, r8
	ldrsh	r3, [r2, r1]
	lsl	r0, r3, #3
	sub	r0, r3
	mov	r1, #0xa
	str	r4, [sp]
	bl	__divsi3
	ldr	r4, [sp]
	cmp	r5, r0
	bge	.Lc1dae
	mov	r5, r0
.Lc1dae:
	cmp	r5, #0xc8
	ble	.Lc1db4
	mov	r5, #0xc8
.Lc1db4:
	mov	r2, #4
	sub	r4, #1
	strh	r5, [r6, r7]
	add	r8, r2
	add	r6, #4
	cmp	r4, #0
	bge	.Lc1d8a
	ldrb	r3, [r7, #0xf]
	add	r3, r10
	strb	r3, [r7, #0xf]
	ldr	r0, [sp, #8]
	bl	_CalcStats
	mov	r0, r9
	bl	free
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80c1c54

.thumb_func_start Func_80c1df4
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e74
	ldr	r5, [r3]
	mov	r6, r5
	add	r6, #0x40
	ldrb	r4, [r6]
	mov	r1, #0
	sub	sp, #4
	cmp	r1, r4
	bge	.Lc1e20
	ldrh	r3, [r5, #0x10]
	cmp	r3, r0
	beq	.Lc1e20
	mov	r2, r5
	add	r2, #0x10
.Lc1e12:
	add	r1, #1
	cmp	r1, r4
	bge	.Lc1e20
	add	r2, #2
	ldrh	r3, [r2]
	cmp	r3, r0
	bne	.Lc1e12
.Lc1e20:
	cmp	r1, r4
	beq	.Lc1e82
	mov	r6, r1
	add	r6, #0x34
	ldrsb	r3, [r5, r6]
	mov	r4, #0
	cmp	r3, #0
	bge	.Lc1e40
	mov	r3, #1
	strb	r3, [r5, r6]
	lsl	r3, r1, #2
	add	r3, #0x1c
	mov	r2, #3
	str	r2, [r5, r3]
	ldr	r0, =0x8001
	b	.Lc1eac
.Lc1e40:
	lsl	r7, r1, #2
	b	.Lc1e46
.Lc1e44:
	add	r4, #1
.Lc1e46:
	cmp	r4, #0x1f
	bgt	.Lc1e6e
	ldrsb	r0, [r5, r6]
	mov	r1, #9
	add	r0, #1
	str	r4, [sp]
	bl	Func_b1c_from_thumb
	mov	r3, r7
	strb	r0, [r5, r6]
	add	r3, #0x1c
	lsl	r0, #24
	asr	r0, #24
	mov	r2, #1
	ldr	r3, [r5, r3]
	lsl	r2, r0
	and	r3, r2
	ldr	r4, [sp]
	cmp	r3, #0
	bne	.Lc1e44
.Lc1e6e:
	ldrsb	r3, [r5, r6]
	mov	r1, r7
	add	r1, #0x1c
	mov	r2, #1
	lsl	r2, r3
	ldr	r3, [r5, r1]
	orr	r3, r2
	str	r3, [r5, r1]
	ldrsb	r0, [r5, r6]
	b	.Lc1eac
.Lc1e82:
	cmp	r4, #4
	bgt	.Lc1ea8
	mov	r1, #1
	mov	r2, r4
	neg	r1, r1
	add	r2, #0x34
	mov	r3, r1
	strb	r3, [r5, r2]
	lsl	r3, r4, #1
	add	r3, #0x10
	strh	r0, [r5, r3]
	lsl	r3, r4, #2
	add	r3, #0x1c
	mov	r2, #0
	str	r2, [r5, r3]
	add	r3, r4, #1
	strb	r3, [r6]
	mov	r0, #9
	b	.Lc1eac
.Lc1ea8:
	mov	r0, #1
	neg	r0, r0
.Lc1eac:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80c1df4

.thumb_func_start Func_80c1ebc
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e74
	ldr	r6, [r3]
	mov	r3, r6
	add	r3, #0x40
	ldrb	r5, [r3]
	bl	_GetUnit
	ldr	r3, =0x129
	mov	r12, r0
	add	r3, r12
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lc1f42
	mov	r3, #0x94
	lsl	r3, #1
	add	r3, r12
	mov	r1, #0
	ldrb	r0, [r3]
	cmp	r1, r5
	bge	.Lc1efe
	ldrh	r3, [r6, #0x10]
	cmp	r3, r0
	beq	.Lc1efe
	mov	r2, r6
	add	r2, #0x10
.Lc1ef0:
	add	r1, #1
	cmp	r1, r5
	bge	.Lc1efe
	add	r2, #2
	ldrh	r3, [r2]
	cmp	r3, r0
	bne	.Lc1ef0
.Lc1efe:
	cmp	r1, r5
	beq	.Lc1f42
	lsl	r1, #2
	mov	r3, r1
	add	r3, #0x1c
	ldr	r3, [r6, r3]
	cmp	r3, #0
	beq	.Lc1f42
	mov	r2, r12
	ldrb	r3, [r2]
	mov	r4, #0
	cmp	r3, #0
	beq	.Lc1f26
.Lc1f18:
	add	r4, #1
	cmp	r4, #0xd
	bgt	.Lc1f26
	add	r2, #1
	ldrb	r3, [r2]
	cmp	r3, #0
	bne	.Lc1f18
.Lc1f26:
	mov	r0, #0x20
	cmp	r4, #0
	ble	.Lc1f36
	sub	r3, r4, #1
	mov	r2, r12
	ldrb	r3, [r2, r3]
	mov	r0, r3
	sub	r0, #0x31
.Lc1f36:
	add	r1, #0x1c
	ldr	r3, [r6, r1]
	mov	r2, #1
	lsl	r2, r0
	bic	r3, r2
	str	r3, [r6, r1]
.Lc1f42:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80c1ebc

.thumb_func_start Func_80c1f50
	push	{r5, r6, r7, lr}
	mov	r6, r0
	mov	r5, #0
	mov	r7, #0x31
.Lc1f58:
	mov	r0, r5
	add	r0, #0x80
	bl	_GetUnit
	mov	r2, r0
	mov	r0, #0x95
	lsl	r0, #1
	add	r3, r2, r0
	ldrb	r1, [r3]
	cmp	r1, #1
	bne	.Lc1f9a
	sub	r0, #2
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, r6
	bne	.Lc1f9a
	ldrb	r3, [r2]
	mov	r0, #0
	cmp	r3, #0
	bne	.Lc1f86
	strb	r7, [r2]
	strb	r0, [r2, r1]
	b	.Lc1fa0
.Lc1f86:
	add	r0, #1
	cmp	r0, #0xd
	bgt	.Lc1fa0
	ldrb	r1, [r2, r0]
	cmp	r1, #0
	bne	.Lc1f86
	add	r3, r0, #1
	strb	r7, [r2, r0]
	strb	r1, [r2, r3]
	b	.Lc1fa0
.Lc1f9a:
	add	r5, #1
	cmp	r5, #5
	ble	.Lc1f58
.Lc1fa0:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80c1f50

.thumb_func_start Func_80c1fa8
	push	{r5, r6, lr}
	mov	r3, #0xbe
	lsl	r3, #1
	sub	sp, #0x14
	mov	r5, #0
	cmp	r0, r3
	bcc	.Lc1fb8
	mov	r0, #1
.Lc1fb8:
	ldr	r2, =.Lc5c38
	lsl	r3, r0, #4
	add	r3, r2
	mov	r6, sp
	mov	r0, r3
	add	r2, r3, #1
	add	r0, #0xb
	mov	r4, r6
	mov	r1, #4
.Lc1fca:
	ldrb	r3, [r0]
	add	r0, #1
	cmp	r3, #0
	beq	.Lc1fda
	ldrb	r3, [r2]
	add	r3, #8
	stmia	r4!, {r3}
	add	r5, #1
.Lc1fda:
	sub	r1, #1
	add	r2, #1
	cmp	r1, #0
	bge	.Lc1fca
	bl	Random
	mov	r3, r5
	mul	r3, r0
	lsr	r3, #16
	lsl	r3, #2
	ldr	r0, [r6, r3]
	add	sp, #0x14
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80c1fa8

.thumb_func_start Func_80c1ffc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e74
	sub	sp, #0x7c
	ldr	r3, [r3]
	mov	r5, r0
	mov	r0, sp
	str	r3, [sp, #0x18]
	mov	r2, #0
	add	r0, #0x60
	add	r3, #0x40
	str	r2, [sp, #0x20]
	strb	r2, [r3]
	str	r0, [sp, #0x1c]
	ldr	r0, =0x173
	bl	_GetFlag
	cmp	r0, #0
	beq	.Lc2034
	add	r0, sp, #0x20
	bl	Func_80c1afc
	mov	r5, r0
.Lc2034:
	mov	r1, #0xbe
	lsl	r1, #1
	cmp	r5, r1
	bcc	.Lc203e
	mov	r5, #1
.Lc203e:
	ldr	r2, =.Lc5c38
	lsl	r3, r5, #4
	add	r3, r2
	mov	r4, r3
	str	r3, [sp, #0x14]
	add	r4, #2
	ldrb	r3, [r4, #4]
	mov	r1, #0
	cmp	r3, #0
	bne	.Lc2064
	ldr	r2, [sp, #0x14]
	add	r2, #6
.Lc2056:
	add	r1, #1
	cmp	r1, #4
	bgt	.Lc2064
	add	r2, #1
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lc2056
.Lc2064:
	cmp	r1, #5
	bne	.Lc2070
	ldr	r2, =.Lc5c48
	mov	r4, r2
	str	r2, [sp, #0x14]
	add	r4, #2
.Lc2070:
	ldr	r0, [sp, #0x14]
	add	r0, #1
	mov	r5, #0
	mov	r3, #6
	str	r0, [sp, #8]
	str	r5, [sp, #0x10]
	mov	r11, r3
	mov	r7, #0
	add	r5, r4, #4
.Lc2082:
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.Lc20aa
	ldr	r1, [sp, #8]
	ldrb	r0, [r1, r7]
	add	r0, #8
	str	r4, [sp]
	bl	Func_80c23c0
	neg	r3, r0
	orr	r3, r0
	mov	r2, #2
	lsr	r3, #31
	sub	r3, r2, r3
	ldrb	r2, [r5]
	mul	r3, r2
	mov	r2, r11
	sub	r2, r3
	ldr	r4, [sp]
	mov	r11, r2
.Lc20aa:
	add	r7, #1
	add	r5, #1
	cmp	r7, #4
	bls	.Lc2082
	mov	r3, sp
	ldr	r5, [sp, #0x14]
	add	r3, #0x38
	add	r5, #0xb
	add	r4, #4
	mov	r0, #0
	str	r3, [sp, #0xc]
	mov	r7, #0
	add	r6, sp, #0x4c
	mov	r9, r5
	mov	r10, r4
	mov	r8, r0
.Lc20ca:
	mov	r1, r10
	ldrb	r2, [r1]
	mov	r3, #1
	mov	r1, r9
	ldr	r0, [sp, #0xc]
	mov	r5, r8
	add	r10, r3
	ldrb	r3, [r1]
	str	r2, [r5, r0]
	mov	r5, #1
	add	r9, r5
	sub	r5, r3, r2
	cmp	r5, #0
	ble	.Lc2116
	ldr	r1, [sp, #8]
	ldrb	r0, [r1, r7]
	add	r0, #8
	bl	Func_80c23c0
	neg	r1, r0
	orr	r1, r0
	lsr	r1, #31
	mov	r3, #2
	sub	r1, r3, r1
	mov	r0, r11
	bl	__divsi3
	cmp	r0, r5
	bge	.Lc2106
	mov	r5, r0
.Lc2106:
	bl	Random
	add	r3, r5, #1
	mul	r3, r0
	mov	r2, r8
	lsr	r3, #16
	str	r3, [r2, r6]
	b	.Lc211c
.Lc2116:
	mov	r3, #0
	mov	r5, r8
	str	r3, [r5, r6]
.Lc211c:
	mov	r0, #4
	add	r7, #1
	add	r8, r0
	cmp	r7, #4
	bls	.Lc20ca
	ldr	r4, [sp, #0xc]
	mov	r1, r6
.Lc212a:
	mov	r2, #0
	mov	r8, r2
	mov	r7, #0
	mov	r5, #0
.Lc2132:
	ldr	r0, [sp, #8]
	ldrb	r3, [r0, r7]
	mov	r0, r3
	ldr	r3, [r5, r6]
	add	r0, #8
	cmp	r3, #0
	beq	.Lc2178
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	Func_80c23c0
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r2, r3
	mov	r3, #2
	sub	r2, r3, r2
	ldr	r1, [sp, #4]
	ldr	r4, [sp]
	cmp	r2, r11
	ble	.Lc2162
	mov	r3, #0
	str	r3, [r5, r6]
	b	.Lc2178
.Lc2162:
	ldr	r3, [r5, r4]
	add	r3, #1
	str	r3, [r5, r4]
	ldr	r3, [r5, r1]
	sub	r3, #1
	str	r3, [r5, r1]
	mov	r3, r11
	sub	r3, r2
	mov	r0, #1
	mov	r11, r3
	mov	r8, r0
.Lc2178:
	add	r7, #1
	add	r5, #4
	cmp	r7, #4
	bls	.Lc2132
	mov	r2, r8
	cmp	r2, #0
	bne	.Lc212a
	ldr	r5, [sp, #0x14]
	ldr	r2, [sp, #0x18]
	ldrb	r3, [r5]
	add	r2, #0x42
	strb	r3, [r2]
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lc219e
	cmp	r3, #1
	beq	.Lc221a
	mov	r7, #0
	b	.Lc22b0
.Lc219e:
	add	r0, sp, #0x24
	mov	r8, r0
	mov	r7, #0
	mov	r3, r8
.Lc21a6:
	stmia	r3!, {r7}
	add	r7, #1
	cmp	r7, #4
	bls	.Lc21a6
	mov	r7, #0
	mov	r6, r8
.Lc21b2:
	bl	Random
	lsl	r5, r0, #2
	add	r5, r0
	bl	Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r5, #16
	lsr	r3, #16
	lsl	r5, #2
	lsl	r3, #2
	ldr	r1, [r6, r5]
	ldr	r2, [r6, r3]
	add	r7, #1
	str	r2, [r6, r5]
	str	r1, [r6, r3]
	cmp	r7, #9
	bls	.Lc21b2
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #0x10]
	ldr	r6, [sp, #0xc]
	mov	r7, #0
	mov	r4, r8
	mov	r12, r1
	lsl	r0, r2, #1
.Lc21e6:
	ldr	r2, [r4]
	lsl	r1, r2, #2
	ldr	r3, [r6, r1]
	cmp	r3, #0
	ble	.Lc2210
	mov	r5, r12
	ldrb	r3, [r5, r2]
	ldr	r2, [sp, #0xc]
	ldr	r5, [sp, #0x1c]
	ldr	r1, [r2, r1]
	add	r3, #8
	add	r2, r0, r5
.Lc21fe:
	strh	r3, [r2]
	ldr	r5, [sp, #0x10]
	sub	r1, #1
	add	r5, #1
	add	r2, #2
	add	r0, #2
	str	r5, [sp, #0x10]
	cmp	r1, #0
	bne	.Lc21fe
.Lc2210:
	add	r7, #1
	add	r4, #4
	cmp	r7, #4
	bls	.Lc21e6
	b	.Lc22b4
.Lc221a:
	ldr	r1, [sp, #0x10]
	mov	r0, #0x24
	ldr	r2, [sp, #0x1c]
	add	r0, sp
	lsl	r3, r1, #1
	ldr	r4, [sp, #0xc]
	mov	r8, r0
	add	r6, r3, r2
.Lc222a:
	mov	r5, #0
	mov	r7, #0
	mov	r1, r4
	add	r2, sp, #0x24
.Lc2232:
	ldmia	r1!, {r3}
	cmp	r3, #0
	beq	.Lc223c
	stmia	r2!, {r7}
	add	r5, #1
.Lc223c:
	add	r7, #1
	cmp	r7, #4
	bls	.Lc2232
	cmp	r5, #0
	beq	.Lc22b4
	str	r4, [sp]
	bl	Random
	mov	r3, r5
	mul	r3, r0
	lsr	r3, #16
	lsl	r3, #2
	mov	r5, r8
	ldr	r2, [r5, r3]
	ldr	r0, [sp, #8]
	ldrb	r3, [r0, r2]
	add	r3, #8
	strh	r3, [r6]
	ldr	r1, [sp, #0x10]
	add	r1, #1
	str	r1, [sp, #0x10]
	ldr	r4, [sp]
	lsl	r2, #2
	ldr	r3, [r4, r2]
	sub	r3, #1
	add	r6, #2
	str	r3, [r4, r2]
	b	.Lc222a

	.pool_aligned

.Lc2284:
	ldr	r5, [sp, #0xc]
	lsl	r3, r7, #2
	ldr	r2, [r5, r3]
	cmp	r2, #0
	ble	.Lc22ae
	ldr	r0, [sp, #8]
	ldr	r5, [sp, #0x10]
	ldrb	r3, [r0, r7]
	ldr	r0, [sp, #0x1c]
	mov	r1, r3
	lsl	r3, r5, #1
	add	r1, #8
	add	r3, r0
.Lc229e:
	strh	r1, [r3]
	ldr	r5, [sp, #0x10]
	sub	r2, #1
	add	r5, #1
	add	r3, #2
	str	r5, [sp, #0x10]
	cmp	r2, #0
	bne	.Lc229e
.Lc22ae:
	add	r7, #1
.Lc22b0:
	cmp	r7, #4
	bls	.Lc2284
.Lc22b4:
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0x1c]
	ldr	r3, =0
	lsl	r2, r0, #1
	strh	r3, [r2, r1]
	ldr	r5, [sp, #0x18]
	mov	r3, #6
	strh	r3, [r5, #0x3c]
	ldr	r0, [sp, #0x18]
	mov	r2, #0
	strh	r2, [r0, #0x3e]
	ldr	r5, =Func_80008d4
	mov	r7, #0x80
	b	.Lc22d8

	.pool_aligned

.Lc22d8:
	mov	r0, r7
	bl	_GetUnit
	mov	r1, #0xa6
	lsl	r1, #1
	add	r7, #1
	bl	_call_via_r5
	cmp	r7, #0x85
	bls	.Lc22d8
	ldr	r1, [sp, #0x1c]
	ldrh	r3, [r1]
	mov	r7, #0
	cmp	r3, #0
	beq	.Lc234e
	mov	r2, #0
.Lc22f8:
	ldr	r3, [sp, #0x1c]
	add	r6, r2, r3
	ldrh	r0, [r6]
	mov	r1, #1
	bl	Func_80c1df4
	mov	r3, #0x80
	mov	r4, r0
	lsl	r3, #8
	and	r3, r4
	cmp	r3, #0
	beq	.Lc231a
	ldrh	r0, [r6]
	str	r4, [sp]
	bl	Func_80c1f50
	ldr	r4, [sp]
.Lc231a:
	mov	r5, r7
	ldr	r2, =0x7fff
	add	r5, #0x80
	ldrh	r1, [r6]
	and	r2, r4
	mov	r0, r5
	bl	_InitEnemyUnit
	mov	r0, r5
	bl	_GetUnit
	ldr	r1, [sp, #0x20]
	cmp	r1, #0
	beq	.Lc233c
	mov	r0, r5
	bl	Func_80c1c54
.Lc233c:
	add	r7, #1
	cmp	r7, #5
	bhi	.Lc234e
	lsl	r3, r7, #1
	ldr	r5, [sp, #0x1c]
	mov	r2, r3
	ldrh	r3, [r2, r5]
	cmp	r3, #0
	bne	.Lc22f8
.Lc234e:
	mov	r0, r7
	add	sp, #0x7c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80c1ffc


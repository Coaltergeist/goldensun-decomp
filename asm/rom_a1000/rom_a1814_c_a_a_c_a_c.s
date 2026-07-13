	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a1cb0  @ 0x080a1cb0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0x38
	sub	sp, #4
	ldr	r3, [r3]
	mov	r8, r2
	cmp	r0, #1
	beq	.La1cca
	mov	r2, #0x28
	mov	r8, r2
.La1cca:
	mov	r5, r3
	add	r5, #0x48
	mov	r3, #5
	mov	r6, #0
	mov	r7, r5
	mov	r10, r3
.La1cd6:
	ldmia	r7!, {r3}
	cmp	r3, #0
	beq	.La1cec
	mov	r2, r10
	str	r2, [sp]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0x74
	mov	r3, r8
	bl	Func_a1c6c
.La1cec:
	add	r6, #1
	add	r5, #4
	cmp	r6, #0xe
	ble	.La1cd6
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a1cb0

.thumb_func_start Func_80a1d08  @ 0x080a1d08
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r7, [r3]
	mov	r8, r2
	ldr	r2, [r7, #0x14]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r2, #1
	neg	r2, r2
	sub	sp, #0x18
	mov	r6, r0
	mov	r10, r1
	cmp	r8, r2
	beq	.La1d6c
	add	r0, sp, #8
	add	r1, sp, #0x14
	add	r2, sp, #0x10
	add	r3, sp, #0xc
	str	r0, [sp]
	mov	r0, r6
	bl	_TextBox
	ldr	r2, [sp, #8]
	mov	r5, r7
	str	r2, [sp]
	mov	r2, #0x81
	lsl	r2, #1
	add	r5, #0x3c
	str	r2, [sp, #4]
	ldr	r3, [sp, #0xc]
	mov	r0, r5
	mov	r1, r10
	mov	r2, r8
	bl	Func_80a10d0
	cmp	r0, #0
	bne	.La1d68
	ldr	r2, [sp, #8]
	ldr	r0, [r5]
	ldr	r3, [sp, #0xc]
	str	r2, [sp]
	mov	r1, r10
	mov	r2, r8
	bl	Func_80a23f4
.La1d68:
	ldr	r5, [r5]
	b	.La1d6e
.La1d6c:
	ldr	r5, [r7, #0x2c]
.La1d6e:
	mov	r0, r5
	bl	_Func_8016498
	mov	r0, r5
	bl	_Func_80164ac
	mov	r3, #1
	neg	r3, r3
	cmp	r8, r3
	bne	.La1d90
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	b	.La1d9c
.La1d90:
	mov	r0, r6
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	_DrawSmallText
.La1d9c:
	mov	r2, #1
	neg	r2, r2
	cmp	r10, r2
	beq	.La1df4
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #1
	ldr	r6, =gKeyPress
	mov	r10, r3
.La1db0:
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r6]
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	bne	.La1dd4
	ldr	r3, [r6]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.La1dd4
	ldr	r3, [r6]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.La1db0
.La1dd4:
	mov	r3, #1
	neg	r3, r3
	cmp	r8, r3
	bne	.La1de2
	mov	r0, r5
	bl	_Func_8016498
.La1de2:
	mov	r0, r5
	bl	_Func_80164ac
	b	.La1dfa

	.pool_aligned

.La1df4:
	ldr	r0, =0x151
	bl	_SetFlag
.La1dfa:
	ldr	r3, =0x222
	add	r2, r7, r3
	mov	r3, #1
	strh	r3, [r2]
	ldr	r1, .La1e1c	@ 1
	ldr	r3, [r7, #0x14]
	mov	r2, #1
	neg	r2, r2
	strb	r1, [r3, #5]
	cmp	r8, r2
	beq	.La1e28
	mov	r0, r7
	add	r0, #0x3c
	mov	r1, #1
	bl	Func_80a1114
	b	.La1e28

	.align	2, 0
.La1e1c:
	.word	1
	.pool

.La1e28:
	add	sp, #0x18
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a1d08

.thumb_func_start Func_80a1e38  @ 0x080a1e38
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x70
	str	r0, [sp, #0xc]
	add	r5, sp, #0x10
	mov	r0, #0
	str	r0, [sp, #8]
	mov	r11, r0
	mov	r0, r1
	mov	r1, r5
	bl	Func_a1f74
	add	r1, sp, #0x30
	mov	r9, r1
	mov	r2, #0
	mov	r6, #0xe
.La1e62:
	ldr	r0, [sp, #0xc]
	ldrh	r3, [r2, r0]
	sub	r6, #1
	strh	r3, [r2, r1]
	add	r2, #2
	cmp	r6, #0
	bge	.La1e62
	mov	r1, #0
	mov	r8, r1
	mov	r2, r9
	mov	r6, #0xe
.La1e78:
	ldrh	r3, [r2]
	add	r2, #2
	cmp	r3, #0
	beq	.La1e84
	mov	r3, #1
	add	r8, r3
.La1e84:
	sub	r6, #1
	cmp	r6, #0
	bge	.La1e78
	mov	r0, r8
	cmp	r0, #0xe
	bgt	.La1eac
	add	r3, sp, #0x50
	lsl	r2, r0, #1
	add	r2, r3
	ldr	r1, =0
	mov	r3, #0xf
	sub	r6, r3, r0
.La1e9c:
	sub	r6, #1
	strh	r1, [r2]
	add	r2, #2
	cmp	r6, #0
	bne	.La1e9c
	b	.La1eac

	.pool_aligned

.La1eac:
	ldrb	r3, [r5]
	cmp	r3, #0xff
	beq	.La1f44
	mov	r1, sp
	add	r1, #0x50
	str	r1, [sp, #4]
	mov	r10, r9
	mov	r7, r5
.La1ebc:
	mov	r6, #0
	mov	r4, #0
	cmp	r6, r8
	bge	.La1f12
	mov	r5, r9
.La1ec6:
	ldrh	r3, [r5]
	cmp	r3, #0
	beq	.La1f0a
	mov	r0, r3
	str	r4, [sp]
	bl	_GetItemInfo
	ldrb	r1, [r7]
	mov	r2, #0x7f
	ldrb	r3, [r0, #2]
	and	r2, r1
	ldr	r4, [sp]
	cmp	r2, r3
	bne	.La1f0a
	mov	r3, #0x80
	and	r3, r1
	cmp	r3, #0
	beq	.La1efc
	ldrh	r2, [r5]
	ldr	r3, =0x200
	and	r3, r2
	cmp	r3, #0
	beq	.La1f0a
	b	.La1efe

	.pool_aligned

.La1efc:
	ldrh	r2, [r5]
.La1efe:
	ldr	r3, =0x1ff
	and	r3, r2
	cmp	r4, r3
	bge	.La1f0a
	str	r6, [sp, #8]
	mov	r4, r3
.La1f0a:
	add	r6, #1
	add	r5, #2
	cmp	r6, r8
	blt	.La1ec6
.La1f12:
	cmp	r4, #0
	beq	.La1f3c
	ldr	r0, [sp, #8]
	mov	r3, r11
	lsl	r2, r0, #1
	mov	r0, r10
	lsl	r1, r3, #1
	ldrh	r3, [r0, r2]
	ldr	r0, [sp, #4]
	strh	r3, [r0, r1]
	ldr	r3, =0
	mov	r1, r10
	b	.La1f34

	.pool_aligned

.La1f34:
	strh	r3, [r1, r2]
	mov	r3, #1
	add	r11, r3
	b	.La1ebc
.La1f3c:
	add	r7, #1
	ldrb	r3, [r7]
	cmp	r3, #0xff
	bne	.La1ebc
.La1f44:
	mov	r0, r8
	cmp	r0, #0
	ble	.La1f5e
	add	r1, sp, #0x50
	mov	r2, #0
	mov	r6, r8
.La1f50:
	ldrh	r3, [r2, r1]
	ldr	r0, [sp, #0xc]
	sub	r6, #1
	strh	r3, [r2, r0]
	add	r2, #2
	cmp	r6, #0
	bne	.La1f50
.La1f5e:
	mov	r0, #1
	add	sp, #0x70
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a1e38

.thumb_Func_start Func_a1f74
	push	{lr}
	ldr	r2, =.Laf2a6
	cmp	r0, #1
	beq	.La1f90
	cmp	r0, #1
	bgt	.La1f86
	cmp	r0, #0
	beq	.La1f8c
	b	.La1f96
.La1f86:
	cmp	r0, #2
	beq	.La1f94
	b	.La1f96
.La1f8c:
	ldr	r2, =.Laf2d0
	b	.La1f96
.La1f90:
	ldr	r2, =.Laf2bc
	b	.La1f96
.La1f94:
	ldr	r2, =.Laf2b1
.La1f96:
	ldrb	r3, [r2]
	mov	r4, #0xff
	strb	r3, [r1]
	lsl	r4, #24
	lsl	r3, #24
	mov	r0, #0
	cmp	r3, r4
	beq	.La1fbe
.La1fa6:
	add	r0, #1
	cmp	r0, #0x1f
	bgt	.La1fbe
	add	r2, #1
	ldrb	r3, [r2]
	add	r1, #1
	mov	r4, #0xff
	strb	r3, [r1]
	lsl	r4, #24
	lsl	r3, #24
	cmp	r3, r4
	bne	.La1fa6
.La1fbe:
	pop	{r0}
	bx	r0
.func_end Func_a1f74

.thumb_func_start Func_80a1fd4  @ 0x080a1fd4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	ldr	r1, [sp, #0x1c]
	mov	r5, r0
	mov	r7, r2
	mov	r0, #1
	mov	r2, r8
	mov	r6, r3
	mov	r10, r1
	neg	r0, r0
	cmp	r2, #0
	bne	.La1ff6
	b	.La212e
.La1ff6:
	ldr	r0, =0x6002500
	bl	_Func_80219c8
	mov	r1, r7
	mov	r0, r8
	bl	__divsi3
	mov	r1, r7
	mov	r9, r0
	mov	r0, r8
	bl	__modsi3
	cmp	r0, #0
	beq	.La2016
	mov	r3, #1
	add	r9, r3
.La2016:
	cmp	r5, #0
	beq	.La2034
	ldr	r2, =gKeyRepeat
	ldr	r4, [r2]
	mov	r3, #0x10
	ldr	r1, [r2]
	and	r4, r3
	ldr	r5, [r2]
	mov	r3, #0x20
	and	r1, r3
	ldr	r2, [r2]
	mov	r3, #0x40
	and	r5, r3
	mov	r3, #0x80
	b	.La204c
.La2034:
	ldr	r2, =gKeyRepeat
	ldr	r4, [r2]
	mov	r3, #0x80
	ldr	r1, [r2]
	and	r4, r3
	ldr	r5, [r2]
	mov	r3, #0x40
	and	r1, r3
	ldr	r2, [r2]
	mov	r3, #0x20
	and	r5, r3
	mov	r3, #0x10
.La204c:
	and	r2, r3
	cmp	r5, #0
	beq	.La2084
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, r10
	ldr	r3, [r1]
	sub	r3, #1
	str	r3, [r1]
	cmp	r3, #0
	bge	.La206a
	mov	r3, r9
	sub	r3, #1
	str	r3, [r1]
.La206a:
	mov	r2, r10
	ldr	r3, [r2]
	mov	r0, r7
	mul	r0, r3
	ldr	r3, [r6]
	mov	r2, r8
	add	r3, r0
	sub	r2, #1
	cmp	r3, r2
	ble	.La20c6
	mov	r1, r8
	sub	r3, r1, r0
	b	.La20ba
.La2084:
	cmp	r2, #0
	beq	.La20ce
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, r10
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	mov	r2, r9
	sub	r2, #1
	cmp	r3, r2
	ble	.La20a2
	mov	r3, r10
	str	r5, [r3]
.La20a2:
	mov	r1, r10
	ldr	r3, [r1]
	mov	r0, r7
	mul	r0, r3
	ldr	r3, [r6]
	mov	r2, r8
	add	r3, r0
	sub	r2, #1
	cmp	r3, r2
	ble	.La20c6
	mov	r2, r8
	sub	r3, r2, r0
.La20ba:
	sub	r3, #1
	sub	r1, r7, #1
	str	r3, [r6]
	cmp	r3, r1
	ble	.La20c6
	str	r1, [r6]
.La20c6:
	bl	Func_800352c
	mov	r0, #1
	b	.La212e
.La20ce:
	cmp	r1, #0
	beq	.La20fc
	mov	r0, #0x6f
	bl	_PlaySound
	ldr	r3, [r6]
	sub	r3, #1
	str	r3, [r6]
	cmp	r3, #0
	bge	.La212c
	sub	r2, r7, #1
	str	r2, [r6]
	mov	r1, r10
	ldr	r3, [r1]
	mul	r3, r7
	mov	r1, r8
	sub	r3, r1, r3
	sub	r3, #1
	str	r3, [r6]
	cmp	r3, r2
	ble	.La212c
	str	r2, [r6]
	b	.La212c
.La20fc:
	mov	r0, #1
	neg	r0, r0
	cmp	r4, #0
	beq	.La212e
	mov	r0, #0x6f
	bl	_PlaySound
	ldr	r2, [r6]
	add	r2, #1
	str	r2, [r6]
	mov	r1, r10
	ldr	r3, [r1]
	mul	r3, r7
	mov	r1, r8
	sub	r3, r1, r3
	mov	r0, #0
	cmp	r2, r3
	bne	.La2122
	str	r0, [r6]
.La2122:
	ldr	r3, [r6]
	sub	r2, r7, #1
	cmp	r3, r2
	ble	.La212c
	str	r0, [r6]
.La212c:
	mov	r0, #0
.La212e:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a1fd4

.thumb_func_start Func_80a2144  @ 0x080a2144
	push	{r5, lr}
	mov	r3, #0xa0
	lsl	r0, #5
	lsl	r3, #19
	add	r5, r0, r3
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x50001e0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =0x50001e0
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldrh	r2, [r5, #8]
	lsl	r3, r2, #16
	lsr	r4, r3, #26
	lsr	r1, r3, #21
	ldr	r3, .La218c	@ 0x1f
	mov	r0, #0x1f
	add	r4, #9
	and	r1, r3
	and	r0, r2
	cmp	r4, #0x1f
	bls	.La217a
	mov	r4, #0x1f
.La217a:
	add	r1, #9
	cmp	r1, #0x1f
	bls	.La2182
	mov	r1, #0x1f
.La2182:
	add	r0, #9
	cmp	r0, #0x1f
	bls	.La21a0
	mov	r0, #0x1f
	b	.La21a0

	.align	2, 0
.La218c:
	.word	0x1f
	.pool

.La21a0:
	lsl	r3, r4, #10
	lsl	r2, r1, #5
	orr	r3, r2
	orr	r3, r0
	strh	r3, [r5, #8]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80a2144

.thumb_func_start Func_80a21b0  @ 0x080a21b0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r1
	mov	r6, r2
	sub	sp, #4
	mov	r1, r6
	mov	r9, r0
	mov	r11, r3
	mov	r0, r5
	mov	r3, #0x31
	ldr	r7, [sp, #0x24]
	mov	r10, r3
	bl	__divsi3
	mov	r1, r6
	mov	r8, r0
	mov	r0, r5
	bl	__modsi3
	cmp	r0, #0
	beq	.La21e8
	mov	r3, #1
	add	r8, r3
.La21e8:
	mov	r3, r8
	sub	r7, r3
	cmp	r3, #1
	ble	.La224c
	mov	r0, #0
	mov	r3, #1
	str	r0, [sp]
	ldr	r1, =0xf128
	sub	r2, r7, #1
	neg	r3, r3
	mov	r0, r9
	mov	r5, #0
	bl	_Func_8019000
	cmp	r5, r8
	bge	.La223a
.La2208:
	cmp	r5, r11
	bne	.La221e
	mov	r3, #2
	str	r3, [sp]
	mov	r0, r9
	mov	r1, r10
	mov	r2, r7
	sub	r3, #3
	bl	_Func_8019000
	b	.La222e
.La221e:
	mov	r3, #3
	str	r3, [sp]
	mov	r0, r9
	mov	r1, r10
	mov	r2, r7
	sub	r3, #4
	bl	_Func_8019000
.La222e:
	mov	r3, #1
	add	r5, #1
	add	r10, r3
	add	r7, #1
	cmp	r5, r8
	blt	.La2208
.La223a:
	mov	r2, #0
	mov	r3, #1
	str	r2, [sp]
	ldr	r1, =0xf129
	neg	r3, r3
	mov	r0, r9
	mov	r2, r7
	bl	_Func_8019000
.La224c:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a21b0

	.section .text.after_22f4, "ax", %progbits

.thumb_func_start Func_80a2324  @ 0x080a2324
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r9, r3
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	sub	sp, #4
	mov	r8, r3
	mov	r2, #0xd
	add	r3, #0x48
	mov	r6, #0x1f
.La233e:
	ldmia	r3!, {r5}
	cmp	r5, #0
	beq	.La2346
	strb	r2, [r5, #5]
.La2346:
	sub	r6, #1
	cmp	r6, #0
	bge	.La233e
	mov	r6, r1
	add	r0, r6
	cmp	r6, r0
	bge	.La23ac
	lsl	r2, r6, #2
	mov	r3, r2
	add	r3, #0x48
	mov	r1, r8
	ldr	r5, [r1, r3]
	cmp	r5, #0
	beq	.La23ac
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r8
	ldrb	r3, [r3]
	sub	r3, #1
	cmp	r6, r3
	bgt	.La23ac
	add	r3, r2, r1
	mov	r2, r3
	ldr	r7, [sp, #0x20]
	mov	r10, r0
	add	r2, #0x48
.La237a:
	mov	r3, r9
	strh	r3, [r5, #6]
	strh	r7, [r5, #8]
	mov	r0, r5
	str	r2, [sp]
	bl	Func_80a17c4
	add	r6, #1
	mov	r3, #1
	strb	r3, [r5, #5]
	add	r7, #0x10
	ldr	r2, [sp]
	cmp	r6, r10
	bge	.La23ac
	add	r2, #4
	ldr	r5, [r2]
	cmp	r5, #0
	beq	.La23ac
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r8
	ldrb	r3, [r3]
	sub	r3, #1
	cmp	r6, r3
	ble	.La237a
.La23ac:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a2324

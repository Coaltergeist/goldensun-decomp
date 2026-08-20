	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b2b10  @ 0x080b2b10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	sub	sp, #0xc
	ldr	r7, [r3]
	mov	r1, #1
	ldr	r2, =0x3aa
	mov	r0, #0
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	add	r3, r7, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	ldr	r0, =0xd26
	mov	r9, r3
	bl	Func_80b28d4
	mov	r5, #2
	mov	r1, #0xc
	mov	r2, #0xd
	mov	r3, #3
	mov	r0, #1
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r4, #0xe0
	lsl	r4, #2
	add	r3, r7, r4
	ldr	r2, [r3]
	add	r1, sp, #4
	mov	r11, r0
	mov	r0, #0xea
	ldrb	r1, [r1]
	mov	r3, #4
	lsl	r0, #2
	strb	r3, [r2, #5]
	add	r3, r7, r0
	strb	r1, [r3]
	ldr	r2, [sp, #8]
	mov	r0, r11
	str	r2, [sp]
	mov	r1, #2
	mov	r2, #0
	mov	r3, #8
	bl	_Func_80a1870
	mov	r0, #1
	mov	r1, #0x10
	mov	r2, #0x17
	mov	r3, #3
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r6, #0
	mov	r5, #0xdb
	mov	r10, r6
	mov	r8, r6
	lsl	r5, #2
	str	r0, [sp, #8]
	b	.Lb2b98
.Lb2b94:
	add	r5, #2
	add	r6, #1
.Lb2b98:
	ldr	r4, =0x3a7
	add	r3, r7, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r6, r3
	bge	.Lb2bb6
	add	r3, r7, #2
	ldrsh	r0, [r3, r5]
	mov	r1, r9
	mov	r10, r0
	bl	Func_80b27b0
	cmp	r0, #0
	beq	.Lb2b94
.Lb2bb6:
	mov	r2, #1
	str	r2, [sp, #4]
.Lb2bba:
	mov	r3, r8
	cmp	r3, #0
	beq	.Lb2bfa
	mov	r4, #0
	ldr	r0, =0xd26
	mov	r8, r4
	bl	Func_80b28d4
	mov	r5, #0xdb
	mov	r0, #1
	mov	r6, #0
	lsl	r5, #2
	str	r0, [sp, #4]
	b	.Lb2bda
.Lb2bd6:
	add	r5, #2
	add	r6, #1
.Lb2bda:
	ldr	r1, =0x3a7
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r6, r3
	bge	.Lb2bfa
	add	r3, r7, #2
	ldrsh	r2, [r3, r5]
	mov	r10, r2
	mov	r0, r10
	mov	r1, r9
	bl	Func_80b27b0
	cmp	r0, #0
	beq	.Lb2bd6
.Lb2bfa:
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.Lb2c4a
	ldr	r2, =0x3a7
	mov	r1, #0
	str	r1, [sp, #4]
	add	r3, r7, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	add	r0, r6, r1
	bl	__modsi3
	mov	r3, #0xdb
	mov	r6, r0
	lsl	r1, r6, #1
	lsl	r3, #2
	add	r2, r1, r3
	add	r3, r7, #2
	add	r1, r6
	ldrsh	r4, [r3, r2]
	lsl	r1, #3
	sub	r1, #0xc
	mov	r0, r11
	mov	r2, #0
	mov	r10, r4
	bl	Func_80b0a6c
	mov	r1, #0xea
	lsl	r1, #2
	add	r2, r7, r1
	mov	r3, #3
	mov	r0, r11
	mov	r1, r6
	strb	r3, [r2]
	bl	Func_80b2e30
	mov	r1, r10
	ldr	r0, [sp, #8]
	bl	Func_80b2ed8
.Lb2c4a:
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.Lb2d12
	mov	r0, #1
	bl	WaitFrames
	mov	r1, r9
	mov	r0, r10
	bl	Func_80b2778
	mov	r1, r9
	mov	r5, r0
	mov	r0, r10
	bl	Func_80b27b0
	cmp	r0, #0
	bne	.Lb2c7a
	mov	r0, #0x71
	bl	_PlaySound
	b	.Lb2bba
.Lb2c7a:
	mov	r0, r10
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r5
	mov	r1, #5
	bl	_Func_8019908
	ldr	r2, =0xd27
	mov	r8, r2
	mov	r0, r8
	bl	Func_80b28d4
	mov	r0, #0
	bl	Func_80b0664
	cmp	r0, #0
	beq	.Lb2cac
	mov	r0, r8
	add	r0, #2
	bl	Func_80b2928
	mov	r3, #1
	mov	r8, r3
	b	.Lb2bba
.Lb2cac:
	ldr	r3, =gState
	ldr	r3, [r3, #0x10]
	cmp	r5, r3
	bls	.Lb2cc8
	mov	r0, #0x71
	bl	_PlaySound
	mov	r0, r8
	add	r0, #1
	bl	Func_80b2928
	mov	r4, #1
	mov	r8, r4
	b	.Lb2bba
.Lb2cc8:
	mov	r1, #1
	mov	r0, r10
	bl	_Func_8019908
	mov	r0, r8
	add	r0, #3
	bl	Func_80b28d4
	bl	_Func_8019a54
	mov	r1, r9
	mov	r0, r10
	bl	Func_80b2da8
	mov	r0, r6
	bl	Func_80b3050
	neg	r0, r5
	bl	_AddCoins
	bl	Func_80b10cc
	mov	r0, r10
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r8
	add	r0, #4
	bl	Func_80b28d4
	bl	Func_80b280c
	cmp	r0, #0
	beq	.Lb2d5a
	mov	r0, #1
	mov	r8, r0
	b	.Lb2bba
.Lb2d12:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2d24
	mov	r0, #0x71
	bl	_PlaySound
	b	.Lb2d5a
.Lb2d24:
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2d3c
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, #1
	str	r1, [sp, #4]
	sub	r6, #1
.Lb2d3c:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lb2d52
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	str	r2, [sp, #4]
	add	r6, #1
.Lb2d52:
	mov	r0, #1
	bl	WaitFrames
	b	.Lb2bba
.Lb2d5a:
	bl	_Func_80a195c
	mov	r1, #2
	ldr	r0, [sp, #8]
	bl	_CloseUIBox
	mov	r0, r11
	mov	r1, #2
	bl	_CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b2b10


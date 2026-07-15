	.include "macros.inc"

.thumb_func_start Func_80a8914  @ 0x080a8914
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r6, r0
	mov	r0, r1
	mov	r8, r2
	ldr	r5, [r3]
	sub	sp, #4
	bl	_GetUnit
	mov	r2, #0xbe
	lsl	r2, #1
	add	r5, r2
	ldr	r2, [r5]
	mov	r3, #1
	strb	r3, [r2, #5]
	mov	r2, r8
	add	r3, #0xff
	and	r2, r3
	mov	r7, r0
	mov	r8, r2
	cmp	r2, #0
	bne	.La895c
	mov	r3, #0x28
	str	r3, [sp]
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x80
	bl	_Func_80164d4
.La895c:
	mov	r0, r7
	mov	r1, r6
	mov	r2, #0x28
	mov	r3, #0
	bl	_Func_801e8b0
	ldr	r2, =0x129
	add	r3, r7, r2
	ldrb	r0, [r3]
	ldr	r3, =0x741
	mov	r1, r6
	add	r0, r3
	mov	r2, #0
	mov	r3, #0x20
	bl	_Func_801e7c0
	mov	r1, r6
	mov	r2, #0x68
	mov	r3, #0
	ldr	r0, =.Laf22c
	bl	_Func_801e8b0
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r3, #0
	ldrb	r0, [r7, #0xf]
	mov	r1, #2
	str	r3, [sp]
	mov	r2, r6
	mov	r3, #0x80
	bl	_Func_801ea08
	mov	r2, #0x28
	ldr	r0, =.Laf234
	mov	r1, r6
	mov	r3, #0x10
	bl	_Func_801e8b0
	mov	r3, #0x10
	mov	r2, #0x38
	ldrsh	r0, [r7, r2]
	mov	r9, r3
	str	r3, [sp]
	mov	r2, r6
	mov	r1, #4
	mov	r3, #0x48
	bl	_Func_801ea08
	mov	r3, r9
	mov	r2, #0x34
	ldrsh	r0, [r7, r2]
	mov	r1, #4
	str	r3, [sp]
	mov	r2, r6
	mov	r3, #0x70
	bl	_Func_801ea08
	ldr	r5, =.Laf230
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0x68
	mov	r3, #0x10
	bl	_UIDrawText
	mov	r2, #0x28
	ldr	r0, =.Laf238
	mov	r1, r6
	mov	r3, #0x18
	bl	_Func_801e8b0
	mov	r3, #0x18
	mov	r2, #0x3a
	ldrsh	r0, [r7, r2]
	mov	r10, r3
	str	r3, [sp]
	mov	r2, r6
	mov	r1, #4
	mov	r3, #0x48
	bl	_Func_801ea08
	mov	r3, r10
	mov	r2, #0x36
	ldrsh	r0, [r7, r2]
	mov	r1, #4
	str	r3, [sp]
	mov	r2, r6
	mov	r3, #0x70
	bl	_Func_801ea08
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0x68
	mov	r3, #0x18
	bl	_UIDrawText
	ldr	r5, =0xb0e
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0x28
	mov	r3, #8
	bl	_Func_801e7c0
	mov	r2, #0x92
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r0, [r3]
	mov	r3, #8
	str	r3, [sp]
	mov	r2, r6
	mov	r11, r3
	mov	r1, #7
	mov	r3, #0x58
	bl	_Func_801ea08
	mov	r2, r8
	cmp	r2, #0
	bne	.La8a5e
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #0x28
	str	r3, [sp]
	mov	r0, r6
	mov	r1, #0x90
	mov	r2, #0
	mov	r3, #0xe0
	bl	_Func_80164d4
.La8a5e:
	mov	r0, r5
	mov	r1, r6
	sub	r0, #0x17
	mov	r2, #0x98
	mov	r3, #0
	bl	_Func_801e7c0
	mov	r0, r5
	mov	r1, r6
	sub	r0, #0x16
	mov	r2, #0x98
	mov	r3, #8
	bl	_Func_801e7c0
	mov	r0, r5
	mov	r1, r6
	sub	r0, #0x15
	mov	r2, #0x98
	mov	r3, #0x10
	bl	_Func_801e7c0
	mov	r0, r5
	mov	r1, r6
	sub	r0, #0x14
	mov	r2, #0x98
	mov	r3, #0x18
	bl	_Func_801e7c0
	mov	r3, #0
	ldrh	r0, [r7, #0x3c]
	mov	r2, r6
	str	r3, [sp]
	mov	r1, #3
	mov	r3, #0xc8
	bl	_Func_801ea08
	mov	r2, r11
	ldrh	r0, [r7, #0x3e]
	mov	r1, #3
	str	r2, [sp]
	mov	r3, #0xc8
	mov	r2, r6
	bl	_Func_801ea08
	mov	r3, r7
	add	r3, #0x40
	ldrh	r0, [r3]
	mov	r3, r9
	str	r3, [sp]
	mov	r2, r6
	mov	r1, #3
	mov	r3, #0xc8
	bl	_Func_801ea08
	mov	r3, r7
	mov	r2, r10
	add	r3, #0x42
	ldrb	r0, [r3]
	mov	r1, #3
	str	r2, [sp]
	mov	r3, #0xc8
	mov	r2, r6
	bl	_Func_801ea08
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a8914

	.section .text.after_a8b10, "ax", %progbits

.thumb_func_start Func_80a8b8c  @ 0x080a8b8c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0x86
	ldr	r6, [r3]
	lsl	r2, #2
	mov	r10, r2
	mov	r5, r1
	add	r3, r6, #2
	add	r5, r10
	mov	r9, r0
	ldrb	r0, [r3, r5]
	mov	r8, r3
	bl	_GetUnit
	mov	r2, r10
	ldrb	r7, [r6, r2]
	mov	r2, r8
	ldrb	r3, [r2, r5]
	mov	r2, #0x98
	lsl	r2, #2
	add	r3, r2
	ldrsb	r6, [r6, r3]
	add	r3, r6, #1
	mov	r11, r0
	cmp	r3, r7
	ble	.La8bce
	sub	r6, r7, #1
.La8bce:
	cmp	r7, #0
	bne	.La8bd4
	mov	r6, #0
.La8bd4:
	mov	r1, #5
	mov	r0, r6
	bl	__divsi3
	mov	r1, #5
	mov	r10, r0
	mov	r0, r6
	bl	__modsi3
	mov	r1, #5
	mov	r8, r0
	mov	r0, r7
	bl	__divsi3
	mov	r1, #5
	mov	r5, r0
	mov	r0, r7
	bl	__modsi3
	cmp	r0, #0
	beq	.La8c00
	add	r5, #1
.La8c00:
	mov	r2, r9
	mov	r3, r11
	str	r3, [r2]
	mov	r3, r10
	str	r3, [r2, #8]
	mov	r3, r8
	str	r5, [r2, #0xc]
	str	r3, [r2, #0x10]
	str	r7, [r2, #0x14]
	str	r6, [r2, #0x18]
	mov	r0, #1
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a8b8c

.thumb_func_start LoadMoveRangeIcons  @ 0x080a8c2c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, =.Laf23c
	ldr	r3, =Func_80008d8
	mov	r7, #0
	mov	r8, r2
	mov	r10, r3
.La8c3e:
	lsl	r3, r7, #1
	add	r3, r7
	ldr	r2, =0x6005000
	lsl	r3, #7
	mov	r6, #0
	add	r5, r3, r2
.La8c4a:
	mov	r0, r5
	mov	r1, #0x40
	ldr	r2, =0x44444444
	bl	_call_via_r10
	mov	r4, #1
	add	r0, r5, #4
.La8c58:
	mov	r1, r6
	cmp	r7, #1
	bne	.La8c62
	cmp	r4, #1
	ble	.La8c8c
.La8c62:
	cmp	r7, #0
	bne	.La8c74
	sub	r3, r4, #2
	cmp	r6, r3
	ble	.La8c74
	mov	r1, r3
	cmp	r1, #0
	bge	.La8c74
	mov	r1, #0
.La8c74:
	lsl	r1, #3
	mov	r3, r8
	ldr	r3, [r3, r1]
	ldr	r2, [r0]
	eor	r2, r3
	str	r2, [r0]
	add	r1, #4
	mov	r3, r8
	ldr	r2, [r0, #0x20]
	ldr	r1, [r3, r1]
	eor	r2, r1
	str	r2, [r0, #0x20]
.La8c8c:
	add	r4, #1
	add	r0, #4
	cmp	r4, #7
	ble	.La8c58
	add	r6, #1
	add	r5, #0x40
	cmp	r6, #5
	ble	.La8c4a
	add	r7, #1
	cmp	r7, #1
	ble	.La8c3e
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end LoadMoveRangeIcons

	.section .text.after_a8cc0, "ax", %progbits

.thumb_func_start Func_80a8d34  @ 0x080a8d34
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r11, r2
	ldr	r3, [r3]
	ldr	r2, [r2, #8]
	mov	r1, r11
	mov	r8, r3
	lsl	r3, r2, #2
	add	r3, r2
	ldr	r2, [r1, #0x10]
	add	r3, r2
	mov	r2, r8
	str	r3, [r1, #0x18]
	mov	r7, r0
	ldr	r0, [r2, #0x2c]
	sub	sp, #8
	bl	_Func_8016498
	mov	r0, #1
	bl	WaitFrames
	mov	r1, r11
	ldr	r3, [r1, #0x18]
	mov	r2, #0xe4
	lsl	r2, #1
	lsl	r3, #1
	add	r3, r2
	mov	r1, r8
	ldrh	r2, [r1, r3]
	mov	r3, r2
	cmp	r3, #0
	beq	.La8e1a
	ldr	r5, =0x3fff
	ldr	r3, =0x53a
	mov	r0, r5
	and	r0, r2
	add	r0, r3
	ldr	r1, [r1, #0x2c]
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	mov	r2, r11
	ldr	r3, [r2, #0x18]
	mov	r1, #0xe4
	lsl	r1, #1
	lsl	r3, #1
	add	r3, r1
	mov	r2, r8
	ldrh	r3, [r2, r3]
	and	r5, r3
	mov	r0, r5
	bl	_GetMoveInfo
	mov	r3, #0x68
	mov	r5, r0
	str	r3, [sp]
	mov	r0, r7
	mov	r3, #0xe0
	mov	r1, #0
	mov	r2, #0x60
	bl	_Func_80164d4
	mov	r3, #0
	mov	r10, r3
	ldrb	r3, [r5, #0xc]
	cmp	r3, #0
	bne	.La8dd4
	ldrb	r0, [r5, #1]
	mov	r3, #0x40
	and	r3, r0
	cmp	r3, #0
	beq	.La8dda
	b	.La8dd6
.La8dd4:
	ldrb	r0, [r5, #1]
.La8dd6:
	mov	r1, #2
	mov	r10, r1
.La8dda:
	mov	r3, #0x80
	and	r3, r0
	cmp	r3, #0
	beq	.La8dea
	mov	r2, r10
	mov	r3, #1
	orr	r2, r3
	mov	r10, r2
.La8dea:
	mov	r3, r10
	cmp	r3, #3
	bne	.La8df4
	ldr	r0, =0xb15
	b	.La8dfc
.La8df4:
	mov	r1, r10
	cmp	r1, #2
	bne	.La8e08
	ldr	r0, =0xb14
.La8dfc:
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x60
	bl	_Func_801e7c0
	b	.La8e1a
.La8e08:
	mov	r2, r10
	cmp	r2, #1
	bne	.La8e1a
	ldr	r0, =0xb13
	mov	r1, r7
	mov	r2, #0
	mov	r3, #0x60
	bl	_Func_801e7c0
.La8e1a:
	mov	r3, r11
	ldr	r2, [r3, #8]
	lsl	r3, r2, #2
	add	r3, r2
	mov	r1, #0
	mov	r10, r1
	lsl	r3, #1
	mov	r1, #0xe4
	add	r3, r8
	lsl	r1, #1
	mov	r2, #1
	add	r1, r3
	mov	r9, r2
	mov	r6, #2
	mov	r8, r1
.La8e38:
	mov	r2, r11
	ldr	r3, [r2, #0x10]
	cmp	r10, r3
	bne	.La8e9a
	mov	r1, r8
	ldrh	r3, [r1]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	_GetMoveInfo
	mov	r5, r0
	ldrb	r3, [r5, #2]
	cmp	r3, #4
	beq	.La8e84
	mov	r1, r3
	mov	r3, #0
	str	r3, [sp]
	add	r1, #1
	mov	r0, r7
	mov	r2, #0x18
	mov	r3, r6
	bl	_Func_8019000
	mov	r2, r9
	mov	r3, #0xe
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, r7
	mov	r1, #9
	mov	r2, r6
	mov	r3, #0xf
	bl	Func_80a2268
	mov	r1, r9
	mov	r2, #0xe
	str	r1, [sp]
	str	r2, [sp, #4]
	b	.La8edc
.La8e84:
	mov	r3, r9
	mov	r1, #0xe
	str	r3, [sp]
	str	r1, [sp, #4]
	mov	r0, r7
	mov	r1, #9
	mov	r2, r6
	mov	r3, #0x13
	bl	Func_80a2268
	b	.La8efe
.La8e9a:
	mov	r2, r8
	ldrh	r3, [r2]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	_GetMoveInfo
	mov	r5, r0
	ldrb	r3, [r5, #2]
	cmp	r3, #4
	beq	.La8eea
	mov	r1, r3
	mov	r3, #4
	str	r3, [sp]
	add	r1, #1
	mov	r0, r7
	mov	r2, #0x18
	mov	r3, r6
	bl	_Func_8019000
	mov	r3, r9
	mov	r1, #0xf
	str	r3, [sp]
	str	r1, [sp, #4]
	mov	r0, r7
	mov	r1, #9
	mov	r2, r6
	mov	r3, #0xf
	bl	Func_80a2268
	mov	r2, r9
	mov	r3, #0xf
	str	r2, [sp]
	str	r3, [sp, #4]
.La8edc:
	mov	r0, r7
	mov	r1, #0x19
	mov	r2, r6
	mov	r3, #3
	bl	Func_80a2268
	b	.La8efe
.La8eea:
	mov	r1, r9
	mov	r2, #0xf
	str	r1, [sp]
	str	r2, [sp, #4]
	mov	r0, r7
	mov	r1, #9
	mov	r2, r6
	mov	r3, #0x13
	bl	Func_80a2268
.La8efe:
	mov	r1, #1
	add	r10, r1
	mov	r3, #2
	mov	r2, r10
	add	r6, #2
	add	r8, r3
	cmp	r2, #4
	ble	.La8e38
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #1
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a8d34

.thumb_func_start Func_80a8f40  @ 0x080a8f40
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r11, r3
	ldr	r3, =0x21a
	add	r3, r11
	mov	r8, r0
	ldrb	r0, [r3]
	mov	r5, r2
	sub	sp, #8
	bl	_GetUnit
	str	r0, [sp, #4]
	mov	r0, r8
	bl	_Func_8016498
	ldr	r2, [r5, #8]
	lsl	r3, r2, #2
	add	r6, r3, r2
	ldr	r3, [r5, #0x14]
	sub	r3, r6
	lsl	r3, #24
	lsr	r3, #24
	mov	r9, r3
	cmp	r3, #5
	bls	.La8f84
	mov	r1, #5
	mov	r9, r1
.La8f84:
	mov	r3, #0x3a
	str	r3, [sp]
	mov	r0, #5
	mov	r1, r6
	mov	r2, r8
	mov	r3, #0x50
	bl	Func_80a2324
	mov	r2, #0x1c
	ldr	r1, [r5, #0x14]
	ldr	r3, [r5, #8]
	mov	r0, r8
	str	r2, [sp]
	mov	r2, #5
	bl	Func_80a21b0
	mov	r2, #0xb0
	mov	r3, #0
	ldr	r0, =0xaed
	mov	r1, r8
	bl	_Func_801e7c0
	mov	r2, #0
	mov	r3, r9
	mov	r10, r2
	cmp	r3, #0
	bls	.La902a
	mov	r1, #0xe4
	lsl	r3, r6, #1
	lsl	r1, #1
	add	r7, r3, r1
.La8fc2:
	mov	r2, r11
	ldrh	r3, [r7, r2]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	_GetMoveInfo
	mov	r1, r11
	ldrh	r3, [r7, r1]
	mov	r6, r0
	ldr	r0, =0x3fff
	mov	r2, r10
	and	r0, r3
	lsl	r5, r2, #4
	ldr	r3, =0x333
	add	r5, #0x10
	add	r0, r3
	mov	r1, r8
	mov	r2, #0x58
	mov	r3, r5
	bl	_Func_801e7c0
	ldrb	r0, [r6, #9]
	mov	r1, #2
	mov	r2, r8
	mov	r3, #0xb0
	str	r5, [sp]
	bl	_Func_801e9d4
	ldrb	r4, [r6, #8]
	cmp	r4, #0xff
	bne	.La9004
	mov	r4, #0xb
	b	.La9006
.La9004:
	sub	r4, #1
.La9006:
	mov	r3, r10
	lsl	r2, r3, #1
	mov	r3, #0
	str	r3, [sp]
	add	r2, #2
	mov	r3, r4
	mov	r0, r8
	mov	r1, #0x19
	bl	Func_80a8cc0
	mov	r3, r10
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	mov	r10, r3
	add	r7, #2
	cmp	r9, r10
	bhi	.La8fc2
.La902a:
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r11
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.La9042
	ldr	r0, =0xaef
	mov	r1, r8
	mov	r2, #0x60
	mov	r3, #0x11
	bl	_Func_801e7c0
.La9042:
	ldr	r0, [sp, #4]
	mov	r1, r8
	mov	r2, #0x28
	mov	r3, #0
	bl	_Func_801e8b0
	ldr	r2, =0x129
	ldr	r1, [sp, #4]
	add	r3, r1, r2
	ldrb	r0, [r3]
	ldr	r3, =0x741
	mov	r1, r8
	add	r0, r3
	mov	r2, #0
	mov	r3, #0x20
	bl	_Func_801e7c0
	mov	r1, r8
	ldr	r0, =.Laf22c
	mov	r2, #0
	mov	r3, #0x30
	bl	_UIDrawText
	ldr	r3, [sp, #4]
	ldrb	r0, [r3, #0xf]
	mov	r3, #0x30
	str	r3, [sp]
	mov	r1, #2
	mov	r2, r8
	mov	r3, #0x18
	bl	_Func_801ea08
	mov	r0, #1
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a8f40

.thumb_func_start Func_80a90bc  @ 0x080a90bc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	sub	sp, #0x2c
	mov	r1, #0
	mov	r8, r3
	str	r1, [sp, #0xc]
	mov	r11, r1
	bl	LoadMoveRangeIcons
	mov	r3, #0x86
	lsl	r3, #1
	add	r3, r8
	ldr	r0, [r3]
	bl	_Func_8016498
	mov	r3, #5
	str	r3, [sp]
	mov	r0, r8
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0x1e
	add	r0, #0x2c
	bl	Func_80a10d0
	ldr	r3, =0x242
	ldr	r1, .La9134	@ 0xfffffff0
	mov	r2, #3
	add	r3, r8
.La9106:
	sub	r2, #1
	strh	r1, [r3]
	sub	r3, #2
	cmp	r2, #0
	bge	.La9106
	mov	r1, r8
	mov	r0, #0xf5
	add	r1, #0x48
	mov	r2, #0x1f
.La9118:
	ldmia	r1!, {r3}
	cmp	r3, #0
	beq	.La9120
	strb	r0, [r3, #0xf]
.La9120:
	sub	r2, #1
	cmp	r2, #0
	bge	.La9118
	ldr	r0, =Func_80a19a0
	bl	StopTask
	mov	r3, #0x86
	lsl	r3, #1
	b	.La9144

	.align	2, 0
.La9134:
	.word	0xfffffff0
	.pool

.La9144:
	add	r3, r8
	ldr	r1, [r3]
	mov	r0, r8
	bl	Func_80a33d4
	mov	r6, #0x18
	ldr	r5, =0xb06
	mov	r2, r8
	neg	r6, r6
	ldr	r1, [r2, #0x24]
	mov	r0, r5
	mov	r2, #0x50
	mov	r3, r6
	bl	_Func_801e7c0
	add	r5, #2
	mov	r3, r8
	ldr	r1, [r3, #0x24]
	mov	r0, r5
	mov	r2, #0
	mov	r3, r6
	bl	_Func_801e7c0
	ldr	r1, =0x21a
	add	r1, r8
	mov	r9, r1
	b	.La92c0
.La917a:
	mov	r0, #0x70
	bl	_PlaySound
	mov	r2, #1
	str	r2, [sp, #0xc]
	mov	r11, r2
	b	.La92c0
.La9188:
	mov	r0, #0x71
	bl	_PlaySound
	mov	r1, #1
	mov	r3, #1
	mov	r11, r1
	mov	r1, #0xc8
	neg	r3, r3
	ldr	r0, =Func_80a19a0
	lsl	r1, #4
	str	r3, [sp, #0xc]
	bl	StartTask
	b	.La92c0
.La91a4:
	cmp	r4, #0
	beq	.La91d8
	mov	r2, r10
	mov	r4, #0
	cmp	r2, #0
	beq	.La91c2
	mov	r3, r8
	ldr	r0, [r3, #0x24]
	mov	r1, #0
	mov	r2, r6
	mov	r10, r4
	str	r4, [sp, #8]
	bl	Func_80a8f40
	ldr	r4, [sp, #8]
.La91c2:
	mov	r1, r8
	ldr	r0, [r1, #0x24]
	mov	r1, #0
	mov	r2, r6
	str	r4, [sp, #8]
	bl	Func_80a8d34
	mov	r0, #1
	bl	WaitFrames
	ldr	r4, [sp, #8]
.La91d8:
	mov	r0, #1
	str	r4, [sp, #8]
	bl	WaitFrames
	add	r3, sp, #0x18
	ldr	r1, [r6, #0x14]
	mov	r2, #5
	str	r3, [sp]
	mov	r0, #0
	add	r3, sp, #0x20
	bl	Func_80a1fd4
	mov	r2, r8
	ldr	r1, [r6, #0x10]
	ldr	r3, [r2, #0x14]
	mov	r7, #1
	lsl	r1, #4
	mov	r5, r0
	strb	r7, [r3, #5]
	add	r1, #0x3c
	mov	r0, #0x37
	bl	Func_80a1a40
	ldr	r4, [sp, #8]
	cmp	r5, #1
	bne	.La9212
	mov	r3, #1
	mov	r10, r3
	mov	r4, #1
.La9212:
	cmp	r5, #0
	bne	.La9218
	mov	r4, #1
.La9218:
	mov	r1, #1
	neg	r1, r1
	cmp	r5, r1
	bne	.La9222
	mov	r4, #0
.La9222:
	ldr	r2, =gKeyPress
	ldr	r3, [r2]
	and	r3, r7
	cmp	r3, #0
	bne	.La917a
	ldr	r2, [r2]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	bne	.La9188
	ldr	r5, =gKeyRepeat
	mov	r7, #0x80
	ldr	r3, [r5]
	lsl	r7, #1
	and	r3, r7
	cmp	r3, #0
	bne	.La9250
	ldr	r2, [r5]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La92ae
.La9250:
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, r8
	mov	r0, #0x1c
	ldrsb	r0, [r2, r0]
	mov	r1, #0x82
	lsl	r1, #2
	lsl	r3, r0, #1
	add	r3, r1
	ldrh	r3, [r2, r3]
	mov	r2, #0x98
	lsl	r2, #2
	add	r3, r2
	ldr	r2, [r6, #0x18]
	mov	r1, r8
	strb	r2, [r1, r3]
	ldr	r3, [r5]
	and	r3, r7
	cmp	r3, #0
	beq	.La927e
	add	r0, #1
	b	.La9280
.La927e:
	sub	r0, #1
.La9280:
	ldr	r3, =0x219
	add	r3, r8
	ldrb	r1, [r3]
	add	r0, r1
	bl	__modsi3
	mov	r3, #0x82
	lsl	r2, r0, #1
	lsl	r3, #2
	mov	r1, r8
	add	r2, r3
	ldrh	r3, [r1, r2]
	str	r3, [r1, #8]
	ldrh	r3, [r1, r2]
	mov	r1, r9
	strb	r3, [r1]
	mov	r3, r8
	strb	r0, [r3, #0x1c]
	mov	r0, r8
	ldrh	r1, [r3, r2]
	bl	Func_80a1804
	b	.La92c0
.La92ae:
	mov	r0, #0xa8
	lsl	r0, #1
	str	r4, [sp, #8]
	bl	_GetFlag
	ldr	r4, [sp, #8]
	cmp	r0, #0
	bne	.La92c0
	b	.La91a4
.La92c0:
	mov	r1, r11
	cmp	r1, #0
	bne	.La931c
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La931c
	bl	Func_80a9cbc
	mov	r2, r8
	ldr	r0, [r2, #0x24]
	bl	_Func_8016498
	mov	r3, r9
	ldrb	r0, [r3]
	bl	_GetUnit
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0
	add	r1, r8
	bl	Func_80a68ec
	mov	r3, #0x86
	lsl	r3, #2
	add	r3, r8
	strb	r0, [r3]
	mov	r0, #1
	bl	WaitFrames
	add	r6, sp, #0x10
	mov	r1, #0
	mov	r0, r6
	bl	Func_80a8b8c
	mov	r1, r8
	mov	r2, r9
	ldr	r0, [r1, #0x24]
	ldrb	r1, [r2]
	bl	Func_80a9374
	mov	r4, #1
	mov	r10, r4
	b	.La92ae
.La931c:
	mov	r3, r8
	ldr	r0, [r3, #0x2c]
	bl	_Func_80164ac
	mov	r1, r8
	ldr	r0, [r1, #0x2c]
	bl	_Func_8016498
	bl	Func_80a345c
	mov	r3, #0x86
	lsl	r3, #1
	add	r3, r8
	ldr	r0, [r3]
	bl	_Func_80164ac
	mov	r2, r8
	ldr	r0, [r2, #0x24]
	bl	_Func_8016498
	ldr	r0, [sp, #0xc]
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a90bc

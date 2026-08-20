	.include "macros.inc"
	.include "gba.inc"

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


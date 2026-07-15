	.include "macros.inc"

	.section .text.after_a68a8, "ax", %progbits

.thumb_func_start Func_80a68ec  @ 0x080a68ec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r1
	mov	r1, r2
	mov	r2, #2
	eor	r2, r1
	neg	r3, r2
	orr	r3, r2
	lsr	r3, #31
	mov	r8, r3
	mov	r2, #3
	add	r8, r2
	mov	r3, r10
	ldr	r2, =0
	sub	sp, #8
	mov	r9, r0
	add	r3, #0x3e
	mov	r12, r10
.La691a:
	strh	r2, [r3]
	sub	r3, #2
	cmp	r3, r12
	bge	.La691a
	mov	r4, #0
	cmp	r1, #1
	bne	.La6970
	ldr	r7, =0x3fff
	mov	r1, #0
	mov	r6, #0x58
	mov	r5, r10
	b	.La693c

	.pool_aligned

.La693c:
	mov	r3, r9
	ldrh	r2, [r6, r3]
	mov	r3, r2
	cmp	r3, #0
	beq	.La6966
	mov	r0, r7
	and	r0, r2
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	_GetMoveInfo
	ldrb	r3, [r0, #0xc]
	ldr	r1, [sp, #4]
	ldr	r4, [sp]
	cmp	r3, #0
	beq	.La6966
	mov	r2, r9
	ldrh	r3, [r2, r6]
	add	r4, #1
	strh	r3, [r5]
	add	r5, #2
.La6966:
	add	r1, #1
	add	r6, #4
	cmp	r1, #0x1f
	ble	.La693c
	b	.La69ea
.La6970:
	mov	r7, #0
	cmp	r7, r8
	bge	.La69ea
	mov	r3, #0x40
	mov	r11, r3
.La697a:
	lsl	r3, r4, #1
	mov	r2, r10
	mov	r6, r9
	add	r5, r3, r2
	mov	r1, #0x1f
	add	r6, #0x58
.La6986:
	ldrh	r2, [r6]
	mov	r3, r2
	cmp	r3, #0
	beq	.La69dc
	ldr	r0, =0x3fff
	and	r0, r2
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	_GetMoveInfo
	ldr	r1, [sp, #4]
	ldr	r4, [sp]
	cmp	r7, #0
	bne	.La69b8
	ldrb	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.La69d4
	ldrb	r2, [r0, #1]
	mov	r3, r11
	and	r3, r2
	cmp	r3, #0
	bne	.La69d4
	b	.La69b8

	.pool_aligned

.La69b8:
	cmp	r7, #1
	beq	.La69dc
	cmp	r7, #2
	beq	.La69dc
	cmp	r7, #3
	bne	.La69dc
	ldrb	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.La69dc
	ldrb	r2, [r0, #1]
	mov	r3, r11
	and	r3, r2
	cmp	r3, #0
	bne	.La69dc
.La69d4:
	ldrh	r3, [r6]
	add	r4, #1
	strh	r3, [r5]
	add	r5, #2
.La69dc:
	sub	r1, #1
	add	r6, #4
	cmp	r1, #0
	bge	.La6986
	add	r7, #1
	cmp	r7, r8
	blt	.La697a
.La69ea:
	mov	r0, r4
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a68ec

	.section .text.after_a6a00, "ax", %progbits

	.section .text.after_a6a98, "ax", %progbits

.thumb_func_start Func_80a6b64  @ 0x080a6b64
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	sub	sp, #4
	mov	r10, r3
	mov	r8, r0
	mov	r6, r2
	bl	_Func_8016498
	mov	r3, #0xb
	str	r3, [sp]
	mov	r2, #0xb
	mov	r3, #0x10
	mov	r0, r8
	mov	r1, #0
	bl	_Func_801e41c
	mov	r3, #0x88
	lsl	r3, #2
	add	r3, r10
	ldrh	r2, [r3]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La6bb0
	ldr	r0, =0xae1
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0x58
	bl	_Func_801e7c0
	b	.La6bbc
.La6bb0:
	ldr	r0, =0xb89
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0x58
	bl	_Func_801e7c0
.La6bbc:
	ldr	r2, [r6, #8]
	lsl	r3, r2, #2
	add	r5, r3, r2
	ldr	r3, [r6, #0x14]
	sub	r3, r5
	lsl	r3, #24
	lsr	r3, #24
	mov	r11, r3
	cmp	r3, #5
	bls	.La6bd4
	mov	r1, #5
	mov	r11, r1
.La6bd4:
	mov	r3, #0x22
	str	r3, [sp]
	mov	r0, #5
	mov	r1, r5
	mov	r2, r8
	mov	r3, #0x70
	bl	Func_80a2324
	mov	r2, #0xf
	ldr	r1, [r6, #0x14]
	ldr	r3, [r6, #8]
	mov	r0, r8
	str	r2, [sp]
	mov	r2, #5
	bl	Func_80a21b0
	mov	r2, #0x60
	mov	r3, #0
	ldr	r0, =0xaed
	mov	r1, r8
	bl	_Func_801e7c0
	mov	r2, #0
	mov	r3, r11
	mov	r9, r2
	cmp	r3, #0
	bls	.La6c9c
	mov	r1, #0xe4
	lsl	r3, r5, #1
	lsl	r1, #1
	add	r6, r3, r1
.La6c12:
	ldr	r3, =0x21a
	add	r3, r10
	ldrb	r0, [r3]
	bl	_GetUnit
	mov	r2, r10
	ldrh	r3, [r6, r2]
	mov	r5, r0
	ldr	r0, =0x3fff
	and	r0, r3
	bl	_GetMoveInfo
	mov	r7, r0
	ldrb	r2, [r7, #9]
	mov	r1, #0x3a
	ldrsh	r3, [r5, r1]
	cmp	r2, r3
	ble	.La6c3e
	mov	r0, #2
	bl	_SetTextColor
	b	.La6c5c
.La6c3e:
	mov	r2, r10
	ldrh	r3, [r6, r2]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	Func_80a735c
	cmp	r0, #0
	beq	.La6c56
	mov	r0, #4
	bl	_SetTextColor
	b	.La6c5c
.La6c56:
	mov	r0, #0xf
	bl	_SetTextColor
.La6c5c:
	mov	r1, r10
	ldrh	r3, [r6, r1]
	ldr	r0, =0x3fff
	mov	r2, r9
	and	r0, r3
	lsl	r5, r2, #4
	ldr	r3, =0x333
	add	r5, #8
	add	r0, r3
	mov	r1, r8
	mov	r2, #0x10
	mov	r3, r5
	bl	_Func_801e7c0
	ldrb	r0, [r7, #9]
	mov	r3, #0x68
	mov	r1, #2
	mov	r2, r8
	str	r5, [sp]
	bl	_Func_801e9d4
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r3, r9
	add	r3, #1
	lsl	r3, #24
	lsr	r3, #24
	mov	r9, r3
	add	r6, #2
	cmp	r11, r9
	bhi	.La6c12
.La6c9c:
	mov	r0, #1
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a6b64

.thumb_func_start Func_80a6ccc  @ 0x080a6ccc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x64
	str	r0, [sp, #0x30]
	ldr	r1, [sp, #0x30]
	ldr	r3, =iwram_3001f2c
	lsl	r1, #2
	ldr	r7, [r3]
	mov	r0, #0
	mov	r3, r1
	str	r0, [sp, #0x2c]
	str	r0, [sp, #0x1c]
	str	r0, [sp, #0x18]
	str	r1, [sp, #0x14]
	add	r3, #0x14
	ldr	r2, [r7, r3]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	mov	r5, r7
	mov	r3, #0xe
	str	r3, [sp]
	add	r5, #0x34
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, #0xd
	mov	r2, #3
	mov	r3, #0x11
	bl	Func_80a10d0
	ldr	r5, [r5]
	mov	r2, #0
	mov	r8, r5
	str	r2, [sp, #0x24]
	add	r3, r7, #2
	ldr	r0, [sp, #0x30]
	lsl	r0, #1
	str	r3, [sp, #0x10]
	add	r4, sp, #0x34
	str	r0, [sp, #0xc]
	b	.La72cc
.La6d28:
	ldr	r1, [sp, #0x30]
	mov	r2, #0x86
	lsl	r2, #2
	add	r3, r1, r2
	ldr	r1, [sp, #0x10]
	ldrb	r0, [r1, r3]
	str	r4, [sp, #8]
	bl	_GetUnit
	mov	r2, #0x9a
	str	r0, [sp, #0x20]
	lsl	r2, #2
	add	r3, r7, r2
	ldrb	r3, [r3]
	ldr	r4, [sp, #8]
	cmp	r3, #0
	beq	.La6db2
	mov	r3, #0xe4
	lsl	r3, #1
	add	r1, r7, r3
	mov	r2, #1
	b	.La6dbe
.La6d54:
	mov	r0, #0x82
	b	.La707e
.La6d58:
	mov	r0, #0x71
	str	r4, [sp, #8]
	bl	_PlaySound
	mov	r0, #1
	neg	r0, r0
	mov	r1, #1
	str	r0, [sp, #0x2c]
	str	r1, [sp, #0x24]
	ldr	r4, [sp, #8]
	b	.La72cc
.La6d6e:
	ldr	r3, [r4, #0x18]
	mov	r2, #0xe4
	lsl	r2, #1
	lsl	r3, #1
	add	r3, r2
	ldrh	r3, [r7, r3]
	str	r3, [sp, #0x2c]
	mov	r3, #0x9a
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #1
	strb	r3, [r2]
	str	r3, [sp, #0x24]
	b	.La72cc
.La6d8a:
	mov	r0, #0x82
	str	r4, [sp, #8]
	bl	_PlaySound
	ldr	r4, [sp, #8]
	ldr	r3, [r4, #0x18]
	mov	r0, #0xe4
	lsl	r3, #1
	lsl	r0, #1
	add	r3, r0
	ldrh	r3, [r7, r3]
	mov	r1, #0x9a
	lsl	r1, #2
	str	r3, [sp, #0x2c]
	add	r2, r7, r1
	mov	r3, #2
	strb	r3, [r2]
	mov	r2, #1
	str	r2, [sp, #0x24]
	b	.La72cc
.La6db2:
	mov	r3, #0xe4
	lsl	r3, #1
	add	r1, r7, r3
	ldr	r0, [sp, #0x20]
	mov	r2, #2
	str	r4, [sp, #8]
.La6dbe:
	bl	Func_80a68ec
	mov	r1, #0x86
	lsl	r1, #2
	add	r3, r7, r1
	strb	r0, [r3]
	ldr	r4, [sp, #8]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r0, r7, r2
	str	r4, [sp, #8]
	bl	Func_80a68a8
	ldr	r4, [sp, #8]
	ldr	r1, [sp, #0x30]
	mov	r0, r4
	bl	Func_80a6a00
	mov	r3, #1
	str	r3, [sp, #0x28]
	mov	r9, r3
	ldr	r3, [sp, #0x14]
	ldr	r2, =gKeyPress
	add	r3, #0x14
	ldr	r3, [r7, r3]
	mov	r1, #4
	mov	r0, r9
	mov	r10, r1
	mov	r11, r2
	strb	r0, [r3, #5]
	ldr	r4, [sp, #8]
	b	.La72b8
.La6dfe:
	ldr	r1, [r4, #0x10]
	lsl	r1, #4
	add	r1, #0x24
	mov	r0, #0x58
	str	r4, [sp, #8]
	bl	Func_80a1a40
	mov	r3, r9
	ldr	r4, [sp, #8]
	cmp	r3, #0
	beq	.La6ece
	ldr	r1, [sp, #0x1c]
	mov	r2, #0xe4
	lsl	r3, r1, #1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r7, r3]
	mov	r0, #0
	mov	r9, r0
	cmp	r3, #0
	beq	.La6e34
	lsl	r3, r1, #2
	add	r3, #0x48
	ldr	r0, [r7, r3]
	bl	Func_80a17c4
	ldr	r4, [sp, #8]
.La6e34:
	ldr	r3, [sp, #0x28]
	cmp	r3, #0
	beq	.La6e54
	mov	r0, #0
	str	r0, [sp, #0x28]
	mov	r0, #1
	str	r4, [sp, #8]
	bl	WaitFrames
	ldr	r4, [sp, #8]
	mov	r0, r8
	mov	r2, r4
	mov	r1, #0
	bl	Func_80a6b64
	ldr	r4, [sp, #8]
.La6e54:
	mov	r2, r4
	add	r1, sp, #0x50
	mov	r0, r8
	str	r4, [sp, #8]
	bl	Func_80a6a98
	mov	r3, #0xbc
	ldr	r1, [sp, #0xc]
	ldr	r4, [sp, #8]
	lsl	r3, #1
	add	r2, r1, r3
	ldr	r3, [r4, #0x18]
	mov	r0, #0xe4
	lsl	r0, #1
	lsl	r3, #1
	add	r3, r0
	ldrh	r3, [r7, r3]
	mov	r1, #0x87
	strh	r3, [r7, r2]
	lsl	r1, #2
	add	r3, r7, r1
	ldr	r2, [r3]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	ldr	r2, [r4, #0x18]
	lsl	r3, r2, #1
	add	r3, r0
	ldrh	r3, [r7, r3]
	cmp	r3, #0
	beq	.La6ea0
	lsl	r3, r2, #2
	add	r3, #0x48
	ldr	r0, [r7, r3]
	mov	r3, #9
	strb	r3, [r0, #5]
	mov	r3, #0xfa
	strh	r6, [r0, #0xc]
	strb	r3, [r0, #0xf]
.La6ea0:
	ldr	r3, =0x219
	add	r2, r7, r3
	ldrb	r3, [r2]
	mov	r5, #0
	cmp	r6, r3
	bcs	.La6ece
	mov	r6, r2
.La6eae:
	mov	r0, #0x8a
	lsl	r3, r5, #2
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r7, r3]
	mov	r1, #1
	str	r4, [sp, #8]
	bl	_Sprite_SetAnim
	add	r3, r5, #1
	lsl	r3, #24
	lsr	r5, r3, #24
	ldrb	r3, [r6]
	ldr	r4, [sp, #8]
	cmp	r5, r3
	bcc	.La6eae
.La6ece:
	mov	r0, #1
	str	r4, [sp, #8]
	bl	WaitFrames
	ldr	r4, [sp, #8]
	ldr	r1, [r4, #0x18]
	ldr	r3, =gKeyHeld
	str	r1, [sp, #0x1c]
	ldr	r3, [r3]
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	bne	.La6efc
	add	r3, sp, #0x3c
	ldr	r1, [r4, #0x14]
	mov	r0, #0
	str	r3, [sp]
	mov	r2, #5
	add	r3, sp, #0x44
	bl	Func_80a1fd4
	ldr	r4, [sp, #8]
	b	.La6f00
.La6efc:
	mov	r0, #1
	neg	r0, r0
.La6f00:
	cmp	r0, #1
	bne	.La6f0a
	mov	r3, #1
	str	r3, [sp, #0x28]
	mov	r9, r3
.La6f0a:
	cmp	r0, #0
	bne	.La6f12
	mov	r1, #1
	mov	r9, r1
.La6f12:
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.La6f1e
	mov	r3, #0
	mov	r9, r3
.La6f1e:
	mov	r0, #0x9a
	lsl	r0, #2
	add	r3, r7, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.La6f2c
	b	.La7010
.La6f2c:
	mov	r1, r11
	ldr	r3, [r1]
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.La6fb0
	ldr	r3, [sp, #0x18]
	cmp	r3, #0
	bne	.La6fb0
	ldr	r3, [r4, #0x18]
	sub	r0, #0xa0
	lsl	r3, #1
	add	r3, r0
	ldrh	r3, [r7, r3]
	ldr	r0, .La6f64	@ 0x3fff
	and	r0, r3
	str	r4, [sp, #8]
	bl	_GetMoveInfo
	ldrb	r3, [r0, #0xc]
	ldr	r4, [sp, #8]
	cmp	r3, #0
	bne	.La6f78
	mov	r0, #0x72
	bl	_PlaySound
	b	.La6fae

	.align	2, 0
.La6f64:
	.word	0x3fff
	.pool

.La6f78:
	mov	r0, #0xae
	str	r4, [sp, #8]
	bl	_PlaySound
	mov	r1, #1
	mov	r2, #0x88
	str	r1, [sp, #0x18]
	lsl	r2, #2
	add	r1, r7, r2
	ldrh	r2, [r1]
	ldr	r3, =2
	orr	r3, r2
	strh	r3, [r1]
	mov	r3, #0x60
	str	r3, [sp]
	mov	r0, r8
	mov	r1, #0
	mov	r2, #0x58
	mov	r3, #0x78
	bl	_Func_80164d4
	ldr	r0, =0xae1
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0x58
	bl	_Func_801e7c0
.La6fae:
	ldr	r4, [sp, #8]
.La6fb0:
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r0, r10
	and	r3, r0
	cmp	r3, #0
	bne	.La7010
	b	.La6fcc

	.pool_aligned

.La6fcc:
	ldr	r1, [sp, #0x18]
	cmp	r1, #1
	bne	.La7010
	mov	r2, #0
	mov	r3, #0x88
	str	r2, [sp, #0x18]
	lsl	r3, #2
	add	r1, r7, r3
	ldrh	r2, [r1]
	ldr	r3, =0xfffd
	and	r2, r3
	mov	r3, #0x60
	strh	r2, [r1]
	mov	r0, r8
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x58
	mov	r3, #0x78
	str	r4, [sp, #8]
	bl	_Func_80164d4
	ldr	r0, =0xb89
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0x58
	bl	_Func_801e7c0
	ldr	r4, [sp, #8]
	b	.La7010

	.pool_aligned

.La7010:
	mov	r0, r11
	ldr	r2, [r0]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.La709a
	mov	r1, #0x9a
	lsl	r1, #2
	add	r3, r7, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.La702a
	b	.La6d54
.La702a:
	ldr	r3, [r4, #0x18]
	mov	r0, #0xe4
	lsl	r3, #1
	lsl	r0, #1
	add	r2, r3, r0
	ldrh	r3, [r7, r2]
	cmp	r3, #0
	beq	.La709a
	mov	r0, r3
	str	r4, [sp, #8]
	bl	Func_80a735c
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.La704a
	b	.La727c
.La704a:
	ldr	r3, [r4, #0x18]
	mov	r1, #0xe4
	lsl	r1, #1
	lsl	r3, #1
	add	r3, r1
	ldrh	r3, [r7, r3]
	ldr	r0, =0x3fff
	and	r0, r3
	str	r4, [sp, #8]
	bl	_GetMoveInfo
	ldr	r1, [sp, #0x20]
	ldrb	r2, [r0, #9]
	mov	r0, #0x3a
	ldrsh	r3, [r1, r0]
	ldr	r4, [sp, #8]
	cmp	r2, r3
	ble	.La707c
	mov	r0, #0x72
	bl	_PlaySound
	ldr	r4, [sp, #8]
	b	.La709a

	.pool_aligned

.La707c:
	mov	r0, #0xad
.La707e:
	str	r4, [sp, #8]
	bl	_PlaySound
	ldr	r4, [sp, #8]
	ldr	r3, [r4, #0x18]
	mov	r2, #0xe4
	lsl	r3, #1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r7, r3]
	str	r3, [sp, #0x2c]
	mov	r3, #1
	str	r3, [sp, #0x24]
	b	.La72cc
.La709a:
	mov	r0, r11
	ldr	r2, [r0]
	mov	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La70a8
	b	.La6d58
.La70a8:
	ldr	r1, =gKeyRepeat
	ldr	r2, [r1]
	add	r3, #0xfe
	and	r2, r3
	cmp	r2, #0
	bne	.La70c2
	ldr	r2, [r1]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	bne	.La70c2
	b	.La71c8
.La70c2:
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r1, r10
	and	r3, r1
	cmp	r3, #0
	beq	.La70d0
	b	.La71c8
.La70d0:
	mov	r2, #0x9a
	lsl	r2, #2
	add	r3, r7, r2
	ldrb	r3, [r3]
	neg	r5, r3
	orr	r5, r3
	mov	r0, #0x6f
	mov	r3, #2
	lsr	r5, #31
	sub	r5, r3, r5
	str	r4, [sp, #8]
	bl	_PlaySound
	mov	r1, #0x86
	ldr	r0, [sp, #0x30]
	ldr	r2, [sp, #0x10]
	lsl	r1, #2
	add	r3, r0, r1
	ldr	r4, [sp, #8]
	ldrb	r3, [r2, r3]
	mov	r0, #0x98
	lsl	r0, #2
	ldr	r2, [r4, #0x18]
	add	r3, r0
	strb	r2, [r7, r3]
	ldr	r1, [sp, #0x30]
	add	r1, #0x1c
	ldrsb	r6, [r7, r1]
	mov	r9, r1
	lsl	r5, #24
.La710c:
	ldr	r3, =gKeyRepeat
	mov	r2, #0x80
	ldr	r3, [r3]
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La7128
	add	r6, #1
	b	.La712a

	.pool_aligned

.La7128:
	sub	r6, #1
.La712a:
	ldr	r2, =0x219
	add	r3, r7, r2
	ldrb	r1, [r3]
	add	r0, r6, r1
	str	r4, [sp, #8]
	bl	__modsi3
	mov	r6, r0
	lsl	r3, r6, #1
	mov	r2, #0x82
	mov	r10, r3
	lsl	r2, #2
	add	r2, r10
	ldrh	r3, [r7, r2]
	ldr	r0, =0x21a
	str	r3, [r7, #8]
	ldrh	r2, [r7, r2]
	add	r3, r7, r0
	strb	r2, [r3]
	ldrb	r0, [r3]
	bl	_GetUnit
	mov	r2, #0xe4
	lsl	r2, #1
	add	r1, r7, r2
	asr	r2, r5, #24
	bl	Func_80a68ec
	mov	r1, #0x86
	lsl	r1, #2
	add	r3, r7, r1
	strb	r0, [r3]
	lsl	r0, #24
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.La710c
	mov	r2, r9
	strb	r6, [r7, r2]
	ldr	r2, .La71ac	@ 0x1e
	mov	r5, #0
	sub	r1, #0xd4
.La717c:
	lsl	r3, r5, #1
	add	r3, r1
	strh	r2, [r7, r3]
	add	r3, r5, #1
	lsl	r3, #24
	lsr	r5, r3, #24
	cmp	r5, #3
	bls	.La717c
	mov	r2, #0xa2
	ldr	r3, .La71b0	@ 0x1a
	lsl	r2, #1
	add	r2, r10
	mov	r5, #0x82
	strh	r3, [r7, r2]
	lsl	r5, #2
	add	r5, r10
	ldr	r0, [r7, #0x24]
	ldrh	r1, [r7, r5]
	mov	r2, #0
	mov	r3, #0
	str	r4, [sp, #8]
	bl	Func_80a112c
	b	.La71bc

	.align	2, 0
.La71ac:
	.word	0x1e
.La71b0:
	.word	0x1a
	.pool

.La71bc:
	ldrh	r1, [r7, r5]
	mov	r0, r7
	bl	Func_80a1804
	ldr	r4, [sp, #8]
	b	.La72cc
.La71c8:
	mov	r3, r11
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.La7244
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r0, r10
	and	r3, r0
	cmp	r3, #0
	beq	.La7244
	ldr	r3, [r4, #0x18]
	mov	r1, #0xe4
	lsl	r1, #1
	lsl	r3, #1
	add	r3, r1
	ldrh	r3, [r7, r3]
	ldr	r0, .La720c	@ 0x3fff
	and	r0, r3
	str	r4, [sp, #8]
	bl	_GetMoveInfo
	ldrb	r3, [r0, #0xc]
	ldr	r4, [sp, #8]
	cmp	r3, #0
	bne	.La7214
	mov	r0, #0x72
	bl	_PlaySound
	ldr	r4, [sp, #8]
	b	.La7244

	.align	2, 0
.La720c:
	.word	0x3fff
	.pool

.La7214:
	mov	r0, #0x82
	str	r4, [sp, #8]
	bl	_PlaySound
	mov	r0, #0x86
	ldr	r2, [sp, #0x30]
	ldr	r1, [sp, #0x10]
	ldr	r4, [sp, #8]
	lsl	r0, #2
	add	r3, r2, r0
	ldrb	r0, [r1, r3]
	ldr	r3, [r4, #0x18]
	mov	r2, #0xe4
	lsl	r2, #1
	lsl	r3, #1
	add	r3, r2
	ldrh	r1, [r7, r3]
	mov	r2, #0
	bl	Func_80a65e4
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.La7244
	b	.La6d6e
.La7244:
	mov	r3, r11
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.La72b8
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r0, r10
	and	r3, r0
	cmp	r3, #0
	beq	.La72b8
	ldr	r3, [r4, #0x18]
	mov	r1, #0xe4
	lsl	r1, #1
	lsl	r3, #1
	add	r3, r1
	ldrh	r3, [r7, r3]
	ldr	r0, .La7288	@ 0x3fff
	and	r0, r3
	str	r4, [sp, #8]
	bl	_GetMoveInfo
	ldrb	r3, [r0, #0xc]
	ldr	r4, [sp, #8]
	cmp	r3, #0
	bne	.La7290
.La727c:
	mov	r0, #0x72
	bl	_PlaySound
	ldr	r4, [sp, #8]
	b	.La72b8

	.align	2, 0
.La7288:
	.word	0x3fff
	.pool

.La7290:
	ldr	r2, [sp, #0x30]
	mov	r0, #0x86
	ldr	r1, [sp, #0x10]
	lsl	r0, #2
	add	r3, r2, r0
	ldrb	r0, [r1, r3]
	ldr	r3, [r4, #0x18]
	mov	r2, #0xe4
	lsl	r2, #1
	lsl	r3, #1
	add	r3, r2
	ldrh	r1, [r7, r3]
	mov	r2, #1
	str	r4, [sp, #8]
	bl	Func_80a65e4
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.La72b8
	b	.La6d8a
.La72b8:
	mov	r0, #0xa8
	lsl	r0, #1
	str	r4, [sp, #8]
	bl	_GetFlag
	mov	r6, r0
	ldr	r4, [sp, #8]
	cmp	r6, #0
	bne	.La72cc
	b	.La6dfe
.La72cc:
	ldr	r3, [sp, #0x24]
	cmp	r3, #0
	bne	.La72e4
	mov	r0, #0xa8
	lsl	r0, #1
	str	r4, [sp, #8]
	bl	_GetFlag
	ldr	r4, [sp, #8]
	cmp	r0, #0
	bne	.La72e4
	b	.La6d28
.La72e4:
	mov	r0, #0x88
	lsl	r0, #2
	add	r1, r7, r0
	ldrh	r2, [r1]
	ldr	r3, =0xfffd
	and	r3, r2
	strh	r3, [r1]
	ldr	r0, [r7, #0x44]
	str	r4, [sp, #8]
	bl	Func_80a17c4
	mov	r3, #0xba
	ldr	r1, [sp, #0xc]
	ldr	r4, [sp, #8]
	lsl	r3, #1
	add	r2, r1, r3
	ldr	r3, [r4, #0x18]
	strh	r3, [r7, r2]
	ldr	r0, [sp, #0x30]
	mov	r1, #0x86
	ldr	r2, [sp, #0x10]
	lsl	r1, #2
	add	r3, r0, r1
	ldrb	r3, [r2, r3]
	mov	r0, #0x98
	ldr	r2, [r4, #0x18]
	lsl	r0, #2
	add	r3, r0
	strb	r2, [r7, r3]
	ldr	r1, [sp, #0xc]
	mov	r2, #0xbc
	add	r0, sp, #0x2c
	ldrh	r0, [r0]
	lsl	r2, #1
	add	r3, r1, r2
	strh	r0, [r7, r3]
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.La733e
	mov	r1, #1
	neg	r1, r1
	str	r1, [sp, #0x2c]
.La733e:
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, [sp, #0x2c]
	add	sp, #0x64
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a6ccc

	.section .rodata
	.global .Laeb4c
	.global .Laebcc

.Laeb4c:
	.incrom 0xaeb4c, 0xaebcc
.Laebcc:
	.incrom 0xaebcc, 0xaed4c

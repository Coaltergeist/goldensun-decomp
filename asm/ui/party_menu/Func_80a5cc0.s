	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a5cc0  @ 0x080a5cc0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r5, #0
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	str	r5, [sp]
	ldr	r3, =iwram_3001f2c
	ldr	r7, [r3]
	mov	r11, r5
	b	.La5fa4
.La5ce0:
	cmp	r5, #4
	bls	.La5ce6
	b	.La5fa0
.La5ce6:
	ldr	r2, =.La5cf0
	lsl	r3, r5, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.La5cf0:
	.word	.La5d04
	.word	.La5d34
	.word	.La5e22
	.word	.La5dfa
	.word	.La5e92
.La5d04:
	mov	r3, #0xba
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0
	strh	r3, [r2]
	ldr	r1, =0xae9
	mov	r0, #0
	bl	Func_80a3cf8
	mov	r0, #0
	bl	Func_80a602c
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.La5d2a
	mov	r2, #1
	str	r2, [sp]
	mov	r11, r3
.La5d2a:
	ldr	r0, [r7, #0x2c]
	bl	_Func_8016498
	mov	r5, #1
	b	.La5fa4
.La5d34:
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, =0x21a
	add	r3, r7, r2
	ldrb	r0, [r3]
	bl	_GetUnit
	mov	r2, #0x86
	lsl	r2, #2
	add	r3, r7, r2
	ldrb	r3, [r3]
	mov	r5, #0
	cmp	r3, #0
	bne	.La5d54
	b	.La5fa4
.La5d54:
	mov	r2, #0x9a
	lsl	r2, #2
	add	r3, r7, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.La5d74
	cmp	r3, #1
	bgt	.La5d6a
	cmp	r3, #0
	beq	.La5d70
	b	.La5d86
.La5d6a:
	cmp	r3, #2
	beq	.La5d7e
	b	.La5d86
.La5d70:
	ldr	r1, =0xaea
	b	.La5d76
.La5d74:
	ldr	r1, =0xaf1
.La5d76:
	mov	r0, #0
	bl	Func_80a3cf8
	b	.La5d86
.La5d7e:
	ldr	r1, =0xaf0
	mov	r0, #0
	bl	Func_80a3cf8
.La5d86:
	bl	Func_80a9cbc
	ldr	r3, =0x21a
	add	r6, r7, r3
	ldrb	r1, [r6]
	mov	r2, #0
	ldr	r0, [r7, #0x24]
	mov	r3, #0
	bl	Func_80a112c
	mov	r0, #0
	bl	Func_80a6ccc
	mov	r2, #1
	neg	r2, r2
	mov	r1, r0
	mov	r8, r2
	mov	r5, #0
	cmp	r1, r8
	bne	.La5db0
	b	.La5fa4
.La5db0:
	mov	r2, #0x9a
	lsl	r2, #2
	add	r3, r7, r2
	ldrb	r3, [r3]
	mov	r5, #2
	cmp	r3, #0
	bne	.La5dc0
	b	.La5fa4
.La5dc0:
	cmp	r3, #1
	bne	.La5dde
	mov	r2, #0
	ldrb	r0, [r6]
	bl	Func_80a65e4
	ldr	r0, [r7, #0x2c]
	bl	_Func_80164ac
	ldr	r0, =0xae2
	mov	r1, r8
	mov	r2, r8
	bl	Func_80a1d08
	b	.La5df6
.La5dde:
	mov	r2, #1
	ldrb	r0, [r6]
	bl	Func_80a65e4
	ldr	r0, [r7, #0x2c]
	bl	_Func_80164ac
	ldr	r0, =0xae3
	mov	r1, r8
	mov	r2, r8
	bl	Func_80a1d08
.La5df6:
	mov	r5, #0
	b	.La5fa4
.La5dfa:
	ldr	r1, =0xaeb
	mov	r0, #0
	bl	Func_80a3cf8
	mov	r0, #0
	bl	Func_80a63e4
	mov	r3, #1
	mov	r10, r0
	neg	r3, r3
	mov	r5, #4
	cmp	r10, r3
	beq	.La5e16
	b	.La5fa4
.La5e16:
	mov	r2, #0x88
	lsl	r2, #2
	add	r1, r7, r2
	ldrh	r2, [r1]
	ldr	r3, .La5e40	@ 1
	b	.La5f58
.La5e22:
	bl	Func_80a5fe0
	cmp	r0, #1
	bne	.La5e2e
.La5e2a:
	mov	r5, #3
	b	.La5fa4
.La5e2e:
	cmp	r0, #2
	bne	.La5e70
	ldr	r3, =0x21b
	add	r2, r7, r3
	mov	r3, #9
	strb	r3, [r2]
	mov	r5, #4
	b	.La5fa4

	.align	2, 0
.La5e40:
	.word	1
	.pool

.La5e70:
	mov	r2, #1
	str	r2, [sp]
	mov	r11, r2
	ldr	r2, =0x21a
	add	r3, r7, r2
	ldrb	r3, [r3]
	ldr	r2, [sp, #8]
	str	r3, [r2]
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r7, r2
	ldrh	r2, [r3]
	ldr	r3, =0x3fff
	and	r3, r2
	ldr	r2, [sp, #4]
	str	r3, [r2]
	b	.La5fa4
.La5e92:
	mov	r2, #0xbc
	lsl	r2, #1
	add	r2, r7
	mov	r3, #0
	ldrh	r0, [r2]
	mov	r10, r3
	mov	r8, r2
	ldr	r3, =0x21a
	ldr	r2, =0x21b
	add	r5, r7, r3
	add	r6, r7, r2
	mov	r3, #0
	ldrb	r1, [r5]
	ldrb	r2, [r6]
	bl	Func_80a9f10
	ldrb	r3, [r6]
	mov	r11, r0
	cmp	r3, #9
	bne	.La5ec2
	ldrb	r3, [r5]
	strb	r3, [r6]
	mov	r3, #9
	mov	r10, r3
.La5ec2:
	mov	r2, #1
	neg	r2, r2
	mov	r9, r2
	cmp	r11, r9
	beq	.La5ee4
	mov	r2, r8
	ldrh	r3, [r2]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	_GetMoveInfo
	ldrb	r3, [r5]
	ldrb	r1, [r0, #9]
	mov	r0, r3
	neg	r1, r1
	bl	_ModifyPP
.La5ee4:
	ldrb	r0, [r5]
	bl	_CalcStats
	cmp	r11, r9
	beq	.La5f22
	ldrb	r1, [r6]
	ldr	r0, [r7, #0x24]
	mov	r2, #0
	mov	r3, #0
	bl	Func_80a112c
	mov	r2, r8
	ldrh	r3, [r2]
	ldr	r0, =0x3fff
	and	r0, r3
	bl	Func_80aa460
	ldr	r0, [r7, #0x2c]
	bl	_Func_80164ac
	ldr	r2, =0x25a
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldr	r3, =0xbef
	mov	r1, #0
	add	r0, r3
	mov	r2, r9
	bl	Func_80a1d08
	b	.La5f42
.La5f22:
	mov	r0, #0x72
	bl	_PlaySound
	ldr	r0, [r7, #0x2c]
	bl	_Func_80164ac
	ldr	r2, =0x25a
	add	r3, r7, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	ldr	r3, =0xbef
	mov	r1, r11
	add	r0, r3
	mov	r2, r11
	bl	Func_80a1d08
.La5f42:
	mov	r3, #1
	neg	r3, r3
	cmp	r11, r3
	beq	.La5f60
	mov	r3, #0x88
	lsl	r3, #2
	add	r1, r7, r3
	mov	r2, #1
	mov	r11, r2
	ldr	r3, .La5f84	@ 1
	ldrh	r2, [r1]
.La5f58:
	orr	r3, r2
	strh	r3, [r1]
	mov	r5, #1
	b	.La5fa4
.La5f60:
	ldr	r3, =0x222
	add	r2, r7, r3
	mov	r3, #1
	strh	r3, [r2]
	mov	r2, r10
	ldr	r1, .La5f84	@ 1
	cmp	r2, #9
	beq	.La5f72
	b	.La5e2a
.La5f72:
	mov	r3, #0x88
	lsl	r3, #2
	add	r2, r7, r3
	ldrh	r3, [r2]
	orr	r3, r1
	strh	r3, [r2]
	mov	r5, #1
	b	.La5fa4

	.align	2, 0
.La5f84:
	.word	1
	.pool

.La5fa0:
	mov	r2, #1
	str	r2, [sp]
.La5fa4:
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.La5fb8
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La5fb8
	b	.La5ce0
.La5fb8:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.La5fca
	mov	r2, #1
	neg	r2, r2
	mov	r11, r2
.La5fca:
	mov	r0, r11
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a5cc0


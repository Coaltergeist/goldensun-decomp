	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a4f08  @ 0x080a4f08
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	str	r1, [sp, #0x18]
	str	r2, [sp, #0x14]
	ldr	r3, =iwram_3001f2c
	mov	r1, #0x80
	ldr	r3, [r3]
	lsl	r1, #3
	mov	r11, r0
	mov	r0, #0xe
	mov	r9, r3
	bl	galloc_ewram
	mov	r3, #0
	mov	r2, #1
	str	r3, [sp, #8]
	mov	r3, #0x86
	str	r2, [sp, #0xc]
	lsl	r3, #1
	add	r3, r9
	ldr	r7, [r3]
	mov	r10, r0
	bl	Func_80a4eb8
	mov	r0, r7
	bl	_Func_8016498
	ldr	r2, [sp, #0x14]
	mov	r8, r11
	cmp	r2, #0
	bne	.La4f6a
	ldr	r3, =0x21b
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	ldr	r1, =0x1ff
	and	r1, r3
	bl	Func_80a3d9c
	str	r0, [sp, #8]
.La4f6a:
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	ldr	r1, =0x1ff
	and	r1, r3
	bl	Func_80a3d9c
	str	r0, [sp, #4]
	bl	AllocSpriteSlot
	str	r0, [sp, #0x10]
	cmp	r0, #0x60
	bne	.La4f8e
	b	.La517c
.La4f8e:
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	bl	UploadSpriteGFX
	ldr	r6, =0x40004000
	mov	r5, #0x20
	ldr	r0, [sp, #0x10]
	mov	r1, r6
	mov	r2, r7
	mov	r3, #0x30
	str	r5, [sp]
	bl	_Func_801eadc
	mov	r1, r6
	mov	r2, r7
	ldr	r0, [sp, #0x10]
	mov	r3, #0x50
	str	r5, [sp]
	bl	_Func_801eadc
	ldrh	r1, [r0, #0x18]
	lsl	r2, r1, #22
	ldr	r3, .La4fd8	@ 0x3ff
	lsr	r2, #22
	add	r2, #4
	and	r2, r3
	ldr	r3, =0xfffffc00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r0, #0x18]
	mov	r1, #0x28
	mov	r0, #0x80
	bl	Func_80a1ac0
	b	.La516e

	.align	2, 0
.La4fd8:
	.word	0x3ff
	.pool


.La4ff4:
	ldr	r3, [sp, #0xc]
	cmp	r3, #0
	bne	.La4ffc
	b	.La5104
.La4ffc:
	ldr	r0, [sp, #0x18]
	ldr	r1, [sp, #0x18]
	mov	r2, #0
	add	r0, r8
	str	r2, [sp, #0xc]
	bl	__modsi3
	mov	r8, r0
	mov	r0, r7
	bl	_Func_8016498
	mov	r1, r7
	ldr	r0, =0xade
	mov	r2, #0x20
	mov	r3, #0
	bl	_Func_801e7c0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.Laf08c
	mov	r1, r10
	ldr	r2, =0x84000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, r10
	mov	r0, #0x1e
	mov	r1, #0xe
	bl	_Func_80b06c0
	ldr	r0, [sp, #0x18]
	mov	r1, #0
	add	r0, r11
	mov	r2, r10
	bl	_Func_80b06c0
	mov	r0, r11
	add	r0, r8
	add	r0, #1
	mov	r1, #0xa
	mov	r2, r10
	bl	_Func_80b06c0
	mov	r0, r11
	mov	r1, #2
	mov	r2, r10
	bl	_Func_80b06c0
	mov	r1, #0x80
	ldr	r0, [sp, #0x10]
	lsl	r1, #1
	mov	r2, r10
	bl	UploadSpriteGFX
	mov	r0, r8
	mov	r3, #0x20
	add	r0, #1
	mov	r1, #2
	mov	r2, r7
	str	r3, [sp]
	bl	_Func_801ea08
	mov	r3, #0xbc
	lsl	r3, #1
	add	r3, r9
	ldrh	r3, [r3]
	ldr	r0, .La50ac	@ 0x1ff
	and	r0, r3
	ldr	r3, =0x182
	mov	r1, r7
	add	r0, r3
	mov	r2, #0x10
	mov	r3, #8
	bl	_Func_801e7c0
	ldr	r3, [sp, #4]
	mov	r2, r8
	sub	r0, r3, r2
	sub	r0, #1
	mov	r3, #0x10
	mov	r5, #0x18
	mov	r1, #2
	mov	r2, r7
	str	r5, [sp]
	bl	_Func_801ea08
	ldr	r3, [sp, #0x14]
	cmp	r3, #0
	bne	.La50d6
	b	.La50c4

	.align	2, 0
.La50ac:
	.word	0x1ff
	.pool

.La50c4:
	ldr	r0, [sp, #8]
	add	r0, r8
	add	r0, #1
	mov	r1, #2
	mov	r2, r7
	mov	r3, #0x50
	str	r5, [sp]
	bl	_Func_801ea08
.La50d6:
	ldr	r3, =0x21a
	add	r3, r9
	ldrb	r0, [r3]
	bl	_GetUnit
	mov	r2, #0x10
	mov	r1, r7
	mov	r3, #0x10
	bl	_Func_801e8b0
	ldr	r2, [sp, #0x14]
	cmp	r2, #0
	bne	.La5104
	ldr	r3, =0x21b
	add	r3, r9
	ldrb	r0, [r3]
	bl	_GetUnit
	mov	r1, r7
	mov	r2, #0x50
	mov	r3, #0x10
	bl	_Func_801e8b0
.La5104:
	ldr	r1, =gKeyPress
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.La5118
	mov	r0, #0x70
	bl	_PlaySound
	b	.La517c
.La5118:
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La5130
	mov	r3, #1
	neg	r3, r3
	mov	r0, #0x71
	mov	r8, r3
	bl	_PlaySound
	b	.La517c
.La5130:
	mov	r0, #0x80
	mov	r1, #0x28
	bl	Func_80a1a40
	ldr	r5, =gKeyRepeat
	ldr	r3, [r5]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.La5152
	sub	r2, #0x21
	mov	r3, #1
	mov	r0, #0x6f
	add	r8, r2
	str	r3, [sp, #0xc]
	bl	_PlaySound
.La5152:
	ldr	r3, [r5]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.La5168
	mov	r2, #1
	mov	r0, #0x6f
	add	r8, r2
	str	r2, [sp, #0xc]
	bl	_PlaySound
.La5168:
	mov	r0, #1
	bl	WaitFrames
.La516e:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La517c
	b	.La4ff4
.La517c:
	mov	r0, r7
	bl	_Func_8016498
	mov	r0, r7
	bl	_Func_80164ac
	mov	r0, #0xe
	bl	gfree
	mov	r3, #0x87
	lsl	r3, #2
	add	r3, r9
	ldr	r2, [r3]
	mov	r0, #0xa8
	mov	r3, #0xd
	strb	r3, [r2, #5]
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.La51ac
	mov	r3, #1
	neg	r3, r3
	mov	r8, r3
.La51ac:
	mov	r0, r8
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a4f08


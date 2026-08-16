	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start UI_NameEntry  @ 0x08020bd8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x60
	mov	r2, sp
	mov	r1, #0
	add	r2, #0x51
	str	r1, [sp, #0x24]
	str	r1, [sp, #0x20]
	str	r1, [sp, #0x1c]
	add	r6, sp, #0x50
	str	r2, [sp, #0x18]
	str	r0, [sp, #0x2c]
	bl	_GetUnit
	ldr	r3, =iwram_3001e8c
	str	r0, [sp, #0x14]
	ldr	r3, [r3]
	str	r3, [sp, #0x10]
	mov	r3, #1
	str	r3, [sp, #0xc]
	mov	r9, r3
	bl	LoadStaticUIGFX
	mov	r5, #2
	mov	r1, #6
	mov	r2, #0x18
	mov	r3, #9
	mov	r0, #3
	str	r5, [sp]
	bl	CreateUIBox
	mov	r1, #3
	mov	r8, r0
	mov	r2, #8
	mov	r3, #3
	mov	r0, #8
	str	r5, [sp]
	bl	CreateUIBox
	str	r0, [sp, #0x28]
	ldr	r0, [sp, #0x2c]
	bl	GetPortrait
	mov	r2, #3
	mov	r3, #1
	mov	r1, #0
	bl	Func_8019da8
	ldr	r1, =Data_73864
	mov	r0, r8
	bl	Func_80209d0
	mov	r3, #7
	str	r3, [sp]
	mov	r0, r8
	mov	r1, #0x12
	mov	r2, #0
	mov	r3, #0x12
	bl	Func_801e41c
	ldr	r2, =0xea3
	ldr	r1, [sp, #0x10]
	add	r3, r1, r2
	add	r1, sp, #0xc
	add	r2, sp, #0x24
	ldrb	r1, [r1]
	ldrb	r2, [r2]
	strb	r1, [r3]
	strb	r2, [r6]
	mov	r0, sp
	ldr	r1, [sp, #0x18]
	ldr	r2, [sp, #0x14]
	add	r0, #0x5e
.L20c74:
	ldrb	r3, [r2]
	add	r2, #1
	strb	r3, [r1]
	add	r1, #1
	cmp	r3, #0
	beq	.L20c8c
	ldr	r3, [sp, #0x20]
	add	r3, #1
	str	r3, [sp, #0x20]
	ldr	r3, [sp, #0x1c]
	add	r3, #1
	str	r3, [sp, #0x1c]
.L20c8c:
	cmp	r1, r0
	ble	.L20c74
	ldr	r1, [sp, #0x18]
	mov	r3, #0
	strb	r3, [r1, #0xe]
	ldr	r0, [sp, #0x28]
	ldr	r1, [sp, #0x14]
	bl	Func_8020b64
	bl	AllocSpriteSlot
	mov	r5, r0
	mov	r6, #0x12
	mov	r7, #5
	cmp	r5, #0x5f
	bgt	.L20ce2
	ldr	r2, =Data_310a4
	mov	r1, #0x80
	bl	UploadSpriteGFX
	mov	r1, #0x80
	mov	r3, #0
	lsl	r1, #23
	mov	r0, r5
	mov	r2, r8
	str	r3, [sp]
	bl	Func_801eadc
	add	r2, sp, #0x40
	mov	r5, r0
	str	r5, [r2]
	mov	r3, r8
	mov	r11, r2
	ldrh	r1, [r3, #0xc]
	ldrh	r2, [r3, #0xe]
	lsl	r1, #3
	lsl	r2, #3
	add	r1, #0x8c
	add	r2, #0x34
	mov	r0, r11
	bl	_Func_80b0a20
	b	.L20ce6
.L20ce2:
	add	r1, sp, #0x40
	mov	r11, r1
.L20ce6:
	bl	AllocSpriteSlot
	mov	r5, r0
	cmp	r5, #0x5f
	bgt	.L20d68
	ldr	r2, =Data_317e4
	mov	r1, #0x80
	bl	UploadSpriteGFX
	mov	r1, #0x80
	lsl	r1, #23
	mov	r3, #0
	mov	r0, r5
	mov	r2, r8
	str	r3, [sp]
	bl	Func_801eadc
	mov	r2, #0x30
	mov	r5, r0
	add	r2, sp
	str	r5, [r2]
	mov	r3, #0xff
	strb	r3, [r5, #0xf]
	mov	r10, r2
	mov	r3, #0xd
	ldrb	r2, [r5, #0x19]
	neg	r3, r3
	and	r3, r2
	strb	r3, [r5, #0x19]
	ldr	r0, [sp, #0x18]
	bl	Func_8020b14
	mov	r1, r0
	add	r1, #0x46
	mov	r0, r10
	mov	r2, #0x16
	bl	_Func_80b0a20
	b	.L20d6c
.L20d34:
	mov	r3, r10
	ldr	r2, [r3]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	ldr	r0, [sp, #0x28]
	bl	Func_8016478
	ldr	r0, [sp, #0x28]
	ldr	r1, [sp, #0x14]
	bl	Func_8020b64
	mov	r0, #0xa
	bl	WaitFrames
	b	.L21034

	.pool_aligned

.L20d68:
	add	r1, sp, #0x30
	mov	r10, r1
.L20d6c:
	ldr	r4, =0x50001c0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x50001e0
	mov	r1, r4
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, .L20d9c	@ 0x6318
	strh	r3, [r4, #8]
	ldr	r2, [sp, #0x20]
	ldr	r3, [sp, #0x18]
	add	r2, r3
	str	r2, [sp, #8]
.L20d86:
	mov	r5, #1
	cmp	r6, #0x12
	bne	.L20db0
	cmp	r7, #4
	bne	.L20d92
	mov	r5, #3
.L20d92:
	cmp	r7, #5
	bne	.L20db0
	mov	r5, #3
	b	.L20db0

	.align	2, 0
.L20d9c:
	.word	0x6318
	.pool

.L20db0:
	mov	r1, #1
	mov	r3, #0xe
	str	r1, [sp]
	str	r3, [sp, #4]
	mov	r1, r6
	mov	r2, r7
	mov	r3, r5
	mov	r0, r8
	bl	Func_8020a60
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #1
	mov	r3, #0xf
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, r8
	mov	r3, r5
	mov	r1, r6
	mov	r2, r7
	bl	Func_8020a60
	mov	r3, r9
	cmp	r3, #0
	beq	.L20e02
	mov	r1, #0
	mov	r2, r8
	mov	r9, r1
	ldrh	r1, [r2, #0xc]
	ldrh	r2, [r2, #0xe]
	add	r1, r6
	add	r2, r7
	lsl	r1, #3
	lsl	r2, #3
	sub	r1, #7
	add	r2, #0xf
	mov	r0, r11
	mov	r3, #3
	bl	_Func_80b09fc
.L20e02:
	ldr	r3, [sp, #0xc]
	cmp	r3, #0
	beq	.L20e20
	mov	r1, #0
	ldr	r0, [sp, #0x18]
	str	r1, [sp, #0xc]
	bl	Func_8020b14
	mov	r1, r0
	add	r1, #0x46
	mov	r0, r10
	mov	r2, #0x16
	mov	r3, #3
	bl	_Func_80b09fc
.L20e20:
	mov	r0, r11
	bl	_Func_80b08b8
	mov	r0, r10
	bl	_Func_80b0958
	ldr	r3, =iwram_3001800
	ldr	r0, [r3]
	mov	r3, r10
	ldr	r5, [r3]
	mov	r2, #7
	ldr	r4, =.L371f6
	lsr	r0, #1
	and	r0, r2
	ldrsb	r3, [r4, r0]
	ldrh	r1, [r5, #6]
	add	r1, r3
	ldr	r3, .L20e6c	@ 0x1ff
	ldr	r2, .L20e70	@ 0xfffffe00
	and	r1, r3
	ldrh	r3, [r5, #0x16]
	and	r3, r2
	orr	r3, r1
	add	r0, #5
	mov	r1, #7
	and	r0, r1
	strh	r3, [r5, #0x16]
	ldrb	r2, [r5, #8]
	ldrb	r3, [r4, r0]
	add	r2, r3
	strb	r2, [r5, #0x14]
	ldr	r5, =gKeyRepeat
	ldr	r2, [r5]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.L20eaa
	b	.L20e80

	.align	2, 0
.L20e6c:
	.word	0x1ff
.L20e70:
	.word	0xfffffe00
	.pool

.L20e80:
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	mov	r9, r2
	sub	r7, #1
	cmp	r6, #0x12
	beq	.L20e9c
	mov	r3, #1
	neg	r3, r3
	cmp	r7, r3
	bne	.L20eaa
	mov	r7, #5
	b	.L20eaa
.L20e9c:
	mov	r3, #3
	eor	r3, r7
	neg	r2, r3
	orr	r2, r3
	lsr	r7, r2, #31
	mov	r3, #5
	sub	r7, r3, r7
.L20eaa:
	ldr	r2, [r5]
	mov	r3, #0x80
	and	r2, r3
	cmp	r2, #0
	beq	.L20ed8
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r1, #1
	mov	r9, r1
	add	r7, #1
	cmp	r6, #0x12
	beq	.L20ecc
	cmp	r7, #6
	bne	.L20ed8
	mov	r7, #0
	b	.L20ed8
.L20ecc:
	mov	r2, #6
	eor	r2, r7
	neg	r3, r2
	orr	r3, r2
	lsr	r7, r3, #31
	add	r7, #4
.L20ed8:
	ldr	r2, [r5]
	mov	r3, #0x20
	and	r2, r3
	cmp	r2, #0
	beq	.L20f12
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r3, #1
	mov	r2, #1
	sub	r6, #1
	neg	r3, r3
	mov	r9, r2
	cmp	r6, r3
	bne	.L20f02
	sub	r3, r7, #4
	mov	r6, #0x12
	cmp	r3, #1
	bls	.L20f12
	mov	r6, #0x10
	b	.L20f12
.L20f02:
	cmp	r6, #5
	beq	.L20f0e
	cmp	r6, #0xb
	beq	.L20f0e
	cmp	r6, #0x11
	bne	.L20f12
.L20f0e:
	ldr	r5, =gKeyRepeat
	sub	r6, #1
.L20f12:
	ldr	r2, [r5]
	mov	r3, #0x10
	and	r2, r3
	cmp	r2, #0
	beq	.L20f4a
	mov	r0, #0x6f
	bl	_PlaySound
	add	r6, #1
	mov	r1, #1
	mov	r9, r1
	cmp	r6, #0x13
	bne	.L20f30
	mov	r6, #0
	b	.L20f3e
.L20f30:
	cmp	r6, #5
	beq	.L20f3c
	cmp	r6, #0xb
	beq	.L20f3c
	cmp	r6, #0x11
	bne	.L20f3e
.L20f3c:
	add	r6, #1
.L20f3e:
	cmp	r6, #0x12
	bne	.L20f4a
	sub	r3, r7, #4
	cmp	r3, #1
	bls	.L20f4a
	mov	r6, #0
.L20f4a:
	ldr	r3, =gKeyPress
	ldr	r2, [r3]
	mov	r3, #8
	and	r2, r3
	cmp	r2, #0
	beq	.L20f64
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	mov	r9, r2
	mov	r6, #0x12
	mov	r7, #5
.L20f64:
	ldr	r2, =gKeyRepeat
	ldr	r5, [r2]
	mov	r3, #2
	and	r5, r3
	cmp	r5, #0
	beq	.L20fa6
	mov	r0, #0x71
	bl	_PlaySound
.L20f76:
	ldr	r3, [sp, #0x1c]
	cmp	r3, #0
	beq	.L20f9e
	ldr	r1, [sp, #8]
	sub	r3, #1
	str	r3, [sp, #0x1c]
	sub	r1, #1
	mov	r3, #0
	str	r1, [sp, #8]
	strb	r3, [r1]
	ldr	r0, [sp, #0x28]
	bl	Func_8016478
	ldr	r0, [sp, #0x28]
	ldr	r1, [sp, #0x18]
	bl	Func_8020b64
	mov	r2, #1
	str	r2, [sp, #0xc]
	b	.L20d86
.L20f9e:
	mov	r3, #1
	neg	r3, r3
	str	r3, [sp, #0x24]
	b	.L21034
.L20fa6:
	ldr	r3, [r2]
	mov	r1, #1
	and	r3, r1
	cmp	r3, #0
	bne	.L20fb2
	b	.L20d86
.L20fb2:
	mov	r0, #0x70
	bl	_PlaySound
	cmp	r6, #0x12
	bne	.L20fe6
	cmp	r7, #5
	bne	.L20fde
	ldr	r2, [sp, #0x1c]
	cmp	r2, #0
	bne	.L20fc8
	b	.L20d34
.L20fc8:
	ldr	r2, [sp, #0x14]
	ldr	r1, [sp, #0x18]
	mov	r0, #0
.L20fce:
	ldrb	r3, [r1]
	add	r0, #1
	strb	r3, [r2]
	add	r1, #1
	add	r2, #1
	cmp	r0, #0xe
	ble	.L20fce
	b	.L21034
.L20fde:
	cmp	r7, #4
	beq	.L20fe4
	b	.L20d86
.L20fe4:
	b	.L20f76
.L20fe6:
	mov	r3, r8
	ldrh	r2, [r3, #0xc]
	ldrh	r3, [r3, #0xe]
	add	r3, r7
	add	r2, r6
	add	r3, #1
	add	r2, #1
	lsl	r3, #5
	add	r3, r2
	ldr	r1, [sp, #0x10]
	ldr	r2, [sp, #0x1c]
	lsl	r3, #1
	ldrb	r3, [r3, r1]
	cmp	r2, #5
	bne	.L21006
	b	.L20d86
.L21006:
	ldr	r1, [sp, #8]
	add	r2, #1
	strb	r3, [r1]
	add	r1, #1
	str	r1, [sp, #8]
	strb	r5, [r1]
	str	r2, [sp, #0x1c]
	cmp	r2, #5
	bne	.L21020
	mov	r2, #1
	mov	r6, #0x12
	mov	r7, #5
	mov	r9, r2
.L21020:
	ldr	r0, [sp, #0x28]
	bl	Func_8016478
	ldr	r0, [sp, #0x28]
	ldr	r1, [sp, #0x18]
	bl	Func_8020b64
	mov	r3, #1
	str	r3, [sp, #0xc]
	b	.L20d86
.L21034:
	mov	r0, r8
	mov	r1, #2
	bl	CloseUIBox
	mov	r1, #2
	ldr	r0, [sp, #0x28]
	bl	CloseUIBox
	ldr	r0, [sp, #0x2c]
	bl	Func_8019e48
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, [sp, #0x24]
	add	sp, #0x60
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end UI_NameEntry

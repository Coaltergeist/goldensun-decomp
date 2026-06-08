	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CreateBattleSpriteOverlays
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	str	r1, [sp, #0x14]
	str	r0, [sp, #0x18]
	mov	r1, #0
	mov	r11, r1
.Lb7b84:
	ldr	r0, [sp, #0x18]
	mov	r1, r11
	bl	Func_80b770c
	cmp	r0, #0
	bne	.Lb7ba0
	mov	r0, r11
	mov	r2, r11
	add	r0, #0x78
	cmp	r2, #7
	bgt	.Lb7b9c
	mov	r0, r11
.Lb7b9c:
	bl	Func_80b7b30
.Lb7ba0:
	mov	r3, #1
	add	r11, r3
	mov	r1, r11
	cmp	r1, #0xd
	ble	.Lb7b84
	ldr	r3, =iwram_3001a10
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb7bb8
	mov	r0, #1
	bl	WaitFrames
.Lb7bb8:
	ldr	r3, [sp, #0x18]
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r2, #0
	mov	r11, r2
	str	r3, [sp, #0x10]
	cmp	r3, #0xff
	bne	.Lb7bca
	b	.Lb7d62
.Lb7bca:
	ldr	r1, [sp, #0x18]
	str	r1, [sp, #8]
.Lb7bce:
	ldr	r2, [sp, #0x10]
	cmp	r2, #0xfe
	bne	.Lb7bd6
	b	.Lb7d46
.Lb7bd6:
	mov	r0, r2
	bl	GetBattleActor
	mov	r7, r0
	cmp	r7, #0
	bne	.Lb7be4
	b	.Lb7d46
.Lb7be4:
	ldr	r0, [sp, #0x10]
	mov	r1, r7
	bl	Func_80b78e4
	ldr	r3, [r7]
	mov	r8, r3
	cmp	r3, #0
	bne	.Lb7bf6
	b	.Lb7d46
.Lb7bf6:
	mov	r1, r8
	add	r1, #0x54
	ldrb	r2, [r1]
	str	r2, [sp, #0xc]
	cmp	r2, #0
	beq	.Lb7c04
	b	.Lb7d46
.Lb7c04:
	ldrh	r2, [r7, #4]
	ldr	r3, .Lb7c38	@ 0xfff
	and	r3, r2
	mov	r2, #0xee
	lsl	r2, #1
	cmp	r3, r2
	beq	.Lb7c18
	add	r2, #7
	cmp	r3, r2
	bne	.Lb7cb4
.Lb7c18:
	ldr	r3, =iwram_3001e68
	ldr	r2, [r3]
	ldr	r3, [r2, #0x18]
	lsl	r3, #2
	add	r2, r3
	mov	r9, r2
	mov	r3, #8
	add	r3, r9
	mov	r10, r3
	mov	r3, #2
	strb	r3, [r1]
	mov	r2, r8
	ldrh	r5, [r7, #4]
	mov	r1, r10
	b	.Lb7c44

	.align	2, 0
.Lb7c38:
	.word	0xfff
	.pool

.Lb7c44:
	str	r1, [r2, #0x50]
	ldr	r3, =Func_80008d4
	mov	r1, #0x10
	mov	r0, r10
	bl	_call_via_r3
	mov	r0, r5
	bl	_CreateSprite
	mov	r6, r0
	cmp	r6, #0
	beq	.Lb7c82
	ldr	r0, [r6, #0x18]
	ldr	r1, [r7, #0x18]
	ldr	r3, =Func_8000888
	.call_via r3
	str	r0, [r6, #0x18]
	mov	r0, r5
	bl	_GetSpriteInfo
	ldrb	r3, [r0, #9]
	mov	r1, r8
	lsr	r3, #1
	mov	r2, r10
	strh	r3, [r1, #0x20]
	mov	r3, #0xc
	add	r3, r9
	str	r6, [r2]
	mov	r10, r3
.Lb7c82:
	add	r1, sp, #0xc
	mov	r3, r6
	ldrb	r1, [r1]
	ldr	r2, =0x2001
	add	r3, #0x26
	strb	r1, [r3]
	add	r0, r5, r2
	bl	_CreateSprite
	mov	r6, r0
	cmp	r6, #0
	beq	.Lb7caa
	ldr	r0, [r6, #0x18]
	ldr	r1, [r7, #0x18]
	ldr	r3, =Func_8000888
	.call_via r3
	mov	r1, r10
	str	r0, [r6, #0x18]
	str	r6, [r1]
.Lb7caa:
	add	r2, sp, #0xc
	mov	r3, r6
	ldrb	r2, [r2]
	add	r3, #0x26
	b	.Lb7d3e
.Lb7cb4:
	ldrh	r0, [r7, #4]
	str	r1, [sp, #4]
	bl	_CreateSprite
	mov	r6, r0
	ldr	r1, [sp, #4]
	cmp	r6, #0
	beq	.Lb7d40
	mov	r4, #1
	strb	r4, [r1]
	mov	r3, r8
	str	r6, [r3, #0x50]
	ldr	r0, [r6, #0x18]
	ldr	r1, [r7, #0x18]
	ldr	r3, =Func_8000888
	.call_via r3
	str	r0, [r6, #0x18]
	ldr	r5, [r6, #0x28]
	ldr	r3, [r7, #0x14]
	strb	r4, [r5, #6]
	strb	r3, [r5, #5]
	ldrh	r5, [r7, #6]
	cmp	r5, #0
	beq	.Lb7cf8
	mov	r1, r5
	mov	r0, r6
	str	r4, [sp]
	bl	_Sprite_AddLayer
	ldr	r4, [sp]
	mov	r5, r0
	strb	r4, [r5, #6]
.Lb7cf8:
	ldrh	r5, [r7, #8]
	cmp	r5, #0
	beq	.Lb7d14
	mov	r1, r5
	mov	r0, r6
	bl	_Sprite_AddLayer
	mov	r5, r0
	str	r5, [r7, #0x20]
	mov	r1, #0
	bl	_SpriteLayer_SetAnim
	mov	r3, #3
	strb	r3, [r5, #6]
.Lb7d14:
	ldrh	r5, [r7, #0xa]
	cmp	r5, #0
	beq	.Lb7d40
	mov	r3, r6
	add	r3, #0x20
	ldrb	r3, [r3]
	cmp	r3, #0x20
	bne	.Lb7d26
	ldr	r5, =0x1ff
.Lb7d26:
	mov	r1, r5
	mov	r0, r6
	bl	_Sprite_AddLayer
	add	r1, sp, #0xc
	ldrb	r1, [r1]
	mov	r3, r6
	mov	r5, r0
	add	r3, #0x26
	mov	r2, r1
	str	r5, [r7, #0x24]
	strb	r1, [r5, #6]
.Lb7d3e:
	strb	r2, [r3]
.Lb7d40:
	ldr	r0, [sp, #0x10]
	bl	Func_80b7aac
.Lb7d46:
	ldr	r3, [sp, #8]
	mov	r1, #1
	add	r11, r1
	add	r3, #2
	mov	r2, r11
	str	r3, [sp, #8]
	cmp	r2, #0xd
	bgt	.Lb7d62
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	str	r3, [sp, #0x10]
	cmp	r3, #0xff
	beq	.Lb7d62
	b	.Lb7bce
.Lb7d62:
	ldr	r2, [sp, #0x14]
	cmp	r2, #0
	beq	.Lb7dae
	ldr	r2, [sp, #0x18]
	mov	r1, #0
	ldrsh	r5, [r2, r1]
	mov	r3, #0
	mov	r11, r3
	cmp	r5, #0xff
	beq	.Lb7dae
.Lb7d76:
	ldr	r1, [sp, #0x18]
	ldrsh	r3, [r3, r1]
	cmp	r3, #0xfe
	beq	.Lb7d9a
	mov	r0, r5
	bl	GetBattleActor
	mov	r7, r0
	cmp	r7, #0
	beq	.Lb7d9a
	ldr	r7, [r7]
	mov	r8, r7
	mov	r3, r8
	cmp	r3, #0
	beq	.Lb7d9a
	mov	r0, r5
	bl	Func_80b7aac
.Lb7d9a:
	mov	r1, #1
	add	r11, r1
	mov	r2, r11
	cmp	r2, #0xd
	bgt	.Lb7dae
	ldr	r1, [sp, #0x18]
	lsl	r3, r2, #1
	ldrsh	r5, [r3, r1]
	cmp	r5, #0xff
	bne	.Lb7d76
.Lb7dae:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end CreateBattleSpriteOverlays


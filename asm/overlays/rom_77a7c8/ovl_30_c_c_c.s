	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200bf4c
	push	{r5, r6, lr}
	ldr	r5, =iwram_3001e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L3f6e
	ldr	r0, [r5]
	mov	r1, #6
	lsr	r0, #1
	bl	_umodsi3_RAM
	mov	r1, r0
	mov	r0, r6
	bl	__Actor_SetColorswap
.L3f6e:
	ldr	r3, [r5]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L3f7e
	mov	r0, r6
	bl	OvlFunc_881_200c058
.L3f7e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200bf4c

.thumb_func_start OvlFunc_881_200bf88
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, =iwram_3001e40
	ldr	r3, [r0]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L3faa
	ldr	r0, [r0]
	mov	r1, #6
	lsr	r0, #1
	bl	_umodsi3_RAM
	mov	r1, r0
	mov	r0, r5
	bl	__Actor_SetColorswap
.L3faa:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200bf88

.thumb_func_start OvlFunc_881_200bfb4
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L3fd4
	mov	r0, r5
	bl	__DeleteActor
	b	.L3ffe
.L3fd4:
	lsl	r0, #10
	bl	__sin
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #0x10]
.L3ffe:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200bfb4

.thumb_func_start OvlFunc_881_200c004
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L4024
	mov	r0, r5
	bl	__DeleteActor
	b	.L4050
.L4024:
	lsl	r0, #10
	bl	__sin
	neg	r3, r0
	str	r0, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	sub	r3, r2
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0x10]
.L4050:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200c004

.thumb_func_start OvlFunc_881_200c058
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	sub	sp, #8
	mov	r1, #0x3f
	mov	r6, r0
	mov	r11, r3
	mov	r7, #0
	mov	r10, sp
	mov	r9, r1
.L4078:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, #0x1a
	bl	__CreateActor
	lsl	r3, r7, #2
	mov	r2, r10
	str	r0, [r3, r2]
	cmp	r0, #0
	beq	.L4124
	ldr	r3, [r6, #0x14]
	str	r3, [r0, #0x14]
	mov	r3, r0
	ldr	r5, [r0, #0x50]
	add	r3, #0x55
	mov	r2, #0
	ldr	r1, .L40ac	@ 0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r8, r1
	str	r6, [r0, #0x68]
	cmp	r5, #0
	beq	.L4124
	b	.L40b4

	.align	2, 0
.L40ac:
	.word	0
	.pool

.L40b4:
	mov	r1, #0
	mov	r0, r5
	bl	__Sprite_SetAnim
	mov	r3, r5
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r0, [r5, #0x1c]
	bl	__Func_8003f3c
	mov	r3, r11
	add	r3, #0x46
	ldrh	r3, [r3]
	strb	r3, [r5, #0x1c]
	ldrb	r3, [r5, #0x1d]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r5, #0x1d]
	ldrb	r3, [r5, #0x1c]
	ldr	r2, =gSpriteSlots
	lsl	r3, #2
	add	r3, r2
	ldrh	r1, [r3, #2]
	ldr	r2, .L411c	@ 0xfffffc00
	ldrh	r3, [r5, #8]
	lsl	r1, #17
	lsr	r1, #22
	and	r3, r2
	orr	r3, r1
	mov	r1, #0x21
	neg	r1, r1
	strh	r3, [r5, #8]
	ldrb	r3, [r5, #5]
	mov	r2, r1
	and	r3, r2
	mov	r2, r9
	and	r3, r2
	mov	r2, #0x40
	orr	r3, r2
	ldrb	r2, [r5, #7]
	strb	r3, [r5, #5]
	mov	r3, r9
	and	r3, r2
	mov	r2, #0x80
	orr	r3, r2
	strb	r3, [r5, #7]
	ldr	r3, [r5, #0x28]
	mov	r1, r8
	strb	r1, [r3, #0x16]
	b	.L4124

	.align	2, 0
.L411c:
	.word	0xfffffc00
	.pool

.L4124:
	add	r7, #1
	cmp	r7, #1
	ble	.L4078
	ldr	r2, [sp]
	ldr	r3, =OvlFunc_881_200c004
	ldr	r0, [r2, #0x50]
	str	r3, [r2, #0x6c]
	mov	r2, #0xd
	ldrb	r1, [r0, #9]
	neg	r2, r2
	mov	r3, r2
	mov	r4, #4
	and	r3, r1
	orr	r3, r4
	strb	r3, [r0, #9]
	mov	r3, r10
	ldr	r1, [r3, #4]
	ldr	r0, [r1, #0x50]
	ldrb	r3, [r0, #9]
	and	r2, r3
	ldr	r3, =OvlFunc_881_200bfb4
	orr	r2, r4
	str	r3, [r1, #0x6c]
	add	r1, #0x23
	mov	r3, #2
	strb	r2, [r0, #9]
	strb	r3, [r1]
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200c058

	.section .data
	.global .L44ac
	.global gScript_943__0200c4ec
	.global .L47a6
	.global gScript_881__0200c9e4
	.global gScript_881__0200ca78
	.global gScript_882__0200ca78
	.global gScript_881__0200cac4
	.global gScript_881__0200caf4
	.global gScript_881__0200cb50
	.global gScript_881__0200cbe4
	.global gScript_896__0200cbe4
	.global gScript_881__0200cc30
	.global gScript_881__0200cc74
	.global gScript_881__0200cd08
	.global gScript_881__0200cd54
	.global gScript_881__0200cd98
	.global gScript_881__0200ce2c
	.global gScript_881__0200ce78
	.global gScript_881__0200cebc
	.global gScript_881__0200cf20
	.global gScript_881__0200cf7c
	.global gScript_881__0200d01c
	.global gScript_881__0200d0a8
	.global gScript_881__0200d14c
	.global gScript_881__0200d158
	.global gScript_881__0200d1b8
	.global gScript_881__0200d218
	.global gOvl_0200da2c
	.global .L5b84
	.global .L604c
	.global .L6154
	.global .L61e4
	.global .L625c
	.global .L628c
	.global .L62ec
	.global .L6394
	.global .L63c4
	.global gOvl_0200e3f4
	.global .L6718
	.global gScript_881__0200e73c
	.global gOvl_0200d27c

.L44ac:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x44ac, (0x44ec-0x44ac)
gScript_943__0200c4ec:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x44ec, (0x47a6-0x44ec)
.L47a6:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x47a6, (0x49e4-0x47a6)
gScript_881__0200c9e4:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x49e4, (0x4a78-0x49e4)
gScript_881__0200ca78:
gScript_882__0200ca78:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4a78, (0x4ac4-0x4a78)
gScript_881__0200cac4:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4ac4, (0x4af4-0x4ac4)
gScript_881__0200caf4:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4af4, (0x4b50-0x4af4)
gScript_881__0200cb50:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4b50, (0x4be4-0x4b50)
gScript_881__0200cbe4:
gScript_896__0200cbe4:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4be4, (0x4c30-0x4be4)
gScript_881__0200cc30:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4c30, (0x4c74-0x4c30)
gScript_881__0200cc74:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4c74, (0x4d08-0x4c74)
gScript_881__0200cd08:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4d08, (0x4d54-0x4d08)
gScript_881__0200cd54:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4d54, (0x4d98-0x4d54)
gScript_881__0200cd98:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4d98, (0x4e2c-0x4d98)
gScript_881__0200ce2c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4e2c, (0x4e78-0x4e2c)
gScript_881__0200ce78:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4e78, (0x4ebc-0x4e78)
gScript_881__0200cebc:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4ebc, (0x4f20-0x4ebc)
gScript_881__0200cf20:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4f20, (0x4f7c-0x4f20)
gScript_881__0200cf7c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x4f7c, (0x501c-0x4f7c)
gScript_881__0200d01c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x501c, (0x50a8-0x501c)
gScript_881__0200d0a8:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x50a8, (0x514c-0x50a8)
gScript_881__0200d14c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x514c, (0x5158-0x514c)
gScript_881__0200d158:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x5158, (0x51b8-0x5158)
gScript_881__0200d1b8:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x51b8, (0x5218-0x51b8)
gScript_881__0200d218:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x5218, (0x527c-0x5218)
gOvl_0200d27c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x527c, (0x5a2c-0x527c)
gOvl_0200da2c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x5a2c, (0x5b84-0x5a2c)
.L5b84:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x5b84, (0x604c-0x5b84)
.L604c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x604c, (0x6154-0x604c)
.L6154:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x6154, (0x61e4-0x6154)
.L61e4:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x61e4, (0x625c-0x61e4)
.L625c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x625c, (0x628c-0x625c)
.L628c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x628c, (0x62ec-0x628c)
.L62ec:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x62ec, (0x6394-0x62ec)
.L6394:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x6394, (0x63c4-0x6394)
.L63c4:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x63c4, (0x63f4-0x63c4)
gOvl_0200e3f4:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x63f4, (0x6718-0x63f4)
.L6718:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x6718, (0x673c-0x6718)
gScript_881__0200e73c:
	.incbin "overlays/rom_77a7c8/orig.bin", 0x673c, (0x679c-0x673c)

	.section .bss
	.global .L67a0
	.global .L679c

	.lcomm	.L679c, 4
	.lcomm	.L67a0, 4

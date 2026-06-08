	.include "macros.inc"

.thumb_func_start OvlFunc_883_200dc5c
	push	{r5, r6, lr}
	ldr	r5, =iwram_3001e40
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.L5c7e
	ldr	r0, [r5]
	mov	r1, #6
	lsr	r0, #1
	bl	_Func_8000b50
	mov	r1, r0
	mov	r0, r6
	bl	__Actor_SetColorswap
.L5c7e:
	ldr	r3, [r5]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L5c8e
	mov	r0, r6
	bl	OvlFunc_883_200dd68
.L5c8e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200dc5c

.thumb_func_start OvlFunc_883_200dc98
	push	{r5, lr}
	mov	r5, r0
	ldr	r0, =iwram_3001e40
	ldr	r3, [r0]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L5cba
	ldr	r0, [r0]
	mov	r1, #6
	lsr	r0, #1
	bl	_Func_8000b50
	mov	r1, r0
	mov	r0, r5
	bl	__Actor_SetColorswap
.L5cba:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200dc98

.thumb_func_start OvlFunc_883_200dcc4
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
	ble	.L5ce4
	mov	r0, r5
	bl	__DeleteActor
	b	.L5d0e
.L5ce4:
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
.L5d0e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200dcc4

.thumb_func_start OvlFunc_883_200dd14
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
	ble	.L5d34
	mov	r0, r5
	bl	__DeleteActor
	b	.L5d60
.L5d34:
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
.L5d60:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200dd14

.thumb_func_start OvlFunc_883_200dd68
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
.L5d88:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, #0x1a
	bl	__CreateActor
	lsl	r3, r7, #2
	mov	r2, r10
	str	r0, [r3, r2]
	cmp	r0, #0
	beq	.L5e34
	ldr	r3, [r6, #0x14]
	str	r3, [r0, #0x14]
	mov	r3, r0
	ldr	r5, [r0, #0x50]
	add	r3, #0x55
	mov	r2, #0
	ldr	r1, .L5dbc	@ 0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r8, r1
	str	r6, [r0, #0x68]
	cmp	r5, #0
	beq	.L5e34
	b	.L5dc4

	.align	2, 0
.L5dbc:
	.word	0
	.pool

.L5dc4:
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
	ldr	r2, .L5e2c	@ 0xfffffc00
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
	b	.L5e34

	.align	2, 0
.L5e2c:
	.word	0xfffffc00
	.pool

.L5e34:
	add	r7, #1
	cmp	r7, #1
	ble	.L5d88
	ldr	r2, [sp]
	ldr	r3, =OvlFunc_883_200dd14
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
	ldr	r3, =OvlFunc_883_200dcc4
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
.func_end OvlFunc_883_200dd68

	.section .data
	.global gScript_883__0200e6e0
	.global gScript_883__0200e6e4
	.global gScript_945__0200e6e4
	.global gScript_883__0200e248
	.global gScript_883__0200e590
	.global gScript_883__0200e5cc
	.global gScript_883__0200e614
	.global gScript_883__0200e65c
	.global .L7544
	.global .L755a
	.global .L7570
	.global .L7586
	.global gScript_883__0200f59c
	.global gScript_883__0200f5ec
	.global .L763c
	.global .L76cc
	.global .L7748
	.global .L77c4
	.global .L68a8
	.global .L6ab8
	.global .L6cc8
	.global .L6e48
	.global .L6f38
	.global .L7100
	.global .L7334
	.global .L6190
	.global .L61d0
	.global .L61e8
	.global gOvl_0200e708

.L6190:
	.incbin "overlays/rom_780898/orig.bin", 0x6190, (0x61d0-0x6190)
.L61d0:
	.incbin "overlays/rom_780898/orig.bin", 0x61d0, (0x61e8-0x61d0)
.L61e8:
	.incbin "overlays/rom_780898/orig.bin", 0x61e8, (0x6248-0x61e8)
gScript_883__0200e248:
	.incbin "overlays/rom_780898/orig.bin", 0x6248, (0x6590-0x6248)
gScript_883__0200e590:
	.incbin "overlays/rom_780898/orig.bin", 0x6590, (0x65cc-0x6590)
gScript_883__0200e5cc:
	.incbin "overlays/rom_780898/orig.bin", 0x65cc, (0x6614-0x65cc)
gScript_883__0200e614:
	.incbin "overlays/rom_780898/orig.bin", 0x6614, (0x665c-0x6614)
gScript_883__0200e65c:
	.incbin "overlays/rom_780898/orig.bin", 0x665c, (0x66e0-0x665c)
gScript_883__0200e6e0:
	.incbin "overlays/rom_780898/orig.bin", 0x66e0, (0x66e4-0x66e0)
gScript_883__0200e6e4:
gScript_945__0200e6e4:
	.incbin "overlays/rom_780898/orig.bin", 0x66e4, (0x6708-0x66e4)
gOvl_0200e708:
	.incbin "overlays/rom_780898/orig.bin", 0x6708, (0x6870-0x6708)
	.global gOvl_0200e870
gOvl_0200e870:
	.incbin "overlays/rom_780898/orig.bin", 0x6870, (0x68a8-0x6870)
.L68a8:
	.incbin "overlays/rom_780898/orig.bin", 0x68a8, (0x6ab8-0x68a8)
.L6ab8:
	.incbin "overlays/rom_780898/orig.bin", 0x6ab8, (0x6cc8-0x6ab8)
.L6cc8:
	.incbin "overlays/rom_780898/orig.bin", 0x6cc8, (0x6e48-0x6cc8)
.L6e48:
	.incbin "overlays/rom_780898/orig.bin", 0x6e48, (0x6f38-0x6e48)
.L6f38:
	.incbin "overlays/rom_780898/orig.bin", 0x6f38, (0x7100-0x6f38)
.L7100:
	.incbin "overlays/rom_780898/orig.bin", 0x7100, (0x7334-0x7100)
.L7334:
	.incbin "overlays/rom_780898/orig.bin", 0x7334, (0x7544-0x7334)
.L7544:
	.incbin "overlays/rom_780898/orig.bin", 0x7544, (0x755a-0x7544)
.L755a:
	.incbin "overlays/rom_780898/orig.bin", 0x755a, (0x7570-0x755a)
.L7570:
	.incbin "overlays/rom_780898/orig.bin", 0x7570, (0x7586-0x7570)
.L7586:
	.incbin "overlays/rom_780898/orig.bin", 0x7586, (0x759c-0x7586)
gScript_883__0200f59c:
	.incbin "overlays/rom_780898/orig.bin", 0x759c, (0x75ec-0x759c)
gScript_883__0200f5ec:
	.incbin "overlays/rom_780898/orig.bin", 0x75ec, (0x763c-0x75ec)
.L763c:
	.incbin "overlays/rom_780898/orig.bin", 0x763c, (0x76cc-0x763c)
.L76cc:
	.incbin "overlays/rom_780898/orig.bin", 0x76cc, (0x7748-0x76cc)
.L7748:
	.incbin "overlays/rom_780898/orig.bin", 0x7748, (0x77c4-0x7748)
.L77c4:
	.incbin "overlays/rom_780898/orig.bin", 0x77c4

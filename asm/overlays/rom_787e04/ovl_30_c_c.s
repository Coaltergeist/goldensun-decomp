	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_887_20095e8
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
	ble	.L1608
	mov	r0, r5
	bl	__Func_800c0f4
	b	.L1632
.L1608:
	lsl	r0, #10
	bl	__Func_8002322
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
.L1632:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20095e8

.thumb_func_start OvlFunc_887_2009638
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
	ble	.L1658
	mov	r0, r5
	bl	__Func_800c0f4
	b	.L1684
.L1658:
	lsl	r0, #10
	bl	__Func_8002322
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
.L1684:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2009638

.thumb_func_start OvlFunc_887_200968c
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
.L16ac:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, #0x1a
	bl	__Func_800c150
	lsl	r3, r7, #2
	mov	r2, r10
	str	r0, [r3, r2]
	cmp	r0, #0
	beq	.L1758
	ldr	r3, [r6, #0x14]
	str	r3, [r0, #0x14]
	mov	r3, r0
	ldr	r5, [r0, #0x50]
	add	r3, #0x55
	mov	r2, #0
	ldr	r1, .L16e0	@ 0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r8, r1
	str	r6, [r0, #0x68]
	cmp	r5, #0
	beq	.L1758
	b	.L16e8

	.align	2, 0
.L16e0:
	.word	0
	.pool

.L16e8:
	mov	r1, #0
	mov	r0, r5
	bl	__Func_800ba30
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
	ldr	r2, =iwram_3001b10
	lsl	r3, #2
	add	r3, r2
	ldrh	r1, [r3, #2]
	ldr	r2, .L1750	@ 0xfffffc00
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
	b	.L1758

	.align	2, 0
.L1750:
	.word	0xfffffc00
	.pool

.L1758:
	add	r7, #1
	cmp	r7, #1
	ble	.L16ac
	ldr	r2, [sp]
	ldr	r3, =OvlFunc_887_2009638
	ldr	r0, [r2, #0x50]
	str	r3, [r2, #0x6c]
	mov	r2, #0xd
	ldrb	r1, [r0, #9]
	neg	r2, r2
	mov	r3, r2
	mov	r4, #8
	and	r3, r1
	orr	r3, r4
	strb	r3, [r0, #9]
	mov	r3, r10
	ldr	r1, [r3, #4]
	ldr	r0, [r1, #0x50]
	ldrb	r3, [r0, #9]
	and	r2, r3
	ldr	r3, =OvlFunc_887_20095e8
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
.func_end OvlFunc_887_200968c

.thumb_func_start OvlFunc_887_20097a8
	push	{lr}
	mov	r0, #0x8c
	mov	r1, #0
	bl	__Func_8096fb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20097a8

.thumb_func_start OvlFunc_887_20097b8
	push	{lr}
	bl	__Func_8097194
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20097b8

.thumb_func_start OvlFunc_887_20097c4
	push	{lr}
	mov	r0, #8
	bl	__Func_8092054
	bl	OvlFunc_887_2009580
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20097c4

.thumb_func_start OvlFunc_887_20097d4
	push	{lr}
	mov	r0, #0x11
	bl	__Func_8092054
	bl	OvlFunc_887_20095bc
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20097d4

.thumb_func_start OvlFunc_887_20097e4
	push	{lr}
	mov	r0, #0x94
	mov	r1, #1
	bl	__Func_8096fb0
	mov	r1, #0x11
	mov	r0, #8
	bl	__Func_80970f8
	bl	__Func_809728c
	mov	r0, #1
	bl	__Func_80967e4
	bl	__Func_8097174
	bl	__Func_8097194
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20097e4

	.section .data
	.global .L1ab4
	.global .L1b04
	.global .L1b34
	.global .L1b78
	.global .L1bb4
	.global .L1c04
	.global .L1c54
	.global .L1ca4
	.global .L1cec
	.global .L1d38
	.global .L1e6c
	.global .L1eac
	.global .L1ecc
	.global .L2198
	.global .L21dc
	.global .L2218
	.global .L2338
	.global .L2410
	.global .L2518
	.global .L25a8
	.global .L26b0
	.global .L2800
	.global .L2980
	.global .L2b9c
	.global .L2c5c
	.global .L1fd0

.L1ab4:
	.incbin "overlays/rom_787e04/orig.bin", 0x1ab4, (0x1b04-0x1ab4)
.L1b04:
	.incbin "overlays/rom_787e04/orig.bin", 0x1b04, (0x1b34-0x1b04)
.L1b34:
	.incbin "overlays/rom_787e04/orig.bin", 0x1b34, (0x1b78-0x1b34)
.L1b78:
	.incbin "overlays/rom_787e04/orig.bin", 0x1b78, (0x1bb4-0x1b78)
.L1bb4:
	.incbin "overlays/rom_787e04/orig.bin", 0x1bb4, (0x1c04-0x1bb4)
.L1c04:
	.incbin "overlays/rom_787e04/orig.bin", 0x1c04, (0x1c54-0x1c04)
.L1c54:
	.incbin "overlays/rom_787e04/orig.bin", 0x1c54, (0x1ca4-0x1c54)
.L1ca4:
	.incbin "overlays/rom_787e04/orig.bin", 0x1ca4, (0x1cec-0x1ca4)
.L1cec:
	.incbin "overlays/rom_787e04/orig.bin", 0x1cec, (0x1d38-0x1cec)
.L1d38:
	.incbin "overlays/rom_787e04/orig.bin", 0x1d38, (0x1e6c-0x1d38)
.L1e6c:
	.incbin "overlays/rom_787e04/orig.bin", 0x1e6c, (0x1eac-0x1e6c)
.L1eac:
	.incbin "overlays/rom_787e04/orig.bin", 0x1eac, (0x1ecc-0x1eac)
.L1ecc:
	.incbin "overlays/rom_787e04/orig.bin", 0x1ecc, (0x1fd0-0x1ecc)
.L1fd0:
	.incbin "overlays/rom_787e04/orig.bin", 0x1fd0, (0x2198-0x1fd0)
.L2198:
	.incbin "overlays/rom_787e04/orig.bin", 0x2198, (0x21dc-0x2198)
.L21dc:
	.incbin "overlays/rom_787e04/orig.bin", 0x21dc, (0x2218-0x21dc)
.L2218:
	.incbin "overlays/rom_787e04/orig.bin", 0x2218, (0x2338-0x2218)
.L2338:
	.incbin "overlays/rom_787e04/orig.bin", 0x2338, (0x2410-0x2338)
.L2410:
	.incbin "overlays/rom_787e04/orig.bin", 0x2410, (0x2518-0x2410)
.L2518:
	.incbin "overlays/rom_787e04/orig.bin", 0x2518, (0x25a8-0x2518)
.L25a8:
	.incbin "overlays/rom_787e04/orig.bin", 0x25a8, (0x26b0-0x25a8)
.L26b0:
	.incbin "overlays/rom_787e04/orig.bin", 0x26b0, (0x2800-0x26b0)
.L2800:
	.incbin "overlays/rom_787e04/orig.bin", 0x2800, (0x2980-0x2800)
.L2980:
	.incbin "overlays/rom_787e04/orig.bin", 0x2980, (0x2b9c-0x2980)
.L2b9c:
	.incbin "overlays/rom_787e04/orig.bin", 0x2b9c, (0x2c5c-0x2b9c)
.L2c5c:
	.incbin "overlays/rom_787e04/orig.bin", 0x2c5c

	.include "macros.inc"

.thumb_func_start OvlFunc_959_200d520
	push	{lr}
	mov	r0, #0xd4
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5534
	mov	r0, #0
	bl	OvlFunc_959_2008c90
.L5534:
	ldr	r0, =0x351
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5544
	mov	r0, #1
	bl	OvlFunc_959_2008c90
.L5544:
	ldr	r0, =0x352
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5554
	mov	r0, #2
	bl	OvlFunc_959_2008c90
.L5554:
	ldr	r0, =0x353
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5564
	mov	r0, #3
	bl	OvlFunc_959_2008c90
.L5564:
	mov	r0, #0xd5
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5576
	mov	r0, #4
	bl	OvlFunc_959_2008c90
.L5576:
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200d520

	.section .data
	.global .L5fa4
	.global .L5fa4
	.global .L5fa4
	.global .L62a4
	.global .L64b4
	.global .L6754
	.global .L6814
	.global .L68a4
	.global .L6910
	.global .L697c
	.global .L69b8
	.global .L69d0
	.global .L6ac0
	.global .L6c28
	.global .L6e08
	.global .L6e98
	.global .L6ff4
	.global .L7258
	.global .L7528
	.global .L763c
	.global .L7714
	.global .L773c
	.global .L7754
	.global .L7764

.L5fa4:
	.incbin "overlays/rom_7e7574/orig.bin", 0x5fa4, (0x62a4-0x5fa4)
.L62a4:
	.incbin "overlays/rom_7e7574/orig.bin", 0x62a4, (0x64b4-0x62a4)
.L64b4:
	.incbin "overlays/rom_7e7574/orig.bin", 0x64b4, (0x6754-0x64b4)
.L6754:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6754, (0x6814-0x6754)
.L6814:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6814, (0x68a4-0x6814)
.L68a4:
	.incbin "overlays/rom_7e7574/orig.bin", 0x68a4, (0x6910-0x68a4)
.L6910:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6910, (0x697c-0x6910)
.L697c:
	.incbin "overlays/rom_7e7574/orig.bin", 0x697c, (0x69b8-0x697c)
.L69b8:
	.incbin "overlays/rom_7e7574/orig.bin", 0x69b8, (0x69d0-0x69b8)
.L69d0:
	.incbin "overlays/rom_7e7574/orig.bin", 0x69d0, (0x6ac0-0x69d0)
.L6ac0:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6ac0, (0x6c28-0x6ac0)
.L6c28:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6c28, (0x6e08-0x6c28)
.L6e08:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6e08, (0x6e98-0x6e08)
.L6e98:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6e98, (0x6ff4-0x6e98)
.L6ff4:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6ff4, (0x7258-0x6ff4)
.L7258:
	.incbin "overlays/rom_7e7574/orig.bin", 0x7258, (0x7528-0x7258)
.L7528:
	.incbin "overlays/rom_7e7574/orig.bin", 0x7528, (0x763c-0x7528)
.L763c:
	.incbin "overlays/rom_7e7574/orig.bin", 0x763c, (0x7714-0x763c)
.L7714:
	.incbin "overlays/rom_7e7574/orig.bin", 0x7714, (0x773c-0x7714)
.L773c:
	.incbin "overlays/rom_7e7574/orig.bin", 0x773c, (0x7754-0x773c)
.L7754:
	.incbin "overlays/rom_7e7574/orig.bin", 0x7754, (0x7764-0x7754)
.L7764:
	.incbin "overlays/rom_7e7574/orig.bin", 0x7764

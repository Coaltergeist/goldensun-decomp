	.include "macros.inc"

.thumb_func_start OvlFunc_895_2009ac8
	push	{r5, lr}
	ldr	r5, =.L269c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L1aea
	sub	r3, #1
	str	r3, [r5]
	cmp	r3, #0x28
	bne	.L1b14
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	b	.L1b14
.L1aea:
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	cmp	r3, #0
	bne	.L1b14
	mov	r0, #0x8a
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r3, #0x50
	str	r3, [r5]
.L1b14:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2009ac8

	.section .data
	.global .L265c
	.global .L1fc0
	.global .L1fd8
	.global .L2050
	.global .L21b8
	.global .L22a8
	.global .L22d8
	.global .L22e4
	.global .L232c
	.global .L241c
	.global .L2524
	.global MapEntrance_ARRAY_895__02009cd4
	.global .L1d04
	.global .L1d64

MapEntrance_ARRAY_895__02009cd4:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1cd4, (0x1d04-0x1cd4)
.L1d04:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1d04, (0x1d64-0x1d04)
.L1d64:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1d64, (0x1f14-0x1d64)
	.global gOvl_02009f14
gOvl_02009f14:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1f14, (0x1fc0-0x1f14)
.L1fc0:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1fc0, (0x1fd8-0x1fc0)
.L1fd8:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1fd8, (0x2050-0x1fd8)
.L2050:
	.incbin "overlays/rom_78dee8/orig.bin", 0x2050, (0x21b8-0x2050)
.L21b8:
	.incbin "overlays/rom_78dee8/orig.bin", 0x21b8, (0x22a8-0x21b8)
.L22a8:
	.incbin "overlays/rom_78dee8/orig.bin", 0x22a8, (0x22d8-0x22a8)
.L22d8:
	.incbin "overlays/rom_78dee8/orig.bin", 0x22d8, (0x22e4-0x22d8)
.L22e4:
	.incbin "overlays/rom_78dee8/orig.bin", 0x22e4, (0x232c-0x22e4)
.L232c:
	.incbin "overlays/rom_78dee8/orig.bin", 0x232c, (0x241c-0x232c)
.L241c:
	.incbin "overlays/rom_78dee8/orig.bin", 0x241c, (0x2524-0x241c)
.L2524:
	.incbin "overlays/rom_78dee8/orig.bin", 0x2524, (0x265c-0x2524)
.L265c:
	.incbin "overlays/rom_78dee8/orig.bin", 0x265c

	.section .bss
	.global .L269c

	.lcomm	.L269c, 4

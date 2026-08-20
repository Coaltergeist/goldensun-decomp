	.include "macros.inc"

.thumb_func_start OvlFunc_895_2009ac8
	push	{r5, lr}
	ldr	r5, =.Lm895_269c
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Lm895_1aea
	sub	r3, #1
	str	r3, [r5]
	cmp	r3, #0x28
	bne	.Lm895_1b14
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	b	.Lm895_1b14
.Lm895_1aea:
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	cmp	r3, #0
	bne	.Lm895_1b14
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
.Lm895_1b14:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_895_2009ac8

	.section .data
	.global .Lm895_265c
	.global .Lm895_1fc0
	.global .Lm895_1fd8
	.global .Lm895_2050
	.global .Lm895_21b8
	.global .Lm895_22a8
	.global .Lm895_22d8
	.global .Lm895_22e4
	.global .Lm895_232c
	.global .Lm895_241c
	.global .Lm895_2524
	.global MapEntrance_ARRAY_895__02009cd4
	.global .Lm895_1d04
	.global .Lm895_1d64

MapEntrance_ARRAY_895__02009cd4:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1cd4, (0x1d04-0x1cd4)
.Lm895_1d04:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1d04, (0x1d64-0x1d04)
.Lm895_1d64:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1d64, (0x1f14-0x1d64)
	.global gOvl_02009f14
gOvl_02009f14:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1f14, (0x1fc0-0x1f14)
.Lm895_1fc0:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1fc0, (0x1fd8-0x1fc0)
.Lm895_1fd8:
	.incbin "overlays/rom_78dee8/orig.bin", 0x1fd8, (0x2050-0x1fd8)
.Lm895_2050:
	.incbin "overlays/rom_78dee8/orig.bin", 0x2050, (0x21b8-0x2050)
.Lm895_21b8:
	.incbin "overlays/rom_78dee8/orig.bin", 0x21b8, (0x22a8-0x21b8)
.Lm895_22a8:
	.incbin "overlays/rom_78dee8/orig.bin", 0x22a8, (0x22d8-0x22a8)
.Lm895_22d8:
	.incbin "overlays/rom_78dee8/orig.bin", 0x22d8, (0x22e4-0x22d8)
.Lm895_22e4:
	.incbin "overlays/rom_78dee8/orig.bin", 0x22e4, (0x232c-0x22e4)
.Lm895_232c:
	.incbin "overlays/rom_78dee8/orig.bin", 0x232c, (0x241c-0x232c)
.Lm895_241c:
	.incbin "overlays/rom_78dee8/orig.bin", 0x241c, (0x2524-0x241c)
.Lm895_2524:
	.incbin "overlays/rom_78dee8/orig.bin", 0x2524, (0x265c-0x2524)
.Lm895_265c:
	.incbin "overlays/rom_78dee8/orig.bin", 0x265c

	.section .bss
	.global .Lm895_269c

	.lcomm	.Lm895_269c, 4

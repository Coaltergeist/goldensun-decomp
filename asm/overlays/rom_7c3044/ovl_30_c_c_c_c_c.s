	.include "macros.inc"
	.section .text.after, "ax", %progbits

	.section .data
	.global .L784
	.global .L8d4
	.global .La0c
	.global .La3c
	.global .La48
	.global .Lc88
	.global .Leb0
	.global MapEntrance_ARRAY_937__020084a0
	.global .L4d0
	.global .L6c8

MapEntrance_ARRAY_937__020084a0:
	.incbin "overlays/rom_7c3044/orig.bin", 0x4a0, (0x4d0-0x4a0)
.L4d0:
	.incbin "overlays/rom_7c3044/orig.bin", 0x4d0, (0x6c8-0x4d0)
.L6c8:
	.incbin "overlays/rom_7c3044/orig.bin", 0x6c8, (0x728-0x6c8)
	.global gOvl_02008728
gOvl_02008728:
	.incbin "overlays/rom_7c3044/orig.bin", 0x728, (0x784-0x728)
.L784:
	.incbin "overlays/rom_7c3044/orig.bin", 0x784, (0x79c-0x784)
	.global gScript_906__0200879c
gScript_906__0200879c:
	.incbin "overlays/rom_7c3044/orig.bin", 0x79c, (0x8d4-0x79c)
.L8d4:
	.incbin "overlays/rom_7c3044/orig.bin", 0x8d4, (0xa0c-0x8d4)
.La0c:
	.incbin "overlays/rom_7c3044/orig.bin", 0xa0c, (0xa3c-0xa0c)
.La3c:
	.incbin "overlays/rom_7c3044/orig.bin", 0xa3c, (0xa48-0xa3c)
.La48:
	.incbin "overlays/rom_7c3044/orig.bin", 0xa48, (0xc88-0xa48)
.Lc88:
	.incbin "overlays/rom_7c3044/orig.bin", 0xc88, (0xeb0-0xc88)
.Leb0:
	.incbin "overlays/rom_7c3044/orig.bin", 0xeb0, (0xef8-0xeb0)
	.global .Lef8
.Lef8:
	.incbin "overlays/rom_7c3044/orig.bin", 0xef8

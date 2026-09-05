	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global s_Lv_973__020088d0
	.global .L8d4
	.global .L8e0
	.global .L8f8
	.global .L90c
	.global .L914
	.global gOvl_02008920
	.global .L93c
	.global .L958
	.global gOvl_02008994
	.global gOvl_02008998
	.global gOvl_02008a58
	.global gOvl_02008964

s_Lv_973__020088d0:
	.incbin "overlays/rom_7fc720/orig.bin", 0x8d0, (0x8d4-0x8d0)
.L8d4:
	.incbin "overlays/rom_7fc720/orig.bin", 0x8d4, (0x8e0-0x8d4)
.L8e0:
	.incbin "overlays/rom_7fc720/orig.bin", 0x8e0, (0x8f8-0x8e0)
.L8f8:
	.incbin "overlays/rom_7fc720/orig.bin", 0x8f8, (0x90c-0x8f8)
.L90c:
	.incbin "overlays/rom_7fc720/orig.bin", 0x90c, (0x914-0x90c)
.L914:
	.incbin "overlays/rom_7fc720/orig.bin", 0x914, (0x920-0x914)
gOvl_02008920:
	.incbin "overlays/rom_7fc720/orig.bin", 0x920, (0x93c-0x920)
.L93c:
	.incbin "overlays/rom_7fc720/orig.bin", 0x93c, (0x958-0x93c)
.L958:
	.incbin "overlays/rom_7fc720/orig.bin", 0x958, (0x964-0x958)
gOvl_02008964:
	.incbin "overlays/rom_7fc720/orig.bin", 0x964, (0x994-0x964)
gOvl_02008994:
	.incbin "overlays/rom_7fc720/orig.bin", 0x994, (0x998-0x994)
gOvl_02008998:
	.incbin "overlays/rom_7fc720/orig.bin", 0x998, (0xa58-0x998)
gOvl_02008a58:
	.incbin "overlays/rom_7fc720/orig.bin", 0xa58

	.include "macros.inc"
	.include "gba.inc"

	.section .mdata1, "aw", %progbits
	.global	OvlData_947_200ad64
OvlData_947_200ad64:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2d64, (0x2da8-0x2d64)
	.ssize	OvlData_947_200ad64

	.section .data
	.global .Lm947_2ce0
	.global gScript_884__0200acf8
	.global .Lm947_2ca0
	.global .Lm947_2ce0
	.global gScript_884__0200acf8

.Lm947_2ca0:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2ca0, (0x2ce0-0x2ca0)
.Lm947_2ce0:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2ce0, (0x2cf8-0x2ce0)
gScript_884__0200acf8:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2cf8, (0x2d58-0x2cf8)

	.section .mdata4, "aw", %progbits
	.global .Lm947_339c
	.global .Lm947_33a8
	.global .Lm947_3438
	.global .Lm947_3498
	.global .Lm947_351c
	.global .Lm947_3618

.Lm947_339c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x339c, (0x33a8-0x339c)
.Lm947_33a8:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x33a8, (0x3438-0x33a8)
.Lm947_3438:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3438, (0x3498-0x3438)
.Lm947_3498:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3498, (0x351c-0x3498)
.Lm947_351c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x351c, (0x3618-0x351c)
.Lm947_3618:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3618

	.section .mdata3, "aw", %progbits
	.global .Lm947_2e7c
	.global .Lm947_2eac
	.global .Lm947_2ef4
	.global .Lm947_2f3c
	.global .Lm947_2f84
	.global .Lm947_2fcc

.Lm947_2e7c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e7c, (0x2eac-0x2e7c)
.Lm947_2eac:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2eac, (0x2ef4-0x2eac)
.Lm947_2ef4:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2ef4, (0x2f3c-0x2ef4)
.Lm947_2f3c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2f3c, (0x2f84-0x2f3c)
.Lm947_2f84:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2f84, (0x2fcc-0x2f84)
.Lm947_2fcc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2fcc, (0x3014-0x2fcc)
	.global gOvl_0200b014
gOvl_0200b014:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3014, (0x306c-0x3014)
	.global gOvl_0200b06c
gOvl_0200b06c:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x306c, (0x30e4-0x306c)
	.global gOvl_0200b0e4
gOvl_0200b0e4:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x30e4, (0x3174-0x30e4)
.Lm947_3174:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3174, (0x3264-0x3174)
.Lm947_3264:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x3264, (0x32dc-0x3264)
.Lm947_32dc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x32dc, (0x339c-0x32dc)

	.section .mdata2, "aw", %progbits
	.global .Lm947_2da8
	.global .Lm947_2dd2
	.global .Lm947_2dfc
	.global .Lm947_2e26
	.global .Lm947_2e50

.Lm947_2da8:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2da8, (0x2dd2-0x2da8)
.Lm947_2dd2:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2dd2, (0x2dfc-0x2dd2)
.Lm947_2dfc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2dfc, (0x2e26-0x2dfc)
.Lm947_2e26:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e26, (0x2e50-0x2e26)
.Lm947_2e50:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e50, (0x2e7c-0x2e50)

	.section .bss
	.global .Lm947_3720
	.global .Lm947_372c
	.global .Lm947_3738

	.space	4

	.global	bss_36d0
bss_36d0:
	.space	0x50
	.ssize	bss_36d0

.Lm947_3720:
	.space	0xc
.Lm947_372c:
	.space	0xc
.Lm947_3738:
	.space	4

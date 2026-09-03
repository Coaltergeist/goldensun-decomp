	.include "macros.inc"
	.include "gba.inc"

	.section .mdata1, "aw", %progbits
	.global gScript_923__0200a7b8
	.global gScript_923__0200a7c4
	.global gScript_923__0200a7d0
	.global gScript_923__0200a7dc
	.global gScript_923__0200a7e8
	.global .Lm923_27f4

gScript_923__0200a7b8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27b8, (0x27c4-0x27b8)
gScript_923__0200a7c4:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27c4, (0x27d0-0x27c4)
gScript_923__0200a7d0:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27d0, (0x27dc-0x27d0)
gScript_923__0200a7dc:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27dc, (0x27e8-0x27dc)
gScript_923__0200a7e8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27e8, (0x27f4-0x27e8)
.Lm923_27f4:
	.incbin "overlays/rom_7aa430/orig.bin", 0x27f4, (0x2814-0x27f4)

	.section .mdata2, "aw", %progbits
	.global gScript_923__0200a820
gScript_923__0200a820:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2820, (0x2874-0x2820)
	.global gScript_884__0200a874
	.global gScript_923__0200a874
gScript_884__0200a874:
gScript_923__0200a874:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2874, (0x28c8-0x2874)
	.global gScript_923__0200a8c8
gScript_923__0200a8c8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x28c8, (0x291c-0x28c8)

	.section .mdata3, "aw", %progbits
	.global .Lm923_291c
	.global gOvl_0200a920
	.global .Lm923_2924

.Lm923_291c:
	.incbin "overlays/rom_7aa430/orig.bin", 0x291c, (0x2920-0x291c)
gOvl_0200a920:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2920, (0x2924-0x2920)
.Lm923_2924:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2924, (0x2928-0x2924)

	.section .mdata4, "aw", %progbits
	.global .Lm923_2f4c
	.global gOvl_0200a928

gOvl_0200a928:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2928, (0x2bf8-0x2928)
	.global gOvl_0200abf8
gOvl_0200abf8:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2bf8, (0x2c58-0x2bf8)
	.global gOvl_0200ac58
gOvl_0200ac58:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2c58, (0x2d60-0x2c58)
	.global gOvl_0200ad60
gOvl_0200ad60:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2d60, (0x2f4c-0x2d60)
.Lm923_2f4c:
	.incbin "overlays/rom_7aa430/orig.bin", 0x2f4c

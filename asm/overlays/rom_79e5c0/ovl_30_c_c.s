	.include "macros.inc"

	.section .text.after_a7ac, "ax", %progbits


	.section .data
	.global ActorCmd_ARRAY_911__0200abd4
	.global gScript_911__0200ac08
	.global gScript_911__0200ac3c
	.global gScript_911__0200ac70
	.global gScript_911__0200acfc
	.global gScript_911__0200ad20
	.global gScript_911__0200ad7c
	.global gScript_911__0200add8
	.global gScript_911__0200ae20
	.global gScript_913__0200ae20
	.global gScript_953__0200ae20
	.global gScript_884__0200ae34
	.global gScript_911__0200ae34
	.global .L2e48
	.global .L3080
	.global .L3098
	.global .L32d8
	.global .L3368
	.global .L33b0
	.global .L3590
	.global gScript_911__0200b5d8
	.global .L2e60
	.global .L2f80
	.global gScript_913__0200afc8
	.global .L3010

ActorCmd_ARRAY_911__0200abd4:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2bd4, (0x2c08-0x2bd4)
gScript_911__0200ac08:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2c08, (0x2c3c-0x2c08)
gScript_911__0200ac3c:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2c3c, (0x2c70-0x2c3c)
gScript_911__0200ac70:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2c70, (0x2cfc-0x2c70)
gScript_911__0200acfc:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2cfc, (0x2d20-0x2cfc)
gScript_911__0200ad20:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2d20, (0x2d7c-0x2d20)
gScript_911__0200ad7c:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2d7c, (0x2dd8-0x2d7c)
gScript_911__0200add8:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2dd8, (0x2e20-0x2dd8)
gScript_911__0200ae20:
gScript_913__0200ae20:
gScript_953__0200ae20:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2e20, (0x2e34-0x2e20)
gScript_884__0200ae34:
gScript_911__0200ae34:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2e34, (0x2e48-0x2e34)
.L2e48:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2e48, (0x2e60-0x2e48)
.L2e60:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2e60, (0x2f80-0x2e60)
.L2f80:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2f80, (0x2fc8-0x2f80)
gScript_913__0200afc8:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2fc8, (0x3010-0x2fc8)
.L3010:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3010, (0x3040-0x3010)
	.global gOvl_0200b040
gOvl_0200b040:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3040, (0x3080-0x3040)
.L3080:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3080, (0x3098-0x3080)
.L3098:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3098, (0x32d8-0x3098)
.L32d8:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x32d8, (0x3368-0x32d8)
.L3368:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3368, (0x33b0-0x3368)
.L33b0:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x33b0, (0x3590-0x33b0)
.L3590:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3590, (0x35d8-0x3590)
gScript_911__0200b5d8:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x35d8, (0x35ec-0x35d8)
	.global gScript_911__0200b5ec
gScript_911__0200b5ec:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x35ec, (0x3610-0x35ec)
	.global gScript_911__0200b610
gScript_911__0200b610:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3610

	.section .bss
	.global .L368c
	.global .L3690
	.global .L3694
	.global .L3698
	.global .L369c
	.global .L36a0
	.global .L3698

	.lcomm	.L368c, 4
	.lcomm	.L3690, 4
	.lcomm	.L3694, 4
	.lcomm	.L3698, 4
	.lcomm	.L369c, 4
	.lcomm	.L36a0, 4

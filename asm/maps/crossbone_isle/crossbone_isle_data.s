	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global gOvl_0200b2bc
	.global gOvl_0200b5f8
	.global gScript_911__0200b610
	.global .Lm946_3718
	.global .Lm946_3850
	.global .Lm946_3880
	.global .Lm946_38e0
	.global .Lm946_3904
	.global .Lm946_39f4
	.global gScript_932__0200bd48
	.global .Lm946_3d6c
	.global .Lm946_315c
	.global .Lm946_319c
	.global .Lm946_31b4
	.global .Lm946_32d4
	.global .Lm946_3310
	.global .Lm946_3358
	.global .Lm946_33a0
	.global .Lm946_3400
	.global .Lm946_3448
	.global .Lm946_3478

.Lm946_315c:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x315c, (0x319c-0x315c)
.Lm946_319c:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x319c, (0x31b4-0x319c)
.Lm946_31b4:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x31b4, (0x32bc-0x31b4)
gOvl_0200b2bc:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x32bc, (0x32d4-0x32bc)
.Lm946_32d4:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x32d4, (0x3310-0x32d4)
.Lm946_3310:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3310, (0x3358-0x3310)
.Lm946_3358:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3358, (0x33a0-0x3358)
.Lm946_33a0:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x33a0, (0x3400-0x33a0)
.Lm946_3400:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3400, (0x3448-0x3400)
.Lm946_3448:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3448, (0x3478-0x3448)
.Lm946_3478:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3478, (0x3508-0x3478)
	.global gOvl_0200b508
gOvl_0200b508:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3508, (0x35f8-0x3508)
gOvl_0200b5f8:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x35f8, (0x3610-0x35f8)
gScript_911__0200b610:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3610, (0x3718-0x3610)
.Lm946_3718:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3718, (0x3850-0x3718)
.Lm946_3850:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3850, (0x3880-0x3850)
.Lm946_3880:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3880, (0x38e0-0x3880)
.Lm946_38e0:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x38e0, (0x3904-0x38e0)
.Lm946_3904:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3904, (0x39f4-0x3904)
.Lm946_39f4:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x39f4, (0x3d48-0x39f4)
gScript_932__0200bd48:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3d48, (0x3d6c-0x3d48)
.Lm946_3d6c:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3d6c

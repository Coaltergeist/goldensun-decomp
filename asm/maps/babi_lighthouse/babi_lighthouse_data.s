	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm965_391c
	.global .Lm965_39e8
	.global .Lm965_3ac0
	.global .Lm965_3c28
	.global .Lm965_2fd4
	.global gOvl_0200b014
	.global .Lm965_302c
	.global .Lm965_3134
	.global .Lm965_3270
	.global .Lm965_3330
	.global .Lm965_34f8
	.global .Lm965_3558
	.global .Lm965_35b8
	.global gOvl_0200b5f8
	.global .Lm965_3694
	.global .Lm965_3754
	.global .Lm965_3784
	.global .Lm965_388c

.Lm965_2fd4:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x2fd4, (0x3014-0x2fd4)
gOvl_0200b014:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3014, (0x302c-0x3014)
.Lm965_302c:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x302c, (0x3134-0x302c)
.Lm965_3134:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3134, (0x3270-0x3134)
.Lm965_3270:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3270, (0x3330-0x3270)
.Lm965_3330:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3330, (0x34f8-0x3330)
.Lm965_34f8:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x34f8, (0x3558-0x34f8)
.Lm965_3558:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3558, (0x35b8-0x3558)
.Lm965_35b8:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x35b8, (0x35f8-0x35b8)
gOvl_0200b5f8:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x35f8, (0x3694-0x35f8)
.Lm965_3694:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3694, (0x3754-0x3694)
.Lm965_3754:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3754, (0x3784-0x3754)
.Lm965_3784:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3784, (0x388c-0x3784)
.Lm965_388c:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x388c, (0x391c-0x388c)
.Lm965_391c:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x391c, (0x39e8-0x391c)
.Lm965_39e8:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x39e8, (0x3ac0-0x39e8)
.Lm965_3ac0:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3ac0, (0x3c28-0x3ac0)
.Lm965_3c28:
	.incbin "overlays/rom_7ef4f4/orig.bin", 0x3c28

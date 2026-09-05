	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm957_4198
	.global .Lm957_41b0
	.global .Lm957_4270
	.global .Lm957_4318
	.global .Lm957_4468
	.global .Lm957_3eb4
	.global .Lm957_3ef4
	.global .Lm957_3f0c
	.global gOvl_0200bf70

.Lm957_3eb4:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x3eb4, (0x3ef4-0x3eb4)
.Lm957_3ef4:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x3ef4, (0x3f0c-0x3ef4)
.Lm957_3f0c:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x3f0c, (0x3f6c-0x3f0c)
.Lm957_3f6c:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x3f6c, (0x3f70-0x3f6c)
gOvl_0200bf70:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x3f70, (0x4138-0x3f70)
	.global gOvl_0200c138
gOvl_0200c138:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4138, (0x4198-0x4138)
.Lm957_4198:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4198, (0x41b0-0x4198)
.Lm957_41b0:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x41b0, (0x4270-0x41b0)
.Lm957_4270:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4270, (0x4318-0x4270)
.Lm957_4318:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4318, (0x4468-0x4318)
.Lm957_4468:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4468, (0x4478-0x4468)
	.global gScript_957__0200c478
gScript_957__0200c478:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4478, (0x44c8-0x4478)
	.global gScript_957__0200c4c8
gScript_957__0200c4c8:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x44c8, (0x4518-0x44c8)
	.global gScript_957__0200c518
gScript_957__0200c518:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4518, (0x457c-0x4518)
	.global gScript_957__0200c57c
gScript_957__0200c57c:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x457c, (0x45e0-0x457c)
.Lm957_45e0:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x45e0, (0x4688-0x45e0)
.Lm957_4688:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4688, (0x4724-0x4688)
.Lm957_4724:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4724, (0x476c-0x4724)
.Lm957_476c:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x476c, (0x4808-0x476c)
.Lm957_4808:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4808, (0x4850-0x4808)
.Lm957_4850:
	.incbin "overlays/rom_7e3e08/orig.bin", 0x4850

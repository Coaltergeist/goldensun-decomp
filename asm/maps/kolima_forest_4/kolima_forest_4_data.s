	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm916_111c
	.global .Lm916_1164
	.global .Lm916_1168
	.global .Lm916_116c
	.global gOvl_02009170

.Lm916_111c:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x111c, (0x1164-0x111c)
.Lm916_1164:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x1164, (0x1168-0x1164)
.Lm916_1168:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x1168, (0x116c-0x1168)
.Lm916_116c:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x116c, (0x1170-0x116c)
gOvl_02009170:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x1170, (0x11d0-0x1170)
	.global gOvl_020091d0
gOvl_020091d0:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x11d0, (0x11e0-0x11d0)
	.global gOvl_020091e0
gOvl_020091e0:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x11e0, (0x1240-0x11e0)
	.global gOvl_02009240
gOvl_02009240:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x1240

	.section .bss
	.global .Lm916_19d0
	.global .Lm916_12c0
	.global .Lm916_12c4
	.global .Lm916_12c8
	.global .Lm916_12d0
	.global .Lm916_20d0
	.global .Lm916_20dc
	.global .Lm916_12c0

	.lcomm	.Lm916_unused_12b8, 8
	.lcomm	.Lm916_12c0, 4
	.lcomm	.Lm916_12c4, 4
	.lcomm	.Lm916_12c8, 8
	.lcomm	.Lm916_12d0, 0x700
	.lcomm	.Lm916_19d0, 0x700
	.lcomm	.Lm916_20d0, 8
	.lcomm	.Lm916_unused_20d8, 4
	.lcomm	.Lm916_20dc, 4

	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .L111c
	.global .L1164
	.global .L1168
	.global .L116c
	.global gOvl_02009170

.L111c:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x111c, (0x1164-0x111c)
.L1164:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x1164, (0x1168-0x1164)
.L1168:
	.incbin "overlays/rom_7a37f0/orig.bin", 0x1168, (0x116c-0x1168)
.L116c:
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
	.global .L19d0
	.global .L12c0
	.global .L12c4
	.global .L12c8
	.global .L12d0
	.global .L20d0
	.global .L20dc
	.global .L12c0

	.lcomm	.Lunused_12b8, 8
	.lcomm	.L12c0, 4
	.lcomm	.L12c4, 4
	.lcomm	.L12c8, 8
	.lcomm	.L12d0, 0x700
	.lcomm	.L19d0, 0x700
	.lcomm	.L20d0, 8
	.lcomm	.Lunused_20d8, 4
	.lcomm	.L20dc, 4

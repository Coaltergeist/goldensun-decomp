	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm952_4550
	.global .Lm952_4b3c
	.global .Lm952_4b84
	.global .Lm952_4d64
	.global .Lm952_4e6c
	.global .Lm952_4614
	.global .Lm952_4a1c

.Lm952_4550:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4550, (0x4570-0x4550)
	.global gScript_952__0200c570
gScript_952__0200c570:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4570, (0x4614-0x4570)
.Lm952_4614:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4614, (0x4a1c-0x4614)
.Lm952_4a1c:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4a1c, (0x4a7c-0x4a1c)
	.global gOvl_0200ca7c
gOvl_0200ca7c:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4a7c, (0x4a8c-0x4a7c)
	.global gOvl_0200ca8c
gOvl_0200ca8c:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4a8c, (0x4b3c-0x4a8c)
.Lm952_4b3c:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4b3c, (0x4b84-0x4b3c)
.Lm952_4b84:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4b84, (0x4d64-0x4b84)
.Lm952_4d64:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4d64, (0x4e6c-0x4d64)
.Lm952_4e6c:
	.incbin "overlays/rom_7d768c/orig.bin", 0x4e6c, (0x5004-0x4e6c)
.Lm952_5004:
	.incbin "overlays/rom_7d768c/orig.bin", 0x5004, (0x5394-0x5004)
.Lm952_5394:
	.incbin "overlays/rom_7d768c/orig.bin", 0x5394, (0x5688-0x5394)
.Lm952_5688:
	.incbin "overlays/rom_7d768c/orig.bin", 0x5688, (0x59e8-0x5688)
.Lm952_59e8:
	.incbin "overlays/rom_7d768c/orig.bin", 0x59e8, (0x5a48-0x59e8)
.Lm952_5a48:
	.incbin "overlays/rom_7d768c/orig.bin", 0x5a48, (0x5ad8-0x5a48)
.Lm952_5ad8:
	.incbin "overlays/rom_7d768c/orig.bin", 0x5ad8

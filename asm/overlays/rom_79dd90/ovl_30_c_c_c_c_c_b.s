
	.section .data
	.global .Lc7c
	.global .Ld24
	.global .Ld30
	.global gOvl_02008c08

.Lbd4:
	.incbin "overlays/rom_79dd90/orig.bin", 0xbd4, (0xbf4-0xbd4)
	.global gScript_910__02008bf4
gScript_910__02008bf4:
	.incbin "overlays/rom_79dd90/orig.bin", 0xbf4, (0xc08-0xbf4)
gOvl_02008c08:
	.incbin "overlays/rom_79dd90/orig.bin", 0xc08, (0xc50-0xc08)
	.global gOvl_02008c50
gOvl_02008c50:
	.incbin "overlays/rom_79dd90/orig.bin", 0xc50, (0xc64-0xc50)
	.global gScript_889__02008c64
gScript_889__02008c64:
	.incbin "overlays/rom_79dd90/orig.bin", 0xc64, (0xc7c-0xc64)
.Lc7c:
	.incbin "overlays/rom_79dd90/orig.bin", 0xc7c, (0xd24-0xc7c)
.Ld24:
	.incbin "overlays/rom_79dd90/orig.bin", 0xd24, (0xd30-0xd24)
.Ld30:
	.incbin "overlays/rom_79dd90/orig.bin", 0xd30

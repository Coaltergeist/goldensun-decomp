	.include "macros.inc"

	.section .data
	.global .L1e48
	.global ActorCmd_ARRAY_933__02009e88
	.global gScript_898__02009e88
	.global .L1ea0

.L1e48:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1e48, (0x1e88-0x1e48)
ActorCmd_ARRAY_933__02009e88:
gScript_898__02009e88:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1e88, (0x1ea0-0x1e88)
.L1ea0:
	.incbin "overlays/rom_7bdeb0/orig.bin", 0x1ea0, (0x1f00-0x1ea0)

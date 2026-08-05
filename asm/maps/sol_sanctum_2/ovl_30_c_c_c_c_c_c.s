	.include "macros.inc"

	.section .data
	.global .Lm891_256c
	.global .Lm891_2974
	.global gOvl_0200a5c0
	.global ActorCmd_ARRAY_909__0200a5c0
.Lm891_256c:
	.incbin "overlays/rom_78c76c/orig.bin", 0x256c, (0x25c0-0x256c)
gOvl_0200a5c0:
ActorCmd_ARRAY_909__0200a5c0:
	.incbin "overlays/rom_78c76c/orig.bin", 0x25c0, (0x2698-0x25c0)
	.global gOvl_0200a698
gOvl_0200a698:
	.incbin "overlays/rom_78c76c/orig.bin", 0x2698, (0x26bc-0x2698)
	.global gOvl_0200a6bc
gOvl_0200a6bc:
	.incbin "overlays/rom_78c76c/orig.bin", 0x26bc, (0x280c-0x26bc)
	.global gOvl_0200a80c
gOvl_0200a80c:
	.incbin "overlays/rom_78c76c/orig.bin", 0x280c, (0x2974-0x280c)
.Lm891_2974:
	.incbin "overlays/rom_78c76c/orig.bin", 0x2974

	.section .bss
	.global .Lm891_2980
	.global .Lm891_2a50

	.lcomm	.Lm891_unused_2978, 8
	.lcomm	.Lm891_2980,	0xc4
	.lcomm	.Lm891_unused_2a48, 8
	.lcomm	.Lm891_2a50, 8

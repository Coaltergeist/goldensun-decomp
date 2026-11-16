	.include "macros.inc"

	.section .rodata.rom_a5534_c_c_c
	.global GFX_Equip_StatDown_Copy
	.global GFX_Equip_StatUp_Copy

GFX_Equip_StatDown_Copy:
	.incrom 0xaeb4c, 0xaebcc
GFX_Equip_StatUp_Copy:
	.incrom 0xaebcc, 0xaed4c

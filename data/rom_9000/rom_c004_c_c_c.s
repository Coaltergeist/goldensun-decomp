	.include "macros.inc"
	.include "gba.inc"

	.section .rodata
	.global gScript_Idle
	.global gScript_08013590
	.global gScript_080135a8
	.global gScript_080135c0
	.global gScript_080135d8
	.global gScript_080135f0
	.global gScript_08013608
	.global gScript_08013620

gScript_Idle:
	.incrom 0x1358c, 0x13590
gScript_08013590:
	.incrom 0x13590, 0x135a8
gScript_080135a8:
	.incrom 0x135a8, 0x135c0
gScript_080135c0:
	.incrom 0x135c0, 0x135d8
gScript_080135d8:
	.incrom 0x135d8, 0x135f0
gScript_080135f0:
	.incrom 0x135f0, 0x13608
gScript_08013608:
	.incrom 0x13608, 0x13620
gScript_08013620:
	.incrom 0x13620, 0x13624

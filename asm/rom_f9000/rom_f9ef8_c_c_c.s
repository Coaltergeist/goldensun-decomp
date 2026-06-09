	.include "macros.inc"
	.include "gba.inc"

	.section .rodata
	.global gScaleTable
	.global gFreqTable
	.global gPcmSamplesPerVBlankTable
	.global gCgbScaleTable
	.global gCgbFreqTable
	.global gNoiseTable
	.global gCgb3Vol
	.global gXcmdTable

gScaleTable:
	.incrom 0xfb830, 0xfb8e4
gFreqTable:
	.incrom 0xfb8e4, 0xfb914
gPcmSamplesPerVBlankTable:
	.incrom 0xfb914, 0xfb92c
gCgbScaleTable:
	.incrom 0xfb92c, 0xfb9b0
gCgbFreqTable:
	.incrom 0xfb9b0, 0xfb9c8
gNoiseTable:
	.incrom 0xfb9c8, 0xfba04
gCgb3Vol:
	.incrom 0xfba04, 0xfba14

	.incdata Data_fba14, 0xfba14, 0xfba48

gXcmdTable:
	.incrom 0xfba48, 0xfc624

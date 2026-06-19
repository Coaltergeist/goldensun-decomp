	.include "macros.inc"
	.include "gba.inc"

@ Flash-library rodata (ROM 0x08007a0c-0x08007c64), kept as raw bytes rather than
@ reconstructed C const structs (lowest risk: the baked-in function-pointer words
@ already point at the unchanged function addresses). The labels the C references
@ are globalized here:
@   gSetup512KInfos  (.L7a0c): IdentifyFlash iterates this array.
@   DefaultFlash512K (.L7abc): ReadFlash / VerifyFlashSector v126 size source.
@   gFlashChip2      (.L7be4): Atmel AT29LV512 whole-flash record (agb_flash_at.c).
@   gFlashChip3      (.L7c10): Atmel AT29LV512 page record (size / wait / shift).

	.section .rodata
	.align	2, 0
	.global	gSetup512KInfos
	.global	DefaultFlash512K
	.global	gFlashChip2
	.global	gFlashChip3

gSetup512KInfos:
	.incrom 0x7a0c, 0x7abc
DefaultFlash512K:
	.incrom 0x7abc, 0x7be4
gFlashChip2:
	.incrom 0x7be4, 0x7c10
gFlashChip3:
	.incrom 0x7c10, 0x7c64

	.include "macros.inc"
	.include "gba.inc"


	.section .rodata
	.global .L9ed84
	.global .L9ef84
	.global .L9f024
	.global .L9f0a4

.L9ed84:
	.incrom 0x9ed84, 0x9ef84
.L9ef84:
	.incrom 0x9ef84, 0x9f024
.L9f024:
	.incrom 0x9f024, 0x9f0a4
.L9f0a4:
	.incrom 0x9f0a4, 0x9f0b0

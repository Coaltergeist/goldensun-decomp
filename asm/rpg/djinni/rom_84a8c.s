	.include "macros.inc"

	.section .rodata
	.global X89258
	.global gDjinn
	.global X84a8c
	.global X84b1c
	.global X88df8
	.global X88e38
	.global X84a8c
	.global X84a9c
	.global X88db8
	.global X88e38

X84a8c:
	.incrom 0x84a8c, 0x84a9c
X84a9c:
	.incrom 0x84a9c, 0x84b1c
X84b1c:
	.incrom 0x84b1c, 0x88db8
X88db8:
	.incrom 0x88db8, 0x88df8
X88df8:
	.incrom 0x88df8, 0x88e38
X88e38:
	.incrom 0x88e38, 0x89258
X89258:
	.incrom 0x89258, 0x8926c
gDjinn:
	.incrom 0x8926c, 0x89624

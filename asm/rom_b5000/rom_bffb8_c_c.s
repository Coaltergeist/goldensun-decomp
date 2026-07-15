	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_0f98, "ax", %progbits

	.section .text.after_1054, "ax", %progbits

	.section .rodata
	.global .Lc5a30
	.global .Lc5b30
	.global .Lc5c10

.Lc5a30:
	.incrom 0xc5a30, 0xc5b30
.Lc5b30:
	.incrom 0xc5b30, 0xc5c10
.Lc5c10:
	.incrom 0xc5c10, 0xc5c38

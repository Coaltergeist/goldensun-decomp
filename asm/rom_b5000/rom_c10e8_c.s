	.include "macros.inc"
	.include "gba.inc"

	.section .rodata
	.global .Lc3604
	.global .Lc3620
	.global .Lc3628

.Lc3604:
	.incrom 0xc3604, 0xc3620
.Lc3620:
	.incrom 0xc3620, 0xc3628
.Lc3628:
	.incrom 0xc3628, 0xc3734

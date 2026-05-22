	.include "macros.inc"
	.include "gba.inc"

	.section .rodata
	.global .Lfb914
	.global .Lfb92c
	.global .Lfb9b0
	.global .Lfb9c8
	.global .Lfba04
	.global .Lfba48
	.global .Lfb830
	.global .Lfb8e4

.Lfb830:
	.incrom 0xfb830, 0xfb8e4
.Lfb8e4:
	.incrom 0xfb8e4, 0xfb914
.Lfb914:
	.incrom 0xfb914, 0xfb92c
.Lfb92c:
	.incrom 0xfb92c, 0xfb9b0
.Lfb9b0:
	.incrom 0xfb9b0, 0xfb9c8
.Lfb9c8:
	.incrom 0xfb9c8, 0xfba04
.Lfba04:
	.incrom 0xfba04, 0xfba14

	.incdata Data_fba14, 0xfba14, 0xfba48

.Lfba48:
	.incrom 0xfba48, 0xfc624

	.include "macros.inc"
	.include "gba.inc"

	.section .rodata
	.global .Lf39ee
	.global .Lf3a2e
	.global .Lf3a6e
	.global .Lf38bc
	.global .Lf39ab
	.global .Lf39b1

.Lf38bc:
	.incrom 0xf38bc, 0xf39ab
.Lf39ab:
	.incrom 0xf39ab, 0xf39b1
.Lf39b1:
	.incrom 0xf39b1, 0xf39ee
.Lf39ee:
	.incrom 0xf39ee, 0xf3a2e
.Lf3a2e:
	.incrom 0xf3a2e, 0xf3a6e
.Lf3a6e:
	.incrom 0xf3a6e, 0xf3aae

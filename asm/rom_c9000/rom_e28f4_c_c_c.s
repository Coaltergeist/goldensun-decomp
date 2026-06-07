	.include "macros.inc"
	.include "gba.inc"

	.section .rodata
	.global .Leed3e
	.global .Leed7e
	.global .Leed90
	.global .Leed9a
	.global .Leeda0
	.global .Leeda3
	.global .Leeda6
	.global .Leedac

.Leed3e:
	.incrom 0xeed3e, 0xeed7e
.Leed7e:
	.incrom 0xeed7e, 0xeed90
.Leed90:
	.incrom 0xeed90, 0xeed9a
.Leed9a:
	.incrom 0xeed9a, 0xeeda0
.Leeda0:
	.incrom 0xeeda0, 0xeeda3
.Leeda3:
	.incrom 0xeeda3, 0xeeda6
.Leeda6:
	.incrom 0xeeda6, 0xeedac
.Leedac:
	.incrom 0xeedac, 0xeedb2

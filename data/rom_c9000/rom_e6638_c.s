	.include "macros.inc"
	.include "gba.inc"

	.section .rodata
	.global .Leedf4
	.global .Leedfb
	.global .Leee02
	.global .Leee10
	.global .Leee17
	.global .Leee1e
	.global .Leee2a
	.global .Leee36
	.global .Leee3e
	.global .Leee46
	.global .Leee4e
	.global .Leee56
	.global .Leee5e
	.global .Leee66

.Leedf4:
	.incrom 0xeedf4, 0xeedfb
.Leedfb:
	.incrom 0xeedfb, 0xeee02
.Leee02:
	.incrom 0xeee02, 0xeee10
.Leee10:
	.incrom 0xeee10, 0xeee17
.Leee17:
	.incrom 0xeee17, 0xeee1e
.Leee1e:
	.incrom 0xeee1e, 0xeee2a
.Leee2a:
	.incrom 0xeee2a, 0xeee36
.Leee36:
	.incrom 0xeee36, 0xeee3e
.Leee3e:
	.incrom 0xeee3e, 0xeee46
.Leee46:
	.incrom 0xeee46, 0xeee4e
.Leee4e:
	.incrom 0xeee4e, 0xeee56
.Leee56:
	.incrom 0xeee56, 0xeee5e
.Leee5e:
	.incrom 0xeee5e, 0xeee66
.Leee66:
	.incrom 0xeee66, 0xeee76

	.include "macros.inc"
	.include "gba.inc"

	.section .rodata
	.global .Lee064
	.global .Lee06a
	.global .Lee070
	.global .Lee07c
	.global .Lee088
	.global .Lee058
	.global .Lee05c
	.global .Lee060

.Lee058:
	.incrom 0xee058, 0xee05c
.Lee05c:
	.incrom 0xee05c, 0xee060
.Lee060:
	.incrom 0xee060, 0xee064
.Lee064:
	.incrom 0xee064, 0xee06a
.Lee06a:
	.incrom 0xee06a, 0xee070
.Lee070:
	.incrom 0xee070, 0xee07c
.Lee07c:
	.incrom 0xee07c, 0xee088
.Lee088:
	.incrom 0xee088, 0xee090

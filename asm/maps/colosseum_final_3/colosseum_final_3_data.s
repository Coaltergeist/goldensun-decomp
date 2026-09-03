	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global ActorCmd_ARRAY_956__0200cbec
	.global gScript_956__0200cc48
	.global .Lm956_4c38
	.global .Lm956_4c20

ActorCmd_ARRAY_956__0200cbec:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4bec, (0x4c20-0x4bec)
.Lm956_4c20:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4c20, (0x4c38-0x4c20)
.Lm956_4c38:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4c38, (0x4c48-0x4c38)
gScript_956__0200cc48:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4c48, (0x4cb0-0x4c48)

	.section .data1
	.global gScript_956__0200d668
	.global gScript_956__0200d738
	.global gScript_956__0200d808
	.global gScript_956__0200d8ac
	.global gScript_956__0200d950
	.global gScript_956__0200d96c
	.global .Lm956_5480
	.global gOvl_0200d000
	.global gOvl_0200d090
	.global gScript_881__0200d0a8
	.global .Lm956_5480
	.global .Lm956_5484

gOvl_0200d000:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5000, (0x5090-0x5000)
gOvl_0200d090:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5090, (0x50a8-0x5090)
gScript_881__0200d0a8:
	.incbin "overlays/rom_7e0928/orig.bin", 0x50a8, (0x5480-0x50a8)
.Lm956_5480:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5480, (0x5484-0x5480)
.Lm956_5484:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5484, (0x5488-0x5484)
	.global gScript_968__0200d488
gScript_968__0200d488:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5488, (0x5668-0x5488)
gScript_956__0200d668:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5668, (0x5738-0x5668)
gScript_956__0200d738:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5738, (0x5808-0x5738)
gScript_956__0200d808:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5808, (0x58ac-0x5808)
gScript_956__0200d8ac:
	.incbin "overlays/rom_7e0928/orig.bin", 0x58ac, (0x5950-0x58ac)
gScript_956__0200d950:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5950, (0x596c-0x5950)
gScript_956__0200d96c:
	.incbin "overlays/rom_7e0928/orig.bin", 0x596c, (0x59a4-0x596c)

	.section .bss
	.global .Lm956_5b80

	.lcomm	.Lm956_unused_5b78, 8
	.lcomm	.Lm956_5b80, 16

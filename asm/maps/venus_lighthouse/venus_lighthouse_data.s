	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm968_5148
	.global .Lm968_5164
	.global .Lm968_577c
	.global gScript_968__0200d7c8
	.global gScript_968__0200dac8
	.global .Lm968_5d3c
	.global .Lm968_6e44
	.global .Lm968_6f1c
	.global .Lm968_7120
	.global .Lm968_7300
	.global .Lm968_73b4
	.global .Lm968_74f8
	.global .Lm968_5128
	.global gScript_968__0200d21c
	.global gScript_968__0200d3c4
	.global gScript_968__0200d488
	.global gScript_968__0200d508
	.global .Lm968_5ce8
	.global .Lm968_5d12
	.global gOvl_0200e740
	.global .Lm968_68ec
	.global gScript_945__0200e904
	.global .Lm968_69c4
	.global .Lm968_6b74
	.global .Lm968_6c04
	.global .Lm968_6c64
	.global .Lm968_6cf4
	.global .Lm968_50e8
	.global .Lm968_51d4
	.global .Lm968_5d68
	.global .Lm968_5dc8
	.global .Lm968_6020
	.global .Lm968_6230
	.global .Lm968_6350
	.global .Lm968_6548

	.incbin "overlays/rom_7f2f14/orig.bin", 0x5040, (0x50e8-0x5040)
.Lm968_50e8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x50e8, (0x5128-0x50e8)
.Lm968_5128:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5128, (0x5148-0x5128)
.Lm968_5148:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5148, (0x5164-0x5148)
.Lm968_5164:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5164, (0x51a4-0x5164)
.Lm968_51a4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x51a4, (0x51a8-0x51a4)
.Lm968_51a8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x51a8, (0x51ac-0x51a8)
.Lm968_51ac:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x51ac, (0x51b0-0x51ac)
.Lm968_51b0:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x51b0, (0x51d4-0x51b0)
.Lm968_51d4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x51d4, (0x521c-0x51d4)
gScript_968__0200d21c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x521c, (0x52cc-0x521c)
.Lm968_52cc:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x52cc, (0x53c4-0x52cc)
gScript_968__0200d3c4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x53c4, (0x5488-0x53c4)
gScript_968__0200d488:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5488, (0x5508-0x5488)
gScript_968__0200d508:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5508, (0x5564-0x5508)
	.global gScript_968__0200d564
gScript_968__0200d564:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5564, (0x577c-0x5564)
.Lm968_577c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x577c, (0x57c8-0x577c)
gScript_968__0200d7c8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x57c8, (0x5ac8-0x57c8)
gScript_968__0200dac8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5ac8, (0x5ce8-0x5ac8)
.Lm968_5ce8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5ce8, (0x5d12-0x5ce8)
.Lm968_5d12:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5d12, (0x5d3c-0x5d12)
.Lm968_5d3c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5d3c, (0x5d68-0x5d3c)
.Lm968_5d68:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5d68, (0x5dc8-0x5d68)
.Lm968_5dc8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x5dc8, (0x6020-0x5dc8)
.Lm968_6020:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6020, (0x6230-0x6020)
.Lm968_6230:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6230, (0x6350-0x6230)
.Lm968_6350:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6350, (0x6548-0x6350)
.Lm968_6548:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6548, (0x6740-0x6548)
gOvl_0200e740:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6740, (0x68ec-0x6740)
.Lm968_68ec:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x68ec, (0x6904-0x68ec)
gScript_945__0200e904:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6904, (0x69c4-0x6904)
.Lm968_69c4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x69c4, (0x6b74-0x69c4)
.Lm968_6b74:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6b74, (0x6c04-0x6b74)
.Lm968_6c04:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6c04, (0x6c64-0x6c04)
.Lm968_6c64:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6c64, (0x6cf4-0x6c64)
.Lm968_6cf4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6cf4, (0x6e44-0x6cf4)
.Lm968_6e44:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6e44, (0x6f1c-0x6e44)
.Lm968_6f1c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x6f1c, (0x7120-0x6f1c)
.Lm968_7120:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x7120, (0x7300-0x7120)
.Lm968_7300:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x7300, (0x73b4-0x7300)
.Lm968_73b4:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x73b4, (0x74f8-0x73b4)
.Lm968_74f8:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x74f8, (0x772c-0x74f8)
.Lm968_772c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x772c, (0x777c-0x772c)
.Lm968_777c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x777c, (0x778c-0x777c)
.Lm968_778c:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x778c, (0x77ec-0x778c)
.Lm968_77ec:
	.incbin "overlays/rom_7f2f14/orig.bin", 0x77ec

	.include "macros.inc"
	.include "gba.inc"

	.section .data
	.global .Lm898_2828
	.global .Lm898_283e
	.global .Lm898_2854
	.global .Lm898_286a
	.global .Lm898_2880
	.global .Lm898_2896
	.global .Lm898_28ac
	.global .Lm898_2414
	.global .Lm898_2630
	.global gOvl_0200a094
	.global .Lm898_20cc
	.global .Lm898_227c
	.global gOvl_02009f5c

	.incbin "overlays/rom_793768/orig.bin", 0x1bc0, (0x1f5c-0x1bc0)
gOvl_02009f5c:
	.incbin "overlays/rom_793768/orig.bin", 0x1f5c, (0x2094-0x1f5c)
gOvl_0200a094:
	.incbin "overlays/rom_793768/orig.bin", 0x2094, (0x20cc-0x2094)
.Lm898_20cc:
	.incbin "overlays/rom_793768/orig.bin", 0x20cc, (0x227c-0x20cc)
.Lm898_227c:
	.incbin "overlays/rom_793768/orig.bin", 0x227c, (0x2414-0x227c)
.Lm898_2414:
	.incbin "overlays/rom_793768/orig.bin", 0x2414, (0x2630-0x2414)
.Lm898_2630:
	.incbin "overlays/rom_793768/orig.bin", 0x2630, (0x2828-0x2630)
.Lm898_2828:
	.incbin "overlays/rom_793768/orig.bin", 0x2828, (0x283e-0x2828)
.Lm898_283e:
	.incbin "overlays/rom_793768/orig.bin", 0x283e, (0x2854-0x283e)
.Lm898_2854:
	.incbin "overlays/rom_793768/orig.bin", 0x2854, (0x286a-0x2854)
.Lm898_286a:
	.incbin "overlays/rom_793768/orig.bin", 0x286a, (0x2880-0x286a)
.Lm898_2880:
	.incbin "overlays/rom_793768/orig.bin", 0x2880, (0x2896-0x2880)
.Lm898_2896:
	.incbin "overlays/rom_793768/orig.bin", 0x2896, (0x28ac-0x2896)
.Lm898_28ac:
	.incbin "overlays/rom_793768/orig.bin", 0x28ac, (0x28c4-0x28ac)
	.global gScript_898__0200a8c4
gScript_898__0200a8c4:
	.incbin "overlays/rom_793768/orig.bin", 0x28c4, (0x28dc-0x28c4)
	.global gScript_898__0200a8dc
gScript_898__0200a8dc:
	.incbin "overlays/rom_793768/orig.bin", 0x28dc

	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_887_20097e4
	push	{lr}
	mov	r0, #0x94
	mov	r1, #1
	bl	__Func_8096fb0
	mov	r1, #0x11
	mov	r0, #8
	bl	__Func_80970f8
	bl	__Func_809728c
	mov	r0, #1
	bl	__Func_80967e4
	bl	__Func_8097174
	bl	__Func_8097194
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20097e4

	.section .data
	.global ActorCmd_ARRAY_887__02009ab4
	.global gScript_887__02009b04
	.global gScript_887__02009b34
	.global gScript_887__02009b78
	.global gScript_887__02009bb4
	.global gScript_887__02009c04
	.global gScript_887__02009c54
	.global gScript_887__02009ca4
	.global gScript_887__02009cec
	.global gScript_887__02009d38
	.global gScript_887__02009e6c
	.global gScript_887__02009eac
	.global gScript_887__02009ecc
	.global .L2198
	.global gOvl_0200a1dc
	.global .L2218
	.global .L2338
	.global .L2410
	.global .L2518
	.global .L25a8
	.global .L26b0
	.global .L2800
	.global .L2980
	.global .L2b9c
	.global .L2c5c
	.global gLuckyFountainPrizes

ActorCmd_ARRAY_887__02009ab4:
	.incbin "overlays/rom_787e04/orig.bin", 0x1ab4, (0x1b04-0x1ab4)
gScript_887__02009b04:
	.incbin "overlays/rom_787e04/orig.bin", 0x1b04, (0x1b34-0x1b04)
gScript_887__02009b34:
	.incbin "overlays/rom_787e04/orig.bin", 0x1b34, (0x1b78-0x1b34)
gScript_887__02009b78:
	.incbin "overlays/rom_787e04/orig.bin", 0x1b78, (0x1bb4-0x1b78)
gScript_887__02009bb4:
	.incbin "overlays/rom_787e04/orig.bin", 0x1bb4, (0x1c04-0x1bb4)
gScript_887__02009c04:
	.incbin "overlays/rom_787e04/orig.bin", 0x1c04, (0x1c54-0x1c04)
gScript_887__02009c54:
	.incbin "overlays/rom_787e04/orig.bin", 0x1c54, (0x1ca4-0x1c54)
gScript_887__02009ca4:
	.incbin "overlays/rom_787e04/orig.bin", 0x1ca4, (0x1cec-0x1ca4)
gScript_887__02009cec:
	.incbin "overlays/rom_787e04/orig.bin", 0x1cec, (0x1d38-0x1cec)
gScript_887__02009d38:
	.incbin "overlays/rom_787e04/orig.bin", 0x1d38, (0x1e6c-0x1d38)
gScript_887__02009e6c:
	.incbin "overlays/rom_787e04/orig.bin", 0x1e6c, (0x1eac-0x1e6c)
gScript_887__02009eac:
	.incbin "overlays/rom_787e04/orig.bin", 0x1eac, (0x1ecc-0x1eac)
gScript_887__02009ecc:
	.incbin "overlays/rom_787e04/orig.bin", 0x1ecc, (0x1fd0-0x1ecc)
gLuckyFountainPrizes:
	.incbin "overlays/rom_787e04/orig.bin", 0x1fd0, (0x2198-0x1fd0)
.L2198:
	.incbin "overlays/rom_787e04/orig.bin", 0x2198, (0x21dc-0x2198)
gOvl_0200a1dc:
	.incbin "overlays/rom_787e04/orig.bin", 0x21dc, (0x2218-0x21dc)
.L2218:
	.incbin "overlays/rom_787e04/orig.bin", 0x2218, (0x2338-0x2218)
.L2338:
	.incbin "overlays/rom_787e04/orig.bin", 0x2338, (0x2410-0x2338)
.L2410:
	.incbin "overlays/rom_787e04/orig.bin", 0x2410, (0x2518-0x2410)
.L2518:
	.incbin "overlays/rom_787e04/orig.bin", 0x2518, (0x25a8-0x2518)
.L25a8:
	.incbin "overlays/rom_787e04/orig.bin", 0x25a8, (0x26b0-0x25a8)
.L26b0:
	.incbin "overlays/rom_787e04/orig.bin", 0x26b0, (0x2800-0x26b0)
.L2800:
	.incbin "overlays/rom_787e04/orig.bin", 0x2800, (0x2980-0x2800)
.L2980:
	.incbin "overlays/rom_787e04/orig.bin", 0x2980, (0x2b9c-0x2980)
.L2b9c:
	.incbin "overlays/rom_787e04/orig.bin", 0x2b9c, (0x2c5c-0x2b9c)
.L2c5c:
	.incbin "overlays/rom_787e04/orig.bin", 0x2c5c

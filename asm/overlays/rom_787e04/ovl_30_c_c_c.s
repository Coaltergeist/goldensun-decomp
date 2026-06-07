	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_887_20097c4
	push	{lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	bl	OvlFunc_887_2009580
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20097c4

.thumb_func_start OvlFunc_887_20097d4
	push	{lr}
	mov	r0, #0x11
	bl	__MapActor_GetActor
	bl	OvlFunc_887_20095bc
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_20097d4

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
	.global .L1ab4
	.global .L1b04
	.global .L1b34
	.global .L1b78
	.global .L1bb4
	.global .L1c04
	.global .L1c54
	.global .L1ca4
	.global .L1cec
	.global .L1d38
	.global .L1e6c
	.global .L1eac
	.global .L1ecc
	.global .L2198
	.global .L21dc
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
	.global .L1fd0

.L1ab4:
	.incbin "overlays/rom_787e04/orig.bin", 0x1ab4, (0x1b04-0x1ab4)
.L1b04:
	.incbin "overlays/rom_787e04/orig.bin", 0x1b04, (0x1b34-0x1b04)
.L1b34:
	.incbin "overlays/rom_787e04/orig.bin", 0x1b34, (0x1b78-0x1b34)
.L1b78:
	.incbin "overlays/rom_787e04/orig.bin", 0x1b78, (0x1bb4-0x1b78)
.L1bb4:
	.incbin "overlays/rom_787e04/orig.bin", 0x1bb4, (0x1c04-0x1bb4)
.L1c04:
	.incbin "overlays/rom_787e04/orig.bin", 0x1c04, (0x1c54-0x1c04)
.L1c54:
	.incbin "overlays/rom_787e04/orig.bin", 0x1c54, (0x1ca4-0x1c54)
.L1ca4:
	.incbin "overlays/rom_787e04/orig.bin", 0x1ca4, (0x1cec-0x1ca4)
.L1cec:
	.incbin "overlays/rom_787e04/orig.bin", 0x1cec, (0x1d38-0x1cec)
.L1d38:
	.incbin "overlays/rom_787e04/orig.bin", 0x1d38, (0x1e6c-0x1d38)
.L1e6c:
	.incbin "overlays/rom_787e04/orig.bin", 0x1e6c, (0x1eac-0x1e6c)
.L1eac:
	.incbin "overlays/rom_787e04/orig.bin", 0x1eac, (0x1ecc-0x1eac)
.L1ecc:
	.incbin "overlays/rom_787e04/orig.bin", 0x1ecc, (0x1fd0-0x1ecc)
.L1fd0:
	.incbin "overlays/rom_787e04/orig.bin", 0x1fd0, (0x2198-0x1fd0)
.L2198:
	.incbin "overlays/rom_787e04/orig.bin", 0x2198, (0x21dc-0x2198)
.L21dc:
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

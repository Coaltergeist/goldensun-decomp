	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_911_200a910
	push	{lr}
	ldr	r0, =0x845
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm911_2948
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r3, #9
	mov	r2, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #9
	mov	r1, #0x11
	mov	r2, #5
	mov	r3, #1
	bl	__Func_8010704
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm911_2952
.Lm911_2948:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm911_2952:
	ldr	r0, =0x847
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm911_298e
	mov	r3, #5
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5b
	mov	r1, #0x13
	mov	r2, #0x48
	mov	r3, #9
	bl	__CopyMapTiles
	mov	r3, #8
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0xb
	mov	r2, #5
	mov	r3, #7
	bl	__Func_8010704
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
.Lm911_298e:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_200a910

	.section .data
	.global ActorCmd_ARRAY_911__0200abd4
	.global gScript_911__0200ac08
	.global gScript_911__0200ac3c
	.global gScript_911__0200ac70
	.global gScript_911__0200acfc
	.global gScript_911__0200ad20
	.global gScript_911__0200ad7c
	.global gScript_911__0200add8
	.global gScript_911__0200ae20
	.global gScript_913__0200ae20
	.global gScript_953__0200ae20
	.global gScript_884__0200ae34
	.global gScript_911__0200ae34
	.global .Lm911_2e48
	.global .Lm911_3080
	.global .Lm911_3098
	.global .Lm911_32d8
	.global .Lm911_3368
	.global .Lm911_33b0
	.global .Lm911_3590
	.global gScript_911__0200b5d8
	.global .Lm911_2e60
	.global .Lm911_2f80
	.global gScript_913__0200afc8
	.global .Lm911_3010

ActorCmd_ARRAY_911__0200abd4:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2bd4, (0x2c08-0x2bd4)
gScript_911__0200ac08:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2c08, (0x2c3c-0x2c08)
gScript_911__0200ac3c:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2c3c, (0x2c70-0x2c3c)
gScript_911__0200ac70:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2c70, (0x2cfc-0x2c70)
gScript_911__0200acfc:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2cfc, (0x2d20-0x2cfc)
gScript_911__0200ad20:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2d20, (0x2d7c-0x2d20)
gScript_911__0200ad7c:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2d7c, (0x2dd8-0x2d7c)
gScript_911__0200add8:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2dd8, (0x2e20-0x2dd8)
gScript_911__0200ae20:
gScript_913__0200ae20:
gScript_953__0200ae20:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2e20, (0x2e34-0x2e20)
gScript_884__0200ae34:
gScript_911__0200ae34:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2e34, (0x2e48-0x2e34)
.Lm911_2e48:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2e48, (0x2e60-0x2e48)
.Lm911_2e60:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2e60, (0x2f80-0x2e60)
.Lm911_2f80:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2f80, (0x2fc8-0x2f80)
gScript_913__0200afc8:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2fc8, (0x3010-0x2fc8)
.Lm911_3010:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3010, (0x3040-0x3010)
	.global gOvl_0200b040
gOvl_0200b040:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3040, (0x3080-0x3040)
.Lm911_3080:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3080, (0x3098-0x3080)
.Lm911_3098:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3098, (0x32d8-0x3098)
.Lm911_32d8:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x32d8, (0x3368-0x32d8)
.Lm911_3368:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3368, (0x33b0-0x3368)
.Lm911_33b0:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x33b0, (0x3590-0x33b0)
.Lm911_3590:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3590, (0x35d8-0x3590)
gScript_911__0200b5d8:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x35d8, (0x35ec-0x35d8)
	.global gScript_911__0200b5ec
gScript_911__0200b5ec:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x35ec, (0x3610-0x35ec)
	.global gScript_911__0200b610
gScript_911__0200b610:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3610

	.section .bss
	.global .Lm911_368c
	.global .Lm911_3690
	.global .Lm911_3694
	.global .Lm911_3698
	.global .Lm911_369c
	.global .Lm911_36a0
	.global .Lm911_3698

	.lcomm	.Lm911_368c, 4
	.lcomm	.Lm911_3690, 4
	.lcomm	.Lm911_3694, 4
	.lcomm	.Lm911_3698, 4
	.lcomm	.Lm911_369c, 4
	.lcomm	.Lm911_36a0, 4

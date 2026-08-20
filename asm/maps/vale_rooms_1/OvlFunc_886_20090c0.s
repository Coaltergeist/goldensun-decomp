	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_886_20090c0
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e40
	mov	r1, #0xb4
	ldr	r0, [r3]
	bl	_umodsi3_RAM
	mov	r6, #0x17
	cmp	r0, #0x14
	beq	.Lm886_10e2
	cmp	r0, #0x14
	bhi	.Lm886_10dc
	cmp	r0, #0xa
	beq	.Lm886_10e8
	b	.Lm886_1130
.Lm886_10dc:
	cmp	r0, #0x1e
	beq	.Lm886_10e6
	b	.Lm886_1130
.Lm886_10e2:
	mov	r6, #0x18
	b	.Lm886_10e8
.Lm886_10e6:
	mov	r6, #0x19
.Lm886_10e8:
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm886_1130
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm886_1108
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r6
	bl	__MapActor_SetPos
.Lm886_1108:
	ldr	r3, =0x6666
	mov	r2, #0xc0
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r3, [r5, #0xc]
	lsl	r2, #13
	add	r3, r2
	mov	r2, r5
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	add	r2, #0x64
	mov	r3, #0x19
	strh	r3, [r2]
	add	r2, #2
	mov	r3, #0x80
	strh	r3, [r2]
	ldr	r1, =gScript_886__02009440
	mov	r0, r6
	bl	__MapActor_SetBehavior
.Lm886_1130:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_20090c0

	.section .data
	.global ActorCmd_ARRAY_886__020092fc
	.global .Lm886_1568
	.global .Lm886_1590
	.global .Lm886_15b8
	.global .Lm886_1738
	.global .Lm886_18b8
	.global gOvl_02009ac8
	.global ActorCmd_ARRAY_918__02009c00
	.global .Lm886_1da4
	.global .Lm886_1ffc
	.global gOvl_02009478

ActorCmd_ARRAY_886__020092fc:
	.incbin "overlays/rom_786f0c/orig.bin", 0x12fc, (0x1310-0x12fc)
	.global gScript_886__02009310
gScript_886__02009310:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1310, (0x1400-0x1310)
	.global gScript_886__02009400
gScript_886__02009400:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1400, (0x1440-0x1400)
	.global gScript_886__02009440
gScript_886__02009440:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1440, (0x1478-0x1440)
gOvl_02009478:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1478, (0x1568-0x1478)
.Lm886_1568:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1568, (0x1590-0x1568)
.Lm886_1590:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1590, (0x15b8-0x1590)
.Lm886_15b8:
	.incbin "overlays/rom_786f0c/orig.bin", 0x15b8, (0x1738-0x15b8)
.Lm886_1738:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1738, (0x18b8-0x1738)
.Lm886_18b8:
	.incbin "overlays/rom_786f0c/orig.bin", 0x18b8, (0x1ac8-0x18b8)
gOvl_02009ac8:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1ac8, (0x1c00-0x1ac8)
ActorCmd_ARRAY_918__02009c00:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1c00, (0x1da4-0x1c00)
.Lm886_1da4:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1da4, (0x1ffc-0x1da4)
.Lm886_1ffc:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1ffc

	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_913_200aad8
	push	{lr}
	mov	r0, #0xd
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm913_2b02
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.Lm913_2afc
	str	r2, [r0, #0xc]
	b	.Lm913_2b02
.Lm913_2afc:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.Lm913_2b02:
	mov	r0, #0xe
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm913_2b2a
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lm913_2b24
	str	r1, [r0, #0xc]
	b	.Lm913_2b2a
.Lm913_2b24:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.Lm913_2b2a:
	mov	r0, #0xf
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm913_2b52
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.Lm913_2b4c
	str	r2, [r0, #0xc]
	b	.Lm913_2b52
.Lm913_2b4c:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.Lm913_2b52:
	mov	r0, #0x10
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm913_2b7a
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lm913_2b74
	str	r1, [r0, #0xc]
	b	.Lm913_2b7a
.Lm913_2b74:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.Lm913_2b7a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_913_200aad8

	.section .data
	.global gScript_911__0200ae20
	.global gScript_913__0200ae20
	.global gScript_953__0200ae20
	.global gScript_913__0200ae54
	.global gScript_913__0200ae88
	.global gScript_913__0200aebc
	.global gScript_913__0200af48
	.global gScript_913__0200af6c
	.global gScript_913__0200afc8
	.global gScript_913__0200b024
	.global gScript_913__0200b2d0
	.global .Lm913_2d68
	.global .Lm913_2da8
	.global .Lm913_2dc0
	.global gOvl_0200b06c

.Lm913_2d68:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2d68, (0x2da8-0x2d68)
.Lm913_2da8:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2da8, (0x2dc0-0x2da8)
.Lm913_2dc0:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2dc0, (0x2e20-0x2dc0)
gScript_911__0200ae20:
gScript_913__0200ae20:
gScript_953__0200ae20:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2e20, (0x2e54-0x2e20)
gScript_913__0200ae54:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2e54, (0x2e88-0x2e54)
gScript_913__0200ae88:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2e88, (0x2ebc-0x2e88)
gScript_913__0200aebc:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2ebc, (0x2f48-0x2ebc)
gScript_913__0200af48:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2f48, (0x2f6c-0x2f48)
gScript_913__0200af6c:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2f6c, (0x2fc8-0x2f6c)
gScript_913__0200afc8:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2fc8, (0x3024-0x2fc8)
gScript_913__0200b024:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x3024, (0x306c-0x3024)
gOvl_0200b06c:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x306c, (0x30cc-0x306c)
	.global gOvl_0200b0cc
gOvl_0200b0cc:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x30cc, (0x30e4-0x30cc)
	.global gOvl_0200b0e4
gOvl_0200b0e4:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x30e4, (0x3294-0x30e4)
	.global gOvl_0200b294
gOvl_0200b294:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x3294, (0x32d0-0x3294)
gScript_913__0200b2d0:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x32d0, (0x32e4-0x32d0)
	.global gScript_913__0200b2e4
gScript_913__0200b2e4:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x32e4, (0x3308-0x32e4)
	.global gScript_913__0200b308
gScript_913__0200b308:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x3308

	.section .bss
	.global .Lm913_3384
	.global .Lm913_3388
	.global .Lm913_338c
	.global .Lm913_3390
	.global .Lm913_3394
	.global .Lm913_3398
	.global .Lm913_3390

	.lcomm	.Lm913_3384, 4
	.lcomm	.Lm913_3388, 4
	.lcomm	.Lm913_338c, 4
	.lcomm	.Lm913_3390, 4
	.lcomm	.Lm913_3394, 4
	.lcomm	.Lm913_3398, 4

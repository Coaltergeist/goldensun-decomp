	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009edc
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	cmp	r3, r2
	ble	.Lm948_1f18
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #2
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.Lm948_1f10
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x23
	strb	r5, [r0]
.Lm948_1f10:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	b	.Lm948_1f60
.Lm948_1f18:
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.Lm948_1f44
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.Lm948_1f34
	ldr	r2, =0xfffff
	add	r3, r2
.Lm948_1f34:
	asr	r3, #20
	cmp	r3, #0x38
	ble	.Lm948_1f44
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_8092b08
	b	.Lm948_1f58
.Lm948_1f44:
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x23
	strb	r3, [r0]
.Lm948_1f58:
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, #0
.Lm948_1f60:
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x23
	strb	r5, [r0]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009edc

.thumb_func_start CrossboneIsleDungeon4_MapInit
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r3, =gState
	add	r5, r3, r2
	mov	r3, #0
	ldrsh	r2, [r5, r3]
	ldr	r3, =0x75
	ldrh	r1, [r5]
	cmp	r2, r3
	bne	.Lm948_1f9e
	bl	OvlFunc_948_200a188
	ldrh	r1, [r5]
.Lm948_1f9e:
	lsl	r3, r1, #16
	ldr	r2, =0x76
	asr	r3, #16
	cmp	r3, r2
	bne	.Lm948_1fae
	bl	OvlFunc_948_200a290
	ldrh	r1, [r5]
.Lm948_1fae:
	lsl	r3, r1, #16
	ldr	r2, =0x78
	asr	r3, #16
	cmp	r3, r2
	bne	.Lm948_1fbc
	bl	OvlFunc_948_200a334
.Lm948_1fbc:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end CrossboneIsleDungeon4_MapInit

.thumb_func_start OvlFunc_948_2009fd8
	push	{lr}
	ldr	r2, =.Lm948_2f80
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0x10
	ble	.Lm948_1fea
	mov	r3, #0
	str	r3, [r2]
.Lm948_1fea:
	ldr	r3, [r2]
	sub	r3, #2
	cmp	r3, #0xa
	bhi	.Lm948_20a8
	ldr	r2, =.Lm948_1ffc
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm948_1ffc:
	.word	.Lm948_20a0
	.word	.Lm948_20a8
	.word	.Lm948_2096
	.word	.Lm948_20a8
	.word	.Lm948_2092
	.word	.Lm948_20a8
	.word	.Lm948_208e
	.word	.Lm948_20a8
	.word	.Lm948_208a
	.word	.Lm948_20a8
	.word	.Lm948_2028
.Lm948_2028:
	ldr	r0, =0xee7
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_2040
	mov	r1, #0xe8
	mov	r2, #0xda
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm948_2040:
	ldr	r0, =0xee8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_2058
	mov	r1, #0x94
	mov	r2, #0xce
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm948_2058:
	ldr	r0, =0xee9
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_2070
	mov	r1, #0xa4
	mov	r2, #0xbe
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm948_2070:
	ldr	r0, =0xeea
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_20a8
	mov	r1, #0xb4
	mov	r2, #0xda
	mov	r0, #0xb
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm948_20a8
.Lm948_208a:
	mov	r0, #8
	b	.Lm948_2098
.Lm948_208e:
	mov	r0, #9
	b	.Lm948_2098
.Lm948_2092:
	mov	r0, #0xa
	b	.Lm948_2098
.Lm948_2096:
	mov	r0, #0xb
.Lm948_2098:
	mov	r1, #0
	bl	OvlFunc_948_200a0c4
	b	.Lm948_20a8
.Lm948_20a0:
	mov	r0, #0xc
	mov	r1, #1
	bl	OvlFunc_948_200a0c4
.Lm948_20a8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009fd8

.thumb_func_start OvlFunc_948_200a0c4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	mov	r9, r1
	bl	__MapActor_GetActor
	mov	r6, r0
	cmp	r6, #0
	beq	.Lm948_2178
	mov	r3, r6
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r10, r3
	cmp	r3, #1
	bne	.Lm948_2178
	mov	r1, #0xc1
	lsl	r1, #3
	mov	r0, #0x11
	ldr	r7, [r6, #0x50]
	bl	__galloc_iwram
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #3
	mov	r2, #0
	add	r5, r3
	mov	r0, sp
	mov	r8, r2
	str	r2, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000020
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r9
	bl	__LoadItemIcon
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r7, #0x1c]
	bl	__UploadSpriteGFX
	mov	r5, r0
	mov	r0, #0x11
	bl	__gfree
	mov	r3, r6
	add	r3, #0x5c
	mov	r2, r10
	strb	r2, [r3]
	ldr	r0, [r7, #0x28]
	bl	__DeleteSpriteLayer
	mov	r3, r8
	str	r3, [r7, #0x28]
	mov	r3, r7
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r2, [r7, #5]
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r2
	strb	r3, [r7, #5]
	ldr	r3, .Lm948_2168	@ 0x3ff
	ldrh	r2, [r7, #8]
	and	r5, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r5
	strh	r3, [r7, #8]
	mov	r3, r7
	add	r3, #0x25
	mov	r2, r8
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	b	.Lm948_2178

	.align	2, 0
.Lm948_2168:
	.word	0x3ff
	.pool

.Lm948_2178:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200a0c4

.thumb_func_start OvlFunc_948_200a188
	push	{lr}
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xc
	mov	r1, #0xf3
	bl	OvlFunc_948_200a0c4
	mov	r0, #0xb
	mov	r1, #0xf4
	bl	OvlFunc_948_200a0c4
	mov	r0, #0xa
	mov	r1, #0xf4
	bl	OvlFunc_948_200a0c4
	mov	r0, #9
	mov	r1, #0xf4
	bl	OvlFunc_948_200a0c4
	mov	r0, #8
	mov	r1, #0xf4
	bl	OvlFunc_948_200a0c4
	ldr	r0, =0xee7
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_21d0
	mov	r1, #0xe8
	mov	r2, #0xda
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm948_21d0:
	ldr	r0, =0xee8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_21e8
	mov	r1, #0x94
	mov	r2, #0xce
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm948_21e8:
	ldr	r0, =0xee9
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_2200
	mov	r1, #0xa4
	mov	r2, #0xbe
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm948_2200:
	ldr	r0, =0xeea
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_2218
	mov	r1, #0xb4
	mov	r2, #0xda
	mov	r0, #0xb
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm948_2218:
	mov	r0, #0x9c
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm948_222a
	mov	r0, #0
	bl	OvlFunc_948_2008f40
.Lm948_222a:
	ldr	r0, =0x9c1
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm948_223a
	mov	r0, #1
	bl	OvlFunc_948_2008f40
.Lm948_223a:
	ldr	r0, =0x9c2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm948_224a
	mov	r0, #2
	bl	OvlFunc_948_2008f40
.Lm948_224a:
	ldr	r0, =0x9c3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm948_225a
	mov	r0, #3
	bl	OvlFunc_948_2008f40
.Lm948_225a:
	ldr	r0, =0x9c4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm948_226a
	mov	r0, #0
	bl	OvlFunc_948_2008fdc
.Lm948_226a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200a188

.thumb_func_start OvlFunc_948_200a290
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #1
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r5, =0xb333
	str	r5, [r0, #0x18]
	mov	r0, #9
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0xc8
	str	r5, [r0, #0x18]
	lsl	r1, #4
	ldr	r0, =OvlFunc_948_20097ac
	bl	__StartTask
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_948_200941c
	bl	__StartTask
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_948_2009308
	bl	__StartTask
	ldr	r2, =0x3f42
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	ldr	r2, =0x607
	add	r3, #2
	strh	r2, [r3]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200a290

.thumb_func_start OvlFunc_948_200a334
	push	{r5, lr}
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x55
	mov	r1, #0xc8
	strb	r5, [r0]
	lsl	r1, #4
	ldr	r0, =OvlFunc_948_2009e94
	bl	__StartTask
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_948_2009edc
	bl	__StartTask
	mov	r0, #0x6b
	mov	r1, #0
	mov	r2, #0
	bl	__Func_808edac
	ldr	r0, =0xed9
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm948_2372
	mov	r0, #0xe
	mov	r1, #2
	bl	__MapActor_SetAnim
.Lm948_2372:
	bl	OvlFunc_948_2009ac8
	bl	OvlFunc_948_2009c28
	bl	OvlFunc_948_2009cf8
	bl	OvlFunc_948_2009e54
	bl	OvlFunc_948_2009e74
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092b08
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	bl	OvlFunc_948_2009df8
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm948_23be
	bl	OvlFunc_948_2009984
	mov	r0, #0xd
	mov	r1, #5
	bl	__MapActor_SetAnim
.Lm948_23be:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_2440
	ldr	r0, =0x9ca
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm948_23ee
	mov	r1, #0xd6
	mov	r2, #0xce
	mov	r0, #0xf
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_948_2008aa8
	str	r3, [r0, #0x6c]
	b	.Lm948_2440
.Lm948_23ee:
	ldr	r0, =0x9c9
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm948_2418
	mov	r1, #0xde
	mov	r2, #0xa6
	lsl	r1, #18
	mov	r0, #0xf
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0xf
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	mov	r1, #0x10
	strh	r5, [r3, #0x1e]
	bl	__Actor_SetAnimSpeed
	b	.Lm948_2440
.Lm948_2418:
	ldr	r0, =0x9c8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm948_2432
	mov	r1, #0x92
	mov	r2, #0xaa
	mov	r0, #0xf
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm948_2440
.Lm948_2432:
	mov	r1, #0x92
	mov	r2, #0xa6
	mov	r0, #0xf
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm948_2440:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200a334

	.section .data
	.global gScript_948__0200a6fc
	.global .Lm948_2808
	.global gOvl_0200a970
	.global gScript_884__0200a998
	.global .Lm948_29b0
	.global .Lm948_2a40
	.global .Lm948_2ad0
	.global .Lm948_2ba8
	.global .Lm948_2bb4
	.global .Lm948_2cb0
	.global gScript_953__0200adac
	.global .Lm948_2f74
	.global .Lm948_2644
	.global .Lm948_2684
	.global .Lm948_269c
	.global .Lm948_2868
	.global .Lm948_2898
	.global .Lm948_28e0
	.global gOvl_0200a928

.Lm948_2644:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2644, (0x2684-0x2644)
.Lm948_2684:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2684, (0x269c-0x2684)
.Lm948_269c:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x269c, (0x26fc-0x269c)
gScript_948__0200a6fc:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x26fc, (0x2808-0x26fc)
.Lm948_2808:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2808, (0x2868-0x2808)
.Lm948_2868:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2868, (0x2898-0x2868)
.Lm948_2898:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2898, (0x28e0-0x2898)
.Lm948_28e0:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x28e0, (0x2928-0x28e0)
gOvl_0200a928:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2928, (0x2970-0x2928)
gOvl_0200a970:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2970, (0x2998-0x2970)
gScript_884__0200a998:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2998, (0x29b0-0x2998)
.Lm948_29b0:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x29b0, (0x2a40-0x29b0)
.Lm948_2a40:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2a40, (0x2ad0-0x2a40)
.Lm948_2ad0:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2ad0, (0x2ba8-0x2ad0)
.Lm948_2ba8:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2ba8, (0x2bb4-0x2ba8)
.Lm948_2bb4:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2bb4, (0x2cb0-0x2bb4)
.Lm948_2cb0:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2cb0, (0x2dac-0x2cb0)
gScript_953__0200adac:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2dac, (0x2f74-0x2dac)
.Lm948_2f74:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2f74, (0x2f80-0x2f74)
.Lm948_2f80:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2f80

	.include "macros.inc"
	.include "gba.inc"

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

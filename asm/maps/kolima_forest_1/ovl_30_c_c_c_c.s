	.include "macros.inc"

.thumb_func_start OvlFunc_913_200a88c
	push	{r5, lr}
	ldr	r3, =.Lm913_3394
	ldr	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.Lm913_28c4
	ldr	r1, =0xff3fffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x51fffe
	cmp	r3, r1
	bhi	.Lm913_28b4
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2360000
	cmp	r3, r1
	ble	.Lm913_28b4
	mov	r1, #0x99
	lsl	r1, #18
	cmp	r3, r1
	blt	.Lm913_2912
.Lm913_28b4:
	ldr	r1, =0xff35ffff
	add	r3, r2, r1
	ldr	r2, =0x34fffe
	cmp	r3, r2
	bhi	.Lm913_2926
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2250000
	b	.Lm913_2906
.Lm913_28c4:
	ldr	r1, =0xff3fffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x33fffe
	cmp	r3, r1
	bhi	.Lm913_28de
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2250000
	cmp	r3, r1
	ble	.Lm913_28de
	ldr	r1, =0x248ffff
	cmp	r3, r1
	ble	.Lm913_2912
.Lm913_28de:
	ldr	r1, =0xff0bffff
	add	r3, r2, r1
	ldr	r1, =0x1dfffe
	cmp	r3, r1
	bhi	.Lm913_28f6
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x23b0000
	cmp	r3, r1
	ble	.Lm913_28f6
	ldr	r1, =0x25cffff
	cmp	r3, r1
	ble	.Lm913_2912
.Lm913_28f6:
	ldr	r1, =0xff2cffff
	add	r3, r2, r1
	ldr	r2, =0x2bfffe
	cmp	r3, r2
	bhi	.Lm913_2926
	mov	r1, #0x95
	ldr	r3, [r5, #0x10]
	lsl	r1, #18
.Lm913_2906:
	cmp	r3, r1
	ble	.Lm913_2926
	mov	r2, #0x9e
	lsl	r2, #18
	cmp	r3, r2
	bge	.Lm913_2926
.Lm913_2912:
	mov	r0, #0x6a
	bl	__PlaySound
	ldr	r1, =gScript_913__0200b2e4
	mov	r0, r5
	bl	__Actor_SetScript
	ldr	r2, =.Lm913_3390
	mov	r3, #1
	str	r3, [r2]
.Lm913_2926:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_913_200a88c

.thumb_func_start OvlFunc_913_200a974
	push	{r5, r6, r7, lr}
	ldr	r2, =.Lm913_338c
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #2
	beq	.Lm913_29a8
	cmp	r3, #2
	bhi	.Lm913_298a
	cmp	r3, #1
	beq	.Lm913_2990
	b	.Lm913_29e6
.Lm913_298a:
	cmp	r3, #3
	beq	.Lm913_29ca
	b	.Lm913_29e6
.Lm913_2990:
	ldr	r2, =.Lm913_3388
	ldr	r1, =0x3a97
	ldr	r3, [r2]
	cmp	r3, r1
	bgt	.Lm913_299e
	add	r3, #0x32
	str	r3, [r2]
.Lm913_299e:
	ldr	r2, =.Lm913_3384
	mov	r1, #0xf0
	ldr	r3, [r2]
	lsl	r1, #14
	b	.Lm913_29be
.Lm913_29a8:
	ldr	r2, =.Lm913_3388
	ldr	r1, =0x752f
	ldr	r3, [r2]
	cmp	r3, r1
	bgt	.Lm913_29b6
	add	r3, #0x32
	str	r3, [r2]
.Lm913_29b6:
	ldr	r2, =.Lm913_3384
	mov	r1, #0xc0
	ldr	r3, [r2]
	lsl	r1, #13
.Lm913_29be:
	cmp	r3, r1
	ble	.Lm913_29e6
	ldr	r1, =0xffffc000
	add	r3, r1
	str	r3, [r2]
	b	.Lm913_29e6
.Lm913_29ca:
	ldr	r0, =.Lm913_3384
	ldr	r3, =0xff800000
	ldr	r1, [r0]
	cmp	r1, r3
	bge	.Lm913_29d8
	str	r5, [r2]
	b	.Lm913_29e6
.Lm913_29d8:
	ldr	r3, =.Lm913_3388
	ldr	r2, [r3]
	add	r2, #0x32
	str	r2, [r3]
	ldr	r2, =0xffffc000
	add	r3, r1, r2
	str	r3, [r0]
.Lm913_29e6:
	ldr	r7, =iwram_3001e40
	ldr	r3, [r7]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.Lm913_2aa2
	ldr	r0, =0x11d
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm913_2aa2
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	ldr	r6, [r3]
	ldr	r3, [r7]
	mov	r2, #0x3f
	and	r3, r2
	cmp	r3, #0
	bne	.Lm913_2a1a
	mov	r0, #0xf6
	bl	__PlaySound
.Lm913_2a1a:
	ldr	r3, =.Lm913_338c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm913_2a3c
	bl	__Random
	ldr	r3, =.Lm913_3388
	ldr	r3, [r3]
	mul	r3, r0
	ldr	r2, [r6]
	lsr	r3, #16
	lsl	r3, #8
	add	r2, r3
	ldr	r3, =.Lm913_3384
	ldr	r3, [r3]
	add	r7, r2, r3
	b	.Lm913_2a4a
.Lm913_2a3c:
	bl	__Random
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r1, =0xff800000
	add	r3, r0
	add	r7, r3, r1
.Lm913_2a4a:
	bl	__Random
	ldr	r2, [r6, #8]
	lsl	r0, #8
	ldr	r3, =0xff800000
	add	r2, r0
	add	r2, r3
	mov	r3, r5
	mov	r0, #0
	add	r3, #0x55
	strb	r0, [r3]
	mov	r3, #0xa0
	lsl	r3, #16
	str	r3, [r5, #0xc]
	ldr	r1, [r5, #0x50]
	ldr	r3, =0xe666
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, r1
	add	r3, #0x26
	str	r7, [r5, #8]
	str	r2, [r5, #0x10]
	strb	r0, [r3]
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r2, [r1, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	ldr	r1, =gScript_913__0200b308
	mov	r0, r5
	bl	__Actor_SetScript
.Lm913_2aa2:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_913_200a974

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

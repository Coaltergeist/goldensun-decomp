	.include "macros.inc"

.thumb_func_start OvlFunc_913_200a88c
	push	{r5, lr}
	ldr	r3, =.L3394
	ldr	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.L28c4
	ldr	r1, =0xff3fffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x51fffe
	cmp	r3, r1
	bhi	.L28b4
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2360000
	cmp	r3, r1
	ble	.L28b4
	mov	r1, #0x99
	lsl	r1, #18
	cmp	r3, r1
	blt	.L2912
.L28b4:
	ldr	r1, =0xff35ffff
	add	r3, r2, r1
	ldr	r2, =0x34fffe
	cmp	r3, r2
	bhi	.L2926
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2250000
	b	.L2906
.L28c4:
	ldr	r1, =0xff3fffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x33fffe
	cmp	r3, r1
	bhi	.L28de
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2250000
	cmp	r3, r1
	ble	.L28de
	ldr	r1, =0x248ffff
	cmp	r3, r1
	ble	.L2912
.L28de:
	ldr	r1, =0xff0bffff
	add	r3, r2, r1
	ldr	r1, =0x1dfffe
	cmp	r3, r1
	bhi	.L28f6
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x23b0000
	cmp	r3, r1
	ble	.L28f6
	ldr	r1, =0x25cffff
	cmp	r3, r1
	ble	.L2912
.L28f6:
	ldr	r1, =0xff2cffff
	add	r3, r2, r1
	ldr	r2, =0x2bfffe
	cmp	r3, r2
	bhi	.L2926
	mov	r1, #0x95
	ldr	r3, [r5, #0x10]
	lsl	r1, #18
.L2906:
	cmp	r3, r1
	ble	.L2926
	mov	r2, #0x9e
	lsl	r2, #18
	cmp	r3, r2
	bge	.L2926
.L2912:
	mov	r0, #0x6a
	bl	__PlaySound
	ldr	r1, =gScript_913__0200b2e4
	mov	r0, r5
	bl	__Actor_SetScript
	ldr	r2, =.L3390
	mov	r3, #1
	str	r3, [r2]
.L2926:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_913_200a88c
	.section .text.after_a974, "ax", %progbits

.thumb_func_start OvlFunc_913_200aad8
	push	{lr}
	mov	r0, #0xd
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2b02
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L2afc
	str	r2, [r0, #0xc]
	b	.L2b02
.L2afc:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L2b02:
	mov	r0, #0xe
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2b2a
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L2b24
	str	r1, [r0, #0xc]
	b	.L2b2a
.L2b24:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L2b2a:
	mov	r0, #0xf
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2b52
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L2b4c
	str	r2, [r0, #0xc]
	b	.L2b52
.L2b4c:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L2b52:
	mov	r0, #0x10
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2b7a
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L2b74
	str	r1, [r0, #0xc]
	b	.L2b7a
.L2b74:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L2b7a:
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
	.global .L2d68
	.global .L2da8
	.global .L2dc0
	.global gOvl_0200b06c

.L2d68:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2d68, (0x2da8-0x2d68)
.L2da8:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2da8, (0x2dc0-0x2da8)
.L2dc0:
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
	.global .L3384
	.global .L3388
	.global .L338c
	.global .L3390
	.global .L3394
	.global .L3398
	.global .L3390

	.lcomm	.L3384, 4
	.lcomm	.L3388, 4
	.lcomm	.L338c, 4
	.lcomm	.L3390, 4
	.lcomm	.L3394, 4
	.lcomm	.L3398, 4

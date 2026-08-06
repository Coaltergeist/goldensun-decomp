	.include "macros.inc"

.thumb_func_start OvlFunc_946_200aed8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r6, [r7, #0x50]
	mov	r2, #0xd
	ldrb	r3, [r6, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	ldrb	r1, [r6, #5]
	orr	r2, r3
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r1
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r2, r3
	strb	r2, [r6, #9]
	mov	r2, #0
	mov	r8, r2
	mov	r3, r6
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #0x5c
	add	r3, r7
	mov	r2, r8
	strb	r2, [r3]
	mov	r10, r3
	mov	r3, r7
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm946_2f3c
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.Lm946_2f3c:
	mov	r1, r7
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #1
	strb	r3, [r1]
	mov	r9, r2
	mov	r3, r7
	mov	r2, r9
	add	r3, #0x61
	mov	r1, #0xc1
	strb	r2, [r3]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r5, r0
	mov	r0, #0xb5
	bl	__LoadItemIcon
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	ldr	r3, [r7, #8]
	str	r3, [r7, #0x38]
	ldr	r3, [r7, #0xc]
	mov	r2, r8
	str	r2, [r7, #0x30]
	str	r3, [r7, #0x3c]
	mov	r2, r10
	mov	r3, r9
	strb	r3, [r2]
	ldr	r3, =OvlFunc_946_200ae70
	str	r3, [r7, #0x6c]
	mov	r3, r7
	add	r3, #0x56
	mov	r2, r8
	strb	r2, [r3]
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_200aed8

	.section .data
	.global gOvl_0200b2bc
	.global gOvl_0200b5f8
	.global gScript_911__0200b610
	.global .Lm946_3718
	.global .Lm946_3850
	.global .Lm946_3880
	.global .Lm946_38e0
	.global .Lm946_3904
	.global .Lm946_39f4
	.global gScript_932__0200bd48
	.global .Lm946_3d6c
	.global .Lm946_315c
	.global .Lm946_319c
	.global .Lm946_31b4
	.global .Lm946_32d4
	.global .Lm946_3310
	.global .Lm946_3358
	.global .Lm946_33a0
	.global .Lm946_3400
	.global .Lm946_3448
	.global .Lm946_3478

.Lm946_315c:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x315c, (0x319c-0x315c)
.Lm946_319c:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x319c, (0x31b4-0x319c)
.Lm946_31b4:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x31b4, (0x32bc-0x31b4)
gOvl_0200b2bc:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x32bc, (0x32d4-0x32bc)
.Lm946_32d4:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x32d4, (0x3310-0x32d4)
.Lm946_3310:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3310, (0x3358-0x3310)
.Lm946_3358:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3358, (0x33a0-0x3358)
.Lm946_33a0:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x33a0, (0x3400-0x33a0)
.Lm946_3400:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3400, (0x3448-0x3400)
.Lm946_3448:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3448, (0x3478-0x3448)
.Lm946_3478:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3478, (0x3508-0x3478)
	.global gOvl_0200b508
gOvl_0200b508:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3508, (0x35f8-0x3508)
gOvl_0200b5f8:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x35f8, (0x3610-0x35f8)
gScript_911__0200b610:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3610, (0x3718-0x3610)
.Lm946_3718:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3718, (0x3850-0x3718)
.Lm946_3850:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3850, (0x3880-0x3850)
.Lm946_3880:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3880, (0x38e0-0x3880)
.Lm946_38e0:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x38e0, (0x3904-0x38e0)
.Lm946_3904:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3904, (0x39f4-0x3904)
.Lm946_39f4:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x39f4, (0x3d48-0x39f4)
gScript_932__0200bd48:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3d48, (0x3d6c-0x3d48)
.Lm946_3d6c:
	.incbin "overlays/rom_7ced6c/orig.bin", 0x3d6c

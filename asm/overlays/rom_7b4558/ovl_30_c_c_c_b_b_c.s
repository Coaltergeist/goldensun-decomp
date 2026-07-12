	.include "macros.inc"

.thumb_func_start OvlFunc_927_200ac0c
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
	bne	.L2c70
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.L2c70:
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
	ldr	r3, =OvlFunc_927_200aba4
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
.func_end OvlFunc_927_200ac0c

	.section .data
	.global .L36a0
	.global .L3790
	.global .L38b0
	.global .L3a30
	.global .L2ef8
	.global .L2f38
	.global gScript_884__0200af50
	.global .L3058
	.global .L30f4
	.global .L31e4
	.global .L3334
	.global .L34b4

.L2ef8:
	.incbin "overlays/rom_7b4558/orig.bin", 0x2ef8, (0x2f38-0x2ef8)
.L2f38:
	.incbin "overlays/rom_7b4558/orig.bin", 0x2f38, (0x2f50-0x2f38)
gScript_884__0200af50:
	.incbin "overlays/rom_7b4558/orig.bin", 0x2f50, (0x3058-0x2f50)
.L3058:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3058, (0x3084-0x3058)
	.global gScript_927__0200b084
gScript_927__0200b084:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3084, (0x30f4-0x3084)
.L30f4:
	.incbin "overlays/rom_7b4558/orig.bin", 0x30f4, (0x31e4-0x30f4)
.L31e4:
	.incbin "overlays/rom_7b4558/orig.bin", 0x31e4, (0x3334-0x31e4)
.L3334:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3334, (0x34b4-0x3334)
.L34b4:
	.incbin "overlays/rom_7b4558/orig.bin", 0x34b4, (0x35bc-0x34b4)
	.global gOvl_0200b5bc
gOvl_0200b5bc:
	.incbin "overlays/rom_7b4558/orig.bin", 0x35bc, (0x36a0-0x35bc)
.L36a0:
	.incbin "overlays/rom_7b4558/orig.bin", 0x36a0, (0x3790-0x36a0)
.L3790:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3790, (0x38b0-0x3790)
.L38b0:
	.incbin "overlays/rom_7b4558/orig.bin", 0x38b0, (0x3a30-0x38b0)
.L3a30:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3a30, (0x3a48-0x3a30)
.L3a48:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3a48, (0x3b20-0x3a48)
.L3b20:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3b20, (0x3c1c-0x3b20)
.L3c1c:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3c1c, (0x3d54-0x3c1c)
.L3d54:
	.incbin "overlays/rom_7b4558/orig.bin", 0x3d54

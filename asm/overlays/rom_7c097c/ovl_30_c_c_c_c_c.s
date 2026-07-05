	.include "macros.inc"

.thumb_func_start OvlFunc_936_200b970
	push	{r5, r6, lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0xe
	mov	r6, r0
	mov	r5, #9
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	cmp	r6, #0
	beq	.L39be
	mov	r0, r6
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffe00000
	add	r3, r2
	mov	r2, r6
	str	r3, [r6, #0xc]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L39be:
	ldr	r0, =0x201
	bl	__SetFlag
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b970

.thumb_func_start OvlFunc_936_200b9d4
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r0, [r6, #0x30]
	ldr	r7, [r6, #0x50]
	bl	__sin
	lsl	r5, r0, #1
	cmp	r5, #0
	ble	.L39e8
	neg	r5, r5
.L39e8:
	ldr	r0, [r6, #0x30]
	bl	__cos
	ldr	r3, [r6, #0x38]
	lsl	r0, #1
	add	r3, r0
	str	r3, [r6, #8]
	ldr	r0, [r6, #0x30]
	ldr	r3, [r6, #0x3c]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r5
	add	r0, r2
	str	r3, [r6, #0xc]
	bl	__cos
	cmp	r0, #0
	bge	.L3a0e
	add	r0, #7
.L3a0e:
	asr	r3, r0, #3
	strh	r3, [r7, #0x1e]
	bl	__Random
	mov	r5, r0
	bl	__Random
	lsl	r5, #9
	lsl	r0, #9
	ldr	r3, [r6, #0x30]
	lsr	r0, #16
	lsr	r5, #16
	add	r5, r0
	mov	r2, #0x80
	add	r3, r5
	lsl	r2, #3
	add	r3, r2
	str	r3, [r6, #0x30]
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_936_200b9d4

.thumb_func_start OvlFunc_936_200ba3c
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
	bne	.L3aa0
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r2
	str	r3, [r7, #0xc]
.L3aa0:
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
	ldr	r3, =OvlFunc_936_200b9d4
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
.func_end OvlFunc_936_200ba3c

	.section .data
	.global .L3d84
	.global gScript_936__0200bdc4
	.global gScript_936__0200be00
	.global gScript_936__0200beac
	.global gScript_936__0200bec0
	.global gScript_936__0200bfb0
	.global gScript_936__0200c034
	.global gScript_936__0200c0cc
	.global gScript_936__0200c164
	.global gScript_936__0200c1ac
	.global gScript_936__0200c21c
	.global gScript_936__0200c230
	.global .L4948
	.global .L50e0
	.global gScript_926__0200c750
	.global .L4768
	.global .L4a20
	.global .L4a80
	.global .L4b58
	.global .L4be8
	.global .L4bf4
	.global gScript_882__0200ce88
	.global gScript_882__0200cedc
	.global .L4f24
	.global .L4f54
	.global .L4f9c
	.global .L4298
	.global .L42c8
	.global .L4448
	.global .L44a8
	.global .L4520
	.global .L4580
	.global gScript_943__0200c628

.L3d84:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3d84, (0x3dc4-0x3d84)
gScript_936__0200bdc4:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3dc4, (0x3e00-0x3dc4)
gScript_936__0200be00:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3e00, (0x3eac-0x3e00)
gScript_936__0200beac:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3eac, (0x3ec0-0x3eac)
gScript_936__0200bec0:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3ec0, (0x3fb0-0x3ec0)
gScript_936__0200bfb0:
	.incbin "overlays/rom_7c097c/orig.bin", 0x3fb0, (0x4034-0x3fb0)
gScript_936__0200c034:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4034, (0x40cc-0x4034)
gScript_936__0200c0cc:
	.incbin "overlays/rom_7c097c/orig.bin", 0x40cc, (0x4164-0x40cc)
gScript_936__0200c164:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4164, (0x41ac-0x4164)
gScript_936__0200c1ac:
	.incbin "overlays/rom_7c097c/orig.bin", 0x41ac, (0x421c-0x41ac)
gScript_936__0200c21c:
	.incbin "overlays/rom_7c097c/orig.bin", 0x421c, (0x4230-0x421c)
gScript_936__0200c230:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4230, (0x4268-0x4230)
	.global gScript_936__0200c268
gScript_936__0200c268:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4268, (0x4298-0x4268)
.L4298:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4298, (0x42c8-0x4298)
.L42c8:
	.incbin "overlays/rom_7c097c/orig.bin", 0x42c8, (0x4448-0x42c8)
.L4448:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4448, (0x44a8-0x4448)
.L44a8:
	.incbin "overlays/rom_7c097c/orig.bin", 0x44a8, (0x4520-0x44a8)
.L4520:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4520, (0x4580-0x4520)
.L4580:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4580, (0x4628-0x4580)
gScript_943__0200c628:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4628, (0x46b8-0x4628)
	.global gOvl_0200c6b8
gOvl_0200c6b8:
	.incbin "overlays/rom_7c097c/orig.bin", 0x46b8, (0x4750-0x46b8)
gScript_926__0200c750:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4750, (0x4768-0x4750)
.L4768:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4768, (0x4948-0x4768)
.L4948:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4948, (0x4a20-0x4948)
.L4a20:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4a20, (0x4a80-0x4a20)
.L4a80:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4a80, (0x4b58-0x4a80)
.L4b58:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4b58, (0x4be8-0x4b58)
.L4be8:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4be8, (0x4bf4-0x4be8)
.L4bf4:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4bf4, (0x4e88-0x4bf4)
gScript_882__0200ce88:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4e88, (0x4edc-0x4e88)
gScript_882__0200cedc:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4edc, (0x4f24-0x4edc)
.L4f24:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4f24, (0x4f54-0x4f24)
.L4f54:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4f54, (0x4f9c-0x4f54)
.L4f9c:
	.incbin "overlays/rom_7c097c/orig.bin", 0x4f9c, (0x50e0-0x4f9c)
.L50e0:
	.incbin "overlays/rom_7c097c/orig.bin", 0x50e0, (0x5120-0x50e0)
	.global gScript_936__0200d120
gScript_936__0200d120:
	.incbin "overlays/rom_7c097c/orig.bin", 0x5120

	.section .bss
	.global .L5144

	.lcomm	.Lunused_5138, 0xc
	.lcomm	.L5144, 4

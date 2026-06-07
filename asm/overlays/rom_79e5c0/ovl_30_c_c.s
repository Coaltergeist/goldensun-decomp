	.include "macros.inc"

.thumb_func_start OvlFunc_911_200a6cc
	push	{r5, lr}
	ldr	r3, =.L369c
	ldr	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.L2702
	ldr	r1, =0xffc4ffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x51fffe
	cmp	r3, r1
	bhi	.L26f4
	mov	r1, #0xd3
	ldr	r3, [r5, #0x10]
	lsl	r1, #16
	cmp	r3, r1
	ble	.L26f4
	ldr	r1, =0x100ffff
	cmp	r3, r1
	ble	.L2756
.L26f4:
	ldr	r1, =0xffbaffff
	add	r3, r2, r1
	ldr	r2, =0x34fffe
	cmp	r3, r2
	bhi	.L276a
	mov	r1, #0xc2
	b	.L2748
.L2702:
	ldr	r1, =0xffc4ffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x33fffe
	cmp	r3, r1
	bhi	.L2720
	mov	r1, #0xc2
	ldr	r3, [r5, #0x10]
	lsl	r1, #16
	cmp	r3, r1
	ble	.L2720
	mov	r1, #0xe6
	lsl	r1, #16
	cmp	r3, r1
	blt	.L2756
.L2720:
	ldr	r1, =0xff90ffff
	add	r3, r2, r1
	ldr	r1, =0x1dfffe
	cmp	r3, r1
	bhi	.L273c
	mov	r1, #0xd8
	ldr	r3, [r5, #0x10]
	lsl	r1, #16
	cmp	r3, r1
	ble	.L273c
	mov	r1, #0xfa
	lsl	r1, #16
	cmp	r3, r1
	blt	.L2756
.L273c:
	ldr	r1, =0xffb1ffff
	add	r3, r2, r1
	ldr	r2, =0x2bfffe
	cmp	r3, r2
	bhi	.L276a
	mov	r1, #0xf1
.L2748:
	ldr	r3, [r5, #0x10]
	lsl	r1, #16
	cmp	r3, r1
	ble	.L276a
	ldr	r2, =0x114ffff
	cmp	r3, r2
	bgt	.L276a
.L2756:
	mov	r0, #0x6a
	bl	__Func_80f9080
	ldr	r1, =.L35ec
	mov	r0, r5
	bl	__Func_800c2d8
	ldr	r2, =.L3698
	mov	r3, #1
	str	r3, [r2]
.L276a:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_200a6cc

.thumb_func_start OvlFunc_911_200a7ac
	push	{r5, r6, r7, lr}
	ldr	r2, =.L3694
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #2
	beq	.L27e0
	cmp	r3, #2
	bhi	.L27c2
	cmp	r3, #1
	beq	.L27c8
	b	.L281e
.L27c2:
	cmp	r3, #3
	beq	.L2802
	b	.L281e
.L27c8:
	ldr	r2, =.L3690
	ldr	r1, =0x3a97
	ldr	r3, [r2]
	cmp	r3, r1
	bgt	.L27d6
	add	r3, #0x32
	str	r3, [r2]
.L27d6:
	ldr	r2, =.L368c
	mov	r1, #0xf0
	ldr	r3, [r2]
	lsl	r1, #14
	b	.L27f6
.L27e0:
	ldr	r2, =.L3690
	ldr	r1, =0x752f
	ldr	r3, [r2]
	cmp	r3, r1
	bgt	.L27ee
	add	r3, #0x32
	str	r3, [r2]
.L27ee:
	ldr	r2, =.L368c
	mov	r1, #0xc0
	ldr	r3, [r2]
	lsl	r1, #13
.L27f6:
	cmp	r3, r1
	ble	.L281e
	ldr	r1, =0xffffc000
	add	r3, r1
	str	r3, [r2]
	b	.L281e
.L2802:
	ldr	r0, =.L368c
	ldr	r3, =0xff800000
	ldr	r1, [r0]
	cmp	r1, r3
	bge	.L2810
	str	r5, [r2]
	b	.L281e
.L2810:
	ldr	r3, =.L3690
	ldr	r2, [r3]
	add	r2, #0x32
	str	r2, [r3]
	ldr	r2, =0xffffc000
	add	r3, r1, r2
	str	r3, [r0]
.L281e:
	ldr	r7, =iwram_3001e40
	ldr	r3, [r7]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L28da
	ldr	r0, =0x11d
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	__Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L28da
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	ldr	r6, [r3]
	ldr	r3, [r7]
	mov	r2, #0x3f
	and	r3, r2
	cmp	r3, #0
	bne	.L2852
	mov	r0, #0xf6
	bl	__Func_80f9080
.L2852:
	ldr	r3, =.L3694
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2874
	bl	__Random
	ldr	r3, =.L3690
	ldr	r3, [r3]
	mul	r3, r0
	ldr	r2, [r6]
	lsr	r3, #16
	lsl	r3, #8
	add	r2, r3
	ldr	r3, =.L368c
	ldr	r3, [r3]
	add	r7, r2, r3
	b	.L2882
.L2874:
	bl	__Random
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r1, =0xff800000
	add	r3, r0
	add	r7, r3, r1
.L2882:
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
	bl	__Func_800c300
	ldr	r1, =.L3610
	mov	r0, r5
	bl	__Func_800c2d8
.L28da:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_200a7ac

.thumb_func_start OvlFunc_911_200a910
	push	{lr}
	ldr	r0, =0x845
	sub	sp, #8
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2948
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
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
	bl	__Func_80030f8
	b	.L2952
.L2948:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L2952:
	ldr	r0, =0x847
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L298e
	mov	r3, #5
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5b
	mov	r1, #0x13
	mov	r2, #0x48
	mov	r3, #9
	bl	__Func_8010424
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
	bl	__Func_80030f8
.L298e:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_200a910

	.section .data
	.global .L2bd4
	.global .L2c08
	.global .L2c3c
	.global .L2c70
	.global .L2cfc
	.global .L2d20
	.global .L2d7c
	.global .L2dd8
	.global .L2e20
	.global .L2e34
	.global .L2e48
	.global .L3080
	.global .L3098
	.global .L32d8
	.global .L3368
	.global .L33b0
	.global .L3590
	.global .L35d8
	.global .L2e60
	.global .L2f80
	.global .L2fc8
	.global .L3010

.L2bd4:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2bd4, (0x2c08-0x2bd4)
.L2c08:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2c08, (0x2c3c-0x2c08)
.L2c3c:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2c3c, (0x2c70-0x2c3c)
.L2c70:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2c70, (0x2cfc-0x2c70)
.L2cfc:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2cfc, (0x2d20-0x2cfc)
.L2d20:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2d20, (0x2d7c-0x2d20)
.L2d7c:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2d7c, (0x2dd8-0x2d7c)
.L2dd8:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2dd8, (0x2e20-0x2dd8)
.L2e20:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2e20, (0x2e34-0x2e20)
.L2e34:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2e34, (0x2e48-0x2e34)
.L2e48:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2e48, (0x2e60-0x2e48)
.L2e60:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2e60, (0x2f80-0x2e60)
.L2f80:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2f80, (0x2fc8-0x2f80)
.L2fc8:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x2fc8, (0x3010-0x2fc8)
.L3010:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3010, (0x3040-0x3010)
.L3040:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3040, (0x3080-0x3040)
.L3080:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3080, (0x3098-0x3080)
.L3098:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3098, (0x32d8-0x3098)
.L32d8:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x32d8, (0x3368-0x32d8)
.L3368:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3368, (0x33b0-0x3368)
.L33b0:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x33b0, (0x3590-0x33b0)
.L3590:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3590, (0x35d8-0x3590)
.L35d8:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x35d8, (0x35ec-0x35d8)
.L35ec:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x35ec, (0x3610-0x35ec)
.L3610:
	.incbin "overlays/rom_79e5c0/orig.bin", 0x3610

	.section .bss
	.global .L368c
	.global .L3690
	.global .L3694
	.global .L3698
	.global .L369c
	.global .L36a0
	.global .L3698

	.lcomm	.L368c, 4
	.lcomm	.L3690, 4
	.lcomm	.L3694, 4
	.lcomm	.L3698, 4
	.lcomm	.L369c, 4
	.lcomm	.L36a0, 4

	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_200a330
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r7, r0
	cmp	r3, #2
	bne	.L234e
	bl	OvlFunc_common1_2c4
	b	.L24a2
.L234e:
	bl	__Func_80916b0
	mov	r0, r7
	mov	r1, #5
	bl	OvlFunc_common1_4cc
	mov	r8, r0
	cmp	r0, #0
	beq	.L2362
	b	.L2480
.L2362:
	ldr	r0, =0x20c3
	bl	__Func_8092b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x87
	mov	r1, #1
	mov	r2, #0xa8
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #19
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xf6
	lsl	r1, #2
	mov	r2, #0xb8
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xf8
	lsl	r1, #2
	mov	r0, #0
	mov	r2, #0xb8
	bl	OvlFunc_956_200a2f4
	mov	r0, #0
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r1, #0x8c
	mov	r2, #0xb8
	lsl	r1, #3
	mov	r0, #0
	bl	OvlFunc_956_200a2c4
	mov	r0, #0x78
	bl	__Func_809163c
	ldr	r1, =0x101
	mov	r0, #0
	bl	__Func_8093874
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r0, #0
	bl	OvlFunc_common1_1314
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8093874
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, #0x77
	mov	r5, r0
.L241c:
	mov	r1, #0xf8
	ldr	r3, [r5, #8]
	lsl	r1, #18
	cmp	r3, r1
	ble	.L242c
	ldr	r2, =0xfffecccd
	add	r3, r2
	str	r3, [r5, #8]
.L242c:
	mov	r0, #1
	sub	r6, #1
	bl	__Func_80030f8
	cmp	r6, #0
	bge	.L241c
	mov	r0, #0
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0x8c
	mov	r2, #0xb8
	lsl	r1, #3
	mov	r0, #0
	bl	OvlFunc_956_200a2c4
	mov	r1, #0
	mov	r0, r7
	bl	__Func_8092f84
	mov	r0, #0
	bl	OvlFunc_common1_1314
	ldr	r3, =gState
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r0, r7
	mov	r1, #5
	bl	OvlFunc_common1_588
	b	.L2494
.L2480:
	mov	r2, r8
	cmp	r2, #1
	bne	.L2494
	ldr	r0, =0x20c2
	bl	__Func_8092b94
	mov	r0, r7
	mov	r1, #0
	bl	__Func_8092f84
.L2494:
	mov	r1, r7
	mov	r2, #5
	mov	r0, r8
	bl	OvlFunc_common1_5e4
	bl	__Func_8091750
.L24a2:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_200a330

.thumb_func_start OvlFunc_956_200a4d0
	push	{r5, r6, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r5, r0
	cmp	r3, #2
	bne	.L24ea
	bl	OvlFunc_common1_2c4
	b	.L25b6
.L24ea:
	bl	__Func_80916b0
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_common1_4cc
	mov	r6, r0
	cmp	r6, #0
	bne	.L2596
	ldr	r0, =0x20c7
	bl	__Func_8092b94
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xa1
	mov	r1, #1
	mov	r2, #0x98
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #19
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0x58
	mov	r0, #0xb4
	bl	OvlFunc_common1_1490
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0xa
	mov	r1, #0x54
	mov	r0, #0x20
	bl	OvlFunc_common1_14f4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x1e
	mov	r1, #0x54
	mov	r0, #0x60
	bl	OvlFunc_common1_14f4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, r5
	bl	__Func_8092f84
	bl	OvlFunc_common1_1550
	mov	r0, #2
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_809335c
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_common1_588
	b	.L25a8
.L2596:
	cmp	r6, #1
	bne	.L25a8
	ldr	r0, =0x20c6
	bl	__Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
.L25a8:
	mov	r1, r5
	mov	r2, #6
	mov	r0, r6
	bl	OvlFunc_common1_5e4
	bl	__Func_8091750
.L25b6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_200a4d0

	.section .data
	.global ActorCmd_ARRAY_956__0200cbec
	.global gScript_956__0200cc48
	.global .L4c38
	.global .L4c20

ActorCmd_ARRAY_956__0200cbec:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4bec, (0x4c20-0x4bec)
.L4c20:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4c20, (0x4c38-0x4c20)
.L4c38:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4c38, (0x4c48-0x4c38)
gScript_956__0200cc48:
	.incbin "overlays/rom_7e0928/orig.bin", 0x4c48, (0x4cb0-0x4c48)

	.section .data1
	.global gScript_956__0200d668
	.global gScript_956__0200d738
	.global gScript_956__0200d808
	.global gScript_956__0200d8ac
	.global gScript_956__0200d950
	.global gScript_956__0200d96c
	.global .L5480
	.global gOvl_0200d000
	.global gOvl_0200d090
	.global gScript_881__0200d0a8
	.global .L5480
	.global .L5484

gOvl_0200d000:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5000, (0x5090-0x5000)
gOvl_0200d090:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5090, (0x50a8-0x5090)
gScript_881__0200d0a8:
	.incbin "overlays/rom_7e0928/orig.bin", 0x50a8, (0x5480-0x50a8)
.L5480:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5480, (0x5484-0x5480)
.L5484:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5484, (0x5488-0x5484)
	.global gScript_968__0200d488
gScript_968__0200d488:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5488, (0x5668-0x5488)
gScript_956__0200d668:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5668, (0x5738-0x5668)
gScript_956__0200d738:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5738, (0x5808-0x5738)
gScript_956__0200d808:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5808, (0x58ac-0x5808)
gScript_956__0200d8ac:
	.incbin "overlays/rom_7e0928/orig.bin", 0x58ac, (0x5950-0x58ac)
gScript_956__0200d950:
	.incbin "overlays/rom_7e0928/orig.bin", 0x5950, (0x596c-0x5950)
gScript_956__0200d96c:
	.incbin "overlays/rom_7e0928/orig.bin", 0x596c, (0x59a4-0x596c)

	.section .bss
	.global .L5b80

	.lcomm	.Lunused_5b78, 8
	.lcomm	.L5b80, 16

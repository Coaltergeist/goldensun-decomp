	.include "macros.inc"

.thumb_func_start OvlFunc_901_2008f30
	push	{r5, r6, lr}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #8
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lf54
	mov	r3, #0x17
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x37
	mov	r1, #0x1a
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
.Lf54:
	mov	r0, #0x80
	mov	r2, #0xd2
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_common0_70
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x29
	mov	r2, #8
	mov	r3, #0x2d
	mov	r0, #0x2d
	bl	__Func_8010424
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_901_2008400
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r6, #0
	add	r0, #0x64
	strh	r6, [r0]
	ldr	r0, =0x858
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lfbe
	mov	r1, #0xd8
	mov	r2, #0xc4
	mov	r0, #0x12
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_80923e4
.Lfbe:
	ldr	r3, =ewram_2000240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bgt	.Lfe8
	mov	r0, #0x34
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lfe8
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lfe8
	ldr	r0, =0x867
	bl	__Func_8079374
.Lfe8:
	ldr	r0, =0x867
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L100a
	mov	r0, #0x34
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L100a
	mov	r1, #0xcc
	mov	r2, #0xf0
	mov	r0, #0x15
	lsl	r1, #17
	lsl	r2, #15
	bl	__Func_80923e4
.L100a:
	ldr	r3, =ewram_2000240
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r3, r1
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0xb
	bne	.L1024
	ldr	r0, =0x12f
	bl	__Func_8079374
	ldrh	r2, [r5]
.L1024:
	lsl	r3, r2, #16
	mov	r2, #0xd0
	lsl	r2, #12
	cmp	r3, r2
	bne	.L1036
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_8079374
.L1036:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_901_2008f30

	.section .data
	.global .L1740
	.global .L1756
	.global .L176c
	.global .L1782
	.global .L1798
	.global .L17ae
	.global .L17c4
	.global .L1450

	.incbin "overlays/rom_797990/orig.bin", 0x12a8, (0x1450-0x12a8)
.L1450:
	.incbin "overlays/rom_797990/orig.bin", 0x1450, (0x15a0-0x1450)
.L15a0:
	.incbin "overlays/rom_797990/orig.bin", 0x15a0, (0x15d8-0x15a0)
.L15d8:
	.incbin "overlays/rom_797990/orig.bin", 0x15d8, (0x1740-0x15d8)
.L1740:
	.incbin "overlays/rom_797990/orig.bin", 0x1740, (0x1756-0x1740)
.L1756:
	.incbin "overlays/rom_797990/orig.bin", 0x1756, (0x176c-0x1756)
.L176c:
	.incbin "overlays/rom_797990/orig.bin", 0x176c, (0x1782-0x176c)
.L1782:
	.incbin "overlays/rom_797990/orig.bin", 0x1782, (0x1798-0x1782)
.L1798:
	.incbin "overlays/rom_797990/orig.bin", 0x1798, (0x17ae-0x1798)
.L17ae:
	.incbin "overlays/rom_797990/orig.bin", 0x17ae, (0x17c4-0x17ae)
.L17c4:
	.incbin "overlays/rom_797990/orig.bin", 0x17c4, (0x17dc-0x17c4)
.L17dc:
	.incbin "overlays/rom_797990/orig.bin", 0x17dc

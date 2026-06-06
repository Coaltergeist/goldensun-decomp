	.include "macros.inc"

.thumb_func_start OvlFunc_882_200c560
	push	{lr}
	bl	__Func_8097194
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200c56c

.thumb_func_start OvlFunc_882_200c56c
	push	{lr}
	mov	r0, #0x20
	bl	__Func_8092054
	bl	OvlFunc_882_200c304
	mov	r0, #0x21
	bl	__Func_8092054
	bl	OvlFunc_882_200c304
	mov	r0, #0x1e
	bl	__Func_8092054
	bl	OvlFunc_882_200c304
	ldr	r3, =.L57f8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L459e
	mov	r0, #0x1d
	bl	__Func_8092054
	bl	OvlFunc_882_200c304
.L459e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200c56c

.thumb_func_start OvlFunc_882_200c5a8
	push	{lr}
	mov	r0, #0x13
	bl	__Func_8092054
	bl	OvlFunc_882_200c34c
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200c5a8

.thumb_func_start OvlFunc_882_200c5b8
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r6, [r0, #0x50]
	mov	r0, #0x16
	bl	__Func_8092054
	ldr	r0, [r0, #0x50]
	ldrb	r3, [r6, #9]
	mov	r5, #0xd
	ldrb	r1, [r0, #9]
	neg	r5, r5
	mov	r2, #0xc
	and	r2, r3
	mov	r3, r5
	and	r3, r1
	orr	r3, r2
	strb	r3, [r0, #9]
	mov	r0, #8
	bl	__Func_8092054
	ldrb	r2, [r6, #9]
	ldr	r1, [r0, #0x50]
	mov	r3, #0xc
	and	r3, r2
	ldrb	r2, [r1, #9]
	and	r5, r2
	orr	r5, r3
	strb	r5, [r1, #9]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200c5b8

.thumb_func_start OvlFunc_882_200c5fc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0xee4
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200c5fc

.thumb_func_start OvlFunc_882_200c618
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1120
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200c618

	.section .data
	.global .L48bc
	.global .L4934
	.global .L4984
	.global .L4a00
	.global .L4a3c
	.global .L4a78
	.global .L4ab4
	.global .L4b28
	.global .L4b9c
	.global .L4c0c
	.global .L4c5c
	.global .L4ca8
	.global .L4d1c
	.global .L4d6c
	.global .L4e04
	.global .L4e30
	.global .L4e5c
	.global .L4e88
	.global .L4eb4
	.global .L4ec8
	.global .L4edc
	.global .L54b0
	.global .L578a
	.global .L57a0
	.global .L57cc
	.global .L57e2
	.global .L48c0
	.global .L49f4
	.global .L4ec8
	.global .L578a
	.global .L57a0
	.global .L57b6
	.global .L5774
	.global .L50e4

.L48bc:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x48bc, (0x48c0-0x48bc)
.L48c0:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x48c0, (0x4934-0x48c0)
.L4934:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4934, (0x4984-0x4934)
.L4984:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4984, (0x49f4-0x4984)
.L49f4:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x49f4, (0x4a00-0x49f4)
.L4a00:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4a00, (0x4a3c-0x4a00)
.L4a3c:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4a3c, (0x4a78-0x4a3c)
.L4a78:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4a78, (0x4ab4-0x4a78)
.L4ab4:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4ab4, (0x4b28-0x4ab4)
.L4b28:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4b28, (0x4b9c-0x4b28)
.L4b9c:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4b9c, (0x4c0c-0x4b9c)
.L4c0c:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4c0c, (0x4c5c-0x4c0c)
.L4c5c:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4c5c, (0x4ca8-0x4c5c)
.L4ca8:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4ca8, (0x4d1c-0x4ca8)
.L4d1c:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4d1c, (0x4d6c-0x4d1c)
.L4d6c:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4d6c, (0x4e04-0x4d6c)
.L4e04:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4e04, (0x4e30-0x4e04)
.L4e30:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4e30, (0x4e5c-0x4e30)
.L4e5c:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4e5c, (0x4e88-0x4e5c)
.L4e88:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4e88, (0x4eb4-0x4e88)
.L4eb4:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4eb4, (0x4ec8-0x4eb4)
.L4ec8:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4ec8, (0x4edc-0x4ec8)
.L4edc:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x4edc, (0x50e4-0x4edc)
.L50e4:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x50e4, (0x527c-0x50e4)
.L527c:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x527c, (0x52b8-0x527c)
.L52b8:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x52b8, (0x54b0-0x52b8)
.L54b0:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x54b0, (0x5558-0x54b0)
.L5558:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x5558, (0x5774-0x5558)
.L5774:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x5774, (0x578a-0x5774)
.L578a:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x578a, (0x57a0-0x578a)
.L57a0:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x57a0, (0x57b6-0x57a0)
.L57b6:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x57b6, (0x57cc-0x57b6)
.L57cc:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x57cc, (0x57e2-0x57cc)
.L57e2:
	.incbin "overlays/rom_77dd1c/orig.bin", 0x57e2

	.section .bss
	.global .L57f8
	.global .L57fc

	.lcomm	.L57f8, 4
	.lcomm	.L57fc, 4

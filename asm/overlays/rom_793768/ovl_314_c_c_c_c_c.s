	.include "macros.inc"

.thumb_func_start OvlFunc_898_2009754
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #0x30]
	add	r3, r2
	str	r3, [r6, #8]
	str	r3, [r6, #0x38]
	mov	r3, r6
	add	r3, #0x64
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L1774
	ldr	r3, [r6, #0xc]
	ldr	r2, [r6, #0x34]
	b	.L1784
.L1774:
	ldr	r3, [r6, #0x10]
	ldr	r2, [r6, #0x34]
	add	r3, r2
	str	r3, [r6, #0x10]
	str	r3, [r6, #0x40]
	mov	r2, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r2, #3
.L1784:
	add	r3, r2
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x3c]
	ldr	r5, [r6, #0x30]
	mov	r1, #0x1c
	mov	r0, r5
	bl	_Func_8000af0
	sub	r5, r0
	str	r5, [r6, #0x30]
	ldr	r5, [r6, #0x34]
	mov	r1, #0x1c
	mov	r0, r5
	bl	_Func_8000af0
	sub	r5, r0
	str	r5, [r6, #0x34]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2009754

.thumb_func_start OvlFunc_898_20097ac
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r0
	mov	r0, #0x13
	bl	__Func_8092054
	mov	r8, r0
	cmp	r0, #0
	bne	.L17c6
	b	.L18da
.L17c6:
	bl	__Func_8004458
	mov	r5, r0
	bl	__Func_8004458
	lsl	r5, #3
	mov	r3, r0
	lsr	r5, #16
	mov	r0, r8
	lsl	r3, #3
	ldr	r2, [r0, #8]
	sub	r5, #4
	lsr	r3, #16
	ldr	r1, [r0, #0x10]
	sub	r3, #4
	lsl	r5, #16
	add	r5, r2
	lsl	r3, #16
	ldr	r2, [r0, #0xc]
	add	r3, r1
	mov	r0, #0xac
	mov	r1, r5
	bl	__Func_800c150
	mov	r6, r0
	cmp	r6, #0
	beq	.L18da
	ldr	r1, [r6, #0x50]
	mov	r10, r1
	bl	__Func_8004458
	mov	r3, #1
	and	r0, r3
	cmp	r0, #1
	bne	.L181e
	mov	r0, r6
	mov	r1, #3
	bl	__Func_800c300
	ldr	r1, =.L28c4
	mov	r0, r6
	bl	__Func_800c2d8
	b	.L182e
.L181e:
	mov	r0, r6
	mov	r1, #2
	bl	__Func_800c300
	ldr	r1, =.L28dc
	mov	r0, r6
	bl	__Func_800c2d8
.L182e:
	mov	r2, #0
	mov	r3, r6
	mov	r9, r2
	add	r3, #0x55
	mov	r0, r9
	strb	r0, [r3]
	mov	r3, #2
	and	r3, r7
	cmp	r3, #0
	beq	.L1882
	bl	__Func_8004458
	mov	r1, #0xa
	bl	_Func_8000b50
	mov	r5, #1
	and	r7, r5
	mov	r3, r7
	eor	r3, r5
	lsl	r3, #2
	add	r0, #5
	add	r0, r3
	ldr	r3, =0x3332
	mul	r3, r7
	ldr	r1, =0xffffe667
	add	r3, r1
	mul	r3, r0
	str	r3, [r6, #0x34]
	bl	__Func_8004458
	mov	r1, #0xf
	bl	_Func_8000b50
	ldr	r3, =0x1999
	sub	r0, #7
	mul	r3, r0
	str	r3, [r6, #0x30]
	mov	r3, r6
	add	r3, #0x64
	mov	r2, r9
	strh	r2, [r3]
	b	.L18b4
.L1882:
	bl	__Func_8004458
	mov	r1, #0xa
	bl	_Func_8000b50
	ldr	r3, =0x3332
	mul	r3, r7
	ldr	r1, =0xffffe667
	add	r0, #8
	add	r3, r1
	mul	r3, r0
	str	r3, [r6, #0x30]
	bl	__Func_8004458
	mov	r1, #0xe
	bl	_Func_8000b50
	ldr	r3, =0x1999
	add	r0, #1
	mul	r3, r0
	mov	r2, r6
	str	r3, [r6, #0x34]
	add	r2, #0x64
	mov	r3, #1
	strh	r3, [r2]
.L18b4:
	ldr	r3, =OvlFunc_898_2009754
	mov	r2, r10
	add	r2, #0x26
	str	r3, [r6, #0x6c]
	mov	r3, #0
	strb	r3, [r2]
	mov	r2, r8
	ldr	r3, [r2, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	mov	r3, r10
	ldrb	r1, [r3, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	mov	r0, r10
	strb	r3, [r0, #9]
.L18da:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_20097ac

	.section .data
	.global .L2828
	.global .L283e
	.global .L2854
	.global .L286a
	.global .L2880
	.global .L2896
	.global .L28ac
	.global .L2414
	.global .L2630
	.global .L2094
	.global .L20cc
	.global .L227c
	.global .L1f5c

	.incbin "overlays/rom_793768/orig.bin", 0x1bc0, (0x1f5c-0x1bc0)
.L1f5c:
	.incbin "overlays/rom_793768/orig.bin", 0x1f5c, (0x2094-0x1f5c)
.L2094:
	.incbin "overlays/rom_793768/orig.bin", 0x2094, (0x20cc-0x2094)
.L20cc:
	.incbin "overlays/rom_793768/orig.bin", 0x20cc, (0x227c-0x20cc)
.L227c:
	.incbin "overlays/rom_793768/orig.bin", 0x227c, (0x2414-0x227c)
.L2414:
	.incbin "overlays/rom_793768/orig.bin", 0x2414, (0x2630-0x2414)
.L2630:
	.incbin "overlays/rom_793768/orig.bin", 0x2630, (0x2828-0x2630)
.L2828:
	.incbin "overlays/rom_793768/orig.bin", 0x2828, (0x283e-0x2828)
.L283e:
	.incbin "overlays/rom_793768/orig.bin", 0x283e, (0x2854-0x283e)
.L2854:
	.incbin "overlays/rom_793768/orig.bin", 0x2854, (0x286a-0x2854)
.L286a:
	.incbin "overlays/rom_793768/orig.bin", 0x286a, (0x2880-0x286a)
.L2880:
	.incbin "overlays/rom_793768/orig.bin", 0x2880, (0x2896-0x2880)
.L2896:
	.incbin "overlays/rom_793768/orig.bin", 0x2896, (0x28ac-0x2896)
.L28ac:
	.incbin "overlays/rom_793768/orig.bin", 0x28ac, (0x28c4-0x28ac)
.L28c4:
	.incbin "overlays/rom_793768/orig.bin", 0x28c4, (0x28dc-0x28c4)
.L28dc:
	.incbin "overlays/rom_793768/orig.bin", 0x28dc

	.include "macros.inc"

.thumb_func_start OvlFunc_928_2009148
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xe0
	ldr	r3, [r3]
	lsl	r0, #1
	mov	r2, #0x80
	add	r3, r0
	lsl	r2, #1
	str	r2, [r3]
	mov	r0, #0xa9
	sub	sp, #8
	bl	__Func_8091ff0
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #9
	ble	.L117c
	ldr	r0, =0x12f
	bl	__Func_8079374
.L117c:
	ldr	r0, =0x895
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L11be
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x92
	mov	r2, #0x9c
	mov	r0, #0xe
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r0, =0x89a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L11be
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L11be:
	mov	r0, #0x8b
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L11d4
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L11d4:
	mov	r2, #0
	mov	r6, #0
	mov	r8, r2
.L11da:
	mov	r0, r6
	add	r0, #0x17
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r1, [r5, #0x50]
	mov	r0, #0xd
	ldrb	r2, [r1, #9]
	neg	r0, r0
	mov	r3, r0
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	mov	r3, r5
	strb	r2, [r1, #9]
	add	r3, #0x55
	mov	r2, r5
	mov	r7, #0
	add	r2, #0x59
	strb	r7, [r3]
	mov	r3, #8
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, r5
	mov	r1, #0xf
	add	r5, #0x23
	bl	__Func_80929d8
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #2
	orr	r3, r2
	add	r6, #1
	strb	r3, [r5]
	cmp	r6, #2
	bls	.L11da
	ldr	r0, =0x202
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L124c
	mov	r1, #0x92
	mov	r2, #0x9c
	mov	r0, #0xe
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
.L124c:
	ldr	r0, =0x201
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L128c
	mov	r1, #5
	mov	r0, #0x14
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r0, #3
	mov	r1, #0x11
	asr	r5, #20
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_928_2008324
	lsl	r1, #4
	bl	__StartTask
.L128c:
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_8092950
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_928_2008500
	str	r3, [r0, #0x6c]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x55
	strb	r7, [r3]
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
	ldr	r3, =0x8ccc
	str	r3, [r0, #0x18]
	ldr	r3, =0x6666
	ldr	r2, [r0, #0x50]
	str	r3, [r0, #0x1c]
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r5, .L12f4	@ 0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	str	r7, [r0, #0xc]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	add	sp, #8
	mov	r0, #0
	b	.L1324

	.align	2, 0
.L12f4:
	.word	0
	.pool

.L1324:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_928_2009148

	.section .data
	.global .L15b0
	.global .L16a0
	.global .L1714
	.global .L1778
	.global .L178e
	.global .L17a4
	.global .L17ba
	.global .L17d0
	.global .L1900
	.global .L1740
	.global .L17e8

.L15b0:
	.incbin "overlays/rom_7b6668/orig.bin", 0x15b0, (0x16a0-0x15b0)
.L16a0:
	.incbin "overlays/rom_7b6668/orig.bin", 0x16a0, (0x1714-0x16a0)
.L1714:
	.incbin "overlays/rom_7b6668/orig.bin", 0x1714, (0x1740-0x1714)
.L1740:
	.incbin "overlays/rom_7b6668/orig.bin", 0x1740, (0x1778-0x1740)
.L1778:
	.incbin "overlays/rom_7b6668/orig.bin", 0x1778, (0x178e-0x1778)
.L178e:
	.incbin "overlays/rom_7b6668/orig.bin", 0x178e, (0x17a4-0x178e)
.L17a4:
	.incbin "overlays/rom_7b6668/orig.bin", 0x17a4, (0x17ba-0x17a4)
.L17ba:
	.incbin "overlays/rom_7b6668/orig.bin", 0x17ba, (0x17d0-0x17ba)
.L17d0:
	.incbin "overlays/rom_7b6668/orig.bin", 0x17d0, (0x17e8-0x17d0)
.L17e8:
	.incbin "overlays/rom_7b6668/orig.bin", 0x17e8, (0x18d8-0x17e8)
.L18d8:
	.incbin "overlays/rom_7b6668/orig.bin", 0x18d8, (0x1900-0x18d8)
.L1900:
	.incbin "overlays/rom_7b6668/orig.bin", 0x1900, (0x1ac8-0x1900)
.L1ac8:
	.incbin "overlays/rom_7b6668/orig.bin", 0x1ac8

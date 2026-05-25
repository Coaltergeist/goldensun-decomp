	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_b24
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	mov	r6, r1
	ldr	r3, [r3]
	mov	r1, #0xc1
	lsl	r1, #1
	add	r2, r3, r1
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0x63
	bne	.Lb3e
	mov	r3, #0
	strh	r3, [r2]
.Lb3e:
	ldr	r0, =0x20f
	bl	__Func_79374
	ldr	r3, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa4
	cmp	r2, r3
	bne	.Lb60
	ldr	r2, =0x2f9
	add	r0, r6, r2
	bl	__Func_79358
	b	.Lb6e
.Lb60:
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lb6e
	ldr	r3, =0x309
	add	r0, r6, r3
	bl	__Func_79358
.Lb6e:
	mov	r0, #0x84
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_793c8
	mov	r0, #0x62
	mov	r1, #5
	bl	__Func_91eb0
	ldr	r1, =ewram_240
	ldr	r3, =0x22b
	add	r2, r1, r3
	mov	r3, #3
	strb	r3, [r2]
	mov	r5, r1
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lbc6
	cmp	r6, #0xb
	bne	.Lbaa
	mov	r0, #0x62
	mov	r1, #7
	bl	__Func_91eb0
	b	.Lbc6
.Lbaa:
	cmp	r6, #0xc
	bne	.Lbc6
	mov	r1, #6
	mov	r0, #0x62
	bl	__Func_91eb0
	mov	r0, #0xc
	bl	__Func_920a0
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.Lbc6:
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r0, [r3]
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b24

.thumb_func_start OvlFunc_c00
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x86
	lsl	r0, #2
	bl	__Func_793b8
	ldr	r5, =ewram_240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r5, r1
	mov	r6, r0
	ldr	r0, [r5]
	bl	__Func_92054
	mov	r7, r0
	mov	r0, r6
	bl	__Func_92054
	mov	r8, r0
	bl	__Func_916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_933f8
	mov	r0, #0xdb
	bl	__Func_f9080
	ldr	r0, [r5]
	mov	r1, #0
	bl	__Func_c528
	mov	r2, r8
	mov	r3, #0
	add	r2, #0x55
	strb	r3, [r2]
	mov	r2, r7
	add	r2, #0x55
	strb	r3, [r2]
	str	r3, [r7, #0x28]
	add	r2, #0xc
	mov	r3, #1
	strb	r3, [r2]
	mov	r2, r8
	add	r2, #0x61
	strb	r3, [r2]
	ldr	r6, =0x3333
	mov	r5, #0x3b
.Lc6c:
	ldr	r3, [r7, #0x28]
	add	r3, r6
	str	r3, [r7, #0x28]
	mov	r2, r8
	ldr	r3, [r2, #0x28]
	add	r3, r6
	str	r3, [r2, #0x28]
	mov	r0, #1
	sub	r5, #1
	bl	__Func_30f8
	cmp	r5, #0
	bge	.Lc6c
	bl	__Func_91df4
	bl	__Func_91e20
	bl	__Func_91750
	mov	r0, #0x91
	lsl	r0, #1
	bl	__Func_79358
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lcc2
	mov	r0, #0x86
	lsl	r0, #2
	bl	__Func_793b8
	cmp	r0, #0xb
	bne	.Lcc2
	ldr	r0, =2
	mov	r1, #0x4d
	bl	__Func_91e3c
	b	.Lcca
.Lcc2:
	ldr	r0, =2
	mov	r1, #0x1b
	bl	__Func_91e3c
.Lcca:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_c00

.thumb_func_start OvlFunc_ce4
	push	{lr}
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #0x3f
	and	r3, r2
	lsl	r3, #16
	lsr	r2, r3, #16
	cmp	r2, #0x1f
	bls	.Lcfc
	ldr	r3, .Ld14	@ 0x40
	sub	r3, r2
	lsl	r3, #16
.Lcfc:
	lsr	r3, #17
	add	r3, #7
	lsl	r1, r3, #5
	lsl	r2, r3, #10
	orr	r2, r1
	orr	r3, r2
	lsl	r3, #16
	ldr	r2, =0x500019e
	lsr	r3, #16
	strh	r3, [r2]
	b	.Ld20

	.align	2, 0
.Ld14:
	.word	0x40
	.pool

.Ld20:
	pop	{r0}
	bx	r0
.func_end OvlFunc_ce4

.thumb_func_start OvlFunc_d24
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa5
	sub	sp, #8
	cmp	r2, r3
	bne	.Ldae
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #0xe
	mov	r2, #0
	bl	__Func_923e4
	mov	r3, #0xf
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #0x10
	mov	r1, #0x2c
	mov	r2, #1
	bl	__Func_10704
	mov	r0, #0x64
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8edac
	mov	r3, #0x7f
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0x47
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r3, #0xc
	mov	r2, #0x47
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x47
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0xb
	bl	__Func_10704
	ldr	r0, =OvlFunc_ce4
	bl	__Func_4278
	ldr	r3, =.L1a00
	ldrh	r2, [r3]
	ldr	r3, =0x500019e
	strh	r2, [r3]
.Ldae:
	add	sp, #8
	pop	{r1}
	bx	r1
.func_end OvlFunc_d24

.thumb_func_start OvlFunc_dc8
	push	{r5, lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa5
	sub	sp, #8
	cmp	r2, r3
	bne	.Le48
	mov	r0, #0xe
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x55
	mov	r1, #0xf8
	mov	r2, #0xb2
	strb	r5, [r0]
	lsl	r1, #16
	mov	r0, #0xe
	lsl	r2, #18
	bl	__Func_923e4
	mov	r3, #0xf
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #0x1f
	mov	r1, #0x5f
	mov	r2, #1
	bl	__Func_10704
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x64
	neg	r1, r1
	neg	r2, r2
	bl	__Func_8edac
	bl	__Func_8ee0c
	mov	r3, #0xc
	mov	r2, #0x47
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x7f
	mov	r1, #0x7f
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_ce4
	lsl	r1, #4
	bl	__Func_41d8
.Le48:
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_dc8

.thumb_func_start OvlFunc_e5c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa6
	cmp	r2, r3
	bne	.Le74
	ldr	r0, =.L19c4
	b	.Le76
.Le74:
	ldr	r0, =.L17b4
.Le76:
	pop	{r1}
	bx	r1
.func_end OvlFunc_e5c

.thumb_func_start OvlFunc_e8c
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_1e70
	mov	r1, #0xe0
	ldr	r7, [r3]
	ldr	r3, [r3, #0x4c]
	lsl	r1, #1
	ldr	r2, =0x201
	add	r3, r1
	mov	r0, #0x84
	str	r2, [r3]
	lsl	r0, #2
	bl	__Func_793b8
	cmp	r0, #0
	beq	.Lec0
	ldr	r3, =ewram_240
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #2
	mov	r1, #0xc8
	strb	r3, [r2]
	ldr	r0, =OvlFunc_400
	lsl	r1, #4
	bl	__Func_41d8
.Lec0:
	ldr	r5, =ewram_240
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r6, =0xa4
	cmp	r2, r6
	beq	.Led8
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lee4
.Led8:
	ldr	r2, =0x500019e
	ldr	r3, =.L1a00
	ldrh	r2, [r2]
	strh	r2, [r3]
	bl	OvlFunc_d24
.Lee4:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	cmp	r2, r6
	bne	.Lef8
	bl	OvlFunc_f50
	b	.Lf0c
.Lef8:
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.Lf04
	bl	OvlFunc_1094
	b	.Lf0c
.Lf04:
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
.Lf0c:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.Lf24
	ldrh	r2, [r7, #0x14]
	ldr	r3, =0xfdff
	and	r3, r2
	strh	r3, [r7, #0x14]
.Lf24:
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_e8c

.thumb_func_start OvlFunc_f50
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	mov	r8, r0
	ldr	r0, =0x301
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lf6a
	ldr	r0, =0x206
	bl	__Func_79358
.Lf6a:
	ldr	r0, =0x302
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lf7a
	ldr	r0, =0x207
	bl	__Func_79358
.Lf7a:
	ldr	r0, =0x303
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lf8c
	mov	r0, #0x82
	lsl	r0, #2
	bl	__Func_79358
.Lf8c:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lf9e
	ldr	r0, =0x209
	bl	__Func_79358
.Lf9e:
	ldr	r0, =0x305
	bl	__Func_79338
	cmp	r0, #0
	beq	.Lfae
	ldr	r0, =0x20a
	bl	__Func_79358
.Lfae:
	mov	r7, #0x80
	mov	r6, #8
	lsl	r7, #4
.Lfb4:
	mov	r0, r6
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.Lfd6
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lfce
	str	r7, [r5, #0x18]
	str	r7, [r5, #0x1c]
.Lfce:
	ldr	r3, [r5, #0x50]
	mov	r2, #0
	add	r3, #0x26
	strb	r2, [r3]
.Lfd6:
	add	r6, #1
	cmp	r6, #0xc
	ble	.Lfb4
	ldr	r6, =ewram_2090
	ldr	r5, =REG_IME
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L1008
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x3f42
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L1008:
	strh	r1, [r5]
	mov	r0, #0xd0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1020
	mov	r3, #0x10
	mov	r0, #0xf4
	mov	r8, r3
	bl	__Func_91ff0
.L1020:
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r3, [r6]
	cmp	r3, #0x1f
	bgt	.L1050
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	mov	r0, r8
	strh	r3, [r6]
	mov	r3, #0x10
	lsl	r2, #2
	sub	r3, r0
	add	r2, r6
	lsl	r3, #8
	add	r2, #4
	orr	r3, r0
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.L1050:
	strh	r1, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f50

.thumb_func_start OvlFunc_1094
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	mov	r8, r0
	ldr	r0, =0x311
	bl	__Func_79338
	cmp	r0, #0
	beq	.L10ae
	ldr	r0, =0x206
	bl	__Func_79358
.L10ae:
	ldr	r0, =0x312
	bl	__Func_79338
	cmp	r0, #0
	beq	.L10be
	ldr	r0, =0x207
	bl	__Func_79358
.L10be:
	ldr	r0, =0x313
	bl	__Func_79338
	cmp	r0, #0
	beq	.L10d0
	mov	r0, #0x82
	lsl	r0, #2
	bl	__Func_79358
.L10d0:
	mov	r7, #0x80
	mov	r6, #8
	lsl	r7, #4
.L10d6:
	mov	r0, r6
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L10fa
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L10f0
	str	r7, [r5, #0x18]
	str	r7, [r5, #0x1c]
.L10f0:
	ldr	r0, [r5, #0x50]
	mov	r2, r0
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
.L10fa:
	add	r6, #1
	cmp	r6, #0xa
	ble	.L10d6
	mov	r0, #0xb
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L1128
	ldr	r0, [r5, #0x50]
	ldr	r2, [r0, #0x28]
	cmp	r2, #0
	beq	.L1118
	mov	r3, #0xa
	strb	r3, [r2, #5]
.L1118:
	mov	r1, r0
	mov	r2, #1
	add	r1, #0x25
	strb	r2, [r1]
	mov	r2, r0
	mov	r3, #0
	add	r2, #0x26
	strb	r3, [r2]
.L1128:
	ldr	r0, =0x315
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1138
	ldr	r0, =0x9b7
	bl	__Func_79358
.L1138:
	ldr	r6, =ewram_2090
	ldr	r5, =REG_IME
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r2, [r6]
	cmp	r2, #0x1f
	bgt	.L1164
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r6
	strh	r2, [r6]
	ldr	r2, =0x3f42
	add	r3, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L1164:
	strh	r1, [r5]
	mov	r0, #0xd0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L117c
	mov	r3, #0x10
	mov	r0, #0xf4
	mov	r8, r3
	bl	__Func_91ff0
.L117c:
	ldrh	r3, [r5]
	mov	r1, r3
	strh	r5, [r5]
	ldrh	r3, [r6]
	cmp	r3, #0x1f
	bgt	.L11ac
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	mov	r0, r8
	strh	r3, [r6]
	mov	r3, #0x10
	lsl	r2, #2
	sub	r3, r0
	add	r2, r6
	lsl	r3, #8
	add	r2, #4
	orr	r3, r0
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.L11ac:
	strh	r1, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1094

	.section .data
	.global .L15c0
	.global .L15f8
	.global .L1610
	.global .L16b8
	.global .L1790
	.global .L17a8
	.global .L1458
	.global .L1488
	.global .L14d0
	.global .L1548

	.incbin "overlays/rom_7eaf28/orig.bin", 0x1430, (0x1458-0x1430)
.L1458:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1458, (0x1488-0x1458)
.L1488:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1488, (0x14d0-0x1488)
.L14d0:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x14d0, (0x1548-0x14d0)
.L1548:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1548, (0x15c0-0x1548)
.L15c0:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x15c0, (0x15f8-0x15c0)
.L15f8:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x15f8, (0x1610-0x15f8)
.L1610:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1610, (0x16b8-0x1610)
.L16b8:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x16b8, (0x1790-0x16b8)
.L1790:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1790, (0x17a8-0x1790)
.L17a8:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x17a8, (0x17b4-0x17a8)
.L17b4:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x17b4, (0x19c4-0x17b4)
.L19c4:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x19c4, (0x1a00-0x19c4)
.L1a00:
	.incbin "overlays/rom_7eaf28/orig.bin", 0x1a00

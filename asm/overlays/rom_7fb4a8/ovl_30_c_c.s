	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_20091bc
	push	{r5, lr}
	mov	r0, #0x55
	bl	__Func_80f9080
	ldr	r0, =0x292a
	mov	r1, #5
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8017658
	mov	r5, r0
	b	.L11da
.L11d4:
	mov	r0, #1
	bl	__Func_80030f8
.L11da:
	bl	__Func_8017364
	cmp	r0, #0
	beq	.L11d4
	bl	__Func_801faa8
	mov	r0, r5
	mov	r1, #1
	bl	__Func_8016418
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r0, =0x292b
	mov	r1, #5
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8017658
	mov	r5, r0
	b	.L120a
.L1204:
	mov	r0, #1
	bl	__Func_80030f8
.L120a:
	bl	__Func_8017364
	cmp	r0, #0
	beq	.L1204
	mov	r0, r5
	mov	r1, #1
	bl	__Func_8016418
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_20091bc

.thumb_func_start OvlFunc_971_2009228
	push	{r5, lr}
	mov	r0, #0x55
	bl	__Func_80f9080
	ldr	r0, =0x292c
	mov	r1, #5
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8017658
	mov	r5, r0
	b	.L1246
.L1240:
	mov	r0, #1
	bl	__Func_80030f8
.L1246:
	bl	__Func_8017364
	cmp	r0, #0
	beq	.L1240
	bl	__Func_801faa8
	mov	r0, r5
	mov	r1, #1
	bl	__Func_8016418
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r0, =0x292d
	mov	r1, #5
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8017658
	mov	r5, r0
	b	.L1276
.L1270:
	mov	r0, #1
	bl	__Func_80030f8
.L1276:
	bl	__Func_8017364
	cmp	r0, #0
	beq	.L1270
	mov	r0, r5
	mov	r1, #1
	bl	__Func_8016418
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2009228

.thumb_func_start OvlFunc_971_2009294
	push	{r5, r6, r7, lr}
	ldr	r3, =0x3e7
	mov	r5, r0
	sub	sp, #8
	cmp	r5, r3
	ble	.L12a2
	mov	r5, r3
.L12a2:
	mov	r6, #0
	mov	r7, #1
.L12a6:
	mov	r0, r5
	mov	r1, #0xa
	bl	_Func_8000b1c
	mov	r2, #0x10
	mov	r1, r0
	sub	r2, r6
	mov	r0, #0x1b
	mov	r3, #8
	str	r7, [sp]
	str	r7, [sp, #4]
	bl	__Func_8010424
	mov	r0, r5
	mov	r1, #0xa
	bl	_Func_8000af0
	add	r6, #1
	mov	r5, r0
	cmp	r6, #2
	ble	.L12a6
	bl	__Func_800fe9c
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2009294

.thumb_func_start OvlFunc_971_20092e0
	push	{r5, r6, r7, lr}
	ldr	r3, =.L1f50
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, =.L1f4c
	str	r2, [r3]
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	mov	r0, #2
	sub	sp, #8
	bl	__Func_80037d4
	ldr	r3, =ewram_2000240
	mov	r2, #0xac
	lsl	r2, #2
	add	r3, r2
	ldrh	r0, [r3]
	bl	OvlFunc_971_2009294
	mov	r3, #0xd
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r1, #0xb
	mov	r0, #0xb
	bl	__Func_8010704
	mov	r0, #4
	bl	OvlFunc_971_2008128
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #5
	bl	__Func_80118c0
	ldr	r2, =ewram_2002224
	ldr	r3, .L1368	@ 0x54
	strh	r3, [r2, #8]
	ldr	r3, .L136c	@ 0x41
	strh	r3, [r2, #0xa]
	ldr	r3, .L1370	@ 0x4c
	strh	r3, [r2, #0xc]
	ldr	r3, .L1374	@ 0x4b
	strh	r3, [r2, #0xe]
	mov	r6, #0
.L134a:
	mov	r3, #0xbc
	lsl	r3, #2
	add	r5, r6, r3
	mov	r0, r5
	bl	__Func_8079374
	mov	r0, r6
	bl	OvlFunc_971_2008f30
	cmp	r0, #0
	beq	.L138c
	mov	r0, r5
	bl	__Func_8079358
	b	.L138c

	.align	2, 0
.L1368:
	.word	0x54
.L136c:
	.word	0x41
.L1370:
	.word	0x4c
.L1374:
	.word	0x4b
	.pool

.L138c:
	add	r6, #1
	cmp	r6, #7
	ble	.L134a
	ldr	r6, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	beq	.L13a4
	b	.L14a0
.L13a4:
	bl	__Func_80916b0
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #5
	bl	OvlFunc_971_2008128
	mov	r3, #0xa9
	lsl	r3, #2
	add	r2, r6, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	ldr	r3, =0x2aa
	add	r2, r6, r3
	ldrh	r3, [r2]
	mov	r0, #0xfe
	add	r3, #1
	strh	r3, [r2]
	lsl	r0, #2
	bl	__Func_80793b8
	lsl	r0, #24
	asr	r6, r0, #24
	lsl	r3, r6, #1
	add	r5, r3, #2
	cmp	r5, #0xe
	ble	.L13e2
	mov	r5, #0xe
.L13e2:
	mov	r0, #0xfa
	lsl	r0, #2
	bl	__Func_80793b8
	cmp	r0, #2
	bne	.L13fe
	mov	r0, #0xfa
	lsl	r0, #2
	mov	r1, #0
	bl	__Func_80793c8
	add	r6, #1
	add	r5, #1
	b	.L1408
.L13fe:
	add	r1, r0, #1
	mov	r0, #0xfa
	lsl	r0, #2
	bl	__Func_80793c8
.L1408:
	ldr	r7, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r7, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, #8
	bl	__Func_809280c
	ldr	r0, =0x293e
	add	r0, r5, r0
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1448
	cmp	r6, #0x5a
	ble	.L143c
	mov	r6, #0x5a
.L143c:
	mov	r0, #0xfe
	lsl	r0, #2
	mov	r1, r6
	bl	__Func_80793c8
	b	.L1530
.L1448:
	ldr	r0, =0x173
	bl	__Func_8079374
	mov	r0, #0xfe
	mov	r1, #1
	lsl	r0, #2
	neg	r1, r1
	bl	__Func_80793c8
	ldr	r3, =0x2aa
	add	r5, r7, r3
	ldrh	r0, [r5]
	mov	r1, #5
	bl	__Func_8019908
	mov	r3, #0xaa
	lsl	r3, #2
	add	r2, r7, r3
	ldrh	r5, [r5]
	ldrh	r3, [r2]
	cmp	r3, r5
	bcs	.L148a
	strh	r5, [r2]
	ldr	r0, =0x293c
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	bl	OvlFunc_971_2009228
	b	.L1498
.L148a:
	ldr	r0, =0x2939
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092c40
.L1498:
	mov	r0, #0
	bl	OvlFunc_971_2008128
	b	.L1530
.L14a0:
	cmp	r3, #9
	bne	.L1536
	ldr	r3, =0x2a6
	add	r2, r6, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	bl	__Func_80916b0
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #5
	bl	OvlFunc_971_2008128
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r6, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, #8
	bl	__Func_809280c
	ldr	r3, =0x2aa
	add	r5, r6, r3
	ldrh	r0, [r5]
	mov	r1, #5
	bl	__Func_8019908
	mov	r3, #0xaa
	lsl	r3, #2
	add	r2, r6, r3
	ldrh	r5, [r5]
	ldrh	r3, [r2]
	cmp	r3, r5
	bcs	.L1500
	strh	r5, [r2]
	ldr	r0, =0x293c
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	bl	OvlFunc_971_2009228
	b	.L150e
.L1500:
	ldr	r0, =0x293a
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092c40
.L150e:
	ldr	r3, =ewram_2000240
	ldr	r2, =0x2aa
	add	r3, r2
	mov	r2, #0
	strh	r2, [r3]
	ldr	r0, =0x173
	bl	__Func_8079374
	mov	r0, #0xfe
	mov	r1, #1
	lsl	r0, #2
	neg	r1, r1
	bl	__Func_80793c8
	mov	r0, #0
.L152c:
	bl	OvlFunc_971_2008128
.L1530:
	bl	__Func_8091750
	b	.L1680
.L1536:
	cmp	r3, #0xa
	bne	.L15d2
	bl	__Func_80916b0
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0
	bl	OvlFunc_971_2008128
	mov	r0, #4
	bl	OvlFunc_971_2008128
	mov	r0, #0xfa
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1590
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xfa
	lsl	r0, #2
	ldr	r5, [r3]
	bl	__Func_8079374
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r0, #0xc1
	mov	r3, #2
	strh	r3, [r2]
	lsl	r0, #2
	bl	__Func_8079374
	mov	r0, #0x14
	bl	__Func_80030f8
	bl	OvlFunc_971_200803c
	mov	r0, #0
	bl	OvlFunc_971_2008128
	mov	r0, #4
	b	.L152c
.L1590:
	mov	r3, #0xab
	lsl	r3, #2
	add	r2, r6, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	ldr	r3, =0x2b2
	add	r2, r6, r3
	ldrh	r3, [r2]
	add	r1, r3, #1
	strh	r1, [r2]
	mov	r2, #0xac
	lsl	r2, #2
	add	r5, r6, r2
	lsl	r3, r1, #16
	ldrh	r2, [r5]
	lsr	r3, #16
	cmp	r2, r3
	bcs	.L15b8
	strh	r1, [r5]
.L15b8:
	ldrh	r0, [r5]
	bl	OvlFunc_971_2009294
	bl	OvlFunc_971_20091bc
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x305
	bl	__Func_8079358
	b	.L1530
.L15d2:
	cmp	r3, #0xb
	bne	.L161c
	bl	__Func_80916b0
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0
	bl	OvlFunc_971_2008128
	mov	r0, #4
	bl	OvlFunc_971_2008128
	ldr	r0, =0x173
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L160c
	ldr	r2, =0x2ae
	add	r3, r6, r2
	ldrh	r2, [r3]
	add	r2, #1
	strh	r2, [r3]
	ldr	r2, =0x2b2
	add	r3, r6, r2
	strh	r0, [r3]
	bl	OvlFunc_971_20091bc
.L160c:
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x305
	bl	__Func_8079374
	b	.L1530
.L161c:
	bl	__Func_8005d10
	mov	r0, #0xb9
	lsl	r0, #1
	bl	__Func_8079374
	mov	r0, #0xfe
	mov	r1, #1
	lsl	r0, #2
	neg	r1, r1
	bl	__Func_80793c8
	ldr	r3, =0x22a
	add	r5, r6, r3
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L166c
	bl	__Func_80916b0
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r6, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, #8
	bl	__Func_809280c
	ldr	r0, =0x2929
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
.L166c:
	ldr	r3, =iwram_3001d08
	mov	r2, #0
	strb	r2, [r5]
	mov	r0, #0
	strb	r2, [r3]
	bl	OvlFunc_971_2008128
	mov	r0, #4
	bl	OvlFunc_971_2008128
.L1680:
	ldr	r5, =OvlFunc_971_2008148
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r0, r5
	mov	r1, #1
	bl	__Func_8004358
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	bne	.L16ae
	ldr	r0, =0x173
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L16b8
.L16ae:
	mov	r0, #1
	bl	__Func_807808c
	bl	__Func_80bf65c
.L16b8:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_20092e0

	.section .data
	.global .L1928
	.global .L1940
	.global .L1948
	.global .L19f0
	.global .L19f4
	.global .L1c04

.L1928:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x1928, (0x1940-0x1928)
.L1940:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x1940, (0x1948-0x1940)
.L1948:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x1948, (0x19f0-0x1948)
.L19f0:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x19f0, (0x19f4-0x19f0)
.L19f4:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x19f4, (0x1c04-0x19f4)
.L1c04:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x1c04, (0x1e14-0x1c04)
.L1e14:
	.incbin "overlays/rom_7fb4a8/orig.bin", 0x1e14

	.section .bss
	.global .L1f4c
	.global .L1f50

	.lcomm	.L1f4c, 4
	.lcomm	.L1f50, 4

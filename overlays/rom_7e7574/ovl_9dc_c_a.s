	.include "macros.inc"

.thumb_func_start OvlFunc_10a8
	push	{lr}
	mov	r1, #0x84
	mov	r2, #0xc6
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0xea
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #0xea
	bl	__Func_91a58
	ldr	r0, =0xf2e
	bl	__Func_79358
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	pop	{r0}
	bx	r0
.func_end OvlFunc_10a8

.thumb_func_start OvlFunc_1108
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L111a
	ldr	r2, =0xfffff
	add	r3, r2
.L111a:
	ldr	r0, [r0, #8]
	asr	r2, r3, #20
	cmp	r0, #0
	bge	.L1126
	ldr	r3, =0xfffff
	add	r0, r3
.L1126:
	sub	r3, r2, #5
	asr	r0, #20
	cmp	r3, #2
	bhi	.L1136
	cmp	r0, #0xa
	bgt	.L1136
	mov	r0, #1
	b	.L1146
.L1136:
	mov	r3, r0
	sub	r3, #8
	cmp	r3, #1
	bhi	.L1144
	mov	r0, #1
	cmp	r2, #0x16
	bgt	.L1146
.L1144:
	mov	r0, #0
.L1146:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1108

.thumb_func_start OvlFunc_1150
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #9
	bl	__Func_92054
	mov	r7, r0
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r2, =iwram_1e70
	mov	r1, #0xb2
	ldr	r3, [r2]
	lsl	r1, #1
	add	r6, r3, r1
	ldr	r3, =iwram_1e40
	ldr	r2, [r2, #0x4c]
	ldr	r3, [r3]
	mov	r8, r2
	mov	r2, #1
	and	r3, r2
	mov	r10, r0
	cmp	r3, #0
	beq	.L1188
	str	r2, [r6, #0x18]
	str	r2, [r6, #0x1c]
	b	.L1190
.L1188:
	mov	r3, #1
	neg	r3, r3
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
.L1190:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L11b8
	mov	r3, #0xbf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L11b8
	mov	r3, #0xc0
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L11c8
.L11b8:
	mov	r3, r7
	add	r3, #0x5b
	mov	r2, #1
	strb	r2, [r3]
	mov	r3, r10
	add	r3, #0x5b
	strb	r2, [r3]
	b	.L12b8
.L11c8:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L12b8
	mov	r5, r7
	mov	r3, r10
	add	r5, #0x5b
	add	r3, #0x5b
	strb	r0, [r5]
	strb	r0, [r3]
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L120a
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L120a
	ldr	r0, [r7, #8]
	bl	OvlFunc_common2_304
	mov	r3, r1
	mov	r2, r0
	ldr	r0, =0x41610000
	ldr	r1, =0
	bl	OvlFunc_common2_28c
	bl	OvlFunc_common2_380
	str	r0, [r6, #0x20]
.L120a:
	bl	OvlFunc_1108
	cmp	r0, #0
	bne	.L12b8
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r5, r3, r2
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L1272
	mov	r0, #9
	bl	OvlFunc_1918
	cmp	r0, #0
	beq	.L123e
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L123e
	mov	r2, #0xbf
	lsl	r2, #1
	ldr	r3, =0x2092
	add	r2, r8
	b	.L12b6
.L123e:
	mov	r0, #0xa
	bl	OvlFunc_1918
	cmp	r0, #0
	beq	.L1262
	ldr	r3, =ewram_240
	mov	r1, #0x93
	lsl	r1, #2
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L1272
	mov	r2, #0xbf
	lsl	r2, #1
	ldr	r3, =0x2092
	add	r2, r8
	b	.L12b6
.L1262:
	ldr	r3, =ewram_240
	mov	r1, #0x93
	lsl	r1, #2
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L12a2
.L1272:
	mov	r0, #9
	bl	OvlFunc_18e4
	cmp	r0, #0
	beq	.L128a
	ldr	r0, =0x215
	bl	__Func_79358
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79358
.L128a:
	mov	r0, #0xa
	bl	OvlFunc_18e4
	cmp	r0, #0
	beq	.L12a2
	ldr	r0, =0x215
	bl	__Func_79358
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79358
.L12a2:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L12b8
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0x5b
.L12b6:
	strh	r3, [r2]
.L12b8:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1150

.thumb_func_start OvlFunc_12e0
	push	{lr}
	bl	__Func_916b0
	mov	r0, #9
	bl	__Func_920a0
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_9228c
	mov	r0, #9
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #9
	bl	__Func_937b8
	mov	r0, #0xa
	bl	OvlFunc_1b24
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_12e0

.thumb_func_start OvlFunc_1324
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L133e
	ldr	r1, =0xfffff
	add	r3, r1
.L133e:
	asr	r2, r3, #20
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L134a
	ldr	r1, =0xfffff
	add	r3, r1
.L134a:
	ldr	r0, [r0, #8]
	asr	r3, #20
	cmp	r0, #0
	bge	.L1356
	ldr	r1, =0xfffff
	add	r0, r1
.L1356:
	asr	r0, #20
	cmp	r2, #0x34
	bne	.L136c
	cmp	r0, #0x39
	bne	.L136c
	cmp	r3, #0x22
	ble	.L136c
	cmp	r3, #0x28
	bgt	.L136c
	mov	r0, #1
	b	.L1380
.L136c:
	cmp	r2, #0x39
	bne	.L137e
	cmp	r0, #0x34
	bne	.L137e
	cmp	r3, #0x22
	ble	.L137e
	mov	r0, #1
	cmp	r3, #0x28
	ble	.L1380
.L137e:
	mov	r0, #0
.L1380:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1324

.thumb_func_start OvlFunc_138c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x11
	bl	__Func_92054
	ldr	r2, =iwram_1e70
	mov	r1, #0xb2
	ldr	r3, [r2]
	ldr	r2, [r2, #0x4c]
	lsl	r1, #1
	add	r6, r3, r1
	mov	r8, r2
	mov	r7, r0
	bl	__Func_93554
	ldr	r3, =iwram_1e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L13be
	str	r2, [r6, #0x18]
	str	r2, [r6, #0x1c]
	b	.L13c6
.L13be:
	mov	r3, #1
	neg	r3, r3
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
.L13c6:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L13ee
	mov	r3, #0xbf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L13ee
	mov	r3, #0xc0
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L13f8
.L13ee:
	mov	r2, r7
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	b	.L149e
.L13f8:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L149e
	mov	r5, r7
	add	r5, #0x5b
	strb	r0, [r5]
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1430
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L1430
	ldr	r2, [r7, #8]
	mov	r3, #0xd0
	lsl	r3, #18
	sub	r3, r2
	str	r3, [r6, #0x20]
	ldr	r2, [r7, #0x10]
	mov	r3, #0x90
	lsl	r3, #18
	sub	r3, r2
	str	r3, [r6, #0x24]
.L1430:
	bl	OvlFunc_1324
	cmp	r0, #0
	bne	.L149e
	mov	r0, #0x11
	bl	OvlFunc_1980
	mov	r0, #0x11
	bl	OvlFunc_1918
	cmp	r0, #0
	beq	.L1460
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L1470
	sub	r2, #0xce
	ldr	r3, =0x2092
	add	r2, r8
	b	.L149c
.L1460:
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L1488
.L1470:
	mov	r0, #0x11
	bl	OvlFunc_18e4
	cmp	r0, #0
	beq	.L1488
	ldr	r0, =0x215
	bl	__Func_79358
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79358
.L1488:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L149e
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0x5c
.L149c:
	strh	r3, [r2]
.L149e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_138c

.thumb_func_start OvlFunc_14bc
	push	{lr}
	mov	r0, #0x11
	bl	OvlFunc_1b24
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_14bc

.thumb_func_start OvlFunc_14cc
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L14de
	ldr	r2, =0xfffff
	add	r3, r2
.L14de:
	ldr	r0, [r0, #8]
	asr	r2, r3, #20
	cmp	r0, #0
	bge	.L14ea
	ldr	r3, =0xfffff
	add	r0, r3
.L14ea:
	asr	r0, #20
	mov	r3, r0
	sub	r3, #0x29
	cmp	r3, #3
	bhi	.L14fc
	cmp	r2, #0x19
	ble	.L14fc
	cmp	r2, #0x1c
	ble	.L1508
.L14fc:
	cmp	r0, #0x29
	bne	.L150c
	cmp	r2, #0x25
	ble	.L150c
	cmp	r2, #0x29
	bgt	.L150c
.L1508:
	mov	r0, #1
	b	.L1520
.L150c:
	mov	r3, r0
	sub	r3, #0x36
	cmp	r3, #2
	bhi	.L151e
	cmp	r2, #0x1e
	ble	.L151e
	mov	r0, #1
	cmp	r2, #0x28
	ble	.L1520
.L151e:
	mov	r0, #0
.L1520:
	pop	{r1}
	bx	r1
.func_end OvlFunc_14cc

.thumb_func_start OvlFunc_1528
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x12
	bl	__Func_92054
	ldr	r2, =iwram_1e70
	mov	r1, #0xb2
	ldr	r3, [r2]
	lsl	r1, #1
	add	r6, r3, r1
	ldr	r3, =iwram_1e40
	ldr	r2, [r2, #0x4c]
	ldr	r3, [r3]
	mov	r8, r2
	mov	r2, #1
	and	r3, r2
	mov	r7, r0
	cmp	r3, #0
	beq	.L1556
	str	r2, [r6, #0x18]
	str	r2, [r6, #0x1c]
	b	.L155e
.L1556:
	mov	r3, #1
	neg	r3, r3
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
.L155e:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1586
	mov	r3, #0xbf
	lsl	r3, #1
	add	r3, r8
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L1586
	mov	r3, #0xc0
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L1590
.L1586:
	mov	r2, r7
	add	r2, #0x5b
	mov	r3, #1
	strb	r3, [r2]
	b	.L1630
.L1590:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1630
	mov	r5, r7
	add	r5, #0x5b
	strb	r0, [r5]
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L15c8
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L15c8
	ldr	r2, [r7, #8]
	mov	r3, #0xbc
	lsl	r3, #18
	sub	r3, r2
	str	r3, [r6, #0x20]
	ldr	r2, [r7, #0x10]
	mov	r3, #0xf8
	lsl	r3, #17
	sub	r3, r2
	str	r3, [r6, #0x24]
.L15c8:
	bl	OvlFunc_14cc
	cmp	r0, #0
	bne	.L1630
	mov	r0, #0x12
	bl	OvlFunc_1918
	cmp	r0, #0
	beq	.L15f2
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	beq	.L1602
	sub	r2, #0xce
	ldr	r3, =0x2092
	add	r2, r8
	b	.L162e
.L15f2:
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L161a
.L1602:
	mov	r0, #0x12
	bl	OvlFunc_18e4
	cmp	r0, #0
	beq	.L161a
	ldr	r0, =0x215
	bl	__Func_79358
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79358
.L161a:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1630
	mov	r2, #0xc1
	lsl	r2, #1
	add	r2, r8
	mov	r3, #0x5d
.L162e:
	strh	r3, [r2]
.L1630:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1528

.thumb_func_start OvlFunc_1650
	push	{lr}
	mov	r0, #0x12
	bl	OvlFunc_1b24
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1650

.thumb_func_start OvlFunc_1660
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L1672
	ldr	r2, =0xfffff
	add	r3, r2
.L1672:
	ldr	r0, [r0, #8]
	asr	r3, #20
	cmp	r0, #0
	bge	.L167e
	ldr	r2, =0xfffff
	add	r0, r2
.L167e:
	asr	r0, #20
	cmp	r0, #0x2d
	ble	.L1692
	cmp	r3, #0xe
	ble	.L1692
	cmp	r0, #0x40
	bgt	.L1692
	mov	r0, #0
	cmp	r3, #0x10
	ble	.L1694
.L1692:
	mov	r0, #1
.L1694:
	pop	{r1}
	bx	r1
.func_end OvlFunc_1660

.thumb_func_start OvlFunc_169c
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r0, #0x85
	lsl	r0, #2
	ldr	r5, [r3]
	bl	__Func_79338
	cmp	r0, #0
	bne	.L16f4
	bl	OvlFunc_1660
	cmp	r0, #0
	bne	.L16f4
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L16de
	mov	r0, #0x11
	bl	OvlFunc_18e4
	cmp	r0, #0
	beq	.L16de
	ldr	r0, =0x215
	bl	__Func_79358
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79358
.L16de:
	mov	r0, #0x85
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L16f4
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x5e
	strh	r3, [r2]
.L16f4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_169c

.thumb_func_start OvlFunc_1708
	push	{lr}
	mov	r0, #0x11
	bl	OvlFunc_1b24
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_1708

.thumb_func_start OvlFunc_1718
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r0, #0xc
	ldr	r5, [r3]
	bl	OvlFunc_18e4
	cmp	r0, #0
	beq	.L1748
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L1748
	ldr	r0, =OvlFunc_1718
	bl	__Func_4278
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x5f
	strh	r3, [r2]
.L1748:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1718

.thumb_func_start OvlFunc_175c
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r0, =0x225
	ldr	r5, [r3]
	bl	__Func_79338
	cmp	r0, #0
	bne	.L17a2
	mov	r0, #0xd
	bl	OvlFunc_18e4
	cmp	r0, #0
	beq	.L17a2
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L17a2
	ldr	r0, =0x225
	bl	__Func_79358
	ldr	r0,=OvlFunc_175c
	bl	__Func_4278
	ldr	r0, =OvlFunc_17bc
	bl	__Func_4278
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x60
	strh	r3, [r2]
.L17a2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_175c

.thumb_func_start OvlFunc_17bc
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	ldr	r0, =0x225
	ldr	r5, [r3]
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1802
	mov	r0, #0x15
	bl	OvlFunc_18e4
	cmp	r0, #0
	beq	.L1802
	ldr	r3, =ewram_240
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L1802
	ldr	r0, =0x225
	bl	__Func_79358
	ldr	r0, =OvlFunc_17bc
	bl	__Func_4278
	ldr	r0, =OvlFunc_175c
	bl	__Func_4278
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x60
	strh	r3, [r2]
.L1802:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_17bc

.thumb_func_start OvlFunc_181c
	push	{r5, r6, lr}
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r5, #0x10]
	mov	r1, r0
	cmp	r3, #0
	bge	.L1836
	ldr	r2, =0xfffff
	add	r3, r2
.L1836:
	ldr	r0, [r5, #8]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.L1842
	ldr	r3, =0xfffff
	add	r0, r3
.L1842:
	ldr	r2, [r1, #0x10]
	asr	r4, r0, #20
	cmp	r2, #0
	bge	.L184e
	ldr	r3, =0xfffff
	add	r2, r3
.L184e:
	ldr	r0, [r1, #8]
	asr	r3, r2, #20
	cmp	r0, #0
	bge	.L185a
	ldr	r2, =0xfffff
	add	r0, r2
.L185a:
	sub	r3, r6, r3
	add	r3, #6
	asr	r0, #20
	cmp	r3, #0xc
	bhi	.L1874
	sub	r3, r4, #1
	cmp	r3, r0
	bge	.L1874
	add	r3, r4, #1
	cmp	r3, r0
	ble	.L1874
	mov	r0, #1
	b	.L1876
.L1874:
	mov	r0, #0
.L1876:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_181c

.thumb_func_start OvlFunc_1880
	push	{r5, r6, lr}
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r5, #0x10]
	mov	r1, r0
	cmp	r3, #0
	bge	.L189a
	ldr	r2, =0xfffff
	add	r3, r2
.L189a:
	ldr	r0, [r5, #8]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.L18a6
	ldr	r3, =0xfffff
	add	r0, r3
.L18a6:
	ldr	r2, [r1, #0x10]
	asr	r4, r0, #20
	cmp	r2, #0
	bge	.L18b2
	ldr	r3, =0xfffff
	add	r2, r3
.L18b2:
	ldr	r0, [r1, #8]
	asr	r2, #20
	cmp	r0, #0
	bge	.L18be
	ldr	r3, =0xfffff
	add	r0, r3
.L18be:
	asr	r3, r0, #20
	sub	r3, r4, r3
	add	r3, #6
	mov	r0, #0
	cmp	r3, #0xc
	bhi	.L18da
	sub	r3, r6, #2
	cmp	r3, r2
	bge	.L18d8
	add	r3, r6, #2
	mov	r0, #1
	cmp	r3, r2
	bgt	.L18da
.L18d8:
	mov	r0, #0
.L18da:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1880

.thumb_func_start OvlFunc_18e4
	push	{r5, lr}
	mov	r5, r0
	bl	OvlFunc_1980
	cmp	r0, #0
	bne	.L18f4
	mov	r0, #0
	b	.L1910
.L18f4:
	mov	r0, r5
	bl	OvlFunc_181c
	cmp	r0, #0
	beq	.L1902
	mov	r0, #1
	b	.L1910
.L1902:
	mov	r0, r5
	bl	OvlFunc_1880
	mov	r3, r0
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
.L1910:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_18e4

.thumb_func_start OvlFunc_1918
	push	{r5, lr}
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r2, [r5, #0x10]
	mov	r3, r0
	cmp	r2, #0
	bge	.L1932
	ldr	r0, =0xfffff
	add	r2, r0
.L1932:
	ldr	r0, [r5, #8]
	asr	r1, r2, #20
	cmp	r0, #0
	bge	.L193e
	ldr	r2, =0xfffff
	add	r0, r2
.L193e:
	ldr	r2, [r3, #0x10]
	asr	r4, r0, #20
	cmp	r2, #0
	bge	.L194a
	ldr	r0, =0xfffff
	add	r2, r0
.L194a:
	ldr	r0, [r3, #8]
	asr	r2, #20
	cmp	r0, #0
	bge	.L1956
	ldr	r3, =0xfffff
	add	r0, r3
.L1956:
	asr	r3, r0, #20
	sub	r3, r4, r3
	add	r1, #1
	cmp	r3, #0
	bge	.L1962
	neg	r3, r3
.L1962:
	sub	r0, r1, r2
	cmp	r0, #0
	bge	.L196a
	neg	r0, r0
.L196a:
	add	r3, r0
	mov	r0, #1
	cmp	r3, #4
	ble	.L1974
	mov	r0, #0
.L1974:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1918

.thumb_func_start OvlFunc_1980
	push	{r5, lr}
	bl	__Func_92054
	mov	r5, r0
	bl	__Func_93554
	ldr	r3, [r5, #8]
	mov	r2, r0
	cmp	r3, #0
	bge	.L1998
	ldr	r0, =0xfffff
	add	r3, r0
.L1998:
	ldr	r0, [r5, #0x10]
	asr	r4, r3, #20
	cmp	r0, #0
	bge	.L19a4
	ldr	r1, =0xfffff
	add	r0, r1
.L19a4:
	ldr	r3, [r2, #8]
	asr	r1, r0, #20
	cmp	r3, #0
	bge	.L19b0
	ldr	r0, =0xfffff
	add	r3, r0
.L19b0:
	ldr	r0, [r2, #0x10]
	asr	r3, #20
	cmp	r0, #0
	bge	.L19bc
	ldr	r2, =0xfffff
	add	r0, r2
.L19bc:
	sub	r3, r4, r3
	asr	r0, #20
	cmp	r3, #0
	bge	.L19c6
	neg	r3, r3
.L19c6:
	sub	r0, r1, r0
	cmp	r0, #0
	bge	.L19ce
	neg	r0, r0
.L19ce:
	cmp	r3, #7
	bgt	.L19d6
	cmp	r0, #5
	ble	.L19da
.L19d6:
	mov	r0, #0
	b	.L19dc
.L19da:
	mov	r0, #1
.L19dc:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1980

.thumb_func_start OvlFunc_19e8
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	ldr	r0, =0x35b
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1a32
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L1a06
	ldr	r2, =0xfffff
	add	r3, r2
.L1a06:
	ldr	r0, [r5, #0x10]
	asr	r3, #20
	cmp	r0, #0
	bge	.L1a12
	ldr	r2, =0xfffff
	add	r0, r2
.L1a12:
	asr	r0, #20
	cmp	r3, #0x2b
	bne	.L1a32
	cmp	r0, #0x1c
	ble	.L1a32
	cmp	r0, #0x1f
	bgt	.L1a32
	ldr	r3, =iwram_1ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x29
	strh	r2, [r3]
	bl	OvlFunc_f30
.L1a32:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_19e8

.thumb_func_start OvlFunc_1a44
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #0xd6
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1aa2
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L1a64
	ldr	r1, =0xfffff
	add	r3, r1
.L1a64:
	asr	r2, r3, #20
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	bge	.L1a70
	ldr	r1, =0xfffff
	add	r3, r1
.L1a70:
	asr	r3, #20
	cmp	r2, #0x10
	bne	.L1aa2
	cmp	r3, #0x37
	ble	.L1aa2
	cmp	r3, #0x3a
	bgt	.L1aa2
	mov	r2, #0xc0
	ldrh	r0, [r5, #6]
	lsl	r2, #8
	cmp	r0, r2
	beq	.L1a90
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bne	.L1aa2
.L1a90:
	ldr	r3, =iwram_1ebc
	mov	r1, #0xb6
	ldr	r3, [r3]
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0x28
	strh	r2, [r3]
	bl	OvlFunc_e80
.L1aa2:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a44

.thumb_func_start OvlFunc_1ab0
	push	{r5, lr}
	bl	__Func_916b0
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_9228c
	mov	r1, #1
	mov	r0, #9
	bl	__Func_9207c
	mov	r0, #9
	bl	__Func_920a0
	mov	r0, #9
	mov	r1, #0
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #0
	bl	__Func_9207c
	ldr	r5, =0x240d
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0
	add	r5, #1
	bl	__Func_937b8
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #9
	bl	__Func_92f84
	mov	r0, #0x3c
	bl	__Func_91e9c
	bl	__Func_91df4
	bl	__Func_91750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ab0

.thumb_func_start OvlFunc_1b24
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__Func_916b0
	bl	__Func_916b0
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #1
	bl	__Func_937b8
	mov	r2, #0
	mov	r0, r5
	mov	r1, #0
	bl	__Func_9228c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_9207c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_924d4
	mov	r0, r5
	mov	r2, #0
	mov	r1, #0
	bl	__Func_9280c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r2, #0
	mov	r0, r5
	mov	r1, #0
	bl	__Func_9228c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_9207c
	mov	r0, r5
	bl	__Func_920a0
	mov	r0, r5
	mov	r1, #0
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #0
	bl	__Func_9207c
	ldr	r6, =0x240d
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0
	add	r6, #1
	bl	__Func_937b8
	mov	r0, r6
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, r5
	bl	__Func_92f84
	bl	__Func_91df4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x3c
	bl	__Func_91e9c
	bl	__Func_91750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b24

.thumb_func_start OvlFunc_1be4
	push	{r5, lr}
	mov	r5, r0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r0, #0
	mov	r1, r5
	bl	__Func_9280c
	ldr	r3, =.L5fa4
	ldr	r2, [r3]
	mov	r3, #3
	and	r2, r3
	cmp	r2, #1
	beq	.L1c22
	cmp	r2, #1
	bgt	.L1c10
	cmp	r2, #0
	beq	.L1c1a
	b	.L1c3a
.L1c10:
	cmp	r2, #2
	beq	.L1c2a
	cmp	r2, #3
	beq	.L1c32
	b	.L1c3a
.L1c1a:
	mov	r0, r5
	bl	OvlFunc_1c4c
	b	.L1c40
.L1c22:
	mov	r0, r5
	bl	OvlFunc_1ca4
	b	.L1c40
.L1c2a:
	mov	r0, r5
	bl	OvlFunc_1cf0
	b	.L1c40
.L1c32:
	mov	r0, r5
	bl	OvlFunc_1d60
	b	.L1c40
.L1c3a:
	mov	r0, r5
	bl	OvlFunc_1ca4
.L1c40:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1be4

.thumb_func_start OvlFunc_1c4c
	push	{r5, r6, lr}
	mov	r1, #1
	mov	r6, r0
	bl	__Func_925cc
	ldr	r5, =0x241e
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, r6
	lsl	r1, #1
	bl	__Func_937b8
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	add	r5, #2
	mov	r0, r6
	mov	r1, #4
	bl	__Func_92548
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c4c

.thumb_func_start OvlFunc_1ca4
	push	{r5, r6, lr}
	ldr	r5, =0x2421
	mov	r6, r0
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r6
	mov	r1, #1
	bl	__Func_925cc
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	add	r5, #2
	mov	r0, r6
	mov	r1, #4
	bl	__Func_92548
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, r6
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ca4

.thumb_func_start OvlFunc_1cf0
	push	{r5, r6, lr}
	ldr	r6, =0x2424
	mov	r5, r0
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r2, #0x3c
	mov	r0, r5
	ldr	r1, =0x101
	bl	__Func_937b8
	add	r0, r6, #1
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	mov	r1, #1
	bl	__Func_925cc
	add	r0, r6, #2
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	add	r6, #3
	mov	r0, r5
	mov	r1, #4
	bl	__Func_92548
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1cf0

.thumb_func_start OvlFunc_1d60
	push	{r5, r6, lr}
	ldr	r6, =0x2428
	mov	r5, r0
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	mov	r1, #4
	bl	__Func_92548
	add	r0, r6, #1
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, r5
	mov	r1, #1
	bl	__Func_925cc
	add	r0, r6, #2
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	add	r6, #3
	mov	r0, r5
	mov	r1, #3
	bl	__Func_92548
	mov	r0, r6
	bl	__Func_92b94
	mov	r0, r5
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d60

.thumb_func_start OvlFunc_1dc4
	push	{lr}
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x71
	bl	__Func_f9080
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0xf
	bl	__Func_937b8
	mov	r0, #0xf
	bl	OvlFunc_1be4
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r3, =ewram_240
	add	r2, #0x2b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x62
	mov	r1, #2
	bl	__Func_91eb0
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	ldr	r0, =0x94c
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_1dc4

.thumb_func_start OvlFunc_1e2c
	push	{lr}
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x71
	bl	__Func_f9080
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0xb
	bl	__Func_937b8
	mov	r0, #0xb
	bl	OvlFunc_1be4
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r3, =ewram_240
	add	r2, #0x2b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x62
	mov	r1, #2
	bl	__Func_91eb0
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	ldr	r0, =0x949
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e2c

.thumb_func_start OvlFunc_1e94
	push	{r5, lr}
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_924d4
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0x71
	bl	__Func_f9080
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_9280c
	ldr	r5, =0x2438
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0x41
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_92adc
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_925cc
	add	r0, r5, #4
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	add	r0, r5, #5
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r1, #0xa8
	lsl	r1, #2
	mov	r2, #0x58
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92548
	add	r5, #6
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =0xa1
	mov	r1, #0x1f
	bl	__Func_91f90
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x62
	mov	r1, #3
	bl	__Func_91eb0
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	ldr	r0, =0x94a
	bl	__Func_79358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e94

.thumb_func_start OvlFunc_206c
	push	{lr}
	bl	__Func_916b0
	mov	r1, #0xac
	mov	r2, #0xb0
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0xb0
	mov	r2, #0xb0
	mov	r0, #0xd
	lsl	r1, #18
	lsl	r2, #15
	bl	__Func_923e4
	mov	r1, #0xb4
	mov	r2, #0xc0
	lsl	r2, #15
	mov	r0, #0xe
	lsl	r1, #18
	bl	__Func_923e4
	mov	r0, #0xc
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #0xd
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #0xe
	mov	r1, #5
	bl	__Func_924d4
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	bl	__Func_91750
	bl	__Func_91dc8
	pop	{r0}
	bx	r0
.func_end OvlFunc_206c

.thumb_func_start OvlFunc_20cc
	push	{lr}
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x71
	bl	__Func_f9080
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0x10
	bl	__Func_937b8
	mov	r0, #0x10
	bl	OvlFunc_1be4
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r3, =ewram_240
	add	r2, #0x2b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x62
	mov	r1, #2
	bl	__Func_91eb0
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	__Func_91750
	ldr	r0, =0x94b
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_20cc

.thumb_func_start OvlFunc_2134
	push	{r5, lr}
	bl	__Func_916b0
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9228c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9207c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0x71
	bl	__Func_f9080
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_937b8
	ldr	r5, =0x240d
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x32
	lsl	r1, #1
	mov	r0, #0
	add	r5, #1
	bl	__Func_937b8
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	bl	__Func_91df4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x3c
	bl	__Func_91e9c
	bl	__Func_91750
	mov	r0, #0x89
	lsl	r0, #2
	bl	__Func_79358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2134

.thumb_func_start OvlFunc_21c4
	push	{r5, lr}
	bl	__Func_916b0
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9228c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9207c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x71
	bl	__Func_f9080
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_9280c
	ldr	r5, =0x240d
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x1e
	lsl	r1, #1
	mov	r0, #0
	add	r5, #1
	bl	__Func_937b8
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	bl	__Func_91df4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x3c
	bl	__Func_91e9c
	bl	__Func_91750
	ldr	r0, =0x225
	bl	__Func_79358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_21c4

.thumb_func_start OvlFunc_226c
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x51
	str	r3, [sp, #4]
	mov	r5, #0x15
	mov	r0, #2
	mov	r1, #0x52
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0x22
	str	r3, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0x20
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_226c

.thumb_func_start OvlFunc_22a0
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r5, #6
	mov	r0, #2
	mov	r1, #0x54
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0xa
	str	r3, [sp, #4]
	mov	r0, #5
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_22a0

.thumb_func_start OvlFunc_22d4
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x3e
	str	r3, [sp, #4]
	mov	r5, #0x1b
	mov	r0, #2
	mov	r1, #0x56
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0x11
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_22d4

.thumb_func_start OvlFunc_2308
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	ldr	r2, =0xcb8
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #0
	beq	.L2374
	ldr	r0, =0x947
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2374
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_1776c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #1
	bl	__Func_9163c
	mov	r5, #0x11
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	mov	r6, #0x52
	mov	r0, #6
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #5
	bl	__Func_9163c
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	mov	r0, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #1
	bl	__Func_9163c
	bl	OvlFunc_226c
	ldr	r0, =0x947
	bl	__Func_79358
.L2374:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2308

.thumb_func_start OvlFunc_238c
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	ldr	r2, =0xcb8
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #0
	beq	.L23f8
	ldr	r0, =0x948
	bl	__Func_79338
	cmp	r0, #0
	bne	.L23f8
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_1776c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #1
	bl	__Func_9163c
	mov	r5, #3
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	mov	r6, #0x37
	mov	r0, #6
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #5
	bl	__Func_9163c
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	mov	r0, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_105d4
	mov	r0, #1
	bl	__Func_9163c
	bl	OvlFunc_22a0
	ldr	r0, =0x948
	bl	__Func_79358
.L23f8:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_238c

.thumb_func_start OvlFunc_2410
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r3, #0x52
	str	r3, [sp, #4]
	mov	r6, #0x11
	mov	r0, #5
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_105d4
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r5, #3
	mov	r0, #5
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0x23
	str	r3, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0x21
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	mov	r3, #0xa
	str	r3, [sp, #4]
	mov	r0, #3
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2410

.thumb_func_start OvlFunc_2468
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r3, #0x52
	str	r3, [sp, #4]
	mov	r6, #0x11
	mov	r0, #8
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_105d4
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r5, #3
	mov	r0, #8
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0x23
	str	r3, [sp, #4]
	mov	r0, #0x12
	mov	r1, #0x23
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_10704
	mov	r3, #0xa
	str	r3, [sp, #4]
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2468

.thumb_func_start OvlFunc_24c0
	push	{lr}
	ldr	r0, =0x944
	bl	__Func_79358
	ldr	r0, =0x217
	bl	__Func_79374
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	pop	{r0}
	bx	r0
.func_end OvlFunc_24c0

.thumb_func_start OvlFunc_24e4
	push	{lr}
	ldr	r0, =0x945
	bl	__Func_79358
	bl	OvlFunc_22d4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	pop	{r0}
	bx	r0
.func_end OvlFunc_24e4

.thumb_func_start OvlFunc_2504
	push	{lr}
	ldr	r0, =0x946
	bl	__Func_79358
	mov	r0, #0x86
	lsl	r0, #2
	bl	__Func_79374
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	pop	{r0}
	bx	r0
.func_end OvlFunc_2504


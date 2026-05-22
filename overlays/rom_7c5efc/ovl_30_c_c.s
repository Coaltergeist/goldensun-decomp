	.include "macros.inc"

.thumb_func_start OvlFunc_1320
	push	{lr}
	ldr	r0, =0x2557
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_1320

.thumb_func_start OvlFunc_134c
	push	{lr}
	ldr	r0, =0x255d
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r0, #1
	pop	{r1}
	bx	r1
.func_end OvlFunc_134c

.thumb_func_start OvlFunc_1368
	push	{lr}
	ldr	r0, =0x254a
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_1368

.thumb_func_start OvlFunc_1394
	push	{r5, lr}
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_937b8
	ldr	r5, =0x255e
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xc
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_92548
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #3
	add	r5, #2
	bl	__Func_937b8
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1394

.thumb_func_start OvlFunc_141c
	push	{lr}
	ldr	r0, =0x255c
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_91c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_141c

.thumb_func_start OvlFunc_1448
	push	{r5, lr}
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_9280c
	ldr	r5, =0x254e
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #3
	bl	__Func_925cc
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #2
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xd
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0x46
	ldr	r1, =0x105
	mov	r0, #0xd
	bl	__Func_937b8
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_92548
	add	r0, r5, #4
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xc
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x10
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0xd
	bl	__Func_9228c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r2, #0x84
	mov	r1, #0x9c
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x84
	mov	r1, #0xa4
	lsl	r2, #2
	mov	r0, #0xd
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r2, #0xa0
	mov	r1, #0xa8
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r2, #0xa0
	mov	r0, #0xd
	mov	r1, #0xa8
	lsl	r2, #2
	bl	__Func_9218c
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_923e4
	mov	r0, #0x6e
	bl	__Func_9163c
	add	r0, r5, #5
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	add	r0, r5, #6
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	add	r0, r5, #7
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0x8c
	bl	__Func_9163c
	add	r5, #8
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L16bc
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L16bc:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L16ec
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L16ec:
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L171c
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L171c:
	mov	r0, #3
	bl	__Func_923c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_93500
	bl	__Func_93530
	mov	r0, #0
	mov	r1, #0
	bl	__Func_9335c
	ldr	r0, =0x94f
	bl	__Func_79358
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1448

.thumb_func_start OvlFunc_1760
	push	{r5, lr}
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_92adc
	ldr	r5, =0x2558
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92548
	add	r5, #3
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #0x10
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0xd
	bl	__Func_9228c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_924d4
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_92548
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r2, #0x84
	mov	r1, #0x98
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x84
	mov	r1, #0xa0
	lsl	r2, #2
	mov	r0, #0xd
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r2, #0xa0
	mov	r1, #0xa8
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r2, #0xa0
	mov	r0, #0xd
	mov	r1, #0xa8
	lsl	r2, #2
	bl	__Func_9218c
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #0xc8
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1954
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L1954:
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1984
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L1984:
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L19b4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L19b4:
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x10
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_93500
	mov	r2, #0xa0
	mov	r1, #0xa8
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0x3c
	bl	__Func_9163c
	bl	__Func_91df4
	mov	r0, #3
	bl	__Func_91e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1760

.thumb_func_start OvlFunc_1a0c
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	mov	r5, #0x81
	lsl	r2, #1
	lsl	r5, #2
	str	r5, [r3, r2]
	ldr	r3, =ewram_240
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x6a
	cmp	r2, r3
	bne	.L1ab0
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #9
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xa
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r3, =0xf333
	str	r3, [r0, #0x1c]
	ldr	r0, =0x201
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a6e
	bl	OvlFunc_210
.L1a6e:
	ldr	r0, =0x202
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a7c
	bl	OvlFunc_384
.L1a7c:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a8c
	bl	OvlFunc_d4
.L1a8c:
	ldr	r0, =0x203
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1a9e
	mov	r0, #0xb
	mov	r1, #5
	bl	__Func_924d4
.L1a9e:
	mov	r0, r5
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1ab0
	mov	r0, #9
	mov	r1, #5
	bl	__Func_924d4
.L1ab0:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1a0c

	.section .data
	.global .L1cac
	.global .L1cc0
	.global .L1cd8
	.global .L1dd4
	.global .L1c34

.L1c34:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1c34, (0x1cac-0x1c34)
.L1cac:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1cac, (0x1cc0-0x1cac)
.L1cc0:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1cc0, (0x1cd8-0x1cc0)
.L1cd8:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1cd8, (0x1dd4-0x1cd8)
.L1dd4:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1dd4

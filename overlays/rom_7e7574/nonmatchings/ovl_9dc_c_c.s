	.include "macros.inc"

.thumb_func_start OvlFunc_252c
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2542
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_923e4
.L2542:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L2556
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_923e4
.L2556:
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L256a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_923e4
.L256a:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #2
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r1, #0xe4
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xc0
	bl	__Func_9218c
	mov	r0, #3
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r1, #0xdc
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__Func_9218c
	mov	r0, #1
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r1, #0xe0
	lsl	r1, #1
	mov	r2, #0xf0
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #2
	bl	__Func_9280c
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xf
	bl	__Func_9163c
	pop	{r0}
	bx	r0
.func_end OvlFunc_252c

.thumb_func_start OvlFunc_25f8
	push	{lr}
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	sub	sp, #8
	bl	__Func_12330
	mov	r0, #0x8d
	bl	__Func_f9080
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #5
	bl	__Func_9163c
	mov	r0, #0x91
	bl	__Func_f9080
	mov	r3, #0x1a
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r0, #0x10
	mov	r1, #0x4b
	mov	r2, #7
	bl	__Func_105d4
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_25f8

.thumb_func_start OvlFunc_269c
	push	{lr}
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_93500
	bl	__Func_93530
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r0, =0x247c
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xf
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xec
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0xb4
	bl	__Func_9218c
	mov	r1, #0xec
	mov	r2, #0xb4
	mov	r0, #0xf
	lsl	r1, #1
	bl	__Func_9218c
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_9335c
	mov	r0, #0xb
	bl	__Func_923c4
	mov	r0, #0xb
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	pop	{r0}
	bx	r0
.func_end OvlFunc_269c

.thumb_func_start OvlFunc_2718
	push	{lr}
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xfc
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_9218c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xdc
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__Func_9218c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0xf0
	lsl	r1, #1
	mov	r2, #0xe0
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	pop	{r0}
	bx	r0
.func_end OvlFunc_2718

.thumb_func_start OvlFunc_27b0
	push	{r5, lr}
	ldr	r0, =0x301
	bl	__Func_79338
	cmp	r0, #0
	beq	.L27c0
	bl	.L302e
.L27c0:
	mov	r0, #0x9c
	lsl	r0, #2
	bl	__Func_79358
	bl	__Func_916b0
	ldr	r0, =0x942
	bl	__Func_79338
	cmp	r0, #0
	bne	.L27d8
	b	.L29b0
.L27d8:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0xe4
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	bl	OvlFunc_252c
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_92560
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #2
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r1, #0xe8
	lsl	r1, #1
	mov	r2, #0xc0
	mov	r0, #2
	bl	__Func_9218c
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #0x1e
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
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe4
	mov	r2, #0xa0
	lsl	r2, #17
	mov	r0, #0xd
	lsl	r1, #17
	bl	__Func_923e4
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r1, #7
	lsl	r0, #10
	bl	__Func_933d4
	ldr	r5, =0x247d
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe5
	mov	r2, #0x88
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xd
	bl	__Func_9218c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #8
	mov	r2, #8
	neg	r1, r1
	mov	r0, #0xd
	bl	__Func_9228c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x9b
	bl	__Func_f9080
	add	r0, r5, #1
	mov	r1, #1
	bl	__Func_1776c
	mov	r2, #8
	neg	r2, r2
	mov	r1, #8
	mov	r0, #0xd
	bl	__Func_9228c
	bl	OvlFunc_25f8
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_9259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_9259c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	add	r5, #2
	bl	OvlFunc_2718
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_9280c
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	bl	OvlFunc_269c
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	mov	r0, #1
	bl	__Func_9163c
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0xa3
	mov	r1, #4
	bl	__Func_91f90
	mov	r0, #0x62
	mov	r1, #4
	bl	__Func_91eb0
	b	.L302a

	.pool_aligned

.L29b0:
	mov	r1, #1
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x11
	bl	__Func_f9080
	mov	r0, #0x1e
	bl	__Func_9163c
	ldr	r5, =0x2464
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x8c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_92560
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0xe4
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_921c4
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	bl	OvlFunc_252c
	mov	r0, #2
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r1, #0xe8
	mov	r2, #0xc0
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_9218c
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #0x1e
	bl	__Func_9163c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #0x6e
	bl	__Func_9163c
	mov	r0, #0x3c
	bl	__Func_f9080
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_9259c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0xc
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r1, #0x82
	mov	r2, #0xd0
	lsl	r1, #2
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #4
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x84
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #0x78
	bl	__Func_9163c
	add	r0, r5, #5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0x19
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92548
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #0xf0
	lsl	r1, #1
	mov	r2, #0xc8
	mov	r0, #2
	bl	__Func_9218c
	mov	r0, #2
	bl	__Func_923c4
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #2
	bl	__Func_92848
	mov	r0, #0x3c
	bl	__Func_9163c
	add	r0, r5, #6
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0x50
	bl	__Func_9163c
	add	r0, r5, #7
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe4
	mov	r2, #0xa0
	lsl	r2, #17
	lsl	r1, #17
	mov	r0, #0xd
	bl	__Func_923e4
	mov	r0, #0x13
	bl	__Func_f9080
	mov	r0, r5
	add	r0, #8
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #5
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x3d
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_93500
	bl	__Func_93530
	mov	r0, #0xd
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_92064
	mov	r1, #0xe4
	mov	r2, #0x98
	lsl	r2, #1
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_9218c
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_9335c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_9335c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0xd
	bl	__Func_9280c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #9
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xd
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #0xa
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0
	bl	__Func_92848
	mov	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r0, #3
	mov	r1, #0xd
	bl	__Func_9280c
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xc
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xd
	bl	__Func_924d4
	mov	r0, r5
	add	r0, #0xd
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #1
	bl	__Func_9218c
	b	.L2ddc

	.pool_aligned

.L2ddc:
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_92adc
	mov	r0, r5
	add	r0, #0xe
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xec
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #2
	bl	__Func_9218c
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xf
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x10
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_923c4
	mov	r2, #0
	mov	r0, #3
	mov	r1, #0xd
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_92548
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x11
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #4
	mov	r0, #0xd
	bl	__Func_924d4
	mov	r0, r5
	add	r0, #0x12
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_937b8
	mov	r1, #0x84
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x13
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x14
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x15
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe4
	mov	r2, #0x8c
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xd
	bl	__Func_9218c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_92adc
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #8
	mov	r2, #8
	neg	r1, r1
	mov	r0, #0xd
	bl	__Func_9228c
	mov	r0, #0xd
	bl	__Func_923c4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x9b
	bl	__Func_f9080
	ldr	r0, =0x247e
	mov	r1, #1
	bl	__Func_1776c
	mov	r2, #8
	mov	r0, #0xd
	mov	r1, #8
	neg	r2, r2
	bl	__Func_9228c
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0xd
	bl	__Func_9280c
	bl	OvlFunc_25f8
	mov	r0, #0x34
	bl	__Func_f9080
	mov	r0, r5
	add	r0, #0x17
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xb
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_9280c
	bl	OvlFunc_2718
	bl	OvlFunc_269c
	ldr	r0, =0x942
	bl	__Func_79358
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	mov	r0, #1
	bl	__Func_9163c
	ldr	r3, =ewram_240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0xa3
	mov	r1, #4
	bl	__Func_91f90
	mov	r0, #0x62
	mov	r1, #4
	bl	__Func_91eb0
.L302a:
	bl	__Func_91750
.L302e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_27b0

.thumb_func_start OvlFunc_3054
	push	{r5, lr}
	ldr	r0, =0x301
	sub	sp, #8
	bl	__Func_79358
	ldr	r0, =0x941
	bl	__Func_79358
	mov	r3, #0x1a
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r2, #7
	mov	r1, #0x4b
	mov	r0, #0x10
	bl	__Func_105d4
	mov	r0, #4
	bl	OvlFunc_c90
	bl	__Func_916b0
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #1
	bl	__Func_c528
	mov	r1, #0xe4
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xdc
	mov	r2, #0xc0
	mov	r0, #1
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xf4
	mov	r2, #0xb8
	mov	r0, #3
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xec
	mov	r2, #0xb8
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x82
	mov	r2, #0xe0
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0xb0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0xed
	mov	r0, #0xb
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe0
	mov	r2, #0xee
	lsl	r2, #16
	mov	r0, #0xf
	lsl	r1, #17
	bl	__Func_923e4
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_92b08
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #0xe5
	mov	r2, #0xf3
	mov	r0, #0xd
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xd
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #5
	mov	r0, #0xd
	bl	__Func_924d4
	bl	__Func_91dc8
	mov	r0, #0x78
	bl	__Func_9163c
	ldr	r5, =0x2481
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #1
	bl	__Func_937b8
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #1
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #1
	bl	__Func_937b8
	ldr	r1, =0x101
	mov	r2, #1
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #3
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0xe8
	mov	r0, #0xc
	lsl	r1, #2
	bl	__Func_9218c
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0xf
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_9259c
	add	r0, r5, #4
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0xd
	bl	__Func_9280c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_9259c
	add	r0, r5, #5
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r0, #3
	ldr	r1, =0x105
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_924d4
	add	r0, r5, #6
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x41
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_9259c
	mov	r0, #0x64
	bl	__Func_9163c
	add	r0, r5, #7
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #8
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #9
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #0xa
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #3
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L3388
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0xc
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	b	.L3494

	.pool_aligned

.L3388:
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #3
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #0xc
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #2
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xc
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
.L3494:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0xd0
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xd0
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xf4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #2
	bl	__Func_9218c
	mov	r0, #2
	bl	__Func_923c4
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_92848
	mov	r2, #0
	mov	r1, #2
	mov	r0, #3
	bl	__Func_92848
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, #0xe2
	bl	__Func_f9080
	mov	r0, #0xd
	mov	r1, #7
	bl	__Func_924d4
	mov	r0, #0
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r1, #0x18
	mov	r0, #0
	neg	r1, r1
	mov	r2, #0
	bl	__Func_9228c
	mov	r0, #1
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r1, #0x18
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0
	bl	__Func_9228c
	mov	r0, #3
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r1, #0x18
	mov	r0, #3
	neg	r1, r1
	mov	r2, #0
	bl	__Func_9228c
	mov	r0, #2
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r1, #0x18
	mov	r0, #2
	neg	r1, r1
	mov	r2, #0
	bl	__Func_9228c
	mov	r0, #0xb
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r0, #0xf
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r1, #0x18
	mov	r0, #0xb
	neg	r1, r1
	mov	r2, #0
	bl	__Func_9228c
	mov	r1, #0x18
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_f9080
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x3c
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
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r0, #1
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r0, #2
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r0, #3
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_92064
	mov	r1, #0xe4
	mov	r2, #0xb8
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe8
	mov	r2, #0x80
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xf0
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #0xdc
	mov	r2, #0xc0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xf4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #3
	bl	__Func_9218c
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0xf4
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__Func_9218c
	mov	r1, #0xec
	mov	r2, #0xb8
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_9218c
	mov	r0, #2
	bl	__Func_923c4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #2
	bl	__Func_92adc
	mov	r0, #3
	bl	__Func_923c4
	mov	r0, #3
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #3
	bl	__Func_92adc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x3c
	bl	__Func_9163c
	ldr	r5, =0x248e
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #6
	mov	r0, #0xd
	bl	__Func_924d4
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #7
	mov	r0, #0xd
	bl	__Func_924d4
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92848
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r0, #3
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #2
	bl	__Func_9280c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x46
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #5
	mov	r0, #0xd
	bl	__Func_924d4
	mov	r0, #0x46
	bl	__Func_9163c
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xd
	mov	r1, #7
	bl	__Func_924d4
	mov	r1, #0x84
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_937b8
	add	r0, r5, #4
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_92548
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0xd0
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_9280c
	add	r0, r5, #5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x4b
	bl	__Func_937b8
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_924d4
	add	r0, r5, #6
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, #0x3c
	bl	__Func_9163c
	add	r0, r5, #7
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe0
	mov	r2, #0xd0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_924d4
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #8
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #9
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	b	.L39e0

	.pool_aligned

.L39e0:
	mov	r1, #4
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xa
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #3
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xc
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_937b8
	mov	r2, #0
	mov	r1, #1
	mov	r0, #3
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #0xd
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #3
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #0xe
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #3
	bl	__Func_9280c
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #0x81
	mov	r2, #0x1e
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_9259c
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xf
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #1
	ldr	r1, =0x107
	mov	r2, #0x6e
	bl	__Func_937b8
	mov	r1, #0xe4
	mov	r2, #0xd4
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_9218c
	mov	r0, #1
	bl	__Func_923c4
	mov	r1, #1
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, r5
	add	r0, #0x10
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #1
	mov	r0, #2
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, r5
	add	r0, #0x11
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #1
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xd
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_92548
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x12
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_9259c
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x13
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x14
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_9280c
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x15
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xe4
	mov	r2, #0x98
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L3c88
	mov	r0, #0x13
	bl	__Func_f9080
	mov	r0, r5
	add	r0, #0x16
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	b	.L3c9e

	.pool_aligned

.L3c88:
	mov	r0, #0x13
	bl	__Func_f9080
	mov	r0, r5
	add	r0, #0x17
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
.L3c9e:
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #3
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xc
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xd
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #0xe4
	mov	r1, #1
	mov	r2, #0xf0
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_933f8
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #8
	bl	__Func_f9080
	ldr	r5, =0x24a6
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe4
	mov	r2, #0x8c
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xe
	bl	__Func_9218c
	mov	r0, #0xe
	bl	__Func_923c4
	mov	r1, #0xdc
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_9218c
	mov	r0, #0xe4
	mov	r1, #1
	mov	r2, #0xe0
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_933f8
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0xe
	bl	__Func_923c4
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0x59
	bl	__Func_9163c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_925cc
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x50
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_937b8
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #4
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_9259c
	add	r0, r5, #5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_92548
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	add	r0, r5, #6
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_9259c
	mov	r1, #0x81
	mov	r2, #0x50
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_937b8
	add	r0, r5, #7
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x3c
	ldr	r1, =0x103
	mov	r0, #0xe
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #8
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, r5
	add	r0, #9
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_92f84
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r1, =0x101
	mov	r0, #0xd
	bl	__Func_93874
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_93874
	mov	r1, #0xf8
	lsl	r1, #1
	mov	r2, #0xf0
	mov	r0, #0xe
	bl	__Func_9218c
	mov	r0, #0xe
	bl	__Func_923c4
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0xe
	mov	r0, #0xc
	bl	__Func_9280c
	mov	r0, r5
	add	r0, #0xa
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_9259c
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_92f84
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0xc
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0xd
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0xe
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0x8c
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xe
	bl	__Func_92848
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #0x84
	mov	r2, #0xb4
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0xf
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x50
	ldr	r1, =0x101
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x10
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0
	bl	__Func_92848
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	bl	__Func_92848
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #1
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r0, #2
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r2, #0
	mov	r1, #0xe
	mov	r0, #3
	bl	__Func_9280c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x11
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x12
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #2
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x13
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x14
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_937b8
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x15
	bl	__Func_92b94
	mov	r0, #0xe
	b	.L4108

	.pool_aligned

.L4108:
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x5a
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x16
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0x50
	bl	__Func_9163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0x78
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x17
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x18
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_9259c
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x19
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #1
	bl	__Func_924d4
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x1a
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, r5
	add	r0, #0x1b
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x1c
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x5a
	ldr	r1, =0x101
	mov	r0, #2
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x1d
	bl	__Func_92b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_92adc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x1e
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_9259c
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x1f
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x20
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x21
	bl	__Func_92b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x22
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x80
	mov	r2, #0x50
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_937b8
	mov	r0, r5
	add	r0, #0x23
	bl	__Func_92b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_92548
	mov	r0, r5
	add	r0, #0x24
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_9280c
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_924d4
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x25
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #2
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	beq	.L4360
	mov	r0, r5
	add	r0, #0x26
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
.L4360:
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_924d4
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xc
	bl	__Func_92848
	mov	r0, #0
	mov	r1, #3
	bl	__Func_924d4
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_924d4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L43c4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_92128
.L43c4:
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
	beq	.L43f4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_92128
.L43f4:
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
	beq	.L4424
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_92128
.L4424:
	mov	r0, #3
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_923e4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xc
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r1, #0xec
	mov	r2, #0xb8
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_92adc
	mov	r2, #0
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_9280c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xe
	bl	__Func_9280c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, r5
	add	r0, #0x27
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_925cc
	mov	r0, r5
	add	r0, #0x28
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_92064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0xc
	lsl	r1, #9
	bl	__Func_92064
	mov	r0, #0
	mov	r1, #1
	bl	__Func_9335c
	mov	r1, #0xf0
	mov	r2, #0xf8
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92b08
	mov	r0, #0
	mov	r1, #0
	bl	__Func_92b08
	mov	r1, #0xf0
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0xe
	mov	r2, #0
	mov	r0, #0
	bl	__Func_9280c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r0, #0xc
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_9280c
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #6
	bl	__Func_92adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_924d4
	mov	r0, #5
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_924d4
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_924d4
	mov	r0, #0x64
	bl	__Func_9163c
	mov	r1, #0xf0
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_9218c
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0xe4
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r1, #0xe4
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0xb0
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r1, #0xb0
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xc
	bl	__Func_9218c
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #0x11
	bl	__Func_f9080
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x43
	str	r2, [r3]
	bl	__Func_91df4
	mov	r0, #1
	b	.L461c

	.pool_aligned

.L461c:
	bl	__Func_9163c
	mov	r0, #0xd2
	bl	__Func_9163c
	mov	r0, #4
	bl	__Func_91e9c
	bl	__Func_91750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_3054

.thumb_func_start OvlFunc_4638
	push	{lr}
	ldr	r3, =.L5fa4
	ldr	r3, [r3]
	cmp	r3, #7
	bhi	.L46d8
	ldr	r2, =.L464c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L464c:
	.word	.L466c
	.word	.L4670
	.word	.L4674
	.word	.L4678
	.word	.L467c
	.word	.L4694
	.word	.L4680
	.word	.L4684
.L466c:
	ldr	r0, =0x2414
	b	.L4686
.L4670:
	ldr	r0, =0x2415
	b	.L4686
.L4674:
	ldr	r0, =0x2416
	b	.L4686
.L4678:
	ldr	r0, =0x2417
	b	.L4686
.L467c:
	ldr	r0, =0x2418
	b	.L4686
.L4680:
	ldr	r0, =0x241a
	b	.L4686
.L4684:
	ldr	r0, =0x241b
.L4686:
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
	b	.L46d8
.L4694:
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	ldr	r0, =0x2419
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
.L46d8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_4638

.thumb_func_start OvlFunc_4704
	push	{r5, lr}
	mov	r0, #0x15
	ldr	r1, =0x101
	mov	r2, #0x1e
	bl	__Func_937b8
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x15
	bl	__Func_92adc
	mov	r0, #0x32
	bl	__Func_9163c
	ldr	r5, =0x2411
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_92adc
	add	r5, #1
	mov	r0, #0x28
	bl	__Func_9163c
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_92f84
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4704

.thumb_func_start OvlFunc_4794
	push	{r5, lr}
	bl	__Func_916b0
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	beq	.L47b8
	ldr	r0, =0x2566
	bl	__Func_92b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_92f84
	bl	__Func_91750
	b	.L4902
.L47b8:
	ldr	r0, =0x313
	bl	__Func_79338
	cmp	r0, #0
	beq	.L47d6
	ldr	r0, =0x2457
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_92c40
	bl	__Func_91750
	b	.L4902
.L47d6:
	mov	r1, #0x81
	mov	r0, #0x19
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__Func_937b8
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_9280c
	ldr	r5, =0x244f
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0
	mov	r0, #0x19
	mov	r1, #0x18
	bl	__Func_9280c
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_93500
	bl	__Func_93530
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_93500
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r2, #0x3c
	ldr	r1, =0x105
	mov	r0, #0x19
	bl	__Func_937b8
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92f84
	mov	r2, #0x3c
	ldr	r1, =0x107
	mov	r0, #0x19
	bl	__Func_937b8
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_92f84
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_937b8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x19
	bl	__Func_9280c
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L489c
	add	r0, r5, #4
	bl	__Func_92b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92c40
	b	.L48aa
.L489c:
	add	r0, r5, #5
	bl	__Func_92b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92c40
.L48aa:
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r2, #0x3c
	ldr	r1, =0x105
	mov	r0, #0x19
	bl	__Func_937b8
	ldr	r5, =0x2455
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_92c40
	mov	r1, #1
	mov	r0, #0x19
	bl	__Func_925cc
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_92c40
	add	r5, #2
	mov	r1, #3
	mov	r0, #0x19
	bl	__Func_92548
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_92c40
	ldr	r0, =0x313
	bl	__Func_79358
	bl	__Func_91750
.L4902:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4794

.thumb_func_start OvlFunc_4928
	push	{lr}
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4944
	ldr	r0, =0x2568
	bl	__Func_92b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92f84
	b	.L4952
.L4944:
	ldr	r0, =0x2458
	bl	__Func_92b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_92f84
.L4952:
	pop	{r0}
	bx	r0
.func_end OvlFunc_4928

.thumb_func_start OvlFunc_4964
	push	{lr}
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4980
	ldr	r0, =0x2569
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	b	.L498e
.L4980:
	ldr	r0, =0x244e
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
.L498e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_4964

.thumb_func_start OvlFunc_49a0
	push	{r5, lr}
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	bne	.L49ae
	b	.L4b2e
.L49ae:
	ldr	r0, =0x94e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L49ba
	b	.L4b1e
.L49ba:
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L49c8
	b	.L4b1e
.L49c8:
	ldr	r5, =0x2561
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_925cc
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x18
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_92064
	mov	r1, #4
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0x18
	bl	__Func_9228c
	mov	r0, #0x18
	bl	__Func_923c4
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x18
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_92064
	mov	r1, #6
	mov	r0, #0x18
	neg	r1, r1
	mov	r2, #0
	bl	__Func_9228c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_9280c
	mov	r0, #0x18
	bl	__Func_923c4
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_925cc
	mov	r2, #0
	mov	r1, #0x18
	mov	r0, #0x19
	bl	__Func_9280c
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_92f84
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r1, #3
	mov	r0, #0x19
	bl	__Func_924d4
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x19
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_92064
	mov	r1, #0xdc
	lsl	r1, #2
	mov	r2, #0x70
	mov	r0, #0x19
	bl	__Func_9218c
	mov	r0, #0x19
	bl	__Func_923c4
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x19
	bl	__Func_92adc
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_924d4
	mov	r0, #0x46
	bl	__Func_9163c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0x18
	bl	__Func_9228c
	mov	r0, #0x18
	bl	__Func_923c4
	add	r5, #4
	mov	r1, #5
	mov	r0, #0x18
	bl	__Func_924d4
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0xe0
	lsl	r1, #2
	mov	r2, #0x78
	mov	r0, #0
	bl	__Func_9218c
	mov	r0, #0
	bl	__Func_923c4
	mov	r2, #0
	mov	r1, #0x19
	mov	r0, #0
	bl	__Func_92848
	mov	r0, #0x3c
	bl	__Func_9163c
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_79358
	b	.L4b3c
.L4b1e:
	ldr	r0, =0x2567
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
	b	.L4b3c
.L4b2e:
	ldr	r0, =0x244d
	bl	__Func_92b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_92f84
.L4b3c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_49a0

.thumb_func_start OvlFunc_4b68
	push	{lr}
	mov	r0, #0x1a
	mov	r1, #1
	mov	r2, #5
	bl	__Func_955b0
	ldr	r0, =0x94e
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_4b68

.thumb_func_start OvlFunc_4b84
	push	{lr}
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_925cc
	ldr	r0, =0x2441
	bl	__Func_92b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_92f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_4b84

.thumb_func_start OvlFunc_4ba4
	push	{lr}
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_925cc
	ldr	r0, =0x2440
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_4ba4

.thumb_func_start OvlFunc_4bc4
	push	{lr}
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_925cc
	ldr	r0, =0x243f
	bl	__Func_92b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_4bc4

.thumb_func_start OvlFunc_4be4
	push	{lr}
	ldr	r0, =0x2459
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_93054
	pop	{r0}
	bx	r0
.func_end OvlFunc_4be4

.thumb_func_start OvlFunc_4bfc
	push	{r5, lr}
	ldr	r0, =0x226
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4c18
	ldr	r0, =0x2434
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	b	.L4cee
.L4c18:
	bl	__Func_916b0
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_9280c
	ldr	r0, =0x227
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4c8c
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_92560
	mov	r0, #0x14
	bl	__Func_920a0
	mov	r0, #0x14
	bl	__Func_920e8
	mov	r0, #0x14
	bl	__Func_9163c
	ldr	r5, =0x242e
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	mov	r1, #0x81
	mov	r2, #0x1e
	lsl	r1, #1
	mov	r0, #0x14
	add	r5, #1
	bl	__Func_937b8
	mov	r0, r5
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92f84
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r0, #0x14
	mov	r1, #4
	bl	__Func_924d4
	mov	r0, #0x1e
	bl	__Func_9163c
.L4c8c:
	ldr	r5, =0x2430
	mov	r0, r5
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__Func_937b8
	add	r0, r5, #1
	bl	__Func_92b94
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_92c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_91c7c
	cmp	r0, #0
	bne	.L4cd6
	add	r0, r5, #2
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92c40
	ldr	r0, =0x226
	bl	__Func_79358
	b	.L4ce4
.L4cd6:
	add	r0, r5, #3
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92c40
.L4ce4:
	ldr	r0, =0x227
	bl	__Func_79358
	bl	__Func_91750
.L4cee:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4bfc

.thumb_func_start OvlFunc_4d0c
	push	{lr}
	ldr	r0, =0x226
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4d28
	ldr	r0, =0x2435
	bl	__Func_92b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_92f84
	b	.L4d3c
.L4d28:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xbf
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	strh	r0, [r3]
	bl	__Func_97608
	bl	OvlFunc_4bfc
.L4d3c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_4d0c

.thumb_func_start OvlFunc_4d4c
	bx	lr
.func_end OvlFunc_4d4c

.thumb_func_start OvlFunc_4d50
	push	{r5, lr}
	ldr	r5, =0x256c
	mov	r0, r5
	bl	__Func_92b94
	ldr	r0, =0x800d
	mov	r1, #0
	bl	__Func_92f84
	mov	r0, #0xea
	bl	__Func_78698
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L4d78
	add	r0, r5, #2
	mov	r1, #1
	bl	__Func_1776c
.L4d78:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_4d50

.thumb_func_start OvlFunc_4d88
	push	{lr}
	ldr	r0, =0x256d
	bl	__Func_92b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_92f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_4d88

.thumb_func_start OvlFunc_4da0
	push	{r5, r6, r7, lr}
	ldr	r5, =.L5fa4
	bl	__Func_4458
	lsl	r3, r0, #3
	sub	r3, r0
	lsr	r3, #16
	ldr	r7, =ewram_240
	mov	r1, #0xe0
	str	r3, [r5]
	lsl	r1, #1
	add	r5, r7, r1
	mov	r3, #0
	ldrsh	r2, [r5, r3]
	ldr	r3, =0xa0
	ldrh	r1, [r5]
	cmp	r2, r3
	bne	.L4dd2
	mov	r0, #0xe0
	lsl	r0, #4
	bl	__Func_108c4
	bl	OvlFunc_4f60
	ldrh	r1, [r5]
.L4dd2:
	lsl	r3, r1, #16
	ldr	r2, =0xa1
	asr	r3, #16
	cmp	r3, r2
	bne	.L4de2
	bl	OvlFunc_50e4
	ldrh	r1, [r5]
.L4de2:
	lsl	r3, r1, #16
	ldr	r2, =0xa2
	asr	r3, #16
	cmp	r3, r2
	bne	.L4df2
	bl	OvlFunc_5324
	ldrh	r1, [r5]
.L4df2:
	lsl	r3, r1, #16
	ldr	r2, =0xa3
	asr	r3, #16
	cmp	r3, r2
	beq	.L4dfe
	b	.L4f32
.L4dfe:
	ldr	r3, =iwram_1ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r2, #0x81
	add	r3, r1
	lsl	r2, #2
	str	r2, [r3]
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_92adc
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_924d4
	bl	OvlFunc_5520
	mov	r0, #8
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L4e42
	mov	r1, #0
	bl	__Func_c528
.L4e42:
	mov	r3, r5
	add	r3, #0x23
	mov	r6, #2
	strb	r6, [r3]
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L4e5c
	mov	r1, #0
	bl	__Func_c528
.L4e5c:
	mov	r3, r5
	add	r3, #0x23
	strb	r6, [r3]
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L4e74
	mov	r1, #0
	bl	__Func_c528
.L4e74:
	mov	r3, r5
	add	r3, #0x23
	mov	r0, #0xe0
	strb	r6, [r3]
	lsl	r0, #4
	bl	__Func_108c4
	mov	r2, #0xe1
	lsl	r2, #1
	add	r5, r7, r2
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #4
	bne	.L4ea0
	mov	r0, #0xc0
	lsl	r0, #4
	bl	__Func_108c4
	bl	OvlFunc_3054
	ldrh	r2, [r5]
.L4ea0:
	lsl	r3, r2, #16
	mov	r2, #0xc0
	lsl	r2, #10
	cmp	r3, r2
	bne	.L4f14
	mov	r0, #0xc0
	lsl	r0, #4
	bl	__Func_108c4
	ldr	r0, =0x941
	bl	__Func_79338
	cmp	r0, #0
	beq	.L4f14
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r1, #0xd8
	mov	r2, #0xac
	mov	r0, #0x10
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xa0
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe4
	mov	r2, #0x90
	mov	r0, #0xd
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_923e4
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_92adc
	mov	r1, #0xe4
	mov	r2, #0xa0
	lsl	r1, #17
	mov	r0, #0x11
	lsl	r2, #17
	bl	__Func_923e4
	mov	r0, #0x11
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
.L4f14:
	mov	r0, #0xf
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L4f26
	mov	r1, #0
	bl	__Func_c528
.L4f26:
	mov	r2, r5
	mov	r3, #2
	add	r2, #0x23
	strb	r3, [r2]
	ldr	r3, =0xcccc
	str	r3, [r5, #0x18]
.L4f32:
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_4da0

.thumb_func_start OvlFunc_4f60
	push	{lr}
	sub	sp, #8
	bl	OvlFunc_5470
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #2
	cmp	r3, #0x11
	bhi	.L5076
	ldr	r2, =.L4f84
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L4f84:
	.word	.L4fcc
	.word	.L4fcc
	.word	.L4fcc
	.word	.L4fcc
	.word	.L4fcc
	.word	.L4fcc
	.word	.L5076
	.word	.L5076
	.word	.L5076
	.word	.L5076
	.word	.L4ffa
	.word	.L505c
	.word	.L505c
	.word	.L505c
	.word	.L500c
	.word	.L500c
	.word	.L500c
	.word	.L4ffa
.L4fcc:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xc8
	add	r2, #0x40
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_1718
	bl	__Func_41d8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_175c
	bl	__Func_41d8
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_17bc
	lsl	r1, #4
	bl	__Func_41d8
	b	.L5052
.L4ffa:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xc0
	add	r2, #0x49
	str	r2, [r3]
	b	.L5054
.L500c:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xc8
	add	r2, #0x40
	str	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_1528
	bl	__Func_41d8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_19e8
	bl	__Func_41d8
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	mov	r3, #0x6e
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x65
	mov	r1, #9
	mov	r2, #0xa
	mov	r3, #8
	bl	__Func_105d4
.L5052:
	mov	r0, #0xe0
.L5054:
	lsl	r0, #4
	bl	__Func_108c4
	b	.L508c
.L505c:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0xc8
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =OvlFunc_169c
	lsl	r1, #4
	bl	__Func_41d8
	b	.L508c
.L5076:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_108c4
.L508c:
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_92950
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_92950
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_92950
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_92950
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_92950
	mov	r0, #1
	bl	__Func_30f8
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_4f60

.thumb_func_start OvlFunc_50e4
	push	{r5, lr}
	bl	OvlFunc_54b0
	mov	r0, #9
	mov	r1, #1
	bl	__Func_92950
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_92950
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_92950
	ldr	r0, =0x94c
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5116
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L5116:
	ldr	r0, =0x949
	bl	__Func_79338
	cmp	r0, #0
	beq	.L512a
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L512a:
	ldr	r0, =0x94b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L513e
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L513e:
	ldr	r0, =0xf2e
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5152
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
.L5152:
	ldr	r3, =ewram_240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x1e
	bls	.L5166
	b	.L52b8
.L5166:
	ldr	r2, =.L5170
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L5170:
	.word	.L51ec
	.word	.L51ec
	.word	.L51ec
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L520a
	.word	.L527a
	.word	.L527a
	.word	.L520a
	.word	.L52ac
	.word	.L52ac
	.word	.L52ac
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L520a
	.word	.L5248
	.word	.L5248
	.word	.L520a
	.word	.L520a
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L52b8
	.word	.L5298
.L51ec:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_108c4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_1150
	b	.L5264
.L520a:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xc0
	add	r2, #0x49
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_108c4
	mov	r0, #0x18
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L52ce
	mov	r1, #0xda
	mov	r2, #0xf0
	mov	r0, #0x19
	lsl	r1, #18
	lsl	r2, #15
	bl	__Func_923e4
	b	.L52ce
.L5248:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_108c4
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_138c
.L5264:
	bl	__Func_41d8
	mov	r0, #1
	bl	__Func_30f8
	bl	__Func_fe9c
	mov	r0, #1
	bl	__Func_30f8
	b	.L52ce
.L527a:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =0x94a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L52ce
	bl	OvlFunc_206c
	b	.L52ce
.L5298:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	bl	OvlFunc_206c
	b	.L52ce
.L52ac:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_1a44
	lsl	r1, #4
	bl	__Func_41d8
	b	.L52ce
.L52b8:
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0xe0
	add	r2, #0x40
	str	r2, [r3]
	lsl	r0, #4
	bl	__Func_108c4
.L52ce:
	mov	r0, #8
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #8
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	mov	r0, #8
	mov	r1, #1
	bl	__Func_92b08
	mov	r3, #0xc0
	lsl	r3, #8
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_50e4

.thumb_func_start OvlFunc_5324
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	bl	OvlFunc_54dc
	ldr	r0, =0x943
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5346
	bl	OvlFunc_c78
.L5346:
	ldr	r0, =0x217
	bl	__Func_79358
	mov	r0, #0x86
	lsl	r0, #2
	bl	__Func_79358
	ldr	r0, =0x944
	bl	__Func_79338
	cmp	r0, #0
	beq	.L536e
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r0, =0x217
	bl	__Func_79374
.L536e:
	ldr	r0, =0x945
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5386
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	bl	OvlFunc_22d4
.L5386:
	ldr	r0, =0x946
	bl	__Func_79338
	cmp	r0, #0
	beq	.L53a2
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	mov	r0, #0x86
	lsl	r0, #2
	bl	__Func_79374
.L53a2:
	ldr	r0, =0x947
	bl	__Func_79338
	cmp	r0, #0
	beq	.L53b0
	bl	OvlFunc_226c
.L53b0:
	ldr	r0, =0x948
	bl	__Func_79338
	cmp	r0, #0
	beq	.L53be
	bl	OvlFunc_22a0
.L53be:
	bl	__Func_916b0
	mov	r0, #8
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L53d6
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L53d6:
	mov	r0, #9
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L53ea
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L53ea:
	mov	r0, #0xa
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L53fe
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L53fe:
	mov	r0, #0xb
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L5410
	mov	r1, #0
	bl	__Func_c528
.L5410:
	mov	r3, r5
	add	r3, #0x23
	mov	r2, #2
	strb	r2, [r3]
	mov	r0, #0xc
	bl	__Func_92054
	mov	r5, r0
	cmp	r5, #0
	beq	.L5430
	mov	r3, r5
	add	r3, #0x59
	ldrb	r2, [r3]
	mov	r1, #0x10
	orr	r2, r1
	strb	r2, [r3]
.L5430:
	mov	r0, #0xb
	bl	__Func_92054
	mov	r1, #0
	bl	__Func_c528
	bl	__Func_91750
	mov	r0, #0xe0
	lsl	r0, #4
	bl	__Func_108c4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_5324

.thumb_func_start OvlFunc_5470
	push	{lr}
	ldr	r0, =0x35a
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5482
	mov	r0, #0
	bl	OvlFunc_ee0
.L5482:
	ldr	r0, =0x35b
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5492
	mov	r0, #1
	bl	OvlFunc_ee0
.L5492:
	mov	r0, #0xd7
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L54a4
	mov	r0, #2
	bl	OvlFunc_ee0
.L54a4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_5470

.thumb_func_start OvlFunc_54b0
	push	{lr}
	mov	r0, #0xd6
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L54c4
	mov	r0, #0
	bl	OvlFunc_e30
.L54c4:
	ldr	r0, =0x359
	bl	__Func_79338
	cmp	r0, #0
	beq	.L54d4
	mov	r0, #1
	bl	OvlFunc_e30
.L54d4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_54b0

.thumb_func_start OvlFunc_54dc
	push	{lr}
	ldr	r0, =0x355
	bl	__Func_79338
	cmp	r0, #0
	beq	.L54ee
	mov	r0, #0
	bl	OvlFunc_d54
.L54ee:
	ldr	r0, =0x356
	bl	__Func_79338
	cmp	r0, #0
	beq	.L54fe
	mov	r0, #1
	bl	OvlFunc_d54
.L54fe:
	ldr	r0, =0x357
	bl	__Func_79338
	cmp	r0, #0
	beq	.L550e
	mov	r0, #2
	bl	OvlFunc_d54
.L550e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_54dc

.thumb_func_start OvlFunc_5520
	push	{lr}
	mov	r0, #0xd4
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5534
	mov	r0, #0
	bl	OvlFunc_c90
.L5534:
	ldr	r0, =0x351
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5544
	mov	r0, #1
	bl	OvlFunc_c90
.L5544:
	ldr	r0, =0x352
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5554
	mov	r0, #2
	bl	OvlFunc_c90
.L5554:
	ldr	r0, =0x353
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5564
	mov	r0, #3
	bl	OvlFunc_c90
.L5564:
	mov	r0, #0xd5
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L5576
	mov	r0, #4
	bl	OvlFunc_c90
.L5576:
	pop	{r0}
	bx	r0
.func_end OvlFunc_5520

	.section .data
	.global .L5fa4
	.global .L62a4
	.global .L64b4
	.global .L6754
	.global .L6814
	.global .L68a4
	.global .L6910
	.global .L697c
	.global .L69b8
	.global .L69d0
	.global .L6ac0
	.global .L6c28
	.global .L6e08
	.global .L6e98
	.global .L6ff4
	.global .L7258
	.global .L7528
	.global .L763c
	.global .L7714
	.global .L773c
	.global .L7754
	.global .L7764

.L5fa4:
	.incbin "overlays/rom_7e7574/orig.bin", 0x5fa4, (0x62a4-0x5fa4)
.L62a4:
	.incbin "overlays/rom_7e7574/orig.bin", 0x62a4, (0x64b4-0x62a4)
.L64b4:
	.incbin "overlays/rom_7e7574/orig.bin", 0x64b4, (0x6754-0x64b4)
.L6754:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6754, (0x6814-0x6754)
.L6814:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6814, (0x68a4-0x6814)
.L68a4:
	.incbin "overlays/rom_7e7574/orig.bin", 0x68a4, (0x6910-0x68a4)
.L6910:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6910, (0x697c-0x6910)
.L697c:
	.incbin "overlays/rom_7e7574/orig.bin", 0x697c, (0x69b8-0x697c)
.L69b8:
	.incbin "overlays/rom_7e7574/orig.bin", 0x69b8, (0x69d0-0x69b8)
.L69d0:
	.incbin "overlays/rom_7e7574/orig.bin", 0x69d0, (0x6ac0-0x69d0)
.L6ac0:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6ac0, (0x6c28-0x6ac0)
.L6c28:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6c28, (0x6e08-0x6c28)
.L6e08:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6e08, (0x6e98-0x6e08)
.L6e98:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6e98, (0x6ff4-0x6e98)
.L6ff4:
	.incbin "overlays/rom_7e7574/orig.bin", 0x6ff4, (0x7258-0x6ff4)
.L7258:
	.incbin "overlays/rom_7e7574/orig.bin", 0x7258, (0x7528-0x7258)
.L7528:
	.incbin "overlays/rom_7e7574/orig.bin", 0x7528, (0x763c-0x7528)
.L763c:
	.incbin "overlays/rom_7e7574/orig.bin", 0x763c, (0x7714-0x763c)
.L7714:
	.incbin "overlays/rom_7e7574/orig.bin", 0x7714, (0x773c-0x7714)
.L773c:
	.incbin "overlays/rom_7e7574/orig.bin", 0x773c, (0x7754-0x773c)
.L7754:
	.incbin "overlays/rom_7e7574/orig.bin", 0x7754, (0x7764-0x7754)
.L7764:
	.incbin "overlays/rom_7e7574/orig.bin", 0x7764

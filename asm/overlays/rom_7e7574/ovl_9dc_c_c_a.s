	.include "macros.inc"

.thumb_func_start OvlFunc_7e7574_252c
	push	{lr}
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2542
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_80923e4
.L2542:
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2556
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_80923e4
.L2556:
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L256a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L256a:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_8092064
	mov	r1, #0xe4
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xc0
	bl	__Func_809218c
	mov	r0, #3
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_8092064
	mov	r1, #0xdc
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__Func_809218c
	mov	r0, #1
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_8092064
	mov	r1, #0xe0
	lsl	r1, #1
	mov	r2, #0xf0
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #2
	bl	__Func_80923c4
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #3
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #3
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xf
	bl	__Func_809163c
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_252c

.thumb_func_start OvlFunc_7e7574_25f8
	push	{lr}
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	sub	sp, #8
	bl	__Func_8012330
	mov	r0, #0x8d
	bl	__Func_80f9080
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_80f9080
	mov	r0, #5
	bl	__Func_809163c
	mov	r0, #0x91
	bl	__Func_80f9080
	mov	r3, #0x1a
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r0, #0x10
	mov	r1, #0x4b
	mov	r2, #7
	bl	__Func_80105d4
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_25f8

.thumb_func_start OvlFunc_7e7574_269c
	push	{lr}
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r0, #0x3c
	bl	__Func_809163c
	ldr	r0, =0x247c
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xf
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xec
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0xb4
	bl	__Func_809218c
	mov	r1, #0xec
	mov	r2, #0xb4
	mov	r0, #0xf
	lsl	r1, #1
	bl	__Func_809218c
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_809335c
	mov	r0, #0xb
	bl	__Func_80923c4
	mov	r0, #0xb
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_269c

.thumb_func_start OvlFunc_7e7574_2718
	push	{lr}
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xfc
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_809218c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xdc
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__Func_809218c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xf0
	lsl	r1, #1
	mov	r2, #0xe0
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #2
	bl	__Func_80923c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #3
	bl	__Func_80923c4
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_2718

.thumb_func_start OvlFunc_7e7574_27b0
	push	{r5, lr}
	ldr	r0, =0x301
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L27c0
	bl	.L302e
.L27c0:
	mov	r0, #0x9c
	lsl	r0, #2
	bl	__Func_8079358
	bl	__Func_80916b0
	ldr	r0, =0x942
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L27d8
	b	.L29b0
.L27d8:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0xe4
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	bl	OvlFunc_7e7574_252c
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_8092560
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #2
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_8092064
	mov	r1, #0xe8
	lsl	r1, #1
	mov	r2, #0xc0
	mov	r0, #2
	bl	__Func_809218c
	mov	r0, #2
	bl	__Func_80923c4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe4
	mov	r2, #0xa0
	lsl	r2, #17
	mov	r0, #0xd
	lsl	r1, #17
	bl	__Func_80923e4
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r1, #7
	lsl	r0, #10
	bl	__Func_80933d4
	ldr	r5, =0x247d
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xe5
	mov	r2, #0x88
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xd
	bl	__Func_809218c
	mov	r0, #0xd
	bl	__Func_80923c4
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #8
	mov	r2, #8
	neg	r1, r1
	mov	r0, #0xd
	bl	__Func_809228c
	mov	r0, #0xd
	bl	__Func_80923c4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x9b
	bl	__Func_80f9080
	add	r0, r5, #1
	mov	r1, #1
	bl	__Func_801776c
	mov	r2, #8
	neg	r2, r2
	mov	r1, #8
	mov	r0, #0xd
	bl	__Func_809228c
	bl	OvlFunc_7e7574_25f8
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	add	r5, #2
	bl	OvlFunc_7e7574_2718
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_809280c
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092f84
	bl	OvlFunc_7e7574_269c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	mov	r0, #1
	bl	__Func_809163c
	ldr	r3, =ewram_2000240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0xa3
	mov	r1, #4
	bl	__Func_8091f90
	mov	r0, #0x62
	mov	r1, #4
	bl	__Func_8091eb0
	b	.L302a

	.pool_aligned

.L29b0:
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r5, =0x2464
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x8c
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_8092560
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0xe4
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	bl	OvlFunc_7e7574_252c
	mov	r0, #2
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_8092064
	mov	r1, #0xe8
	mov	r2, #0xc0
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_809218c
	mov	r0, #2
	bl	__Func_80923c4
	mov	r0, #0x1e
	bl	__Func_809163c
	add	r0, r5, #2
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, #0x6e
	bl	__Func_809163c
	mov	r0, #0x3c
	bl	__Func_80f9080
	add	r0, r5, #3
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xc
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r1, #0x82
	mov	r2, #0xd0
	lsl	r1, #2
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	add	r0, r5, #4
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x84
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, #0x78
	bl	__Func_809163c
	add	r0, r5, #5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0x19
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xf0
	lsl	r1, #1
	mov	r2, #0xc8
	mov	r0, #2
	bl	__Func_809218c
	mov	r0, #2
	bl	__Func_80923c4
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #2
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__Func_809163c
	add	r0, r5, #6
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_80924d4
	mov	r0, #0x50
	bl	__Func_809163c
	add	r0, r5, #7
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xe4
	mov	r2, #0xa0
	lsl	r2, #17
	lsl	r1, #17
	mov	r0, #0xd
	bl	__Func_80923e4
	mov	r0, #0x13
	bl	__Func_80f9080
	mov	r0, r5
	add	r0, #8
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #5
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x3d
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r0, #0xd
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xe4
	mov	r2, #0x98
	lsl	r2, #1
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_809218c
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_809335c
	mov	r0, #0xd
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809335c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0xd
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #9
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xd
	bl	__Func_809280c
	mov	r0, r5
	add	r0, #0xa
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092f84
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092848
	mov	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #3
	mov	r1, #0xd
	bl	__Func_809280c
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0xc
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xd
	bl	__Func_80924d4
	mov	r0, r5
	add	r0, #0xd
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #1
	bl	__Func_809218c
	b	.L2ddc

	.pool_aligned

.L2ddc:
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, r5
	add	r0, #0xe
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xec
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #2
	bl	__Func_809218c
	mov	r0, #2
	bl	__Func_80923c4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0xf
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x10
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #3
	bl	__Func_809218c
	mov	r0, #3
	bl	__Func_80923c4
	mov	r2, #0
	mov	r0, #3
	mov	r1, #0xd
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x11
	bl	__Func_8092b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #4
	mov	r0, #0xd
	bl	__Func_80924d4
	mov	r0, r5
	add	r0, #0x12
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x84
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x13
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x14
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x15
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xe4
	mov	r2, #0x8c
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xd
	bl	__Func_809218c
	mov	r0, #0xd
	bl	__Func_80923c4
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #8
	mov	r2, #8
	neg	r1, r1
	mov	r0, #0xd
	bl	__Func_809228c
	mov	r0, #0xd
	bl	__Func_80923c4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x9b
	bl	__Func_80f9080
	ldr	r0, =0x247e
	mov	r1, #1
	bl	__Func_801776c
	mov	r2, #8
	mov	r0, #0xd
	mov	r1, #8
	neg	r2, r2
	bl	__Func_809228c
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0xd
	bl	__Func_809280c
	bl	OvlFunc_7e7574_25f8
	mov	r0, #0x34
	bl	__Func_80f9080
	mov	r0, r5
	add	r0, #0x17
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092f84
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #3
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xb
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_809280c
	bl	OvlFunc_7e7574_2718
	bl	OvlFunc_7e7574_269c
	ldr	r0, =0x942
	bl	__Func_8079358
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	mov	r0, #1
	bl	__Func_809163c
	ldr	r3, =ewram_2000240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0xa3
	mov	r1, #4
	bl	__Func_8091f90
	mov	r0, #0x62
	mov	r1, #4
	bl	__Func_8091eb0
.L302a:
	bl	__Func_8091750
.L302e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_27b0

.thumb_func_start OvlFunc_7e7574_3054
	push	{r5, lr}
	ldr	r0, =0x301
	sub	sp, #8
	bl	__Func_8079358
	ldr	r0, =0x941
	bl	__Func_8079358
	mov	r3, #0x1a
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r2, #7
	mov	r1, #0x4b
	mov	r0, #0x10
	bl	__Func_80105d4
	mov	r0, #4
	bl	OvlFunc_7e7574_c90
	bl	__Func_80916b0
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r1, #0xe4
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xdc
	mov	r2, #0xc0
	mov	r0, #1
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xf4
	mov	r2, #0xb8
	mov	r0, #3
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xec
	mov	r2, #0xb8
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x82
	mov	r2, #0xe0
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xb0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0xed
	mov	r0, #0xb
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0xee
	lsl	r2, #16
	mov	r0, #0xf
	lsl	r1, #17
	bl	__Func_80923e4
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #0xe5
	mov	r2, #0xf3
	mov	r0, #0xd
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0xd
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #5
	mov	r0, #0xd
	bl	__Func_80924d4
	bl	__Func_8091dc8
	mov	r0, #0x78
	bl	__Func_809163c
	ldr	r5, =0x2481
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #1
	bl	__Func_80937b8
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #1
	bl	__Func_80937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #1
	bl	__Func_80937b8
	ldr	r1, =0x101
	mov	r2, #1
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x3c
	bl	__Func_809163c
	add	r0, r5, #2
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #3
	bl	__Func_809280c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0xe8
	mov	r0, #0xc
	lsl	r1, #2
	bl	__Func_809218c
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_80924d4
	mov	r0, #0x3c
	bl	__Func_809163c
	add	r0, r5, #3
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0xf
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	add	r0, r5, #4
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #3
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0xd
	bl	__Func_809280c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809259c
	add	r0, r5, #5
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r0, #3
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r1, #4
	mov	r0, #3
	bl	__Func_80924d4
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80924d4
	add	r0, r5, #6
	bl	__Func_8092b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r2, #0x41
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0x64
	bl	__Func_809163c
	add	r0, r5, #7
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #8
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #9
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_809280c
	mov	r0, r5
	add	r0, #0xa
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L3388
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xc
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x3c
	bl	__Func_809163c
	b	.L3494

	.pool_aligned

.L3388:
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_8092b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #3
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, r5
	add	r0, #0xc
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #3
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xc
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #3
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
.L3494:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0xd0
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0xd0
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xf4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #3
	bl	__Func_809218c
	mov	r0, #3
	bl	__Func_80923c4
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #3
	bl	__Func_809218c
	mov	r0, #3
	bl	__Func_80923c4
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #2
	bl	__Func_809218c
	mov	r0, #2
	bl	__Func_80923c4
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092848
	mov	r2, #0
	mov	r1, #2
	mov	r0, #3
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_80924d4
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r0, #0xe2
	bl	__Func_80f9080
	mov	r0, #0xd
	mov	r1, #7
	bl	__Func_80924d4
	mov	r0, #0
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_8092064
	mov	r1, #0x18
	mov	r0, #0
	neg	r1, r1
	mov	r2, #0
	bl	__Func_809228c
	mov	r0, #1
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_8092064
	mov	r1, #0x18
	mov	r0, #1
	neg	r1, r1
	mov	r2, #0
	bl	__Func_809228c
	mov	r0, #3
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_8092064
	mov	r1, #0x18
	mov	r0, #3
	neg	r1, r1
	mov	r2, #0
	bl	__Func_809228c
	mov	r0, #2
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_8092064
	mov	r1, #0x18
	mov	r0, #2
	neg	r1, r1
	mov	r2, #0
	bl	__Func_809228c
	mov	r0, #0xb
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_8092064
	mov	r0, #0xf
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_8092064
	mov	r1, #0x18
	mov	r0, #0xb
	neg	r1, r1
	mov	r2, #0
	bl	__Func_809228c
	mov	r1, #0x18
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xf
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_80f9080
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_80924d4
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r0, #0
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_8092064
	mov	r0, #3
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_8092064
	mov	r1, #0xe4
	mov	r2, #0xb8
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe8
	mov	r2, #0x80
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0xf0
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0xdc
	mov	r2, #0xc0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xf4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #3
	bl	__Func_809218c
	mov	r0, #3
	bl	__Func_80923c4
	mov	r1, #0xf4
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__Func_809218c
	mov	r1, #0xec
	mov	r2, #0xb8
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_809218c
	mov	r0, #2
	bl	__Func_80923c4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #3
	bl	__Func_80923c4
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x3c
	bl	__Func_809163c
	ldr	r5, =0x248e
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #6
	mov	r0, #0xd
	bl	__Func_80924d4
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #7
	mov	r0, #0xd
	bl	__Func_80924d4
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092848
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r0, #3
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #2
	bl	__Func_809280c
	add	r0, r5, #2
	bl	__Func_8092b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r2, #0x46
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #5
	mov	r0, #0xd
	bl	__Func_80924d4
	mov	r0, #0x46
	bl	__Func_809163c
	add	r0, r5, #3
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xd
	mov	r1, #7
	bl	__Func_80924d4
	mov	r1, #0x84
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_80937b8
	add	r0, r5, #4
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #1
	ldr	r1, =0x103
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0xd0
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #1
	bl	__Func_80923c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_809280c
	add	r0, r5, #5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, #0x46
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x4b
	bl	__Func_80937b8
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_80924d4
	add	r0, r5, #6
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	add	r0, r5, #7
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xe0
	mov	r2, #0xd0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, r5
	add	r0, #8
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #9
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	b	.L39e0

	.pool_aligned

.L39e0:
	mov	r1, #4
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0xa
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #3
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0xc
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r2, #0
	mov	r1, #1
	mov	r0, #3
	bl	__Func_809280c
	mov	r0, r5
	add	r0, #0xd
	bl	__Func_8092b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #3
	bl	__Func_809280c
	mov	r0, r5
	add	r0, #0xe
	bl	__Func_8092b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #3
	bl	__Func_809280c
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x1e
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0xf
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #1
	ldr	r1, =0x107
	mov	r2, #0x6e
	bl	__Func_80937b8
	mov	r1, #0xe4
	mov	r2, #0xd4
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, r5
	add	r0, #0x10
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, r5
	add	r0, #0x11
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #3
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xd
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x12
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0x46
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x13
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #0x14
	bl	__Func_8092b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x15
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xe4
	mov	r2, #0x98
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L3c88
	mov	r0, #0x13
	bl	__Func_80f9080
	mov	r0, r5
	add	r0, #0x16
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	b	.L3c9e

	.pool_aligned

.L3c88:
	mov	r0, #0x13
	bl	__Func_80f9080
	mov	r0, r5
	add	r0, #0x17
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
.L3c9e:
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #3
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xd
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe4
	mov	r1, #1
	mov	r2, #0xf0
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #17
	neg	r1, r1
	bl	__Func_80933f8
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #8
	bl	__Func_80f9080
	ldr	r5, =0x24a6
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xe4
	mov	r2, #0x8c
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xe
	bl	__Func_809218c
	mov	r0, #0xe
	bl	__Func_80923c4
	mov	r1, #0xdc
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_809218c
	mov	r0, #0xe4
	mov	r1, #1
	mov	r2, #0xe0
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0xe
	bl	__Func_80923c4
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_80924d4
	mov	r0, #0x59
	bl	__Func_809163c
	add	r0, r5, #2
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_8092548
	add	r0, r5, #3
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0x50
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_80924d4
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	add	r0, r5, #4
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_809259c
	add	r0, r5, #5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092f84
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xe
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	add	r0, r5, #6
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0x81
	mov	r2, #0x50
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_80937b8
	add	r0, r5, #7
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x3c
	ldr	r1, =0x103
	mov	r0, #0xe
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #8
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, r5
	add	r0, #9
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =0x101
	mov	r0, #0xd
	bl	__Func_8093874
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8093874
	mov	r1, #0xf8
	lsl	r1, #1
	mov	r2, #0xf0
	mov	r0, #0xe
	bl	__Func_809218c
	mov	r0, #0xe
	bl	__Func_80923c4
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0xe
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, r5
	add	r0, #0xa
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0xc
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #0xd
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #0xe
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_80924d4
	mov	r0, #0x8c
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_80924d4
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xe
	bl	__Func_8092848
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_80924d4
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r1, #0x84
	mov	r2, #0xb4
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #0xf
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x50
	ldr	r1, =0x101
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #0x10
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0
	bl	__Func_8092848
	mov	r1, #2
	mov	r2, #0
	mov	r0, #3
	bl	__Func_8092848
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_809280c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xe
	mov	r0, #3
	bl	__Func_809280c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x11
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x12
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x13
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x14
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_80924d4
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x15
	bl	__Func_8092b94
	mov	r0, #0xe
	b	.L4108

	.pool_aligned

.L4108:
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r2, #0x5a
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #0x16
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_80924d4
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_80924d4
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x17
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #0x18
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xe
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_809259c
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x19
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #0x46
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x1a
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #3
	bl	__Func_80924d4
	mov	r0, r5
	add	r0, #0x1b
	bl	__Func_8092b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x1c
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x5a
	ldr	r1, =0x101
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #0x1d
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x1e
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x1f
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xe
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x20
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #0x21
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x22
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0x50
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #0x23
	bl	__Func_8092b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, r5
	add	r0, #0x24
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_80924d4
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x25
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L4360
	mov	r0, r5
	add	r0, #0x26
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
.L4360:
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_80924d4
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xc
	bl	__Func_8092848
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_80924d4
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L43c4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.L43c4:
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L43f4
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_8092128
.L43f4:
	mov	r0, #2
	bl	__Func_80923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L4424
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_8092128
.L4424:
	mov	r0, #3
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__Func_80923e4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xc
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r1, #0xec
	mov	r2, #0xb8
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xe
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x27
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, r5
	add	r0, #0x28
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0xc
	lsl	r1, #9
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809335c
	mov	r1, #0xf0
	mov	r2, #0xf8
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092b08
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092b08
	mov	r1, #0xf0
	lsl	r1, #1
	mov	r2, #0xd8
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0xe
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r0, #0xc
	mov	r1, #0xe
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #5
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_80924d4
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_80924d4
	mov	r0, #0x64
	bl	__Func_809163c
	mov	r1, #0xf0
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_809218c
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r1, #0xe4
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0xe4
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r1, #0xe4
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0xb0
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r1, #0xb0
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x11
	bl	__Func_80f9080
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x43
	str	r2, [r3]
	bl	__Func_8091df4
	mov	r0, #1
	b	.L461c

	.pool_aligned

.L461c:
	bl	__Func_809163c
	mov	r0, #0xd2
	bl	__Func_809163c
	mov	r0, #4
	bl	__Func_8091e9c
	bl	__Func_8091750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_3054

.thumb_func_start OvlFunc_7e7574_4638
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
	bl	__Func_8092b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092f84
	b	.L46d8
.L4694:
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__Func_809163c
	ldr	r0, =0x2419
	bl	__Func_8092b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092f84
.L46d8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_4638

.thumb_func_start OvlFunc_7e7574_4704
	push	{r5, lr}
	mov	r0, #0x15
	ldr	r1, =0x101
	mov	r2, #0x1e
	bl	__Func_80937b8
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x32
	bl	__Func_809163c
	ldr	r5, =0x2411
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_80924d4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x15
	bl	__Func_8092adc
	add	r5, #1
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_4704

.thumb_func_start OvlFunc_7e7574_4794
	push	{r5, lr}
	bl	__Func_80916b0
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L47b8
	ldr	r0, =0x2566
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	b	.L4902
.L47b8:
	ldr	r0, =0x313
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L47d6
	ldr	r0, =0x2457
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_8092c40
	bl	__Func_8091750
	b	.L4902
.L47d6:
	mov	r1, #0x81
	mov	r0, #0x19
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__Func_80937b8
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_809280c
	ldr	r5, =0x244f
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r0, #0x19
	mov	r1, #0x18
	bl	__Func_809280c
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_8093500
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x3c
	ldr	r1, =0x105
	mov	r0, #0x19
	bl	__Func_80937b8
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x3c
	ldr	r1, =0x107
	mov	r0, #0x19
	bl	__Func_80937b8
	add	r0, r5, #2
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_8092f84
	mov	r0, #0x46
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x19
	bl	__Func_809280c
	add	r0, r5, #3
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L489c
	add	r0, r5, #4
	bl	__Func_8092b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_8092c40
	b	.L48aa
.L489c:
	add	r0, r5, #5
	bl	__Func_8092b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_8092c40
.L48aa:
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0x3c
	ldr	r1, =0x105
	mov	r0, #0x19
	bl	__Func_80937b8
	ldr	r5, =0x2455
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_8092c40
	mov	r1, #1
	mov	r0, #0x19
	bl	__Func_80925cc
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_8092c40
	add	r5, #2
	mov	r1, #3
	mov	r0, #0x19
	bl	__Func_8092548
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_8092c40
	ldr	r0, =0x313
	bl	__Func_8079358
	bl	__Func_8091750
.L4902:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_4794

.thumb_func_start OvlFunc_7e7574_4928
	push	{lr}
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4944
	ldr	r0, =0x2568
	bl	__Func_8092b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_8092f84
	b	.L4952
.L4944:
	ldr	r0, =0x2458
	bl	__Func_8092b94
	mov	r0, #0x19
	mov	r1, #0
	bl	__Func_8092f84
.L4952:
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_4928

.thumb_func_start OvlFunc_7e7574_4964
	push	{lr}
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4980
	ldr	r0, =0x2569
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092f84
	b	.L498e
.L4980:
	ldr	r0, =0x244e
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092f84
.L498e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_4964

.thumb_func_start OvlFunc_7e7574_49a0
	push	{r5, lr}
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L49ae
	b	.L4b2e
.L49ae:
	ldr	r0, =0x94e
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L49ba
	b	.L4b1e
.L49ba:
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L49c8
	b	.L4b1e
.L49c8:
	ldr	r5, =0x2561
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x18
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_8092064
	mov	r1, #4
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0x18
	bl	__Func_809228c
	mov	r0, #0x18
	bl	__Func_80923c4
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_80924d4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x18
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_8092064
	mov	r1, #6
	mov	r0, #0x18
	neg	r1, r1
	mov	r2, #0
	bl	__Func_809228c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_809280c
	mov	r0, #0x18
	bl	__Func_80923c4
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0
	mov	r1, #0x18
	mov	r0, #0x19
	bl	__Func_809280c
	add	r0, r5, #2
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_8092f84
	mov	r0, #0x46
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x19
	bl	__Func_80924d4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x19
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r1, #0xdc
	lsl	r1, #2
	mov	r2, #0x70
	mov	r0, #0x19
	bl	__Func_809218c
	mov	r0, #0x19
	bl	__Func_80923c4
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x19
	bl	__Func_8092adc
	add	r0, r5, #3
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #0x18
	bl	__Func_80924d4
	mov	r0, #0x46
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0x18
	bl	__Func_809228c
	mov	r0, #0x18
	bl	__Func_80923c4
	add	r5, #4
	mov	r1, #5
	mov	r0, #0x18
	bl	__Func_80924d4
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xe0
	lsl	r1, #2
	mov	r2, #0x78
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r2, #0
	mov	r1, #0x19
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_8079358
	b	.L4b3c
.L4b1e:
	ldr	r0, =0x2567
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092f84
	b	.L4b3c
.L4b2e:
	ldr	r0, =0x244d
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__Func_8092f84
.L4b3c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_49a0

.thumb_func_start OvlFunc_7e7574_4b68
	push	{lr}
	mov	r0, #0x1a
	mov	r1, #1
	mov	r2, #5
	bl	__Func_80955b0
	ldr	r0, =0x94e
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_4b68

.thumb_func_start OvlFunc_7e7574_4b84
	push	{lr}
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	ldr	r0, =0x2441
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_4b84

.thumb_func_start OvlFunc_7e7574_4ba4
	push	{lr}
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	ldr	r0, =0x2440
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_4ba4

.thumb_func_start OvlFunc_7e7574_4bc4
	push	{lr}
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	ldr	r0, =0x243f
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_4bc4

.thumb_func_start OvlFunc_7e7574_4be4
	push	{lr}
	ldr	r0, =0x2459
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8093054
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_4be4

.thumb_func_start OvlFunc_7e7574_4bfc
	push	{r5, lr}
	ldr	r0, =0x226
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4c18
	ldr	r0, =0x2434
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092f84
	b	.L4cee
.L4c18:
	bl	__Func_80916b0
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	ldr	r0, =0x227
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4c8c
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_8092560
	mov	r0, #0x14
	bl	__Func_80920a0
	mov	r0, #0x14
	bl	__Func_80920e8
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r5, =0x242e
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r2, #0x1e
	lsl	r1, #1
	mov	r0, #0x14
	add	r5, #1
	bl	__Func_80937b8
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8092f84
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x14
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
.L4c8c:
	ldr	r5, =0x2430
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__Func_80937b8
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L4cd6
	add	r0, r5, #2
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092c40
	ldr	r0, =0x226
	bl	__Func_8079358
	b	.L4ce4
.L4cd6:
	add	r0, r5, #3
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092c40
.L4ce4:
	ldr	r0, =0x227
	bl	__Func_8079358
	bl	__Func_8091750
.L4cee:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_4bfc

.thumb_func_start OvlFunc_7e7574_4d0c
	push	{lr}
	ldr	r0, =0x226
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4d28
	ldr	r0, =0x2435
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092f84
	b	.L4d3c
.L4d28:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xbf
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	strh	r0, [r3]
	bl	__Func_8097608
	bl	OvlFunc_7e7574_4bfc
.L4d3c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_7e7574_4d0c


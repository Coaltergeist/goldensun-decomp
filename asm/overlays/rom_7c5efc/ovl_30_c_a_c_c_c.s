	.include "macros.inc"

.thumb_func_start OvlFunc_941_2008210
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	ldr	r0, =0x202
	sub	sp, #8
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L286
	mov	r5, #0x15
	mov	r6, #0x39
	mov	r1, #0x56
	mov	r2, #2
	mov	r3, #6
	mov	r0, #0x29
	str	r6, [sp, #4]
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #0x56
	mov	r2, #2
	mov	r3, #6
	mov	r0, #0x2b
	str	r6, [sp, #4]
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__Func_80030f8
	mov	r6, #0x3a
	mov	r1, #0x56
	mov	r2, #2
	mov	r3, #6
	mov	r0, #0x29
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__Func_80030f8
	mov	r0, #0x2b
	mov	r1, #0x56
	mov	r2, #2
	mov	r3, #6
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__Func_80030f8
.L286:
	mov	r3, #0x18
	mov	r10, r3
	mov	r3, #0x3e
	mov	r9, r3
	mov	r3, r10
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #2
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_80105d4
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r5, #0x15
	mov	r8, r3
	mov	r0, #2
	mov	r1, #0x5e
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r6, #0x3b
	mov	r1, #0x56
	mov	r2, #2
	mov	r3, #6
	mov	r0, #0x29
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__Func_80030f8
	mov	r3, r10
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #1
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_80105d4
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #3
	mov	r1, #0x5e
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r2, #2
	mov	r3, #6
	mov	r1, #0x56
	mov	r0, #0x2b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__Func_80030f8
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_8092b08
	mov	r3, #0x16
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_2008210

.thumb_func_start OvlFunc_941_200833c
	push	{lr}
	ldr	r0, =0x201
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L372
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L372
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_801776c
	mov	r0, #0x9d
	bl	__Func_80f9080
	bl	OvlFunc_941_2008210
	ldr	r0, =0x201
	bl	__Func_8079358
	ldr	r0, =0x202
	bl	__Func_8079374
.L372:
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_200833c

.thumb_func_start OvlFunc_941_2008384
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r3, #0x3b
	str	r3, [sp, #4]
	mov	r5, #0x15
	mov	r1, #0x57
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x29
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__Func_80030f8
	mov	r3, #0x18
	mov	r10, r3
	mov	r3, #0x3e
	mov	r9, r3
	mov	r3, r10
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #2
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_80105d4
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r8, r3
	mov	r0, #2
	mov	r1, #0x5e
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r6, #0x3a
	mov	r1, #0x57
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x2b
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__Func_80030f8
	mov	r3, r10
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #3
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_80105d4
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #1
	mov	r1, #0x5e
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r0, #0x29
	mov	r1, #0x57
	mov	r2, #2
	mov	r3, #5
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0xb
	mov	r2, #2
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_2008384

.thumb_func_start OvlFunc_941_2008460
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L496
	ldr	r0, =0x202
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L496
	mov	r1, #1
	ldr	r0, =0x1528
	bl	__Func_801776c
	mov	r0, #0x9d
	bl	__Func_80f9080
	bl	OvlFunc_941_2008384
	ldr	r0, =0x202
	bl	__Func_8079358
	ldr	r0, =0x201
	bl	__Func_8079374
.L496:
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_2008460

.thumb_func_start OvlFunc_941_20084a8
	push	{r5, lr}
	ldr	r0, =0x941
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4b6
	b	.L800
.L4b6:
	ldr	r0, =0x94d
	bl	__Func_8079358
	bl	__Func_80916b0
	mov	r1, #0x90
	mov	r2, #0xc8
	mov	r0, #0xc
	lsl	r1, #16
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xc
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0xc8
	lsl	r2, #1
	mov	r1, #0xb8
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r0, #0xc0
	mov	r1, #1
	mov	r2, #0xd8
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #17
	mov	r3, #1
	bl	__Func_80933f8
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L542
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xd
	bl	__Func_80923e4
.L542:
	mov	r0, #0xd
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__Func_8092064
	mov	r2, #0xe8
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #0xd
	bl	__Func_809218c
	mov	r0, #0xd
	bl	__Func_80923c4
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L57e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_80923e4
.L57e:
	mov	r0, #2
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__Func_8092064
	mov	r2, #0xf4
	mov	r1, #0x98
	lsl	r2, #1
	mov	r0, #2
	bl	__Func_809218c
	mov	r0, #2
	bl	__Func_80923c4
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L5ba
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_80923e4
.L5ba:
	mov	r0, #3
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__Func_8092064
	mov	r2, #0xf4
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #3
	bl	__Func_809218c
	mov	r0, #3
	bl	__Func_80923c4
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L5f6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L5f6:
	mov	r0, #1
	ldr	r1, =0x14ccc
	ldr	r2, =0xa666
	bl	__Func_8092064
	mov	r2, #0xf4
	mov	r1, #0xb8
	lsl	r2, #1
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	ldr	r5, =0x250d
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x46
	bl	__Func_80937b8
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0
	bl	__Func_809280c
	add	r0, r5, #2
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, #1
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L6c2
	add	r0, r5, #3
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	b	.L6d0
.L6c2:
	add	r0, r5, #4
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
.L6d0:
	mov	r1, #0x80
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_80937b8
	ldr	r5, =0x2512
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80924d4
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_80922c4
	mov	r0, #0xd
	bl	__Func_80923c4
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80924d4
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0x41
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_80937b8
	add	r0, r5, #2
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0xc
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r1, #0xd
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_80922c4
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xc
	add	r5, #3
	bl	__Func_80937b8
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0xd8
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0x28
	bl	__Func_809163c
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_809163c
	bl	__Func_8091750
	bl	OvlFunc_941_2008828
.L800:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_20084a8

.thumb_func_start OvlFunc_941_2008828
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r1, #0xc8
	mov	r2, #0x88
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xb8
	mov	r2, #0x88
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xa8
	mov	r2, #0x88
	mov	r0, #3
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xd4
	mov	r2, #0x84
	mov	r0, #2
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xc8
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xa8
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_80923e4
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0
	bl	__Func_809335c
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_80937b8
	ldr	r5, =0x2516
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	add	r0, r5, #2
	bl	__Func_8092b94
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0x50
	ldr	r1, =0x107
	mov	r0, #1
	bl	__Func_80937b8
	add	r0, r5, #3
	bl	__Func_8092b94
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x46
	bl	__Func_80937b8
	mov	r2, #0
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809280c
	add	r0, r5, #4
	bl	__Func_8092b94
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__Func_809163c
	add	r0, r5, #5
	bl	__Func_8092b94
	mov	r1, #0
	ldr	r0, =0x400d
	bl	__Func_8092f84
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x84
	mov	r2, #0x50
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_80937b8
	add	r0, r5, #6
	bl	__Func_8092b94
	ldr	r0, =0x400d
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #2
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x84
	mov	r2, #0x3c
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #3
	bl	__Func_809280c
	add	r0, r5, #7
	bl	__Func_8092b94
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xd
	bl	__Func_809280c
	mov	r0, r5
	add	r0, #8
	bl	__Func_8092b94
	ldr	r0, =0x400d
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #9
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0xa
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0xd
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #2
	mov	r1, #0xc
	bl	__Func_809280c
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0xb
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, r5
	add	r0, #0xc
	bl	__Func_8092b94
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0xd
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #3
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x46
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #0xe
	bl	__Func_8092b94
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0xf
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0x46
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #0x10
	bl	__Func_8092b94
	ldr	r0, =0x400d
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0xd
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x11
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x12
	bl	__Func_8092b94
	ldr	r0, =0x400d
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x84
	mov	r2, #0x46
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x13
	bl	__Func_8092b94
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x14
	bl	__Func_8092b94
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, r5
	add	r0, #0x15
	bl	__Func_8092b94
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_8092548
	mov	r0, r5
	add	r0, #0x16
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, r5
	add	r0, #0x17
	bl	__Func_8092b94
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xc
	mov	r1, #3
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x80
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #0x18
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #2
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x19
	bl	__Func_8092b94
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xd
	mov	r1, #0xc
	b	.Ld2c

	.pool_aligned

.Ld2c:
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x1a
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_8093874
	mov	r0, r5
	add	r0, #0x1b
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, r5
	add	r0, #0x1c
	bl	__Func_8092b94
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x46
	mov	r0, #0xc
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r1, #4
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, r5
	add	r0, #0x1d
	bl	__Func_8092b94
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, r5
	add	r0, #0x1e
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, r5
	add	r0, #0x1f
	bl	__Func_8092b94
	mov	r1, #0
	ldr	r0, =0x400d
	bl	__Func_8092f84
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_8092548
	mov	r0, r5
	add	r0, #0x20
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xc
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0x84
	mov	r1, #0x90
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r2, #0x8c
	mov	r1, #0xa8
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x84
	mov	r1, #0x90
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r2, #0xf4
	lsl	r2, #1
	mov	r1, #0xa8
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, r5
	add	r0, #0x21
	bl	__Func_8092b94
	mov	r1, #0
	ldr	r0, =0x4002
	bl	__Func_8092f84
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r5
	add	r0, #0x22
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #0x23
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, r5
	add	r0, #0x24
	bl	__Func_8092b94
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #0x25
	bl	__Func_8092b94
	ldr	r0, =0x4002
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, r5
	add	r0, #0x26
	bl	__Func_8092b94
	mov	r1, #0
	ldr	r0, =0x4001
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lfdc
	mov	r0, r5
	add	r0, #0x27
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
	b	.Lfec

	.pool_aligned

.Lfdc:
	mov	r0, r5
	add	r0, #0x28
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
.Lfec:
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
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
	mov	r0, #2
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xd
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #0xd
	bl	__Func_80937b8
	ldr	r5, =0x253f
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	ldr	r0, =0x400d
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x84
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_80937b8
	add	r0, r5, #1
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #3
	bl	__Func_80937b8
	add	r0, r5, #2
	bl	__Func_8092b94
	ldr	r0, =0x4003
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xc
	bl	__Func_8092adc
	add	r0, r5, #3
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #2
	bl	__Func_809280c
	add	r0, r5, #4
	bl	__Func_8092b94
	mov	r1, #0
	ldr	r0, =0x4002
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_8092548
	add	r0, r5, #5
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	add	r0, r5, #6
	bl	__Func_8092b94
	ldr	r0, =0x4001
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_8092548
	add	r5, #7
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r5
	bl	__Func_8092b94
	ldr	r0, =0x400c
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #2
	bl	__Func_80924d4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_80924d4
	mov	r0, #0x3c
	bl	__Func_809163c
	bl	OvlFunc_941_20091b8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_2008828

.thumb_func_start OvlFunc_941_20091b8
	push	{r5, lr}
	ldr	r5, =0x2547
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	add	r5, #1
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
.L120c:
	bl	OvlFunc_941_20092ac
	lsl	r0, #24
	cmp	r0, #0
	beq	.L124e
.L1216:
	bl	OvlFunc_941_2009320
	lsl	r0, #24
	cmp	r0, #0
	beq	.L1290
	bl	OvlFunc_941_200941c
	lsl	r0, #24
	mov	r5, #0
	cmp	r0, #0
	bne	.L123e
.L122c:
	mov	r5, #1
.L122e:
	bl	OvlFunc_941_200934c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L1290
.L123e:
	bl	OvlFunc_941_2009394
	lsl	r0, #24
	cmp	r0, #0
	bne	.L1296
	cmp	r5, #0
	bne	.L122e
	b	.L1296
.L124e:
	bl	OvlFunc_941_20092c4
	lsl	r0, #24
	cmp	r0, #0
	beq	.L1264
	bl	OvlFunc_941_20092f0
	lsl	r0, #24
	cmp	r0, #0
	beq	.L122c
	b	.L1296
.L1264:
	bl	OvlFunc_941_2009368
	lsl	r0, #24
	cmp	r0, #0
	bne	.L1216
	ldr	r5, =0x254b
	mov	r0, r5
	bl	__Func_8092b94
	add	r5, #1
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092f84
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092c40
	b	.L120c
.L1290:
	bl	OvlFunc_941_2009760
	b	.L129e
.L1296:
	bl	OvlFunc_941_200931c
	bl	OvlFunc_941_2009448
.L129e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_20091b8

.thumb_func_start OvlFunc_941_20092ac
	push	{lr}
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_941_20092ac

.thumb_func_start OvlFunc_941_20092c4
	push	{lr}
	ldr	r0, =0x2549
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_941_20092c4

.thumb_func_start OvlFunc_941_20092f0
	push	{lr}
	ldr	r0, =0x254d
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_941_20092f0


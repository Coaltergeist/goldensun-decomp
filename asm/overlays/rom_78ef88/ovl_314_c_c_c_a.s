	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_896_200a7f8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r3, #0x1b
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1b
	mov	r1, #0x10
	mov	r2, #5
	mov	r3, #1
	bl	__Func_8010704
	mov	r1, #1
	ldr	r2, =0x1050000
	neg	r1, r1
	mov	r3, #0
	ldr	r0, =0x1d70000
	bl	__Func_80933f8
	bl	__Func_8093530
	bl	__Func_800fe9c
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r5, =0x1999
	mov	r8, r0
	str	r5, [r0, #0x18]
	str	r5, [r0, #0x1c]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #0x50]
	mov	r6, #0
	add	r3, #0x26
	mov	r1, #0x80
	strb	r6, [r3]
	mov	r0, #0
	str	r5, [r7, #0x18]
	str	r5, [r7, #0x1c]
	lsl	r1, #1
	mov	r9, r3
	bl	__Func_8092950
	mov	r2, #0x91
	mov	r0, #0
	ldr	r1, =0x1d70000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0x55
	mov	r3, #0xa0
	add	r2, r7
	lsl	r3, #14
	strb	r6, [r2]
	str	r3, [r7, #0xc]
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	mov	r10, r2
	add	r2, r1, r3
	add	r3, #0x43
	str	r3, [r2]
	sub	r3, #0x3b
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x91
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #8
	bl	__Func_80923e4
	mov	r0, #0xbe
	bl	__Func_80f9080
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092b08
	ldr	r6, =0x28f
	mov	r5, #0
.L28c0:
	ldr	r3, [r7, #0xc]
	ldr	r2, =0xffffe667
	add	r3, r2
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x18]
	add	r3, r6
	str	r3, [r7, #0x18]
	ldr	r3, [r7, #0x1c]
	add	r3, r6
	str	r3, [r7, #0x1c]
	mov	r2, r8
	ldr	r3, [r2, #0x18]
	add	r3, r6
	str	r3, [r2, #0x18]
	ldr	r3, [r2, #0x1c]
	add	r3, r6
	str	r3, [r2, #0x1c]
	mov	r0, #1
	bl	__Func_809163c
	mov	r3, #0x80
	lsl	r3, #9
	add	r5, r3
	lsr	r3, r5, #16
	cmp	r3, #0x5a
	bne	.L28c0
	mov	r3, #5
	mov	r2, r10
	strb	r3, [r2]
	mov	r0, #0x50
	bl	__Func_809163c
	ldr	r0, =0x4ccc
	ldr	r1, =0x999
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0x91
	ldr	r0, =0x1d70000
	neg	r1, r1
	lsl	r2, #17
	mov	r3, #1
	bl	__Func_80933f8
	mov	r5, #0
.L291a:
	ldr	r3, [r7, #0xc]
	ldr	r2, =0xffff8000
	add	r3, r2
	str	r3, [r7, #0xc]
	mov	r0, #1
	bl	__Func_809163c
	mov	r3, #0x80
	lsl	r3, #9
	add	r5, r3
	lsr	r3, r5, #16
	cmp	r3, #0x3c
	bne	.L291a
	mov	r3, #3
	mov	r2, r10
	strb	r3, [r2]
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092950
	mov	r3, #1
	mov	r2, r9
	strb	r3, [r2]
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_80923e4
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809335c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r2, #0x9b
	lsl	r2, #1
	ldr	r1, =0x1d7
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r5, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L29c6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #5
	bl	__Func_80923e4
.L29c6:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L29da
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L29da:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r2, #0x97
	mov	r0, #5
	ldr	r1, =0x1c5
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0x97
	lsl	r2, #1
	mov	r0, #1
	ldr	r1, =0x1e9
	bl	__Func_80921c4
	mov	r0, #5
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #5
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092560
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #2
	bl	__Func_8092560
	mov	r0, #0
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #5
	mov	r1, #3
	bl	__Func_809259c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #5
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r2, #0xad
	mov	r0, #0
	ldr	r1, =0x1d7
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0xa9
	mov	r0, #5
	ldr	r1, =0x1af
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0xa9
	lsl	r2, #1
	ldr	r1, =0x1ff
	mov	r0, #1
	bl	__Func_809218c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #5
	bl	__Func_80923c4
	mov	r1, #1
	mov	r0, #5
	bl	__Func_80924d4
	mov	r0, #1
	bl	__Func_80923c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r0, #5
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	b	.L2c58

	.pool_aligned

.L2c58:
	lsl	r1, #7
	mov	r2, #0x3c
	mov	r0, #5
	bl	__Func_8092adc
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #0x50]
	add	r3, #0x26
	strb	r5, [r3]
	mov	r9, r3
	ldr	r3, =0x1999
	mov	r2, r8
	mov	r1, #0x80
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	mov	r0, #9
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	lsl	r1, #1
	bl	__Func_8092950
	mov	r2, #0x91
	lsl	r2, #17
	ldr	r1, =0x1d70000
	mov	r0, #9
	bl	__Func_80923e4
	mov	r3, #0x55
	add	r3, r7
	strb	r5, [r3]
	mov	r10, r3
	mov	r3, #0xa0
	lsl	r3, #14
	str	r3, [r7, #0xc]
	mov	r0, #1
	bl	__Func_809163c
	ldr	r0, =0x103c
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #5
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0x28
	bl	__Func_8092560
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1d70000
	neg	r1, r1
	ldr	r2, =0x1350000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r2, #0x91
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #8
	bl	__Func_80923e4
	mov	r0, #0xbe
	bl	__Func_80f9080
	mov	r0, #9
	mov	r1, #2
	bl	__Func_8092b08
	ldr	r6, =0x28f
	mov	r5, #0
.L2d34:
	ldr	r3, [r7, #0xc]
	ldr	r2, =0xffffe667
	add	r3, r2
	str	r3, [r7, #0xc]
	ldr	r3, [r7, #0x18]
	add	r3, r6
	str	r3, [r7, #0x18]
	ldr	r3, [r7, #0x1c]
	add	r3, r6
	str	r3, [r7, #0x1c]
	mov	r2, r8
	ldr	r3, [r2, #0x18]
	add	r3, r6
	str	r3, [r2, #0x18]
	ldr	r3, [r2, #0x1c]
	add	r3, r6
	str	r3, [r2, #0x1c]
	mov	r0, #1
	bl	__Func_809163c
	mov	r3, #0x80
	lsl	r3, #9
	add	r5, r3
	lsr	r3, r5, #16
	cmp	r3, #0x5a
	bne	.L2d34
	mov	r3, #5
	mov	r2, r10
	strb	r3, [r2]
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r5, #0
.L2d76:
	ldr	r3, [r7, #0xc]
	ldr	r2, =0xffff8000
	add	r3, r2
	str	r3, [r7, #0xc]
	mov	r0, #1
	bl	__Func_809163c
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r5, r2
	mov	r5, r3
	lsr	r3, r5, #16
	cmp	r3, #0x3c
	bne	.L2d76
	mov	r3, #3
	mov	r2, r10
	strb	r3, [r2]
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #9
	bl	__Func_8092b08
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092950
	mov	r3, #1
	mov	r2, r9
	strb	r3, [r2]
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_80923e4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #9
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r2, #0x99
	ldr	r1, =0x1d7
	lsl	r2, #1
	mov	r0, #9
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x50
	mov	r0, #9
	mov	r1, #2
	bl	__Func_8092560
	mov	r1, #3
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x1e
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #9
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #9
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__Func_8092064
	mov	r2, #0x99
	mov	r0, #9
	ldr	r1, =0x1a7
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x99
	mov	r0, #9
	ldr	r1, =0x207
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r5, =0x4009
	mov	r1, #4
	mov	r0, #9
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, r5
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r2, #0
	mov	r1, #5
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #0x28
	bl	OvlFunc_896_200c248
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, r5
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x28
	mov	r0, #5
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r0, #9
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, r5
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #5
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x2150000
	neg	r1, r1
	ldr	r2, =0x1530000
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r0, #9
	ldr	r1, =0x215
	ldr	r2, =0x153
	bl	__Func_80921c4
	bl	__Func_8093530
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #9
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #1
	b	.L30b0

	.pool_aligned

.L30b0:
	bl	__Func_809335c
	mov	r0, #9
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r2, #0xb4
	ldr	r1, =0x1c7
	lsl	r2, #1
	mov	r0, #9
	bl	__Func_809218c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xb4
	ldr	r1, =0x1c7
	lsl	r2, #1
	mov	r0, #9
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r2, #0x1e
	mov	r0, #9
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0xb4
	ldr	r1, =0x1d7
	lsl	r2, #1
	mov	r0, #9
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r1, #3
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r0, #5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xdc
	mov	r2, #0xad
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #5
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #5
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r2, #0xad
	ldr	r1, =0x1ef
	lsl	r2, #1
	mov	r0, #1
	bl	__Func_80921c4
	bl	__Func_8093530
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L320e
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L320e:
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x1e
	mov	r0, #9
	bl	OvlFunc_896_200c248
	ldr	r0, =0x1048
	bl	__Func_8092b94
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #9
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #5
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #6
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #9
	bl	__Func_80920a0
	mov	r0, #0
	bl	__Func_80920a0
	mov	r0, #5
	bl	__Func_80920a0
	mov	r0, #1
	bl	__Func_80920a0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #12
	lsl	r1, #9
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xe8
	mov	r3, #1
	ldr	r0, =0x2c70000
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r2, =0x1610000
	ldr	r1, =0x24d0000
	mov	r0, #9
	bl	__Func_80923e4
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =0x1009
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0xb4
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #9
	bl	__Func_80923e4
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #1
	mov	r2, #0xb9
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	ldr	r0, =0x1d70000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xd0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #1
	mov	r2, #0x93
	mov	r3, #1
	ldr	r0, =0x2c70000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0x95
	mov	r2, #0xee
	lsl	r2, #16
	lsl	r1, #18
	mov	r0, #9
	bl	__Func_80923e4
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =0x1009
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0xb4
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #9
	bl	__Func_80923e4
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #1
	mov	r2, #0xb9
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	ldr	r0, =0x1d70000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #5
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0xe7
	mov	r1, #1
	mov	r2, #0x93
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0x9a
	mov	r2, #0xfa
	lsl	r2, #16
	lsl	r1, #17
	mov	r0, #9
	bl	__Func_80923e4
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =0x2009
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0xb4
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #9
	bl	__Func_80923e4
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #1
	mov	r2, #0xb9
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	ldr	r0, =0x1d70000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xa
	b	.L34e0

	.pool_aligned

.L34e0:
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #5
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0xe7
	mov	r1, #1
	mov	r2, #0xe8
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0x99
	mov	r2, #0xb5
	lsl	r2, #17
	lsl	r1, #17
	mov	r0, #9
	bl	__Func_80923e4
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =0x2009
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0xb4
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #9
	bl	__Func_80923e4
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #1
	mov	r2, #0xb9
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	ldr	r0, =0x1d70000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x82
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #5
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0xa009
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #9
	mov	r1, #3
	bl	__Func_809259c
	ldr	r0, =0xa009
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #4
	bl	__Func_80924d4
	mov	r1, #0
	ldr	r0, =0x8009
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L367a
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L367a:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0xa
	mov	r0, #1
	bl	OvlFunc_896_200c248
	ldr	r0, =0x1056
	bl	__Func_8092b94
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0x28
	bl	__Func_8092560
	ldr	r2, =0x8009
	mov	r11, r2
	mov	r0, r11
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #5
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x50
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #9
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, r11
	mov	r1, #0x28
	bl	OvlFunc_896_200c248
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x83
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x83
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, r11
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L3750
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L3750:
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, r11
	mov	r1, #0x28
	bl	OvlFunc_896_200c248
	ldr	r0, =0x105b
	bl	__Func_8092b94
	mov	r0, #5
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #5
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x28
	mov	r0, #9
	mov	r1, #4
	bl	__Func_8092560
	ldr	r0, =0xa009
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #5
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, r11
	mov	r1, #0x28
	bl	OvlFunc_896_200c248
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #5
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x78
	bl	__Func_80937b8
	mov	r0, #1
	ldr	r1, =0x107
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #4
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x50
	mov	r0, #9
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, r11
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_8093874
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x28
	mov	r0, r11
	bl	OvlFunc_896_200c248
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, #6
	bl	__Func_80030f8
	mov	r2, #0xc0
	mov	r3, #0x80
	lsl	r3, #10
	lsl	r2, #10
	mov	r6, #0xc0
	str	r3, [r7, #0x34]
	str	r2, [r7, #0x30]
	lsl	r6, #11
	mov	r0, #0x99
	mov	r8, r3
	mov	r10, r2
	bl	__Func_80f9080
	ldr	r1, =0x1d7
	ldr	r2, =0x18b
	str	r6, [r7, #0x28]
	mov	r0, #9
	bl	__Func_8092158
	mov	r0, #6
	bl	__Func_80030f8
	mov	r0, #9
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r2, #0x5a
	add	r2, r7
	mov	r9, r2
	mov	r5, #0xfe
	ldrb	r2, [r2]
	mov	r3, r5
	and	r3, r2
	mov	r2, r9
	b	.L3994

	.pool_aligned

.L3994:
	strb	r3, [r2]
	ldr	r1, =0x1d9
	ldr	r2, =0x18b
	mov	r0, #9
	bl	__Func_8092128
	mov	r0, #9
	bl	__Func_80923c4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r2, =0x18b
	ldr	r1, =0x1d5
	mov	r0, #9
	bl	__Func_8092128
	mov	r0, #9
	bl	__Func_80923c4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r2, =0x18b
	ldr	r1, =0x1d7
	mov	r0, #9
	bl	__Func_8092128
	mov	r0, #9
	bl	__Func_80923c4
	mov	r0, #9
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #9
	ldr	r1, =0x1d7
	ldr	r2, =0x19b
	bl	__Func_80921c4
	mov	r0, #9
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__Func_8092064
	mov	r2, r9
	ldrb	r3, [r2]
	mov	r1, #0xed
	and	r5, r3
	strb	r5, [r2]
	lsl	r1, #1
	ldr	r2, =0x19b
	mov	r0, #9
	bl	__Func_8092128
	mov	r0, #9
	bl	__Func_80923c4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #0xea
	ldr	r2, =0x19b
	lsl	r1, #1
	mov	r0, #9
	bl	__Func_8092128
	mov	r0, #9
	bl	__Func_80923c4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_80925cc
	ldr	r2, =0x19b
	ldr	r1, =0x1d7
	mov	r0, #9
	bl	__Func_8092128
	mov	r0, #9
	bl	__Func_80923c4
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_8093874
	mov	r0, #9
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #9
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_8092064
	ldr	r2, =0x18b
	mov	r0, #9
	ldr	r1, =0x1d7
	bl	__Func_80921c4
	mov	r1, #1
	mov	r0, #9
	bl	__Func_809207c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r3, r9
	ldrb	r2, [r3]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0xc0
	mov	r2, r9
	strb	r3, [r2]
	lsl	r1, #8
	mov	r2, #0x3c
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #6
	bl	__Func_80030f8
	mov	r3, r10
	mov	r2, r8
	str	r3, [r7, #0x30]
	str	r2, [r7, #0x34]
	mov	r0, #0x99
	bl	__Func_80f9080
	mov	r2, #0xb4
	ldr	r1, =0x1d7
	lsl	r2, #1
	str	r6, [r7, #0x28]
	mov	r0, #9
	bl	__Func_8092158
	mov	r0, #6
	bl	__Func_80030f8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r2, #0x50
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #5
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x28
	mov	r0, #5
	ldr	r1, =0x107
	bl	__Func_80937b8
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r1, #0xb0
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #4
	bl	__Func_8092548
	ldr	r0, =0xa009
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0x83
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #5
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xd0
	mov	r2, #0x1e
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r11
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x1e
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #5
	bl	__Func_8092c40
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	b	.L3c92

	.pool_aligned

.L3c70:
	ldr	r0, =0x1068
	bl	__Func_8092b94
	mov	r0, #5
	ldr	r1, =0x107
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #5
	mov	r1, #4
	mov	r2, #0x3c
	bl	__Func_8092560
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8092c40
.L3c92:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L3c70
	ldr	r0, =0x1069
	bl	__Func_8092b94
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #5
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x1e
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r0, #9
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_8092064
	mov	r2, #0xb0
	lsl	r2, #1
	ldr	r1, =0x1d7
	mov	r0, #9
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r5, =0x8009
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r5
	mov	r1, #0x3c
	bl	OvlFunc_896_200c248
	mov	r3, r9
	ldrb	r2, [r3]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, r9
	strb	r3, [r2]
	mov	r1, #0xe4
	mov	r2, #0xb4
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #9
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x106d
	bl	__Func_8092b94
	mov	r0, #5
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r1, #0xb0
	mov	r2, #0x1e
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, r5
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, r5
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, r5
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L3e94
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.L3e94:
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80923e4
	ldr	r0, =0x83b
	bl	__Func_8079358
	mov	r0, #5
	bl	__Func_8091890
	bl	OvlFunc_896_200c328
	mov	r3, #0x1b
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r0, #8
	mov	r2, #5
	mov	r3, #1
	bl	__Func_8010704
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x10
	str	r2, [r3]
	ldr	r0, =0x12f
	bl	__Func_8079374
	bl	__Func_8091750
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200a7f8

.thumb_func_start OvlFunc_896_200bf24
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	sub	sp, #8
	bl	__Func_8091220
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_8079358
	mov	r5, #0xf
	mov	r6, #0
.L3f4a:
	mov	r0, r5
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r6, [r0]
	mov	r1, #1
	mov	r0, r5
	add	r5, #1
	bl	__Func_8092b08
	cmp	r5, #0x18
	bls	.L3f4a
	mov	r0, #0xf
	mov	r1, #0x10
	bl	OvlFunc_896_200c78c
	ldr	r0, =0x83b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3f90
	mov	r1, #0xe4
	mov	r2, #0xb4
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xdc
	mov	r2, #0xad
	mov	r0, #5
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
.L3f90:
	ldr	r0, =0x83c
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L405e
	mov	r5, #3
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0x2b
	mov	r3, #0x42
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r2, #4
	str	r2, [sp, #4]
	mov	r10, r2
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x60
	mov	r3, #0x1d
	str	r5, [sp]
	bl	__Func_8010424
	mov	r3, #0x29
	mov	r2, #0x1d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r11, r3
	mov	r9, r2
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r6, #1
	mov	r8, r3
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x29
	mov	r3, #0x1f
	str	r6, [sp]
	bl	__Func_8010424
	mov	r2, r10
	str	r2, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x4a
	mov	r3, #0x1d
	str	r5, [sp]
	bl	__Func_8010424
	mov	r3, #0x13
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x13
	mov	r3, #0x1f
	str	r6, [sp]
	bl	__Func_8010424
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x60
	mov	r3, #0xa
	str	r5, [sp]
	bl	__Func_8010424
	mov	r3, #0xa
	mov	r2, r11
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x29
	mov	r3, #0xc
	str	r6, [sp]
	bl	__Func_8010424
.L405e:
	ldr	r0, =0x83d
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L412c
	mov	r6, #3
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0x2b
	mov	r3, #0x2e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r2, #4
	str	r2, [sp, #4]
	mov	r8, r2
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x54
	mov	r3, #4
	str	r6, [sp]
	bl	__Func_8010424
	mov	r3, #0x1d
	mov	r2, r8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r11, r3
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r10, r3
	mov	r9, r2
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x1d
	mov	r3, #6
	bl	__Func_8010424
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x4c
	mov	r3, #0x15
	str	r6, [sp]
	bl	__Func_8010424
	mov	r5, #0x15
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r2, r10
	mov	r3, r9
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x15
	mov	r3, #0x17
	bl	__Func_8010424
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x4c
	mov	r3, #0x1d
	str	r6, [sp]
	bl	__Func_8010424
	mov	r3, r11
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r2, r10
	mov	r3, r9
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x15
	mov	r3, #0x1f
	bl	__Func_8010424
.L412c:
	ldr	r0, =0x83e
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L41fe
	mov	r5, #3
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0xd
	mov	r3, #0x42
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010424
	mov	r2, #4
	str	r2, [sp, #4]
	mov	r10, r2
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x41
	mov	r3, #0x1f
	str	r5, [sp]
	bl	__Func_8010424
	mov	r3, #0xa
	mov	r9, r3
	mov	r2, r9
	mov	r3, #0x1f
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r6, #1
	mov	r8, r3
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0xa
	mov	r3, #0x21
	str	r6, [sp]
	bl	__Func_8010424
	mov	r2, r10
	str	r2, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x4f
	mov	r3, #9
	str	r5, [sp]
	bl	__Func_8010424
	mov	r3, #0x18
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x18
	mov	r3, #0xb
	str	r6, [sp]
	bl	__Func_8010424
	mov	r2, r10
	str	r2, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0x28
	mov	r2, #0x5b
	mov	r3, #0xa
	str	r5, [sp]
	bl	__Func_8010424
	mov	r3, #0x24
	str	r3, [sp]
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x57
	mov	r1, #0x2a
	mov	r2, #0x24
	mov	r3, #0xc
	str	r6, [sp]
	bl	__Func_8010424
	bl	OvlFunc_896_200a27c
.L41fe:
	ldr	r0, =0x83b
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L421c
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.L421c
	bl	OvlFunc_896_200a7f8
.L421c:
	mov	r0, #0
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_896_200bf24


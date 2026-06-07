	.include "macros.inc"

.thumb_func_start OvlFunc_953_2008334
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x962
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L37a
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	ldr	r0, =0x2256
	bl	__Func_8092b94
	mov	r0, #0xe
	bl	OvlFunc_953_2009c48
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8093054
	mov	r0, #0xe
	mov	r1, #0
	bl	OvlFunc_953_2009c5c
	b	.L388
.L37a:
	ldr	r0, =0x205d
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
.L388:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2008334

.thumb_func_start OvlFunc_953_200839c
	push	{r5, lr}
	bl	__Func_80916b0
	ldr	r0, =0x962
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L43a
	mov	r0, #0xf0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3c0
	ldr	r0, =0x225e
	bl	__Func_8092b94
	b	.L430
.L3c0:
	ldr	r0, =0x225a
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L430
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xec
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	mov	r1, #0x80
	add	r2, #1
	strh	r2, [r3]
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L418
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L418:
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xf0
	lsl	r0, #2
	bl	__Func_8079358
	b	.L448
.L430:
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092f84
	b	.L448
.L43a:
	ldr	r0, =0x205e
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093054
.L448:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200839c

.thumb_func_start OvlFunc_953_2008468
	push	{r5, lr}
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, #0xd
	bl	__Func_80920a0
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092848
	ldr	r0, =0x2114
	bl	__Func_8092b94
	mov	r0, #0xd
	bl	OvlFunc_953_2009c48
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, r5
	mov	r3, #0xb4
	add	r2, #0x64
	lsl	r3, #2
	strh	r3, [r2]
	add	r5, #0x66
	mov	r3, #0x70
	strh	r3, [r5]
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_809207c
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2008468

.thumb_func_start OvlFunc_953_20084c8
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #0x81
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	ldr	r0, =0x2116
	bl	__Func_8092b94
	mov	r0, #0xe
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_20084c8

.thumb_func_start OvlFunc_953_200850c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x2118
	bl	__Func_8092b94
	mov	r0, #0xf
	bl	OvlFunc_953_2009c48
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_8092848
	mov	r0, #0xf
	bl	OvlFunc_953_2009c48
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0
	mov	r0, #0xf
	bl	__Func_80924d4
	mov	r0, #0xf
	bl	OvlFunc_953_2009c48
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0xf
	bl	OvlFunc_953_2009c5c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200850c

.thumb_func_start OvlFunc_953_200855c
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	ldr	r0, =0x211b
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	ldr	r0, =0x3c1
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L58c
	mov	r0, #0x14
	bl	__Func_809163c
	b	.L5da
.L58c:
	mov	r0, #0x11
	mov	r1, #0
	bl	OvlFunc_953_2009c5c
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8092848
	mov	r1, #4
	mov	r0, #0x11
	bl	__Func_80924d4
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	ldr	r1, =0x105
	mov	r2, #0x28
	mov	r0, #0x11
	bl	__Func_80937b8
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #0xa0
	mov	r0, #0x11
	lsl	r1, #7
	bl	OvlFunc_953_2009c5c
	ldr	r0, =0x3c1
	bl	__Func_8079358
.L5da:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200855c

.thumb_func_start OvlFunc_953_20085f0
	push	{lr}
	bl	__Func_80916b0
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8092848
	ldr	r0, =0x211f
	bl	__Func_8092b94
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_8092548
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0x11
	bl	OvlFunc_953_2009c5c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_20085f0

.thumb_func_start OvlFunc_953_2008648
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #0x12
	bl	__Func_8092848
	ldr	r0, =0x2122
	bl	__Func_8092b94
	mov	r0, #0x12
	bl	OvlFunc_953_2009c48
	mov	r1, #0xd0
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8092848
	mov	r0, #0x12
	bl	OvlFunc_953_2009c48
	mov	r1, #3
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x12
	bl	OvlFunc_953_2009c48
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0x12
	bl	OvlFunc_953_2009c5c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2008648

.thumb_func_start OvlFunc_953_20086bc
	push	{lr}
	bl	__Func_80916b0
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #8
	bl	__Func_8092848
	ldr	r0, =0x2125
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L6f6
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L6f6:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_20086bc

.thumb_func_start OvlFunc_953_2008710
	push	{r5, r6, r7, lr}
	ldr	r0, =0x962
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L71e
	b	.Lda8
.L71e:
	bl	__Func_80916b0
	mov	r0, #0x11
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r5, #0xc0
	mov	r1, #0x80
	lsl	r5, #6
	mov	r2, #0x28
	mov	r0, #0x11
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, r5
	mov	r0, #0x11
	bl	OvlFunc_953_2009c5c
	ldr	r0, =0x2267
	bl	__Func_8092b94
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_809259c
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r0, #0x12
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, r5
	mov	r0, #0x14
	bl	__Func_8092adc
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x3333
	ldr	r0, =0x19999
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xac
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0x12
	bl	__Func_80937b8
	mov	r0, #0x12
	bl	OvlFunc_953_2009c48
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_8092548
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0x13
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x13
	bl	OvlFunc_953_2009c48
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xb0
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0x12
	mov	r1, #1
	bl	__Func_80925cc
	mov	r6, #0x80
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_8092548
	lsl	r6, #8
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x11
	mov	r1, r6
	bl	OvlFunc_953_2009c5c
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x13
	mov	r1, #4
	bl	__Func_8092548
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x14
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x11
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x11
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x12
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #0x13
	mov	r1, r5
	bl	__Func_8092adc
	mov	r0, #0x14
	mov	r1, r5
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x11
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	mov	r1, #0x81
	mov	r0, #0x11
	lsl	r1, #1
	mov	r2, #0xac
	bl	__Func_80921c4
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0x83
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xbc
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L938
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L938:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L94c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_80923e4
.L94c:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L960
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_80923e4
.L960:
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, #0xf6
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r1, #0x83
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xc8
	bl	__Func_809218c
	mov	r1, #0x8b
	mov	r2, #0xc8
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
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
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
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
	bl	__Func_80925cc
	mov	r0, #0x11
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8092c40
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Laec
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_8092548
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	ldr	r5, =.L2d3c
	mov	r0, #1
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_80920fc
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0x11
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r5, =.L2de4
	mov	r0, #0x11
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, r5
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0x50
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	b	.Lc90

	.pool_aligned

.Laec:
	ldr	r7, =iwram_3001ebc
	mov	r3, #0xec
	ldr	r2, [r7]
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	mov	r1, #0x81
	add	r3, #1
	strh	r3, [r2]
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x11
	bl	__Func_80937b8
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x12
	bl	__Func_80937b8
	mov	r0, #0x12
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x13
	bl	__Func_80937b8
	mov	r0, #0x13
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0x14
	bl	__Func_80937b8
	mov	r0, #0x13
	bl	OvlFunc_953_2009c48
	mov	r1, #4
	mov	r0, #0x11
	bl	__Func_8092548
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #3
	bl	OvlFunc_953_2009c48
	mov	r1, #0xb0
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, r5
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0x12
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #3
	bl	OvlFunc_953_2009c5c
	mov	r0, #3
	bl	OvlFunc_953_2009c48
	mov	r1, #4
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lca2
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_8092548
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	ldr	r5, =.L2d3c
	mov	r0, #1
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_80920fc
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0x11
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r5, =.L2de4
	mov	r0, #0x11
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, r5
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0x50
	bl	__Func_809163c
	ldr	r3, [r7]
	mov	r2, #0xe4
.Lc90:
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x28
	str	r2, [r3]
	bl	__Func_8091df4
	bl	__Func_8091e20
	b	.Ld98
.Lca2:
	ldr	r2, [r7]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #2
	bl	OvlFunc_953_2009c48
	mov	r0, #3
	mov	r1, r6
	bl	OvlFunc_953_2009c5c
	mov	r1, #3
	mov	r0, #3
	bl	__Func_80924d4
	mov	r0, #3
	bl	OvlFunc_953_2009c48
	ldr	r5, =.L2d74
	mov	r0, #2
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_80920fc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, r5
	mov	r0, #0
	bl	__Func_80920fc
	mov	r1, #0x83
	mov	r2, #0xbc
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r0, #1
	bl	OvlFunc_953_2009c5c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #1
	bl	OvlFunc_953_2009c48
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xc8
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0x11
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r5, =.L2de4
	mov	r0, #0x11
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #1
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, r5
	mov	r0, #1
	bl	__Func_809207c
	mov	r0, #0x50
	bl	__Func_809163c
	ldr	r3, [r7]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x28
	str	r2, [r3]
	bl	__Func_8091df4
	bl	__Func_8091e20
.Ld98:
	mov	r0, #2
	bl	__Func_8091e9c
	ldr	r0, =0x93f
	bl	__Func_8079358
	bl	__Func_8091750
.Lda8:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2008710

.thumb_func_start OvlFunc_953_2008dcc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lde2
	b	.L1160
.Lde2:
	ldr	r0, =0x235
	bl	__Func_8079358
	bl	__Func_80916b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xda
	mov	r2, #0x78
	mov	r0, #0
	lsl	r1, #2
	bl	__Func_80921c4
	mov	r3, #0xa0
	lsl	r3, #8
	mov	r10, r3
	mov	r0, #0
	mov	r1, r10
	bl	OvlFunc_953_2009c5c
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r0, #0xcc
	mov	r1, #1
	mov	r2, #0xe0
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0x2125
	bl	__Func_8092b94
	mov	r1, #0
	ldr	r0, =0x8008
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	mov	r7, r0
	cmp	r7, #0
	beq	.Le64
	b	.L1144
.Le64:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r8, r3
	mov	r0, #0xc
	mov	r1, r8
	bl	OvlFunc_953_2009c5c
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	ldr	r0, =0x212b
	bl	__Func_8092b94
	mov	r6, #0x80
	ldr	r0, =0x400c
	bl	OvlFunc_953_2009c48
	lsl	r6, #8
	mov	r0, #0x11
	mov	r1, #0
	bl	OvlFunc_953_2009c5c
	mov	r0, #0
	mov	r1, r6
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x11
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_80924d4
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, r8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0xf
	bl	OvlFunc_953_2009c48
	mov	r0, #0x10
	mov	r1, r6
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x10
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x11
	mov	r1, #2
	bl	__Func_80925cc
	mov	r5, #0xb0
	mov	r1, r10
	mov	r0, #0x11
	bl	OvlFunc_953_2009c5c
	lsl	r5, #8
	ldr	r0, =0x4011
	bl	OvlFunc_953_2009c48
	mov	r1, r5
	mov	r0, #0x12
	bl	OvlFunc_953_2009c5c
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_809259c
	ldr	r0, =0x4012
	bl	OvlFunc_953_2009c48
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #0xb
	bl	OvlFunc_953_2009c5c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xb
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_809259c
	ldr	r0, =0x800b
	bl	OvlFunc_953_2009c48
	mov	r0, #0xd
	bl	__Func_80920a0
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r1, r5
	mov	r0, #0x10
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0x10
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xd
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r0, #0xe
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	ldr	r2, =0xcccc
	mov	r0, #0x10
	ldr	r1, =0x19999
	bl	__Func_8092064
	ldr	r1, =.L2e20
	mov	r0, #0xd
	bl	__Func_809207c
	ldr	r1, =.L2ed4
	mov	r0, #0x10
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xf
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0x11
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, r5
	mov	r0, #0x12
	bl	__Func_8092adc
	ldr	r1, =.L2e5c
	mov	r0, #0xe
	bl	__Func_80920fc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #0xb
	mov	r1, r6
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xca
	mov	r1, #1
	mov	r2, #0xac
	mov	r3, #1
	lsl	r2, #15
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #8
	bl	OvlFunc_953_2009c48
	mov	r1, #0x80
	lsl	r1, #9
	mov	r2, r6
	mov	r0, #8
	bl	__Func_8092064
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0xc6
	strb	r3, [r0]
	lsl	r1, #2
	mov	r2, #0x48
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #8
	bl	OvlFunc_953_2009c5c
	mov	r0, #0xd
	bl	__Func_80920a0
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r2, r0
	mov	r3, r2
	add	r3, #0x64
	str	r7, [r2, #0x6c]
	strh	r7, [r3]
	add	r3, #2
	strh	r7, [r3]
	mov	r3, #0x80
	lsl	r3, #24
	str	r7, [r2, #0x24]
	str	r7, [r2, #0x28]
	str	r7, [r2, #0x2c]
	str	r3, [r2, #0x38]
	str	r3, [r2, #0x3c]
	str	r3, [r2, #0x40]
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r5, =.L2f24
	mov	r0, #0xf
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, r5
	mov	r0, #0xd
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, r5
	mov	r0, #0x11
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, r5
	mov	r0, #0xe
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, r5
	mov	r0, #0x10
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, r5
	mov	r0, #0xc
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, r5
	mov	r0, #0x12
	bl	__Func_809207c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0x42
	bl	__Func_8091e9c
	b	.L115c
.L1144:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8092f84
.L115c:
	bl	__Func_8091750
.L1160:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2008dcc

.thumb_func_start OvlFunc_953_20091ac
	push	{lr}
	ldr	r0, =0x235
	bl	__Func_8079374
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_20091ac

.thumb_func_start OvlFunc_953_20091c4
	push	{r5, lr}
	bl	__Func_80916b0
	ldr	r0, =0x8a4
	bl	__Func_8079338
	mov	r5, r0
	cmp	r5, #0
	beq	.L11fa
	mov	r1, #0
	mov	r2, #0x28
	mov	r0, #0x11
	bl	__Func_8092848
	ldr	r0, =0x206f
	bl	__Func_8092b94
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	b	.L1272
.L11fa:
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_809259c
	ldr	r0, =0x206d
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8092f84
	bl	__Func_8093554
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r0, =0x66666
	ldr	r1, =0xcccc
	bl	__Func_80933d4
	mov	r0, #0x87
	mov	r1, #1
	mov	r2, #0xd0
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x40
	str	r3, [r2]
	sub	r3, #0x38
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__Func_8091df4
	bl	__Func_8091e20
	ldr	r0, =0x8a3
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L126c
	mov	r0, #0x46
	bl	__Func_8091e9c
	b	.L1272
.L126c:
	mov	r0, #7
	bl	__Func_8091e9c
.L1272:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_20091c4

.thumb_func_start OvlFunc_953_2009298
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #0xf7
	bl	__Func_80f9080
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_80924d4
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_80924d4
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_80924d4
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_80924d4
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r1, =iwram_3001ebc
	mov	r3, #0xe0
	lsl	r3, #1
	ldr	r2, [r1]
	mov	r10, r3
	mov	r8, r1
	add	r3, #0x40
	mov	r1, r10
	str	r3, [r2, r1]
	sub	r3, #0x38
	mov	r9, r3
	mov	r1, r9
	mov	r3, #0x20
	str	r3, [r2, r1]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x10
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r2, #0xe2
	lsl	r2, #2
	mov	r1, #0xa4
	mov	r0, #0x10
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #9
	mov	r0, #0x10
	bl	__Func_80924d4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xa
	mov	r0, #0x10
	bl	__Func_80924d4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0xe6
	mov	r0, #0x10
	mov	r1, #0xa4
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xe6
	mov	r0, #0x10
	mov	r1, #0xb9
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xe5
	lsl	r2, #2
	mov	r0, #0x10
	mov	r1, #0xb9
	bl	__Func_80921c4
	mov	r1, #0xb
	mov	r0, #0x10
	bl	__Func_80924d4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r1, =.L2f88
	mov	r0, #0x10
	bl	__Func_809207c
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x10
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #0x11
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x12
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xf
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r6, #0xc0
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r6, #6
	mov	r0, #0x11
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, r6
	mov	r0, #0x12
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x10
	bl	__Func_80920a0
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r5, #0x80
	mov	r3, #0xd0
	lsl	r3, #8
	lsl	r5, #9
	strh	r3, [r0, #6]
	str	r5, [r0, #0x18]
	str	r5, [r0, #0x1c]
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_80924d4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x13
	mov	r1, #5
	bl	__Func_80924d4
	mov	r1, #5
	mov	r0, #0x14
	bl	__Func_80924d4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #0x10
	bl	__Func_8092adc
	mov	r1, #8
	mov	r0, #0x10
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #0xf
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #0x11
	mov	r1, #4
	bl	__Func_80924d4
	mov	r1, #4
	mov	r0, #0x12
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0x10
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #0x10
	lsl	r1, #10
	bl	__Func_8092064
	mov	r2, #0xe5
	mov	r0, #0x10
	mov	r1, #0xa2
	lsl	r2, #2
	bl	__Func_80921c4
	ldr	r2, =0x37a
	mov	r0, #0x10
	mov	r1, #0xa2
	bl	__Func_80921c4
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0x10
	mov	r1, #0xb8
	ldr	r2, =0x35f
	bl	__Func_80921c4
	mov	r2, #0xc7
	mov	r0, #0x10
	mov	r1, #0xb8
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r3, r8
	ldr	r2, [r3]
	ldr	r3, =0x201
	mov	r1, r10
	str	r3, [r2, r1]
	mov	r1, r9
	mov	r3, #0x10
	str	r3, [r2, r1]
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r3, r8
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	mov	r1, r10
	str	r3, [r2, r1]
	mov	r0, #0x45
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2009298

.thumb_func_start OvlFunc_953_200960c
	push	{r5, lr}
	bl	__Func_80916b0
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0x11
	bl	OvlFunc_953_2009c5c
	ldr	r0, =0x206e
	bl	__Func_8092b94
	ldr	r0, =0x8a4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1656
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1656:
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #0x11
	bl	OvlFunc_953_2009c5c
	ldr	r0, =0x8a3
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200960c

.thumb_func_start OvlFunc_953_2009688
	push	{r5, r6, r7, lr}
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #0xf7
	bl	__Func_80f9080
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_80924d4
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_80924d4
	mov	r2, #0
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_80923e4
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_80924d4
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x40
	str	r3, [r2]
	sub	r3, #0x38
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x11
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r2, #0xe2
	lsl	r2, #2
	mov	r1, #0xa4
	mov	r0, #0x11
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #9
	mov	r0, #0x11
	bl	__Func_80924d4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xa
	mov	r0, #0x11
	bl	__Func_80924d4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0xe6
	mov	r0, #0x11
	mov	r1, #0xa4
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xe6
	mov	r0, #0x11
	mov	r1, #0xb9
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xe5
	lsl	r2, #2
	mov	r0, #0x11
	mov	r1, #0xb9
	bl	__Func_80921c4
	mov	r1, #0xb
	mov	r0, #0x11
	bl	__Func_80924d4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r1, =.L2f88
	mov	r0, #0x11
	bl	__Func_809207c
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x11
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #0x11
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x12
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xf
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #0x12
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x11
	ldr	r1, =0x101
	bl	__Func_8093874
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x55
	mov	r3, #0
	strb	r3, [r7]
	mov	r5, #0
.L18b2:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0x9999
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #4
	bl	__Func_80030f8
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffffb334
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #4
	add	r5, #1
	bl	__Func_80030f8
	cmp	r5, #0x13
	bls	.L18b2
	mov	r0, #0x13
	mov	r1, #6
	bl	__Func_80924d4
	mov	r1, #6
	mov	r0, #0x14
	bl	__Func_80924d4
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0x11
	bl	__Func_8093874
	mov	r0, #0x11
	bl	__Func_80920a0
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80924d4
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r5, #0x80
	strh	r3, [r0, #6]
	lsl	r5, #9
	mov	r3, #3
	strb	r3, [r7]
	mov	r0, #0xa
	str	r5, [r6, #0x18]
	str	r5, [r6, #0x1c]
	bl	__Func_809163c
	mov	r0, #0x6b
	bl	__Func_80f9080
	mov	r1, r5
	mov	r2, r5
	mov	r0, r5
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0x11
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r2, #0xe8
	mov	r1, #0xd0
	lsl	r2, #2
	mov	r0, #0x11
	bl	__Func_80921c4
	mov	r0, #0x5c
	bl	__Func_80f9080
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x11
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #9
	mov	r0, #0x11
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xa
	mov	r0, #0x11
	bl	__Func_80924d4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #9
	mov	r0, #0x11
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xa
	mov	r0, #0x11
	bl	__Func_80924d4
	mov	r0, #0x50
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	sub	r3, #0x39
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__Func_8091df4
	bl	__Func_8091e20
	ldr	r0, =0x8a4
	bl	__Func_8079358
	mov	r0, #0x45
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2009688

.thumb_func_start OvlFunc_953_2009a14
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8c
	cmp	r2, r3
	bne	.L1a2e
	bl	OvlFunc_953_2009a4c
	b	.L1a38
.L1a2e:
	ldr	r3, =0x8e
	cmp	r2, r3
	bne	.L1a38
	bl	OvlFunc_953_2009c6c
.L1a38:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_953_2009a14

.thumb_func_start OvlFunc_953_2009a4c
	push	{lr}
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #5
	cmp	r3, #0x41
	bls	.L1a68
	b	.L1c2e
.L1a68:
	ldr	r2, =.L1a70
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1a70:
	.word	.L1b78
	.word	.L1c2e
	.word	.L1baa
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1bcc
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1be8
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c12
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1c2e
	.word	.L1bb6
	.word	.L1bc0
	.word	.L1bc6
	.word	.L1c06
	.word	.L1c0c
	.word	.L1b8a
	.word	.L1bb0
.L1b78:
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80924d4
	b	.L1c2e
.L1b8a:
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80924d4
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1c2e
	bl	OvlFunc_953_200960c
	b	.L1c2e
.L1baa:
	bl	OvlFunc_953_2009298
	b	.L1c2e
.L1bb0:
	bl	OvlFunc_953_2009688
	b	.L1c2e
.L1bb6:
	bl	OvlFunc_953_2009cd4
	bl	__Func_807a664
	b	.L1c2e
.L1bc0:
	bl	OvlFunc_953_200a3e0
	b	.L1c2e
.L1bc6:
	bl	OvlFunc_953_200a5f0
	b	.L1c2e
.L1bcc:
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_8079358
	bl	OvlFunc_953_200ab1c
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1c2e
	bl	OvlFunc_953_200a4d8
	b	.L1c2e
.L1be8:
	mov	r0, #1
	bl	__Func_807961c
	mov	r0, #2
	bl	__Func_807961c
	mov	r0, #3
	bl	__Func_807961c
	ldr	r0, =0x90e
	bl	__Func_8079358
	bl	OvlFunc_953_200a668
	b	.L1c2e
.L1c06:
	bl	OvlFunc_953_200a820
	b	.L1c2e
.L1c0c:
	bl	OvlFunc_953_200a904
	b	.L1c2e
.L1c12:
	mov	r0, #1
	bl	__Func_807961c
	mov	r0, #2
	bl	__Func_807961c
	mov	r0, #3
	bl	__Func_807961c
	ldr	r0, =0x90f
	bl	__Func_8079358
	bl	OvlFunc_953_200a964
.L1c2e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2009a4c

.thumb_func_start OvlFunc_953_2009c48
	push	{lr}
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2009c48


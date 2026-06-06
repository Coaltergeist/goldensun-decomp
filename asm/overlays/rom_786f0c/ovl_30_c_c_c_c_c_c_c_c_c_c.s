	.include "macros.inc"

.thumb_func_start OvlFunc_886_2008368
	push	{r5, lr}
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r0, =0x834
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L43c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0
	mov	r0, #0x16
	mov	r2, #0
	bl	__Func_80923e4
	bl	__Func_8095160
	ldr	r3, [r5, #0xc]
	ldr	r2, =0x1f84
	add	r3, r2
	mov	r2, #1
	strh	r2, [r3]
	bl	__Func_8095240
	mov	r0, #0x1e
	bl	__Func_80030f8
	bl	__Func_8091dc8
	bl	__Func_8091e20
	bl	__Func_8095268
.L43c:
	ldr	r0, =0x87a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L474
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #6
	bne	.L464
	ldr	r0, =0x81d
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L464
	bl	OvlFunc_886_2008658
.L464:
	mov	r0, #0xa
	bl	__Func_8092054
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x80
	orr	r3, r2
	strb	r3, [r0]
.L474:
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.L4b6
	ldr	r0, =0x815
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4b6
	mov	r1, #0xe3
	mov	r2, #0x96
	lsl	r2, #16
	lsl	r1, #17
	mov	r0, #0xd
	bl	__Func_80923e4
	mov	r0, #0xd
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xd
	mov	r1, #5
	bl	__Func_80924d4
	mov	r0, #4
	bl	__Func_80118a8
.L4b6:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_886_2008368

.thumb_func_start OvlFunc_886_20084dc
	push	{lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.L4fa
	mov	r0, #1
	mov	r1, #0x15
	bl	__Func_80b0278
	b	.L53c
.L4fa:
	bl	__Func_80916b0
	ldr	r0, =0x87a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L518
	ldr	r0, =0x1c06
	bl	__Func_8092b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093054
	b	.L538
.L518:
	ldr	r0, =0x815
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L52a
	ldr	r0, =0x11a2
	bl	__Func_8092b94
	b	.L530
.L52a:
	ldr	r0, =0xf53
	bl	__Func_8092b94
.L530:
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092f84
.L538:
	bl	__Func_8091750
.L53c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_20084dc

.thumb_func_start OvlFunc_886_200855c
	push	{lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.L57a
	mov	r0, #2
	mov	r1, #0x16
	bl	__Func_80b0278
	b	.L5b4
.L57a:
	bl	__Func_80916b0
	ldr	r0, =0x87a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L590
	ldr	r0, =0x1c09
	bl	__Func_8092b94
	b	.L5a8
.L590:
	ldr	r0, =0x815
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5a2
	ldr	r0, =0x11a3
	bl	__Func_8092b94
	b	.L5a8
.L5a2:
	ldr	r0, =0xf54
	bl	__Func_8092b94
.L5a8:
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
.L5b4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_200855c

.thumb_func_start OvlFunc_886_20085d4
	push	{lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r2, =0xffff5fff
	ldrh	r3, [r0, #6]
	add	r3, r2
	ldr	r2, =0x3ffe
	cmp	r3, r2
	bhi	.L5f2
	mov	r0, #3
	mov	r1, #0x14
	bl	__Func_80b0278
	b	.L63a
.L5f2:
	ldr	r0, =0x87a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L614
	bl	__Func_80916b0
	ldr	r0, =0x1c0a
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	b	.L63a
.L614:
	ldr	r0, =0x815
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L624
	bl	OvlFunc_886_20081e8
	b	.L63a
.L624:
	bl	__Func_80916b0
	ldr	r0, =0xf55
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
.L63a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_20085d4

.thumb_func_start OvlFunc_886_2008658
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #3
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	ldr	r2, =0x3333
	mov	r0, #3
	ldr	r1, =0x6666
	bl	__Func_8092064
	mov	r0, #8
	mov	r1, #5
	bl	__Func_80924d4
	mov	r1, #0xca
	mov	r2, #0xfe
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x17
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x19
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x17
	bl	__Func_8092054
	mov	r6, #0
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x18
	bl	__Func_8092054
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0x19
	bl	__Func_8092054
	ldr	r7, =OvlFunc_886_20090c0
	add	r0, #0x55
	mov	r1, #0xc8
	lsl	r1, #4
	strb	r6, [r0]
	mov	r0, r7
	bl	__Func_80041d8
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r2, =iwram_3001ebc
	ldr	r3, [r2]
	mov	r8, r2
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x20
	str	r2, [r3]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L752
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L752:
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L766
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_80923e4
.L766:
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L77a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_80923e4
.L77a:
	mov	r1, #0xc6
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0xce
	mov	r2, #0xfc
	mov	r0, #2
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0x83
	lsl	r2, #2
	mov	r0, #3
	ldr	r1, =0x332
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80924d4
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r5, =.L12fc
	mov	r0, #0
	ldr	r1, =0x1000a
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r0, #1
	ldr	r1, =0x1000a
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r0, #2
	ldr	r1, =0x1000a
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r2, r5
	ldr	r1, =0x1000a
	mov	r0, #3
	bl	__Func_8092a1c
	mov	r0, #0x96
	lsl	r0, #1
	bl	__Func_809163c
	bl	__Func_8093554
	add	r0, #0x55
	strb	r6, [r0]
	ldr	r1, =0x333
	ldr	r0, =0x1999
	bl	__Func_80933d4
	mov	r2, #0xd7
	mov	r3, #1
	mov	r1, #0
	lsl	r2, #17
	ldr	r0, =0x3120000
	bl	__Func_80933f8
	mov	r0, #0xf0
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_80920a0
	mov	r1, #0x81
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_80937b8
	ldr	r2, =0x195
	ldr	r1, =0x333
	mov	r0, #0xa
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0xa
	bl	__Func_8092adc
	ldr	r0, =0x1c1e
	bl	__Func_8092b94
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x900a
	bl	__Func_8093040
	mov	r0, #0
	bl	__Func_80920a0
	mov	r0, #1
	bl	__Func_80920a0
	mov	r0, #2
	bl	__Func_80920a0
	mov	r0, #3
	bl	__Func_80920a0
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r2, #0x14
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =0x900a
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0x28
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x900a
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r1, #0x83
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r2, #0x28
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_80924d4
	mov	r2, #0xa
	ldr	r0, =0x900a
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_8092548
	mov	r2, #0
	mov	r0, #9
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x28
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x4009
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_80937b8
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r0, #0xa
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0xa
	ldr	r0, =0x400a
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #4
	bl	__Func_8092548
	mov	r1, #0xd0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #9
	mov	r1, #2
	bl	__Func_8092560
	mov	r0, #9
	mov	r1, #4
	bl	__Func_80924d4
	ldr	r0, =0x4009
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #0xa
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x3c
	mov	r0, #0xa
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r3, #1
	b	.Labc

	.pool_aligned

.Labc:
	mov	r0, #0xc
	mov	r4, #7
	str	r0, [sp, #8]
	str	r3, [sp, #0xc]
	str	r3, [sp, #0x14]
	mov	r2, #6
	mov	r1, #0xb
	mov	r3, #6
	mov	r0, #0xa
	str	r2, [sp]
	str	r1, [sp, #4]
	str	r4, [sp, #0x10]
	str	r6, [sp, #0x18]
	bl	__Func_80931ec
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r2, #0xea
	mov	r3, #1
	lsl	r2, #17
	mov	r1, #0
	ldr	r0, =0x3090000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0x14
	ldr	r0, =0x1001
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, r7
	bl	__Func_8004278
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #6
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x4008
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r3, #1
	mov	r1, #0
	ldr	r2, =0x1c30000
	ldr	r0, =0x2ee0000
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #5
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #5
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #6
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	ldr	r0, =0x4008
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0x315
	ldr	r2, =0x1d9
	bl	__Func_80921c4
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0
	ldr	r0, =0x4008
	bl	__Func_8092c40
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.Lc6c
	mov	r3, r8
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lc6c:
	mov	r2, #0xd6
	lsl	r2, #17
	mov	r3, #1
	mov	r1, #0
	ldr	r0, =0x3090000
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #4
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x1c33
	bl	__Func_8092b94
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0xea
	mov	r3, #1
	mov	r1, #0
	lsl	r2, #17
	ldr	r0, =0x3090000
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #4
	bl	__Func_8092548
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	ldr	r0, =0x4008
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #5
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r0, =0x4001
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r0, #2
	ldr	r1, =0x333
	ldr	r2, =0x1e9
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r2, #0x28
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #2
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #8
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092548
	mov	r0, #3
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #1
	mov	r0, #3
	bl	__Func_8092b08
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0x82
	mov	r0, #3
	ldr	r1, =0x31a
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc4
	mov	r2, #0xf8
	mov	r0, #3
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x90
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #3
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #9
	b	.Lf18

	.pool_aligned

.Lf18:
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0xd6
	mov	r3, #1
	mov	r1, #0
	lsl	r2, #17
	ldr	r0, =0x3090000
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xb
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r2, #0xc2
	mov	r0, #0xb
	ldr	r1, =0x343
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x84
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	ldr	r0, =0x200b
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0xea
	mov	r3, #1
	mov	r1, #0
	lsl	r2, #17
	ldr	r0, =0x3090000
	bl	__Func_80933f8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xf0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x90
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
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
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #2
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r5, =.L1400
	mov	r0, #1
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_80920fc
	ldr	r1, =.L1310
	mov	r0, #0xa
	bl	__Func_809207c
	mov	r2, #0xbc
	mov	r0, #0xb
	ldr	r1, =0x345
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0xb
	bl	__Func_8092adc
	ldr	r0, =0x81d
	bl	__Func_8079358
	bl	__Func_8091750
	add	sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_2008658

.thumb_func_start OvlFunc_886_20090c0
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e40
	mov	r1, #0xb4
	ldr	r0, [r3]
	bl	_Func_8000b50
	mov	r6, #0x17
	cmp	r0, #0x14
	beq	.L10e2
	cmp	r0, #0x14
	bhi	.L10dc
	cmp	r0, #0xa
	beq	.L10e8
	b	.L1130
.L10dc:
	cmp	r0, #0x1e
	beq	.L10e6
	b	.L1130
.L10e2:
	mov	r6, #0x18
	b	.L10e8
.L10e6:
	mov	r6, #0x19
.L10e8:
	mov	r0, r6
	bl	__Func_8092054
	mov	r5, r0
	cmp	r5, #0
	beq	.L1130
	mov	r0, #8
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L1108
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r6
	bl	__Func_80923e4
.L1108:
	ldr	r3, =0x6666
	mov	r2, #0xc0
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r3, [r5, #0xc]
	lsl	r2, #13
	add	r3, r2
	mov	r2, r5
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	add	r2, #0x64
	mov	r3, #0x19
	strh	r3, [r2]
	add	r2, #2
	mov	r3, #0x80
	strh	r3, [r2]
	ldr	r1, =.L1440
	mov	r0, r6
	bl	__Func_809207c
.L1130:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_886_20090c0

	.section .data
	.global .L12fc
	.global .L1568
	.global .L1590
	.global .L15b8
	.global .L1738
	.global .L18b8
	.global .L1ac8
	.global .L1c00
	.global .L1da4
	.global .L1ffc
	.global .L1478

.L12fc:
	.incbin "overlays/rom_786f0c/orig.bin", 0x12fc, (0x1310-0x12fc)
.L1310:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1310, (0x1400-0x1310)
.L1400:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1400, (0x1440-0x1400)
.L1440:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1440, (0x1478-0x1440)
.L1478:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1478, (0x1568-0x1478)
.L1568:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1568, (0x1590-0x1568)
.L1590:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1590, (0x15b8-0x1590)
.L15b8:
	.incbin "overlays/rom_786f0c/orig.bin", 0x15b8, (0x1738-0x15b8)
.L1738:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1738, (0x18b8-0x1738)
.L18b8:
	.incbin "overlays/rom_786f0c/orig.bin", 0x18b8, (0x1ac8-0x18b8)
.L1ac8:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1ac8, (0x1c00-0x1ac8)
.L1c00:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1c00, (0x1da4-0x1c00)
.L1da4:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1da4, (0x1ffc-0x1da4)
.L1ffc:
	.incbin "overlays/rom_786f0c/orig.bin", 0x1ffc

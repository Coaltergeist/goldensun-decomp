	.include "macros.inc"

.thumb_func_start OvlFunc_969_200a360
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x88
	bl	__Func_80916b0
	mov	r3, #0x11
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xa
	mov	r2, #4
	mov	r3, #2
	mov	r0, #0x11
	bl	__Func_8010704
	mov	r0, #1
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #8
	ldr	r2, =0
	mov	r8, r3
	mov	r4, r8
	mov	r9, r2
	mov	r1, #0xa4
	mov	r2, #0xa8
	strh	r4, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #1
	bl	__Func_80923e4
	mov	r0, #2
	bl	__Func_8092054
	mov	r2, r8
	strh	r2, [r0, #6]
	mov	r1, #0xaa
	mov	r2, #0xc4
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #2
	bl	__Func_80923e4
	mov	r0, #3
	bl	__Func_8092054
	mov	r3, r8
	mov	r1, #0xa3
	mov	r2, #0xcc
	b	.L23d4

	.pool_aligned

.L23d4:
	strh	r3, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #3
	bl	__Func_80923e4
	mov	r0, #6
	bl	__Func_8092054
	mov	r4, #0xc0
	lsl	r4, #6
	mov	r10, r4
	mov	r2, r10
	strh	r2, [r0, #6]
	mov	r1, #0x86
	mov	r2, #0x9a
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #6
	bl	__Func_80923e4
	mov	r0, #0x15
	bl	__Func_8092054
	mov	r3, r10
	mov	r1, #0x86
	mov	r2, #0xa4
	strh	r3, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x15
	bl	__Func_80923e4
	mov	r0, #0x14
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	mov	r6, #0xa
	add	r3, #0x64
	strh	r6, [r3]
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r1, #0x93
	mov	r2, #0xd4
	strh	r3, [r7, #6]
	lsl	r2, #16
	mov	r0, #0x14
	lsl	r1, #17
	bl	__Func_80923e4
	mov	r0, #0x14
	mov	r1, #9
	bl	__Func_80924d4
	ldr	r4, =.L6074
	mov	r11, r4
	mov	r1, r11
	mov	r0, #0x14
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x13
	bl	__Func_8092054
	mov	r7, r0
	mov	r3, r7
	add	r3, #0x64
	mov	r5, #0
	mov	r1, #0x8f
	mov	r2, #0xc0
	strh	r6, [r3]
	lsl	r2, #16
	strh	r5, [r7, #6]
	mov	r0, #0x13
	lsl	r1, #17
	bl	__Func_80923e4
	mov	r0, #0x13
	mov	r1, #7
	bl	__Func_80924d4
	mov	r1, r11
	mov	r0, #0x13
	bl	__Func_809207c
	mov	r0, #0x13
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	bl	__Func_8093554
	mov	r2, r9
	add	r0, #0x55
	strb	r2, [r0]
	mov	r1, #0x80
	mov	r0, #0x98
	mov	r2, #0xb4
	mov	r3, #0
	lsl	r1, #14
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	mov	r6, #0x80
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x50
	bl	__Func_809163c
	lsl	r6, #6
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #2
	bl	__Func_8092560
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r7, #0xa0
	ldr	r0, =0x27cf
	bl	__Func_8092b94
	lsl	r7, #8
	ldr	r0, =0x1001
	bl	OvlFunc_969_2008894
	mov	r1, r7
	mov	r0, #3
	bl	OvlFunc_969_20088a8
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r2, #0
	mov	r0, #1
	mov	r1, r8
	bl	__Func_8092adc
	mov	r1, r7
	mov	r0, #2
	bl	OvlFunc_969_20088a8
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r0, #0x15
	bl	__Func_8092064
	mov	r0, #0x15
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x8c
	strb	r3, [r0]
	lsl	r1, #1
	mov	r2, #0xa4
	mov	r0, #0x15
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #0x15
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #0x15
	bl	OvlFunc_969_20088a8
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #2
	mov	r0, #3
	bl	__Func_809259c
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #3
	bl	__Func_80924d4
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r2, #0x28
	mov	r0, #0x15
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r1, r10
	mov	r0, #0x15
	bl	OvlFunc_969_20088a8
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	mov	r1, #2
	mov	r0, #2
	bl	__Func_8092560
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, r6
	bl	OvlFunc_969_20088a8
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	mov	r7, #1
	cmp	r0, #0
	beq	.L2650
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r7, #0
.L2650:
	mov	r0, #0x14
	bl	__Func_80030f8
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r4, #0xa0
	lsl	r4, #8
	mov	r10, r4
	mov	r0, #3
	mov	r1, r10
	bl	OvlFunc_969_20088a8
	mov	r0, #0x15
	mov	r1, #0
	bl	OvlFunc_969_20088a8
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r0, #0x28
	bl	__Func_809163c
	cmp	r7, #0
	beq	.L26ac
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xec
	ldr	r2, [r3]
	lsl	r0, #1
	add	r2, r0
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L26ac:
	mov	r0, #0x14
	bl	__Func_80920a0
	mov	r0, #0x13
	bl	__Func_80920a0
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x14
	bl	__Func_8092054
	mov	r2, #0x80
	lsl	r2, #9
	mov	r7, r0
	str	r2, [r7, #0x18]
	str	r2, [r7, #0x1c]
	mov	r0, #0x13
	mov	r8, r2
	bl	__Func_8092054
	mov	r3, r8
	mov	r7, r0
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x14
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_8092064
	mov	r1, #0x96
	mov	r2, #0xce
	lsl	r1, #1
	mov	r0, #0x14
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x14
	bl	__Func_8092054
	ldr	r6, =0xffff0000
	str	r6, [r0, #0x18]
	mov	r0, #0xa1
	bl	__Func_80f9080
	mov	r1, #8
	mov	r0, #0x14
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80924d4
	mov	r0, #0x13
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r0, #0x13
	mov	r1, #4
	mov	r2, #0x28
	bl	__Func_8092560
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0x13
	bl	__Func_8092064
	mov	r0, #0x13
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x94
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #0x13
	mov	r2, #0xba
	bl	__Func_80921c4
	mov	r0, #0x13
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_8092064
	mov	r1, #0x92
	mov	r2, #0xba
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_80921c4
	mov	r0, #0x13
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r4, #1
	orr	r3, r4
	strb	r3, [r0]
	mov	r0, #0x13
	bl	__Func_8092054
	str	r6, [r0, #0x18]
	mov	r0, #0xa1
	bl	__Func_80f9080
	mov	r1, #5
	mov	r0, #0x13
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #3
	mov	r1, #4
	b	.L2860

	.pool_aligned

.L2860:
	bl	__Func_8092548
	mov	r2, #0x14
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	mov	r0, #0
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_8092054
	mov	r2, #0xc0
	lsl	r2, #6
	mov	r7, r0
	mov	r11, r2
	ldr	r0, =0
	mov	r4, r8
	mov	r3, r11
	strh	r3, [r7, #6]
	str	r4, [r7, #0x18]
	mov	r1, #1
	mov	r9, r0
	mov	r6, #0xd0
	mov	r0, #0x14
	bl	__Func_80924d4
	lsl	r6, #8
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x14
	mov	r1, r6
	bl	OvlFunc_969_20088a8
	mov	r1, #6
	mov	r2, #0
	mov	r0, #0x14
	bl	__Func_8092560
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, r10
	mov	r2, #0
	b	.L2930

	.pool_aligned

.L2930:
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #6
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x80
	ldr	r2, [r7, #0xc]
	lsl	r0, #12
	mov	r8, r0
	ldr	r1, [r7, #8]
	add	r2, r8
	ldr	r3, [r7, #0x10]
	mov	r0, #0x16
	bl	__Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L29f2
	ldr	r6, [r5, #0x50]
	mov	r3, r6
	add	r3, #0x27
	mov	r2, r9
	strb	r2, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r1, r5
	mov	r2, #0xd
	add	r1, #0x23
	neg	r2, r2
	and	r3, r2
	ldrb	r2, [r1]
	strb	r3, [r6, #9]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	mov	r3, r5
	mov	r4, r9
	add	r3, #0x55
	mov	r2, r5
	strb	r4, [r3]
	add	r2, #0x5c
	mov	r3, #1
	strb	r3, [r2]
	ldr	r3, =0x19999
	str	r3, [r5, #0x30]
	ldr	r3, =0xcccc
	mov	r1, #0xc1
	str	r3, [r5, #0x34]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_80048b0
	str	r0, [sp, #0x28]
	mov	r0, #0xdc
	bl	__Func_801a370
	mov	r3, #0x80
	ldr	r2, [sp, #0x28]
	lsl	r3, #3
	add	r3, r2, r3
	ldrb	r0, [r6, #0x1c]
	mov	r1, #0x80
	mov	r2, r3
	str	r3, [sp, #0x24]
	bl	__Func_8003fa4
	mov	r0, #0x11
	bl	__Func_8002dd8
.L29f2:
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_8092b08
	mov	r0, #0x16
	bl	__Func_8092054
	mov	r6, #0x80
	ldr	r3, [r7, #8]
	lsl	r6, #14
	str	r3, [r0, #8]
	str	r6, [r0, #0xc]
	ldr	r3, [r7, #0x10]
	str	r3, [r0, #0x10]
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #3
	strb	r1, [r3]
	ldr	r3, =0x19999
	ldr	r2, =0xcccc
	str	r3, [r0, #0x30]
	mov	r3, #0xc0
	lsl	r3, #8
	str	r2, [r0, #0x34]
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	cmp	r5, #0
	beq	.L2a4a
	mov	r3, r5
	add	r3, #0x55
	strb	r1, [r3]
	ldr	r3, =0x9999
	mov	r4, r8
	str	r3, [r5, #0x48]
	mov	r1, #0x9a
	mov	r3, #0xa4
	str	r2, [r5, #0x44]
	str	r4, [r5, #0x28]
	mov	r0, r5
	lsl	r1, #17
	mov	r2, r6
	lsl	r3, #16
	bl	__Func_800d14c
.L2a4a:
	mov	r1, #0x9a
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0xa4
	bl	__Func_8092158
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092b08
	cmp	r5, #0
	beq	.L2afc
	ldr	r0, =0x135
	bl	__Func_80f9080
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r1, #0x9d
	mov	r3, #0x89
	lsl	r1, #17
	mov	r2, r6
	lsl	r3, #16
	mov	r0, r5
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	ldr	r0, =0x135
	bl	__Func_80f9080
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r3, #0xc0
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r3, #0x92
	ldr	r1, =0x11d0000
	mov	r2, r6
	lsl	r3, #16
	mov	r0, r5
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	ldr	r0, =0x135
	bl	__Func_80f9080
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r1, #0x96
	mov	r3, #0x9a
	lsl	r1, #17
	mov	r2, r6
	lsl	r3, #16
	mov	r0, r5
	bl	__Func_800d14c
	mov	r0, r5
	bl	__Func_800ca6c
	mov	r0, #6
	bl	__Func_80030f8
	mov	r0, #0
	str	r0, [r5, #8]
	str	r0, [r5, #0xc]
	str	r0, [r5, #0x10]
	mov	r0, r5
	bl	OvlFunc_969_200d688
.L2afc:
	mov	r1, #0x80
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
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
	mov	r2, #0x1e
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_8092b08
	mov	r0, #0x15
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #6
	mov	r1, r11
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, r11
	bl	OvlFunc_969_20088a8
	mov	r0, #0x15
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #6
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
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
	mov	r0, #3
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0x84
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__Func_80937b8
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r0, #0
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2c70
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r7, #1
	b	.L2c8a

	.pool_aligned

.L2c70:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #1
	mov	r1, #4
	bl	__Func_80924d4
	mov	r7, #0
.L2c8a:
	mov	r0, #1
	bl	OvlFunc_969_2008894
	cmp	r7, #0
	beq	.L2ca4
	ldr	r3, =iwram_3001ebc
	mov	r4, #0xec
	ldr	r2, [r3]
	lsl	r4, #1
	add	r2, r4
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L2ca4:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #7
	mov	r0, #0x18
	bl	__Func_8092950
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r4, #0
	mov	r7, r0
	ldr	r0, =0xffff0000
	mov	r8, r4
	ldr	r2, =0x1999
	mov	r3, r7
	str	r0, [r7, #0x1c]
	mov	r9, r0
	add	r3, #0x55
	mov	r0, r8
	str	r2, [r7, #0x18]
	mov	r10, r2
	strb	r0, [r3]
	mov	r6, #0x98
	mov	r3, #0x80
	mov	r2, #0x9e
	lsl	r2, #16
	lsl	r3, #15
	lsl	r6, #17
	str	r3, [r7, #0xc]
	str	r2, [r7, #0x10]
	str	r6, [r7, #8]
	mov	r0, #0x19
	mov	r11, r2
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #7
	mov	r0, #0x19
	bl	__Func_8092950
	mov	r0, #0x19
	bl	__Func_8092054
	mov	r3, r9
	mov	r7, r0
	str	r3, [r7, #0x1c]
	mov	r3, r7
	mov	r4, r10
	mov	r0, r8
	add	r3, #0x55
	str	r4, [r7, #0x18]
	strb	r0, [r3]
	mov	r3, #0xc0
	lsl	r3, #15
	mov	r2, r11
	mov	r1, #0x80
	str	r3, [r7, #0xc]
	str	r6, [r7, #8]
	str	r2, [r7, #0x10]
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
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
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #6
	mov	r1, #0
	bl	__Func_8092adc
	ldr	r6, =.L6088
	mov	r0, #0x18
	mov	r1, r6
	bl	__Func_809207c
	mov	r1, r6
	mov	r0, #0x19
	bl	__Func_809207c
	mov	r0, #0x91
	bl	__Func_80f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	mov	r1, #0
	ldr	r0, =0x4063ff
	bl	__Func_8091200
	mov	r0, #0x10
	bl	__Func_8091254
	mov	r0, #0x14
	bl	__Func_80030f8
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x18
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__Func_80030f8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_969_200b6d0
	bl	__Func_80041d8
	mov	r0, #0x8d
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	mov	r1, #0
	ldr	r0, =0x4063ff
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	ldr	r6, =.L60ac
	mov	r0, #0x18
	mov	r1, r6
	bl	__Func_809207c
	mov	r1, r6
	mov	r0, #0x19
	bl	__Func_809207c
	mov	r0, #0x78
	bl	__Func_80030f8
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	mov	r1, #0
	ldr	r0, =0x203210
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__Func_80030f8
	mov	r0, #0x3f
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__Func_80030f8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #9
	lsl	r1, #9
	bl	__Func_8012330
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x13
	bl	__Func_8092adc
	mov	r0, #0x13
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
	mov	r2, #0x28
	mov	r0, #0x13
	mov	r1, #4
	bl	__Func_8092560
	mov	r0, #0x13
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #6
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r6, #0x80
	mov	r0, #0x14
	lsl	r6, #8
	bl	OvlFunc_969_2008894
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r6
	mov	r0, #3
	bl	OvlFunc_969_20088a8
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_969_20088a8
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_8092548
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	mov	r0, #0x13
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_809259c
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r4, #0xc0
	lsl	r4, #7
	mov	r11, r4
	mov	r1, r11
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xd0
	mov	r0, #0x14
	lsl	r1, #8
	bl	OvlFunc_969_20088a8
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_8092548
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0x13
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	ldr	r0, =0x2013
	mov	r8, r0
	bl	OvlFunc_969_2008894
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r6
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r6
	mov	r0, #1
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa0
	lsl	r2, #8
	mov	r9, r2
	mov	r1, r9
	mov	r0, #3
	bl	OvlFunc_969_20088a8
	ldr	r1, =0x101
	mov	r2, #0x50
	mov	r0, #0x15
	bl	__Func_80937b8
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, r9
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r11
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r2, #0x28
	b	.L3094

	.pool_aligned

.L3094:
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r1, r6
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r6
	mov	r0, #1
	mov	r2, #0
	bl	__Func_8092adc
	mov	r7, #0xb0
	mov	r1, r6
	mov	r0, #2
	mov	r2, #0
	bl	__Func_8092adc
	lsl	r7, #8
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #3
	bl	__Func_8092adc
	mov	r1, r7
	mov	r0, #0x14
	bl	OvlFunc_969_20088a8
	ldr	r3, =0x2014
	mov	r10, r3
	mov	r0, r10
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, r7
	mov	r0, #0x15
	mov	r2, #0x3c
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0x15
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r1, #0
	mov	r2, #0x28
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0xd0
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, r7
	mov	r0, #0x14
	bl	OvlFunc_969_20088a8
	mov	r0, r10
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x15
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0x15
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, r7
	mov	r0, #0x13
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #0x13
	bl	__Func_80937b8
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #0x15
	lsl	r1, #6
	bl	OvlFunc_969_20088a8
	ldr	r1, =0x101
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__Func_80937b8
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	mov	r1, r7
	mov	r0, #0x14
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_80924d4
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r2, #0x50
	ldr	r1, =0x103
	mov	r0, #0x15
	bl	__Func_80937b8
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_8092548
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	mov	r0, #0x15
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x13
	bl	__Func_80924d4
	mov	r0, r8
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0x14
	mov	r1, #4
	bl	__Func_80924d4
	mov	r2, #0x28
	mov	r0, r10
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
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
	mov	r1, r9
	mov	r0, #2
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r9
	mov	r0, #3
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x13
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0x13
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, r7
	mov	r2, #0x14
	mov	r0, #0x15
	bl	__Func_8092adc
	ldr	r0, =0xa015
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #6
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, r6
	mov	r0, #0x15
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r7, =.L622c
	mov	r0, #0x15
	mov	r1, r7
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, r7
	mov	r0, #6
	bl	__Func_809207c
	mov	r0, #1
	mov	r1, r11
	bl	OvlFunc_969_20088a8
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r1, #1
	ldr	r0, =0x40250d
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0x14
	bl	OvlFunc_969_20088a8
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r0, #0
	mov	r1, r11
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r6
	mov	r0, #2
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, r6
	mov	r0, #3
	bl	__Func_8092adc
	bl	OvlFunc_969_200b5c4
	mov	r0, #0x14
	mov	r1, #7
	bl	__Func_8092950
	mov	r1, #7
	mov	r0, #0x13
	bl	__Func_8092950
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #1
	bl	__Func_8092950
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0x13
	bl	__Func_8092950
	mov	r0, #0x14
	bl	__Func_809163c
	bl	OvlFunc_969_200b5c4
	mov	r2, #0x14
	mov	r1, #2
	mov	r0, #3
	bl	__Func_8092560
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r1, #0
	mov	r0, #0x13
	bl	OvlFunc_969_20088a8
	mov	r0, #0x13
	bl	OvlFunc_969_2008894
	bl	OvlFunc_969_200b5c4
	mov	r0, #0x13
	bl	__Func_8092054
	add	r4, sp, #0x60
	mov	r3, #7
	mov	r10, r0
	str	r3, [r4, #4]
	mov	r0, #0x80
	ldr	r3, =OvlFunc_969_20083a0
	mov	r2, #0x54
	lsl	r0, #9
	add	r2, sp
	mov	r9, r2
	str	r3, [r4, #0x24]
	str	r0, [r4, #8]
	str	r0, [r4, #0xc]
	mov	r8, r4
	mov	r7, #0
	mov	r6, r9
.L33bc:
	lsl	r3, r7, #12
	mov	r0, r3
	str	r3, [sp, #0x20]
	bl	__Func_800231c
	mov	r3, #0
	str	r3, [r6, #4]
	str	r0, [r6]
	ldr	r0, [sp, #0x20]
	bl	__Func_8002322
	ldr	r3, [r6]
	lsl	r2, r3, #1
	add	r3, r2
	lsl	r0, #1
	str	r0, [r6, #8]
	str	r3, [r6]
	mov	r4, r10
	ldr	r4, [r4, #8]
	str	r4, [sp, #0x1c]
	mov	r2, r10
	ldr	r1, [r2, #0xc]
	ldr	r4, [r6, #4]
	ldr	r2, [r2, #0x10]
	str	r0, [sp, #4]
	ldr	r0, =0x1090000
	str	r4, [sp]
	str	r0, [sp, #8]
	mov	r4, r8
	ldr	r0, [sp, #0x1c]
	add	r7, #1
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	cmp	r7, #0x10
	bls	.L33bc
	mov	r0, #0xd4
	bl	__Func_80f9080
	mov	r0, #6
	bl	__Func_80030f8
	bl	OvlFunc_969_200b5c4
	mov	r0, #0x14
	bl	__Func_8092054
	mov	r10, r0
	add	r0, sp, #0x2c
	mov	r3, #7
	str	r3, [r0, #4]
	ldr	r3, =OvlFunc_969_20083a0
	str	r3, [r0, #0x24]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #8]
	str	r3, [r0, #0xc]
	mov	r8, r0
	mov	r7, #0
	mov	r6, r9
.L3434:
	lsl	r2, r7, #12
	mov	r0, r2
	str	r2, [sp, #0x18]
	bl	__Func_800231c
	mov	r3, #0
	str	r3, [r6, #4]
	str	r0, [r6]
	ldr	r0, [sp, #0x18]
	bl	__Func_8002322
	ldr	r3, [r6]
	lsl	r2, r3, #1
	add	r3, r2
	lsl	r0, #1
	str	r0, [r6, #8]
	str	r3, [r6]
	mov	r4, r10
	ldr	r4, [r4, #8]
	str	r4, [sp, #0x14]
	mov	r2, r10
	ldr	r1, [r2, #0xc]
	ldr	r4, [r6, #4]
	ldr	r2, [r2, #0x10]
	str	r0, [sp, #4]
	ldr	r0, =0x1090000
	str	r4, [sp]
	str	r0, [sp, #8]
	mov	r4, r8
	ldr	r0, [sp, #0x14]
	add	r7, #1
	str	r4, [sp, #0xc]
	bl	OvlFunc_common0_10c
	cmp	r7, #0x10
	bls	.L3434
	mov	r0, #0xd4
	bl	__Func_80f9080
	mov	r2, #0x14
	mov	r1, #6
	mov	r0, #2
	bl	__Func_8092560
	mov	r0, #0x36
	bl	__Func_80f9080
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	bl	OvlFunc_969_200b5c4
	mov	r0, #0x14
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_8092064
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0x13
	bl	__Func_8092064
	mov	r0, #0x14
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r6, #0xfe
	mov	r3, r6
	b	.L34f8

	.pool_aligned

.L34f8:
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x13
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0xfe
	and	r2, r3
	mov	r1, #0x93
	str	r6, [sp, #0x10]
	lsl	r1, #1
	strb	r2, [r0]
	mov	r0, #0x14
	mov	r2, #0xc4
	bl	__Func_8092128
	mov	r1, #0x93
	mov	r2, #0xc4
	mov	r0, #0x13
	lsl	r1, #1
	bl	__Func_8092128
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_969_200b7c4
	bl	__Func_80041d8
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__Func_8079358
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092f84
	ldr	r0, =0x235
	bl	__Func_8079358
	bl	OvlFunc_969_200b5c4
	mov	r0, #0x14
	bl	__Func_809163c
	bl	OvlFunc_969_200b5c4
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r3, =ewram_2000240
	ldr	r4, =0x22b
	mov	r2, #3
	add	r3, r4
	strb	r2, [r3]
	ldr	r6, =0xbb
	mov	r1, #3
	mov	r0, r6
	bl	__Func_8091f90
	mov	r0, r6
	mov	r1, #9
	bl	__Func_8091fa8
	mov	r1, #0
	mov	r0, #0x62
	bl	__Func_8091eb0
	bl	__Func_8078144
	ldr	r0, =0x351
	bl	__Func_8079358
	add	sp, #0x88
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200a360

.thumb_func_start OvlFunc_969_200b5c4
	push	{lr}
	mov	r0, #0xbb
	bl	__Func_80f9080
	mov	r1, #1
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #4
	bl	__Func_80030f8
	mov	r1, #1
	ldr	r0, =0x40250d
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__Func_80030f8
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b5c4

.thumb_func_start OvlFunc_969_200b600
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r6, r5
	add	r6, #0x64
	ldrh	r1, [r6]
	mov	r8, r1
	mov	r10, r0
	mov	r0, r8
	bl	__Func_800231c
	ldr	r3, [r5, #0x30]
	add	r3, #3
	mov	r2, r3
	mul	r2, r0
	mov	r1, r10
	ldr	r3, [r1, #8]
	mov	r0, r8
	add	r3, r2
	str	r3, [r5, #8]
	bl	__Func_8002322
	mov	r2, r10
	ldr	r3, [r2, #0x10]
	lsl	r0, #1
	ldr	r2, [r5, #8]
	add	r3, r0
	str	r3, [r5, #0x10]
	str	r2, [r5, #0x38]
	str	r3, [r5, #0x40]
	ldr	r1, =0xfffff800
	ldrh	r3, [r6]
	add	r3, r1
	strh	r3, [r6]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b600

.thumb_func_start OvlFunc_969_200b660
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r0, #0x17
	bl	__Func_8092054
	mov	r5, r7
	add	r5, #0x64
	ldrh	r6, [r5]
	mov	r8, r0
	mov	r0, r6
	bl	__Func_800231c
	mov	r1, #0x62
	add	r1, r7
	ldrb	r2, [r1]
	ldr	r3, [r7, #0x30]
	add	r3, r2
	add	r3, #6
	mov	r2, r3
	mul	r2, r0
	mov	r10, r1
	mov	r1, r8
	ldr	r3, [r1, #8]
	add	r3, r2
	str	r3, [r7, #8]
	mov	r0, r6
	bl	__Func_8002322
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #4
	mov	r2, r3
	mul	r2, r0
	mov	r1, r8
	ldr	r3, [r1, #0x10]
	add	r3, r2
	ldr	r2, [r7, #8]
	str	r3, [r7, #0x10]
	str	r2, [r7, #0x38]
	str	r3, [r7, #0x40]
	ldr	r2, =0xfffff800
	ldrh	r3, [r5]
	add	r3, r2
	strh	r3, [r5]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b660

.thumb_func_start OvlFunc_969_200b6d0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x236
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L36ee
	ldr	r3, =iwram_3001e40
	mov	r1, #3
	ldr	r0, [r3]
	bl	_Func_8000b50
	cmp	r0, #0
	bne	.L37b8
.L36ee:
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r5, r0
	ldr	r0, =0x236
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3714
	bl	__Func_8004458
	mov	r2, r0
	lsl	r2, #8
	b	.L371c

	.pool_aligned

.L3714:
	bl	__Func_8004458
	mov	r2, r0
	lsl	r2, #6
.L371c:
	ldr	r3, [r5, #0xc]
	lsr	r2, #16
	lsl	r2, #16
	add	r2, r3
	ldr	r3, =0xffe40000
	mov	r0, #0x8e
	add	r2, r3
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #0x10]
	lsl	r0, #1
	bl	__Func_800c150
	mov	r7, r0
	cmp	r7, #0
	beq	.L37b8
	ldr	r1, =.L616c
	mov	r0, r7
	ldr	r6, [r7, #0x50]
	bl	__Func_800c2d8
	mov	r1, #1
	mov	r0, r7
	bl	__Func_80929d8
	mov	r3, r7
	add	r3, #0x55
	mov	r5, #0
	strb	r5, [r3]
	bl	__Func_8004458
	ldr	r3, =0xffff000
	mov	r2, r7
	add	r2, #0x64
	and	r3, r0
	strh	r3, [r2]
	mov	r3, r7
	add	r3, #0x66
	strh	r5, [r3]
	ldr	r3, =OvlFunc_969_200b600
	ldr	r1, .L37a4	@ 0
	str	r3, [r7, #0x6c]
	mov	r8, r1
	bl	__Func_8004458
	mov	r3, r0
	lsl	r0, r3, #16
	sub	r0, r3
	lsr	r0, #20
	bl	__Func_8002322
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	asr	r3, #16
	str	r3, [r7, #0x30]
	mov	r3, r6
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	mov	r3, #0xd
	ldrb	r2, [r6, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
	b	.L37b8

	.align	2, 0
.L37a4:
	.word	0
	.pool

.L37b8:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b6d0

.thumb_func_start OvlFunc_969_200b7c4
	push	{r5, r6, lr}
	mov	r0, #0x14
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, #0x13
	bl	__Func_8092054
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	mov	r6, r0
	cmp	r3, r2
	bne	.L37e2
	ldr	r2, [r5, #0x3c]
.L37e2:
	mov	r2, #0x80
	ldr	r3, [r6, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L37fa
	ldr	r2, [r6, #0x3c]
	cmp	r2, r3
	bne	.L37fa
	ldr	r3, [r6, #0x40]
	mov	r1, #1
	cmp	r3, r2
	beq	.L37fc
.L37fa:
	mov	r1, #0
.L37fc:
	cmp	r1, #0
	beq	.L38ae
	mov	r3, #0
	strh	r3, [r5, #6]
	ldr	r0, =0x235
	strh	r3, [r6, #6]
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3846
	mov	r0, #0x14
	mov	r1, #7
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #7
	bl	__Func_8092950
	mov	r2, #0xa0
	ldr	r3, [r5, #0x18]
	lsl	r2, #9
	cmp	r3, r2
	bge	.L3874
	mov	r2, #0x80
	lsl	r2, #2
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
	str	r3, [r5, #0x1c]
	ldr	r3, [r6, #0x18]
	add	r3, r2
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	b	.L3874
.L3846:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L3864
	mov	r0, #0x14
	mov	r1, #0xf
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8092950
	b	.L3874
.L3864:
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #0xf
	bl	__Func_8092950
.L3874:
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L38ae
	mov	r2, #0x9c
	ldr	r3, [r5, #8]
	lsl	r2, #17
	cmp	r3, r2
	bge	.L3898
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, r2
	str	r3, [r5, #8]
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r6, #8]
.L3898:
	mov	r2, #0xb6
	ldr	r3, [r5, #0x10]
	lsl	r2, #16
	cmp	r3, r2
	ble	.L38ae
	ldr	r2, =0xfffff000
	add	r3, r2
	str	r3, [r5, #0x10]
	ldr	r3, [r6, #0x10]
	add	r3, r2
	str	r3, [r6, #0x10]
.L38ae:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b7c4

.thumb_func_start OvlFunc_969_200b8c0
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_969_200bbc8
	bl	OvlFunc_969_200be9c
	bl	OvlFunc_969_200c23c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b8c0

.thumb_func_start OvlFunc_969_200b8dc
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_969_200c8d8
	bl	OvlFunc_969_200cb28
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_8079358
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x40
	str	r3, [r2]
	sub	r3, #0x38
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #1
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b8dc

.thumb_func_start OvlFunc_969_200b924
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_8092054
	mov	r10, r0
	bl	__Func_80916b0
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	mov	r2, #0x17
	mov	r3, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x66
	mov	r1, #4
	mov	r2, #0x4a
	mov	r3, #4
	bl	__Func_8010424
	mov	r3, #0x10
	mov	r2, #0x14
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x27
	mov	r1, #0x48
	mov	r2, #0xb
	mov	r3, #0x48
	bl	__Func_8010424
	mov	r2, #0x16
	str	r2, [sp]
	mov	r8, r2
	mov	r6, #6
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r5, #0xd
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	mov	r0, #0x13
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0xc0
	mov	r2, #0xee
	lsl	r2, #16
	mov	r3, #0
	ldr	r1, =0xffc00000
	lsl	r0, #16
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x14
	bl	__Func_8092924
	mov	r0, #0x13
	bl	__Func_8092924
	mov	r1, #0x13
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #0xad
	mov	r2, r10
	lsl	r3, #17
	str	r3, [r2, #8]
	mov	r3, #0xcd
	lsl	r3, #16
	str	r3, [r2, #0x10]
	mov	r5, #0x80
	mov	r3, #0xc0
	lsl	r3, #7
	lsl	r5, #14
	str	r5, [r2, #0xc]
	strh	r3, [r2, #6]
	mov	r0, r10
	bl	OvlFunc_969_200d688
	mov	r1, #0x12
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #1
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #1
	bl	__Func_8092054
	mov	r3, #0xb2
	lsl	r3, #17
	str	r3, [r0, #8]
	mov	r3, #0xc0
	lsl	r3, #16
	str	r3, [r0, #0x10]
	mov	r3, #0xa0
	lsl	r3, #8
	strh	r3, [r0, #6]
	str	r5, [r0, #0xc]
	bl	OvlFunc_969_200d688
	mov	r1, #0x12
	mov	r0, #2
	bl	__Func_80924d4
	mov	r0, #2
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #2
	bl	__Func_8092054
	mov	r3, #0xb4
	lsl	r3, #17
	str	r3, [r0, #8]
	mov	r6, #0xde
	mov	r3, #0x80
	lsl	r3, #6
	lsl	r6, #16
	strh	r3, [r0, #6]
	str	r5, [r0, #0xc]
	str	r6, [r0, #0x10]
	bl	OvlFunc_969_200d688
	mov	r1, #0x12
	mov	r0, #3
	bl	__Func_80924d4
	mov	r0, #3
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #3
	bl	__Func_8092054
	mov	r3, #0xa7
	lsl	r3, #17
	str	r3, [r0, #8]
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r0, #6]
	str	r5, [r0, #0xc]
	str	r6, [r0, #0x10]
	bl	OvlFunc_969_200d688
	mov	r1, #0xc4
	mov	r2, #0xdc
	lsl	r2, #16
	mov	r0, #0x15
	lsl	r1, #16
	bl	__Func_80923e4
	mov	r0, #0x15
	mov	r1, #5
	bl	__Func_80924d4
	mov	r1, #0xbc
	mov	r2, #0x9e
	lsl	r2, #17
	mov	r0, #6
	lsl	r1, #16
	bl	__Func_80923e4
	mov	r1, #5
	mov	r0, #6
	bl	__Func_80924d4
	mov	r0, #6
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #8
	bl	__Func_8092054
	ldr	r5, =0xfff00000
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #9
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r5, #0x80
	ldr	r3, [r0, #8]
	lsl	r5, #13
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xb
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x17
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x17
	bl	__Func_8092054
	mov	r3, #4
	add	r0, #0x55
	strb	r3, [r0]
	mov	r1, #4
	mov	r0, #0x17
	bl	__Func_8092950
	mov	r0, #0x17
	bl	__Func_8092054
	mov	r3, #0xa0
	lsl	r3, #14
	mov	r1, #0xc8
	str	r3, [r0, #0xc]
	lsl	r1, #4
	ldr	r0, =OvlFunc_969_200da28
	bl	__Func_80041d8
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x40
	str	r3, [r2]
	sub	r3, #0x38
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__Func_809163c
	bl	OvlFunc_969_200cbec
	ldr	r0, =0x9a7
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_8091e9c
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b924

.thumb_func_start OvlFunc_969_200bbc8
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x8d
	sub	sp, #8
	bl	__Func_80f9080
	mov	r3, #0x11
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r1, #0xa
	mov	r2, #4
	mov	r0, #0x11
	bl	__Func_8010704
	mov	r0, #0
	bl	__Func_8092054
	mov	r5, #0xa0
	lsl	r5, #8
	ldr	r2, =0
	strh	r5, [r0, #6]
	mov	r0, #1
	mov	r9, r2
	bl	__Func_8092054
	mov	r1, #0xa4
	mov	r2, #0xa8
	strh	r5, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #1
	bl	__Func_80923e4
	mov	r0, #2
	bl	__Func_8092054
	mov	r1, #0xaa
	mov	r2, #0xc4
	strh	r5, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #2
	bl	__Func_80923e4
	mov	r0, #3
	bl	__Func_8092054
	mov	r1, #0xa3
	mov	r2, #0xcc
	b	.L3c3c

	.pool_aligned

.L3c3c:
	strh	r5, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #3
	bl	__Func_80923e4
	mov	r0, #0x15
	bl	__Func_8092054
	mov	r5, #0xd0
	lsl	r5, #8
	mov	r1, #0xc8
	mov	r2, #0xd8
	strh	r5, [r0, #6]
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #0x15
	bl	__Func_80923e4
	mov	r0, #6
	bl	__Func_8092054
	mov	r1, #0xc8
	mov	r2, #0xd8
	strh	r5, [r0, #6]
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #6
	bl	__Func_80923e4
	mov	r0, #0x14
	bl	__Func_8092054
	mov	r5, #0xc0
	lsl	r5, #6
	mov	r1, #0x9b
	mov	r2, #0x9e
	strh	r5, [r0, #6]
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x14
	bl	__Func_80923e4
	mov	r0, #0x13
	bl	__Func_8092054
	mov	r1, #0x92
	mov	r2, #0x9e
	lsl	r2, #16
	strh	r5, [r0, #6]
	lsl	r1, #17
	mov	r0, #0x13
	bl	__Func_80923e4
	mov	r0, #0x18
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x18
	mov	r1, #7
	bl	__Func_8092950
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_8092b08
	mov	r0, #0x18
	bl	__Func_8092054
	ldr	r3, =0xffff0000
	ldr	r6, =0x3333
	str	r3, [r0, #0x1c]
	mov	r8, r3
	mov	r3, r0
	mov	r2, r9
	add	r3, #0x55
	str	r6, [r0, #0x18]
	strb	r2, [r3]
	mov	r3, #0x98
	lsl	r3, #17
	mov	r10, r3
	str	r3, [r0, #8]
	mov	r5, #0xc0
	mov	r3, #0x80
	lsl	r3, #10
	lsl	r5, #15
	str	r3, [r0, #0xc]
	str	r5, [r0, #0x10]
	mov	r0, #0x19
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x19
	mov	r1, #7
	bl	__Func_8092950
	mov	r1, #1
	mov	r0, #0x19
	bl	__Func_8092b08
	mov	r0, #0x19
	bl	__Func_8092054
	mov	r2, r8
	mov	r3, r0
	str	r2, [r0, #0x1c]
	add	r3, #0x55
	mov	r2, r9
	str	r6, [r0, #0x18]
	strb	r2, [r3]
	mov	r3, r10
	str	r3, [r0, #8]
	mov	r3, #0x88
	lsl	r3, #14
	mov	r1, #0xc8
	str	r3, [r0, #0xc]
	str	r5, [r0, #0x10]
	lsl	r1, #4
	ldr	r0, =OvlFunc_969_200b6d0
	bl	__Func_80041d8
	bl	__Func_8093554
	mov	r2, r9
	add	r0, #0x55
	strb	r2, [r0]
	mov	r1, #0x80
	mov	r2, #0xb4
	mov	r3, #0
	lsl	r1, #14
	lsl	r2, #16
	mov	r0, r10
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, r0
	mov	r2, r1
	bl	__Func_8012330
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x2809
	bl	__Func_8092b94
	mov	r0, #0x14
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x28
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_8093040
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r0, #0x14
	bl	__Func_8092054
	mov	r3, #0x9a
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r6, #0x98
	mov	r3, #0xe0
	lsl	r6, #16
	lsl	r3, #13
	str	r3, [r5, #0xc]
	str	r6, [r5, #0x10]
	mov	r1, #0xa
	mov	r0, #0x14
	mov	r8, r3
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r3, #0x99
	mov	r2, r8
	lsl	r3, #17
	str	r2, [r5, #0xc]
	str	r3, [r5, #8]
	str	r6, [r5, #0x10]
	mov	r1, #0xb
	mov	r0, #0x14
	bl	__Func_80924d4
	mov	r0, #0xc
	bl	__Func_809163c
	mov	r3, r10
	str	r3, [r5, #8]
	mov	r3, #0xa8
	lsl	r3, #13
	str	r3, [r5, #0xc]
	mov	r1, #0xc
	str	r6, [r5, #0x10]
	mov	r0, #0x14
	bl	__Func_80924d4
	mov	r0, #8
	bl	__Func_809163c
	mov	r0, #0x14
	bl	__Func_8092924
	mov	r0, #0x13
	bl	__Func_8092054
	mov	r3, #0x93
	mov	r5, r0
	mov	r2, r8
	lsl	r3, #17
	str	r2, [r5, #0xc]
	str	r3, [r5, #8]
	mov	r1, #8
	str	r6, [r5, #0x10]
	mov	r0, #0x13
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r3, #0x96
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r3, #0xd8
	lsl	r3, #13
	str	r3, [r5, #0xc]
	mov	r1, #9
	str	r6, [r5, #0x10]
	mov	r0, #0x13
	bl	__Func_80924d4
	mov	r0, #0xc
	bl	__Func_809163c
	mov	r3, r10
	str	r3, [r5, #8]
	mov	r3, #0x88
	lsl	r3, #13
	str	r3, [r5, #0xc]
	mov	r1, #0xa
	str	r6, [r5, #0x10]
	mov	r0, #0x13
	bl	__Func_80924d4
	mov	r0, #8
	bl	__Func_809163c
	mov	r0, #0x13
	bl	__Func_8092924
	mov	r0, #0xa0
	bl	__Func_809163c
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200bbc8

.thumb_func_start OvlFunc_969_200be9c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_969_20088a8
	mov	r0, #0
	mov	r1, #0
	mov	r5, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L3f08
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #4
	bl	__Func_8092548
	mov	r5, #1
	b	.L3f26
.L3f08:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L3f26:
	mov	r0, #2
	bl	OvlFunc_969_2008894
	cmp	r5, #0
	beq	.L3f40
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L3f40:
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	mov	r6, #0x80
	bl	__Func_8092064
	ldr	r5, =0x1001
	lsl	r6, #6
	mov	r2, #0xae
	mov	r0, #1
	ldr	r1, =0x141
	bl	__Func_80921c4
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r10, r3
	mov	r1, r10
	mov	r0, #3
	bl	OvlFunc_969_20088a8
	mov	r3, #0x80
	lsl	r3, #7
	mov	r8, r3
	mov	r1, r8
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r1, r6
	mov	r2, #0x14
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	ldr	r0, =0x8001
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r1, #4
	mov	r0, #3
	bl	__Func_80924d4
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r1, r8
	mov	r0, #1
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, r10
	mov	r0, #2
	bl	OvlFunc_969_20088a8
	mov	r0, #2
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x3c
	mov	r0, #2
	mov	r1, #4
	bl	__Func_8092560
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #4
	mov	r2, #0x28
	mov	r0, #1
	bl	__Func_8092560
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0x15
	mov	r1, #0xc8
	mov	r2, #0xbc
	bl	__Func_8092128
	mov	r2, #0xcc
	mov	r0, #6
	mov	r1, #0xc8
	bl	__Func_8092128
	ldr	r0, =0x33333
	ldr	r1, =0x6666
	bl	__Func_80933d4
	mov	r0, #0xfc
	mov	r2, #0xbe
	mov	r3, #1
	lsl	r2, #16
	mov	r1, #0
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x17
	bl	__Func_80f9080
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__Func_8093874
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #6
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #6
	bl	__Func_8093874
	ldr	r5, =0x2003
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #3
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	add	r6, #2
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #0x15
	bl	OvlFunc_969_20088a8
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_8093040
	mov	r0, r5
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_8093874
	mov	r0, r6
	bl	OvlFunc_969_2008894
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_80924d4
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_80924d4
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r1, #0xa0
	mov	r0, #0x15
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #4
	mov	r2, #0x14
	bl	__Func_8092560
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0x15
	ldr	r1, =0x103
	mov	r2, #0x28
	bl	__Func_80937b8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200be9c

.thumb_func_start OvlFunc_969_200c23c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x13
	sub	sp, #8
	bl	__Func_80f9080
	mov	r0, #0x90
	lsl	r0, #1
	bl	__Func_80f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
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
	mov	r0, #0x15
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #6
	lsl	r1, #1
	mov	r2, #0xa
	bl	__Func_80937b8
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0x15
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #6
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #0x98
	mov	r1, #0x80
	mov	r2, #0xb4
	mov	r3, #1
	lsl	r2, #16
	lsl	r1, #14
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x18
	bl	__Func_8092054
	ldr	r5, =0x1999
	str	r5, [r0, #0x18]
	mov	r0, #0x19
	bl	__Func_8092054
	str	r5, [r0, #0x18]
	ldr	r5, =.L6088
	mov	r0, #0x18
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #0x19
	bl	__Func_809207c
	mov	r0, #0x91
	bl	__Func_80f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	mov	r1, #0
	ldr	r0, =0x4063ff
	bl	__Func_8091200
	mov	r0, #0x10
	bl	__Func_8091254
	mov	r0, #0x14
	bl	__Func_80030f8
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x18
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__Func_80030f8
	mov	r0, #0x8d
	bl	__Func_80f9080
	ldr	r0, =0x236
	bl	__Func_8079358
	mov	r0, #0x18
	bl	__Func_8092054
	ldr	r3, =0xffa00000
	str	r3, [r0, #0xc]
	mov	r0, #0x19
	bl	__Func_8092054
	ldr	r3, =0xffc00000
	mov	r1, #7
	str	r3, [r0, #0xc]
	mov	r0, #0x1a
	bl	__Func_8092950
	mov	r0, #0x1a
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x1a
	bl	__Func_8092054
	ldr	r1, =0xffff0000
	mov	r5, r0
	str	r1, [r5, #0x1c]
	mov	r0, #0x18
	mov	r10, r1
	bl	__Func_8092054
	ldr	r3, [r0, #0x18]
	mov	r2, #0
	mov	r9, r2
	str	r3, [r5, #0x18]
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r9
	strb	r1, [r3]
	mov	r2, #0x98
	ldr	r3, =0xffe00000
	mov	r6, #0xc0
	lsl	r2, #17
	lsl	r6, #15
	str	r2, [r5, #8]
	str	r3, [r5, #0xc]
	str	r6, [r5, #0x10]
	mov	r1, #7
	mov	r0, #0x1b
	mov	r8, r2
	bl	__Func_8092950
	mov	r0, #0x1b
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x1b
	bl	__Func_8092054
	mov	r3, r10
	mov	r5, r0
	str	r3, [r5, #0x1c]
	mov	r0, #0x18
	bl	__Func_8092054
	ldr	r3, [r0, #0x18]
	str	r3, [r5, #0x18]
	mov	r3, r5
	add	r3, #0x55
	mov	r1, r9
	mov	r2, r8
	strb	r1, [r3]
	mov	r3, r9
	str	r2, [r5, #8]
	str	r3, [r5, #0xc]
	str	r6, [r5, #0x10]
	mov	r1, #7
	mov	r0, #0x1c
	bl	__Func_8092950
	mov	r0, #0x1c
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x1c
	bl	__Func_8092054
	mov	r1, r10
	mov	r5, r0
	str	r1, [r5, #0x1c]
	mov	r0, #0x18
	bl	__Func_8092054
	ldr	r3, [r0, #0x18]
	str	r3, [r5, #0x18]
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r9
	strb	r2, [r3]
	mov	r3, r8
	str	r3, [r5, #8]
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r5, #0xc]
	mov	r2, #0x17
	mov	r3, #0x12
	str	r6, [r5, #0x10]
	mov	r0, #0x66
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #4
	mov	r2, #0x4a
	mov	r3, #4
	bl	__Func_8010424
	mov	r3, #0x10
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x27
	mov	r1, #0x48
	mov	r2, #0xb
	mov	r3, #0x48
	bl	__Func_8010424
	mov	r1, #0x16
	str	r1, [sp]
	mov	r8, r1
	mov	r6, #6
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r5, #0xd
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r2, r8
	str	r2, [sp]
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	mov	r0, #0x13
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #8
	bl	__Func_8092054
	ldr	r5, =0xfff00000
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #9
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r5, #0x80
	ldr	r3, [r0, #8]
	lsl	r5, #13
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xb
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	bl	OvlFunc_969_200d688
	mov	r0, #1
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	bl	OvlFunc_969_200d688
	mov	r0, #2
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	bl	OvlFunc_969_200d688
	mov	r0, #3
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	add	r3, r5
	str	r3, [r0, #8]
	ldr	r3, [r0, #0x10]
	add	r3, r5
	str	r3, [r0, #0x10]
	bl	OvlFunc_969_200d688
	mov	r1, #0xc4
	mov	r2, #0xdc
	lsl	r2, #16
	mov	r0, #0x15
	lsl	r1, #16
	bl	__Func_80923e4
	mov	r0, #0x15
	mov	r1, #5
	bl	__Func_80924d4
	mov	r1, #0xbc
	mov	r2, #0x9e
	lsl	r2, #17
	mov	r0, #6
	lsl	r1, #16
	bl	__Func_80923e4
	mov	r1, #5
	mov	r0, #6
	bl	__Func_80924d4
	mov	r0, #6
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #11
	lsl	r1, #11
	bl	__Func_8012330
	mov	r1, #0
	ldr	r0, =0x4063ff
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	ldr	r5, =.L60d0
	mov	r0, #0x18
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #0x19
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #0x1a
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #0x1b
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #0x1c
	bl	__Func_809207c
	mov	r0, #0x78
	bl	__Func_80030f8
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	mov	r1, #0
	ldr	r0, =0x203210
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__Func_80030f8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #10
	lsl	r1, #10
	bl	__Func_8012330
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__Func_80030f8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x18
	bl	__Func_8092054
	ldr	r3, =0x51e
	ldr	r5, =.L60f4
	str	r3, [r0, #0x1c]
	mov	r1, r5
	mov	r0, #0x19
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #0x1a
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #0x1b
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #0x1c
	bl	__Func_80920fc
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r1, #0xf
	mov	r0, #0x18
	bl	__Func_8092950
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, =.L6130
	mov	r0, #0x18
	bl	__Func_80920fc
	ldr	r0, =OvlFunc_969_200b6d0
	bl	__Func_8004278
	mov	r1, #2
	mov	r2, #0x14
	mov	r0, #2
	bl	__Func_8092560
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_8093874
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xa3
	mov	r2, #0xdc
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_8093874
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r0, #0
	bl	__Func_8092054
	mov	r2, r0
	mov	r3, r2
	mov	r1, r9
	add	r3, #0x62
	strb	r1, [r3]
	b	.L4784

	.pool_aligned

.L4784:
	mov	r6, #1
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	mov	r5, #0xa0
	lsl	r5, #8
	str	r3, [r2, #0x4c]
	ldr	r3, =0
	strh	r5, [r2, #6]
	mov	r0, #1
	mov	r8, r3
	bl	__Func_8092054
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	strh	r5, [r2, #6]
	str	r3, [r2, #0x4c]
	mov	r0, #2
	bl	__Func_8092054
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	strh	r5, [r2, #6]
	str	r3, [r2, #0x4c]
	mov	r0, #3
	b	.L47d4

	.pool_aligned

.L47d4:
	bl	__Func_8092054
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	strh	r5, [r2, #6]
	str	r3, [r2, #0x4c]
	mov	r0, #0x15
	bl	__Func_8092054
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	mov	r0, #6
	str	r3, [r2, #0x4c]
	bl	__Func_8092054
	mov	r2, r0
	mov	r3, r2
	mov	r1, r8
	add	r3, #0x62
	strb	r1, [r3]
	add	r3, #1
	strb	r6, [r3]
	ldr	r3, [r2, #0xc]
	mov	r0, #0x17
	str	r3, [r2, #0x4c]
	bl	__Func_8092054
	mov	r2, r8
	add	r0, #0x55
	strb	r2, [r0]
	mov	r0, #0x17
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x17
	mov	r1, #7
	bl	__Func_8092950
	mov	r0, #0x17
	mov	r1, #2
	bl	__Func_8092b08
	ldr	r3, =.L6764
	mov	r1, r9
	ldr	r2, =.L6760
	str	r1, [r3]
	mov	r3, #0xf0
	mov	r1, #0xc8
	str	r3, [r2]
	ldr	r0, =OvlFunc_969_200d6a0
	lsl	r1, #4
	bl	__Func_80041d8
.L485a:
	mov	r0, #1
	bl	__Func_80030f8
	ldr	r0, =0x237
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L485a
	ldr	r0, =0x101
	bl	__Func_8079358
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_8079358
	bl	__Func_808ba38
	ldr	r0, =2
	mov	r1, #0x5b
	bl	__Func_8091e3c
	ldr	r2, =0x7fff
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #1
	str	r2, [r3]
	bl	__Func_8091df4
	bl	__Func_8091e20
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200c23c

.thumb_func_start OvlFunc_969_200c8d8
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x14
	sub	sp, #8
	bl	__Func_8092924
	mov	r0, #0x13
	bl	__Func_8092924
	mov	r0, #0x8d
	bl	__Func_80f9080
	mov	r3, #0x11
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0xa
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
	mov	r3, #0x12
	mov	r2, #0x17
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x66
	mov	r1, #4
	mov	r2, #0x4a
	mov	r3, #4
	bl	__Func_8010424
	mov	r3, #0x10
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x27
	mov	r1, #0x48
	mov	r2, #0xb
	mov	r3, #0x48
	bl	__Func_8010424
	mov	r2, #0x16
	str	r2, [sp]
	mov	r8, r2
	mov	r6, #6
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r5, #0xd
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #7
	mov	r0, #0x13
	mov	r1, #6
	mov	r2, #3
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	bl	__Func_808bb2c
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x8a
	bl	__Func_80f9080
	mov	r0, #0
	mov	r1, #0x13
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #0x12
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #0x12
	bl	__Func_80924d4
	mov	r1, #0x12
	mov	r0, #3
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #1
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #2
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #3
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0xad
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r2, #0x80
	mov	r3, #0xcd
	lsl	r2, #14
	lsl	r3, #16
	str	r2, [r5, #0xc]
	str	r3, [r5, #0x10]
	mov	r10, r2
	bl	OvlFunc_969_200d688
	mov	r3, r5
	mov	r6, #0
	add	r3, #0x63
	strb	r6, [r3]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x28]
	mov	r0, #1
	mov	r8, r3
	bl	__Func_8092054
	mov	r3, #0xb2
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r3, #0xc0
	mov	r2, r10
	lsl	r3, #16
	str	r2, [r5, #0xc]
	str	r3, [r5, #0x10]
	bl	OvlFunc_969_200d688
	mov	r3, r5
	add	r3, #0x63
	strb	r6, [r3]
	mov	r3, r8
	str	r3, [r5, #0x28]
	mov	r0, #2
	bl	__Func_8092054
	mov	r3, #0xb4
	mov	r5, r0
	lsl	r3, #17
	str	r3, [r5, #8]
	mov	r3, #0xde
	mov	r2, r10
	lsl	r3, #16
	str	r2, [r5, #0xc]
	str	r3, [r5, #0x10]
	mov	r9, r3
	bl	OvlFunc_969_200d688
	mov	r3, r5
	mov	r2, r8
	add	r3, #0x63
	strb	r6, [r3]
	mov	r0, #3
	str	r2, [r5, #0x28]
	bl	__Func_8092054
	mov	r3, #0xa7
	mov	r5, r0
	lsl	r3, #17
	mov	r2, r9
	str	r3, [r5, #8]
	mov	r3, r10
	str	r2, [r5, #0x10]
	str	r3, [r5, #0xc]
	bl	OvlFunc_969_200d688
	mov	r3, r5
	add	r3, #0x63
	strb	r6, [r3]
	mov	r3, r8
	str	r3, [r5, #0x28]
	mov	r0, #0x15
	bl	__Func_8092054
	add	r0, #0x62
	strb	r6, [r0]
	mov	r0, #6
	bl	__Func_8092054
	add	r0, #0x62
	strb	r6, [r0]
	mov	r0, #0x17
	bl	__Func_8092054
	add	r0, #0x55
	ldrb	r2, [r0]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #4
	mov	r0, #0x17
	bl	__Func_8092950
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_969_200da28
	bl	__Func_80041d8
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe4
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #1
	str	r2, [r3]
	bl	__Func_8091dc8
	ldr	r0, =0x7fff
	mov	r1, #0
	bl	__Func_8091220
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__Func_80030f8
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200c8d8

.thumb_func_start OvlFunc_969_200cb28
	push	{lr}
	ldr	r0, =0x2829
	bl	__Func_8092b94
	mov	r0, #0x15
	bl	OvlFunc_969_2008894
	mov	r0, #0x3e
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #9
	lsl	r1, #9
	bl	__Func_8012330
	ldr	r0, =0x4cccc
	ldr	r1, =0x9999
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0xc0
	mov	r2, #0xee
	mov	r3, #1
	lsl	r2, #16
	ldr	r1, =0xffc00000
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x28
	ldr	r0, =0x2015
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #6
	bl	__Func_80925cc
	mov	r0, #6
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0x50
	ldr	r0, =0x2015
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #6
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #6
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #6
	bl	OvlFunc_969_2008894
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200cb28

.thumb_func_start OvlFunc_969_200cbec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0
	ldr	r0, =0x282e
	sub	sp, #8
	mov	r8, r1
	bl	__Func_8092b94
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x15
	bl	__Func_8093874
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	ldr	r0, =0x2015
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #6
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #6
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #6
	mov	r0, #6
	bl	__Func_80924d4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x15
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x28
	ldr	r0, =0x2015
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #6
	mov	r1, #7
	bl	__Func_80924d4
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #6
	bl	__Func_8093040
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r0, #6
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r1, =.L6324
	mov	r0, #6
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #0x15
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #3
	mov	r0, #0x15
	bl	__Func_809259c
	mov	r0, #6
	bl	__Func_80920e8
	mov	r0, #0xa0
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x15
	bl	__Func_8092054
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r1, #0
	mov	r0, #0x15
	bl	__Func_80924d4
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0x15
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x28
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #5
	mov	r0, #0x15
	bl	__Func_80924d4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0x15
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_80924d4
	mov	r0, #0x15
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #0x15
	bl	__Func_8092064
	mov	r0, #0x15
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x15
	bl	__Func_8092054
	mov	r5, #0x80
	ldr	r3, =OvlFunc_969_2008400
	mov	r7, r0
	lsl	r5, #8
	str	r3, [r7, #0x6c]
	mov	r2, #0xed
	strh	r5, [r7, #6]
	mov	r0, #0x15
	mov	r1, #0xb8
	bl	__Func_8092158
	ldr	r1, =.L6360
	mov	r0, #0x15
	bl	__Func_80920fc
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r0, #0
	bl	OvlFunc_969_2008894
	mov	r0, #0x48
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, r5
	lsl	r0, #11
	bl	__Func_80933d4
	mov	r0, #0xab
	mov	r1, #0x80
	mov	r2, #0xd4
	mov	r3, #1
	lsl	r2, #16
	lsl	r1, #14
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r2, #0x3c
	mov	r1, #6
	mov	r0, #0
	bl	__Func_8092560
	mov	r0, #0
	bl	__Func_8092054
	mov	r3, #0xa
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =.L6074
	mov	r0, #0
	bl	__Func_809207c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r2, #0x28
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, #0x81
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_80937b8
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r0, #1
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r2, #0x3c
	mov	r0, #1
	mov	r1, #6
	bl	__Func_8092560
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #2
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80924d4
	mov	r2, #0x28
	mov	r1, #6
	mov	r0, #2
	bl	__Func_8092560
	mov	r0, #3
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #6
	mov	r2, #0x3c
	bl	__Func_8092560
	mov	r1, #0xc0
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r5, #0xc0
	mov	r1, #4
	mov	r0, #2
	bl	__Func_80924d4
	lsl	r5, #7
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r0, #3
	mov	r1, r5
	bl	OvlFunc_969_20088a8
	mov	r6, #0x80
	mov	r0, #3
	mov	r1, #4
	bl	__Func_80924d4
	lsl	r6, #7
	mov	r2, #0x50
	mov	r0, #3
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, r6
	bl	OvlFunc_969_20088a8
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, r5
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, r6
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0x14d
	mov	r2, #0xc2
	bl	__Func_80921c4
	mov	r0, #1
	ldr	r1, =0x14d
	mov	r2, #0xce
	bl	__Func_80921c4
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r2, #0x50
	mov	r0, #1
	bl	__Func_8093040
	mov	r0, #0
	bl	__Func_80920a0
	mov	r0, #1
	bl	__Func_80030f8
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x50
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r2, #0
	mov	r1, #4
	mov	r0, #1
	bl	__Func_8092560
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L5046
	b	.L5010

	.pool_aligned

.L5010:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r0, #3
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r2, #1
	mov	r8, r2
	b	.L507e
.L5046:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
	strh	r3, [r2]
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r0, #3
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #3
	bl	OvlFunc_969_2008894
.L507e:
	mov	r1, r8
	cmp	r1, #0
	beq	.L5094
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
	strh	r3, [r2]
.L5094:
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_969_20088a8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_8093874
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_80937b8
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #2
	bl	__Func_80937b8
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r0, #0x8d
	bl	__Func_80f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x91
	bl	__Func_80f9080
	mov	r1, #0x12
	mov	r2, #0x17
	str	r1, [sp]
	str	r2, [sp, #4]
	mov	r8, r2
	mov	r9, r1
	mov	r0, #0x6e
	mov	r1, #0x69
	mov	r2, #0x4a
	mov	r3, #4
	bl	__Func_8010424
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r5, #8
	mov	r0, #0x5c
	mov	r1, #0x56
	mov	r2, #0x53
	mov	r3, #4
	str	r5, [sp]
	bl	__Func_8010424
	mov	r1, r8
	str	r1, [sp, #4]
	mov	r0, #0x4b
	mov	r1, #0x1c
	mov	r2, #0x4b
	mov	r3, #4
	str	r5, [sp]
	bl	__Func_8010424
	mov	r2, #0x14
	mov	r3, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r11, r2
	mov	r0, #0x5c
	mov	r1, #0x56
	mov	r2, #0xb
	mov	r3, #0x48
	bl	__Func_8010424
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r1, #0x5c
	mov	r2, #0x13
	mov	r3, #0x44
	mov	r0, #0x13
	str	r5, [sp]
	bl	__Func_8010424
	mov	r0, #0
	bl	__Func_8092054
	mov	r7, r0
	ldr	r3, [r7, #0x10]
	ldr	r6, =0xffe00000
	mov	r1, #0
	add	r3, r6
	mov	r10, r1
	str	r3, [r7, #0x10]
	mov	r3, r7
	mov	r2, r10
	add	r3, #0x66
	strh	r2, [r3]
	bl	OvlFunc_969_200d688
	mov	r0, #1
	bl	__Func_8092054
	mov	r7, r0
	ldr	r3, [r7, #8]
	ldr	r5, =0xfffc0000
	add	r3, r5
	str	r3, [r7, #8]
	ldr	r3, [r7, #0x10]
	add	r3, r6
	str	r3, [r7, #0x10]
	mov	r3, r7
	mov	r1, r10
	add	r3, #0x66
	strh	r1, [r3]
	bl	OvlFunc_969_200d688
	mov	r0, #2
	bl	__Func_8092054
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	ldr	r3, [r7, #0x10]
	add	r3, r6
	str	r3, [r7, #0x10]
	mov	r3, r7
	mov	r2, r10
	add	r3, #0x66
	strh	r2, [r3]
	bl	OvlFunc_969_200d688
	mov	r0, #3
	bl	__Func_8092054
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	ldr	r1, =0xffee0000
	ldr	r3, [r7, #0x10]
	add	r3, r1
	str	r3, [r7, #0x10]
	mov	r3, r7
	mov	r2, r10
	add	r3, #0x66
	strh	r2, [r3]
	bl	OvlFunc_969_200d688
	mov	r0, #0x17
	bl	__Func_8092054
	mov	r3, #0xe0
	lsl	r3, #14
	str	r3, [r0, #0xc]
	mov	r1, #0x80
	mov	r0, #0xa9
	mov	r2, #0xb4
	mov	r3, #0
	lsl	r1, #14
	lsl	r2, #16
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
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
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #2
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r2, #0
	mov	r0, #3
	mov	r1, #6
	bl	__Func_8092560
	ldr	r5, =.L63c0
	mov	r0, #0
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #1
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_809207c
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x91
	bl	__Func_80f9080
	mov	r3, #0xa
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6e
	mov	r1, #0x6a
	mov	r2, #0x12
	mov	r3, #0xe
	bl	__Func_8010704
	mov	r3, r9
	mov	r1, r8
	str	r3, [sp]
	str	r1, [sp, #4]
	mov	r0, #0x6e
	mov	r1, #0x69
	mov	r2, #0x4a
	mov	r3, #4
	bl	__Func_8010424
	mov	r3, r11
	mov	r2, #0x10
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r2, #0xb
	mov	r1, #0x56
	mov	r3, #0x44
	mov	r0, #0x5c
	bl	__Func_8010424
	mov	r0, #0
	bl	__Func_8092054
	mov	r7, r0
	ldr	r5, =0xfff00000
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #1
	bl	__Func_8092054
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #2
	bl	__Func_8092054
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #3
	bl	__Func_8092054
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #8
	bl	__Func_8092054
	mov	r7, r0
	ldr	r3, [r7, #8]
	mov	r5, #0x80
	lsl	r5, #13
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #9
	bl	__Func_8092054
	mov	r7, r0
	ldr	r3, [r7, #8]
	add	r3, r5
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xa
	bl	__Func_8092054
	mov	r7, r0
	ldr	r1, =0xfff00000
	ldr	r3, [r7, #8]
	add	r3, r1
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r7, r0
	ldr	r3, [r7, #8]
	ldr	r2, =0xfff00000
	add	r3, r2
	str	r3, [r7, #8]
	bl	OvlFunc_969_200d688
	mov	r0, #0xa1
	mov	r1, #0x80
	mov	r2, #0xb4
	mov	r3, #0
	lsl	r2, #16
	lsl	r1, #14
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	b	.L5458

	.pool_aligned

.L5458:
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_8093874
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #2
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #3
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x50
	bl	__Func_809163c
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	bl	__Func_80920a0
	mov	r0, #1
	bl	__Func_80920a0
	mov	r0, #2
	bl	__Func_80920a0
	mov	r0, #3
	bl	__Func_80920a0
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r2, #0x78
	mov	r0, #2
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #2
	bl	OvlFunc_969_2008894
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #3
	bl	__Func_80924d4
	mov	r0, #3
	bl	OvlFunc_969_2008894
	mov	r2, #0x14
	mov	r1, #2
	mov	r0, #2
	bl	__Func_8092560
	mov	r0, #2
	bl	OvlFunc_969_2008894
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
	mov	r1, #0
	mov	r0, #1
	bl	OvlFunc_969_20088a8
	mov	r0, #1
	bl	OvlFunc_969_2008894
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r5, =.L639c
	mov	r0, #1
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_809207c
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x88
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xd8
	bl	__Func_80921c4
	mov	r1, #0x88
	lsl	r1, #1
	mov	r2, #0xfe
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x50
	bl	__Func_809163c
	ldr	r5, =iwram_3001ebc
	mov	r3, #0xe0
	ldr	r1, [r5]
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0x10
	str	r1, [r3]
	bl	__Func_8091df4
	sub	r5, #0x30
	bl	__Func_8091e20
	mov	r0, #0x50
	bl	__Func_809163c
	bl	__Func_800c5b4
	ldr	r3, [r5]
	ldr	r1, =0x12f4
	add	r2, r3, r1
	mov	r1, r10
	strh	r1, [r2]
	ldr	r2, =0x12f6
	add	r3, r2
	strh	r1, [r3]
	mov	r2, #0
	mov	r1, #0
	ldr	r0, =0x284f
	bl	__Func_8019aa0
	bl	__Func_800c5fc
	mov	r0, #0x50
	bl	__Func_809163c
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200cbec


	.include "macros.inc"

.thumb_func_start OvlFunc_945_2009804
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r6, r0
	mov	r7, r2
	bl	__Func_80916b0
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1870
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r0, r6
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L1850
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r6
	bl	__Func_8092128
.L1850:
	mov	r0, r6
	bl	__Func_80923c4
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079358
	mov	r0, r7
	bl	__Func_8079358
	b	.L1886
.L1870:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, r6
	bl	OvlFunc_945_200c86c
.L1886:
	bl	__Func_8091750
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009804

.thumb_func_start OvlFunc_945_2009894
	push	{lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r2, =0xffffe000
	ldrh	r3, [r0, #6]
	add	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bls	.L18d0
	ldr	r0, =0x928
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L18c8
	ldr	r0, =0x93e
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L18c8
	mov	r0, #0x11
	bl	__Func_80b29a8
	b	.L194e
.L18c8:
	mov	r0, #0xf
	bl	__Func_80b29a8
	b	.L194e
.L18d0:
	bl	__Func_80916b0
	ldr	r0, =0x93e
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L18e6
	ldr	r0, =0x1f81
	bl	__Func_8092b94
	b	.L1924
.L18e6:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L18fa
	ldr	r0, =0x1f48
	bl	__Func_8092b94
	b	.L1924
.L18fa:
	ldr	r0, =0x928
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L190c
	ldr	r0, =0x1f7f
	bl	__Func_8092b94
	b	.L1924
.L190c:
	ldr	r0, =0x925
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L191e
	ldr	r0, =0x1f7d
	bl	__Func_8092b94
	b	.L1924
.L191e:
	ldr	r0, =0x1f7b
	bl	__Func_8092b94
.L1924:
	ldr	r0, =0x928
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1942
	ldr	r0, =0x93e
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1942
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8092f84
	b	.L194a
.L1942:
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092f84
.L194a:
	bl	__Func_8091750
.L194e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009894

.thumb_func_start OvlFunc_945_2009978
	push	{lr}
	bl	__Func_80916b0
	bl	__Func_808e118
	ldr	r3, =ewram_2000240
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x8f
	lsl	r0, #4
	bl	__Func_8079374
	ldr	r0, =0x928
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L19b0
	ldr	r0, =0x6f
	mov	r1, #0x10
	bl	__Func_8091f90
	mov	r0, #0x3e
	mov	r1, #0
	bl	__Func_8091eb0
	b	.L19e6
.L19b0:
	ldr	r0, =0x929
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L19cc
	ldr	r0, =0x6f
	mov	r1, #0x12
	bl	__Func_8091f90
	mov	r0, #0x3e
	mov	r1, #1
	bl	__Func_8091eb0
	b	.L19e6
.L19cc:
	ldr	r0, =0x92a
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L19e6
	ldr	r0, =0x6f
	mov	r1, #0x14
	bl	__Func_8091f90
	mov	r0, #0x3e
	mov	r1, #2
	bl	__Func_8091eb0
.L19e6:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009978

.thumb_func_start OvlFunc_945_2009a08
	push	{lr}
	ldr	r0, =0x301
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1a4c
	bl	__Func_80916b0
	mov	r0, #8
	bl	__Func_8093304
	ldr	r0, =0x1e48
	mov	r1, #1
	mov	r2, #8
	bl	__Func_8019aa0
	mov	r0, #0
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r1, #0xcc
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x86
	bl	__Func_80921c4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_945_200c880
	bl	__Func_8091750
.L1a4c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009a08

.thumb_func_start OvlFunc_945_2009a60
	push	{lr}
	ldr	r0, =0x922
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1b16
	bl	__Func_80916b0
	bl	__Func_808e118
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r0, #0xe0
	mov	r1, #1
	ldr	r3, =0x10000028
	ldr	r2, =0x27e0000
	neg	r1, r1
	lsl	r0, #17
	bl	OvlFunc_945_200c8ac
	ldr	r0, =0x1d26
	bl	__Func_8092b94
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0xa
	bl	OvlFunc_945_200c880
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #9
	bl	OvlFunc_945_200c880
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #9
	bl	OvlFunc_945_200c880
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r0, #0xa
	bl	OvlFunc_945_200c880
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #0x92
	lsl	r0, #4
	bl	__Func_8079358
	bl	__Func_8091750
.L1b16:
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009a60

.thumb_func_start OvlFunc_945_2009b34
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x911
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1b4e
	b	.L1eea
.L1b4e:
	bl	__Func_80916b0
	bl	__Func_808e118
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xe8
	lsl	r2, #17
	ldr	r3, =0x10000014
	ldr	r0, =0x5b70000
	neg	r1, r1
	bl	OvlFunc_945_200c8ac
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	ldr	r0, =0x1d56
	bl	__Func_8092b94
	ldr	r3, =0x200d
	mov	r8, r3
	mov	r0, r8
	bl	OvlFunc_945_200c86c
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r10, r3
	mov	r0, #0xc
	mov	r1, r10
	bl	OvlFunc_945_200c880
	mov	r1, #0x81
	ldr	r6, =0x800c
	mov	r2, #0x14
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x14
	ldr	r0, =0xa00e
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xc
	mov	r1, #0
	bl	OvlFunc_945_200c880
	mov	r0, #0xc
	ldr	r1, =0x101
	mov	r2, #0x28
	ldr	r5, =0xa00e
	bl	__Func_80937b8
	mov	r2, #0x28
	mov	r0, #0xe
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r9, r3
	mov	r1, r9
	mov	r0, #0xe
	bl	OvlFunc_945_200c880
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, r10
	bl	OvlFunc_945_200c880
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r1, #4
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, r8
	bl	OvlFunc_945_200c86c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, r8
	bl	OvlFunc_945_200c86c
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_80924d4
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r3, #0x80
	lsl	r3, #8
	mov	r11, r3
	mov	r0, #0xe
	mov	r1, r11
	bl	OvlFunc_945_200c880
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0xe
	ldr	r1, =0x103
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x3c
	mov	r0, #0xd
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0xe
	mov	r1, r9
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r8, r3
	mov	r0, #0xd
	mov	r1, r8
	bl	OvlFunc_945_200c880
	mov	r0, #0xd
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x3c
	mov	r0, #0xc
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r0, #0xe
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, r8
	bl	OvlFunc_945_200c880
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x28
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r0, #0xe
	mov	r1, r9
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xe
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	ldr	r2, =0xcccc
	mov	r0, #0xd
	ldr	r1, =0x19999
	bl	__Func_8092064
	ldr	r5, =.L66a8
	mov	r0, #0xe
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #0xd
	bl	__Func_809207c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	mov	r0, #0
	bl	__Func_8092064
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0x82
	strb	r3, [r0]
	mov	r1, #0xb8
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #0
	bl	__Func_8092054
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, r11
	mov	r0, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #4
	mov	r2, #0x14
	bl	__Func_8092560
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0xc
	bl	OvlFunc_945_200c86c
	ldr	r2, =0xcccc
	mov	r0, #0xc
	ldr	r1, =0x19999
	bl	__Func_8092064
	mov	r1, r5
	mov	r0, #0xc
	bl	__Func_809207c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xc
	bl	__Func_80920e8
	ldr	r0, =0x922
	bl	__Func_8079358
	bl	__Func_8091750
.L1eea:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009b34

.thumb_func_start OvlFunc_945_2009f3c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x1c
	bl	__Func_80f9080
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r0, #0xe4
	mov	r2, #0xa2
	mov	r1, #1
	ldr	r3, =0x10000014
	lsl	r2, #18
	lsl	r0, #17
	neg	r1, r1
	bl	OvlFunc_945_200c8ac
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	ldr	r0, =0x1d93
	bl	__Func_8092b94
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #9
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #9
	bl	__Func_809259c
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0xd
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	ldr	r3, =0x100b
	mov	r9, r3
	mov	r0, r9
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r2, #0x14
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	ldr	r1, =0x105
	mov	r2, #0x3c
	mov	r0, #9
	bl	__Func_80937b8
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #0x82
	mov	r2, #0x14
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_80937b8
	ldr	r0, =0x900c
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r7, #0xc0
	mov	r1, #3
	mov	r0, #8
	bl	__Func_80924d4
	lsl	r7, #6
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, r7
	mov	r0, #0xc
	bl	OvlFunc_945_200c880
	ldr	r0, =0x900c
	bl	OvlFunc_945_200c86c
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r11, r3
	mov	r1, r11
	mov	r0, #0xb
	bl	OvlFunc_945_200c880
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r10, r3
	mov	r1, r10
	mov	r0, #0xb
	bl	OvlFunc_945_200c880
	mov	r0, #0xd
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r0, #0xc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xde
	mov	r2, #0xa7
	mov	r0, #0xc
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0xec
	mov	r2, #0xa7
	lsl	r2, #2
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_80921c4
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80924d4
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r8, r3
	mov	r1, r8
	mov	r0, #0xc
	bl	OvlFunc_945_200c880
	mov	r2, #0x3c
	mov	r0, #0xc
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x28
	ldr	r0, =0x400b
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, r8
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, r9
	bl	OvlFunc_945_200c86c
	mov	r1, r8
	mov	r0, #0xc
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x3c
	mov	r0, #9
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #4
	mov	r0, #0xb
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r9
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_80924d4
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, r8
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_8093874
	mov	r2, #0x14
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_8092560
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092548
	mov	r0, #9
	ldr	r6, =0x100c
	bl	OvlFunc_945_200c86c
	mov	r1, r8
	mov	r0, #0xb
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r0, #8
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r1, #3
	mov	r0, #8
	bl	__Func_80924d4
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0xd
	bl	__Func_8092560
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_80924d4
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, r9
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, r9
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, r10
	mov	r2, #0x14
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_80924d4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_809259c
	ldr	r5, =0x400b
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r2, #0x14
	mov	r1, r10
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r1, r8
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #9
	bl	__Func_80924d4
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r2, #0x14
	mov	r0, #0xb
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_809259c
	mov	r0, r9
	bl	OvlFunc_945_200c86c
	mov	r1, #0x84
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #9
	bl	__Func_80937b8
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #8
	bl	__Func_80924d4
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r1, r8
	b	.L2384

	.pool_aligned

.L2384:
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r1, r10
	mov	r0, #0xb
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r10
	mov	r0, #9
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r1, r11
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_80924d4
	mov	r2, #0x14
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_80924d4
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x13
	bl	__Func_80f9080
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	ldr	r5, =0x8008
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x50
	mov	r0, #8
	bl	__Func_80937b8
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #0xd
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #0xa
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r1, r8
	mov	r0, #0xc
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r8
	mov	r0, #0xb
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r11
	mov	r0, #0xd
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r11
	mov	r0, #0xa
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_8093874
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #4
	bl	__Func_8092560
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #8
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r0, #8
	ldr	r1, =0x1db
	ldr	r2, =0x256
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xe7
	ldr	r2, =0x26a
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, r11
	mov	r0, #9
	bl	OvlFunc_945_200c880
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #9
	bl	__Func_809259c
	ldr	r0, =0x8009
	bl	OvlFunc_945_200c86c
	ldr	r1, =0x101
	mov	r2, #0x3c
	mov	r0, #0xb
	bl	__Func_80937b8
	mov	r0, #0xb
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x14
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	ldr	r1, =0x103
	mov	r2, #0x14
	bl	__Func_80937b8
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	mov	r2, #0x14
	mov	r1, r10
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #0x1c
	bl	__Func_80f9080
	mov	r1, #3
	mov	r0, #8
	bl	__Func_809259c
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #0xd
	bl	__Func_80937b8
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r1, r7
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0xde
	mov	r2, #0x9d
	lsl	r2, #2
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, r8
	mov	r0, #0xc
	bl	OvlFunc_945_200c880
	ldr	r0, =0x900c
	bl	OvlFunc_945_200c86c
	mov	r2, #0x14
	mov	r1, r10
	mov	r0, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0xb
	bl	__Func_80937b8
	mov	r0, r9
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r0, #0xd
	ldr	r1, =0x107
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r1, r7
	mov	r0, #9
	bl	OvlFunc_945_200c880
	mov	r1, #4
	mov	r0, #9
	bl	__Func_8092548
	ldr	r0, =0x1009
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, #0
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xc
	ldr	r1, =0x105
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x3c
	mov	r0, #9
	ldr	r1, =0x105
	bl	__Func_80937b8
	ldr	r0, =0x13333
	ldr	r1, =0x2666
	bl	__Func_80933d4
	mov	r0, #0xe8
	mov	r2, #0xaa
	mov	r3, #0x80
	mov	r1, #1
	lsl	r3, #21
	lsl	r2, #18
	lsl	r0, #17
	neg	r1, r1
	bl	OvlFunc_945_200c8ac
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_945_200c880
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0xa
	bl	__Func_80937b8
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x28
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_8092560
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xdb
	mov	r0, #0xd
	lsl	r1, #1
	ldr	r2, =0x293
	bl	__Func_809218c
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r11
	mov	r0, #9
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r7
	mov	r0, #0xc
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r11
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xa
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xf4
	mov	r0, #0xa
	lsl	r1, #1
	ldr	r2, =0x2ae
	bl	__Func_80921c4
	mov	r1, r11
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0xd
	bl	__Func_80923c4
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0xd
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	bl	__Func_808acc4
	ldr	r0, =0x921
	bl	__Func_8079358
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009f3c

.thumb_func_start OvlFunc_945_200a7d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	bl	__Func_80916b0
	bl	__Func_808e118
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80937b8
	ldr	r5, =0x1008
	mov	r1, #3
	mov	r0, #8
	bl	__Func_809259c
	ldr	r0, =0x1ddb
	bl	__Func_8092b94
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xd0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, r5
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L28d8
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	ldr	r0, =0x9009
	bl	OvlFunc_945_200c86c
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	b	.L2904

	.pool_aligned

.L28d8:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	ldr	r0, =0x9009
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x9008
	bl	OvlFunc_945_200c86c
.L2904:
	mov	r2, #0x28
	mov	r0, #0xd
	ldr	r1, =0x105
	bl	__Func_80937b8
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0xec
	mov	r1, #1
	mov	r2, #0x9f
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r6, #0xb0
	mov	r1, #0xec
	ldr	r2, =0x296
	lsl	r6, #8
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, r6
	mov	r0, #0xd
	bl	OvlFunc_945_200c880
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r10, r3
	mov	r0, #8
	mov	r1, r10
	bl	OvlFunc_945_200c880
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #9
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xd
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_80925cc
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r8, r3
	mov	r0, #0xc
	mov	r1, r8
	bl	OvlFunc_945_200c880
	ldr	r0, =0x100c
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, r6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r5, #0xd0
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #0xb
	bl	__Func_80937b8
	lsl	r5, #8
	mov	r0, #0xb
	bl	OvlFunc_945_200c86c
	ldr	r7, =0x900c
	mov	r0, #0xc
	mov	r1, r5
	bl	OvlFunc_945_200c880
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_80924d4
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r0, #0xd
	mov	r1, r6
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #9
	mov	r1, r8
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_8092548
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, r5
	bl	OvlFunc_945_200c880
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_8092548
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, r6
	mov	r0, #0xb
	bl	OvlFunc_945_200c880
	mov	r0, #0xb
	bl	OvlFunc_945_200c86c
	mov	r1, #0
	mov	r0, #0xc
	bl	OvlFunc_945_200c880
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xf3
	mov	r2, #0x98
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2ae6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L2ae6:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xf3
	mov	r2, #0x9c
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2b22
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_80923e4
.L2b22:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xf3
	mov	r2, #0xa0
	mov	r0, #2
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2b5e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_80923e4
.L2b5e:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xf3
	mov	r2, #0xa4
	mov	r0, #3
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x84
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	ldr	r0, =0x1009
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, r10
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, r8
	bl	OvlFunc_945_200c880
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L2c44
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_8092548
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0x28
	ldr	r0, =0x9009
	mov	r1, #0
	bl	__Func_8093040
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L2c66

	.pool_aligned

.L2c44:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
.L2c66:
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r8, r3
	mov	r1, r8
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r6, #0xb0
	mov	r0, #8
	lsl	r6, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, r6
	bl	OvlFunc_945_200c880
	mov	r2, #0x14
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	ldr	r5, =0x4008
	mov	r1, #0xec
	mov	r2, #0x9e
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r0, #0xd
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #4
	bl	__Func_80924d4
	mov	r2, #0x28
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r6
	mov	r0, #0xb
	bl	OvlFunc_945_200c880
	ldr	r0, =0x100b
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_80937b8
	mov	r0, #0xa
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__Func_8092064
	mov	r0, #0xa
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0xe7
	ldr	r2, =0x2a2
	mov	r0, #0xa
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0xa
	mov	r1, r6
	bl	OvlFunc_945_200c880
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_809259c
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r0, #9
	mov	r1, r8
	bl	OvlFunc_945_200c880
	mov	r1, #4
	mov	r0, #9
	bl	__Func_8092548
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r2, #0x28
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #9
	bl	OvlFunc_945_200c880
	mov	r1, #2
	mov	r0, #9
	bl	__Func_809259c
	ldr	r0, =0x1009
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, #0
	bl	OvlFunc_945_200c880
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, r6
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x100c
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x28
	mov	r0, #8
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r1, #0
	ldr	r0, =0x1008
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2e40
	mov	r0, #8
	mov	r1, #3
	bl	__Func_8092548
	ldr	r0, =0x1008
	bl	OvlFunc_945_200c86c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L2e56
.L2e40:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	ldr	r0, =0x1008
	bl	OvlFunc_945_200c86c
.L2e56:
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	ldr	r0, =0x1008
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #8
	bl	OvlFunc_945_200c880
	ldr	r0, =0x4008
	bl	OvlFunc_945_200c86c
	mov	r2, #0
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r5, =.L66e4
	mov	r0, #0xa
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #4
	bl	__Func_809163c
	mov	r1, r5
	mov	r0, #0xb
	bl	__Func_809207c
	mov	r0, #4
	bl	__Func_809163c
	mov	r1, r5
	mov	r0, #0xc
	bl	__Func_809207c
	mov	r0, #4
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #3
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #2
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2f08
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__Func_8092128
.L2f08:
	mov	r0, #3
	bl	__Func_80923c4
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #2
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #1
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2f38
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_8092128
.L2f38:
	mov	r0, #2
	bl	__Func_80923c4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L2f68
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.L2f68:
	mov	r0, #1
	bl	__Func_80923c4
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0
	bl	__Func_80923e4
	mov	r1, r5
	mov	r0, #0xd
	bl	__Func_809207c
	mov	r1, #0xe4
	mov	r2, #0xa2
	lsl	r2, #2
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, #0
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r0, #0xe8
	bl	__Func_8078a08
	ldr	r0, =0x925
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200a7d8

.thumb_func_start OvlFunc_945_200aff0
	push	{r5, lr}
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_8079358
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r1, =ewram_2000240
	add	r2, #0x49
	str	r2, [r3]
	sub	r2, #0x47
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x17
	bhi	.L30d6
	ldr	r2, =.L3028
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L3028:
	.word	.L3088
	.word	.L3088
	.word	.L30d6
	.word	.L30b2
	.word	.L30b8
	.word	.L30d6
	.word	.L30d6
	.word	.L30d6
	.word	.L30d6
	.word	.L30d6
	.word	.L3088
	.word	.L30b2
	.word	.L30d6
	.word	.L30d6
	.word	.L30b2
	.word	.L30b2
	.word	.L30b2
	.word	.L30b2
	.word	.L30b2
	.word	.L30b2
	.word	.L30b2
	.word	.L30d6
	.word	.L30b2
	.word	.L30b2
.L3088:
	ldr	r0, =0x93e
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L30a2
	ldr	r0, =0x928
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L30a2
	mov	r1, #2
	mov	r0, #9
	b	.L30d0
.L30a2:
	ldr	r0, =0x911
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L30d4
	mov	r1, #2
	mov	r0, #0xc
	b	.L30d0
.L30b2:
	mov	r1, #2
	mov	r0, #0x13
	b	.L30d0
.L30b8:
	ldr	r0, =0x93e
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L30d4
	ldr	r0, =0x911
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L30d4
	mov	r1, #2
	mov	r0, #0xd
.L30d0:
	bl	__Func_8092950
.L30d4:
	ldr	r1, =ewram_2000240
.L30d6:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x1d
	bls	.L30e8
	b	.L3320
.L30e8:
	ldr	r2, =.L30f0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L30f0:
	.word	.L3168
	.word	.L3168
	.word	.L3320
	.word	.L316e
	.word	.L3174
	.word	.L3320
	.word	.L3320
	.word	.L3320
	.word	.L3320
	.word	.L317a
	.word	.L3190
	.word	.L31a6
	.word	.L31ac
	.word	.L31b2
	.word	.L31b8
	.word	.L320e
	.word	.L3214
	.word	.L3254
	.word	.L325a
	.word	.L32aa
	.word	.L32b0
	.word	.L32e4
	.word	.L32ea
	.word	.L32fa
	.word	.L3320
	.word	.L3320
	.word	.L3320
	.word	.L3320
	.word	.L3320
	.word	.L3300
.L3168:
	bl	OvlFunc_945_200b51c
	b	.L3320
.L316e:
	bl	OvlFunc_945_200b66c
	b	.L3320
.L3174:
	bl	OvlFunc_945_200b364
	b	.L3320
.L317a:
	ldr	r0, =0x928
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L318a
	bl	OvlFunc_945_200bdec
	b	.L3320
.L318a:
	bl	OvlFunc_945_200bd10
	b	.L3320
.L3190:
	ldr	r0, =0x928
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L31a0
	bl	OvlFunc_945_200beec
	b	.L3320
.L31a0:
	bl	OvlFunc_945_200be34
	b	.L3320
.L31a6:
	bl	OvlFunc_945_200bf94
	b	.L3320
.L31ac:
	bl	OvlFunc_945_200c0e8
	b	.L3320
.L31b2:
	bl	OvlFunc_945_200c13c
	b	.L3320
.L31b8:
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3208
	bl	__Func_80916b0
	mov	r0, #0x19
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r2, #0
	mov	r0, #0x16
	mov	r1, #0
	bl	OvlFunc_945_200c8e8
	ldr	r5, =.L68e4
	mov	r0, #0x24
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x25
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x26
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x24
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x25
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x26
	b	.L3298
.L3208:
	bl	OvlFunc_945_200c198
	b	.L3320
.L320e:
	bl	OvlFunc_945_200c218
	b	.L3320
.L3214:
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L324e
	bl	__Func_80916b0
	mov	r0, #0x19
	mov	r1, #2
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r2, #0
	mov	r0, #0x16
	mov	r1, #0
	bl	OvlFunc_945_200c8e8
	ldr	r5, =.L68e4
	mov	r0, #0x24
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x25
	mov	r1, r5
	bl	__Func_809207c
	bl	__Func_8091750
	b	.L3320
.L324e:
	bl	OvlFunc_945_200d068
	b	.L3320
.L3254:
	bl	OvlFunc_945_200d684
	b	.L3320
.L325a:
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L32a4
	bl	__Func_80916b0
	mov	r0, #0x19
	mov	r1, #3
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r2, #0
	mov	r0, #0x16
	mov	r1, #0
	bl	OvlFunc_945_200c8e8
	ldr	r5, =.L68e4
	mov	r0, #0x24
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x25
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x24
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x25
.L3298:
	mov	r1, #3
	bl	__Func_8092950
	bl	__Func_8091750
	b	.L3320
.L32a4:
	bl	OvlFunc_945_200d6dc
	b	.L3320
.L32aa:
	bl	OvlFunc_945_200d780
	b	.L3320
.L32b0:
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L32de
	ldr	r0, =0x302
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3320
	ldr	r3, =.L7f84
	mov	r2, #0
	mov	r1, #0xc8
	lsl	r1, #4
	str	r2, [r3]
	ldr	r0, =OvlFunc_945_200dc48
	bl	__Func_80041d8
	mov	r0, #9
	mov	r1, #5
	bl	__Func_80924d4
	b	.L3320
.L32de:
	bl	OvlFunc_945_200d7ec
	b	.L3320
.L32e4:
	bl	OvlFunc_945_200dca4
	b	.L3320
.L32ea:
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L3320
	bl	OvlFunc_945_200dd10
	b	.L3320
.L32fa:
	bl	OvlFunc_945_200e110
	b	.L3320
.L3300:
	ldr	r1, =0x926
	ldr	r2, =0x92b
	mov	r0, #0x14
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x902
	bl	__Func_8079358
	mov	r0, #1
	bl	__Func_8091e9c
.L3320:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_200aff0

.thumb_func_start OvlFunc_945_200b364
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x911
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L3380
	bl	OvlFunc_945_200c5d0
	b	.L34f2

	.pool_aligned

.L3380:
	ldr	r0, =0x928
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L338e
	bl	OvlFunc_945_200c5d0
.L338e:
	ldr	r0, =0x93e
	bl	__Func_8079338
	mov	r7, r0
	cmp	r7, #0
	beq	.L339c
	b	.L34f2
.L339c:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3456
	mov	r0, #9
	bl	__Func_8092054
	mov	r1, #0
	mov	r6, r0
	mov	r2, #0
	mov	r0, #0xd
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xe4
	mov	r2, #0xa3
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #8
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r3, #0xf0
	lsl	r3, #1
	mov	r8, r3
	mov	r2, #0x96
	mov	r3, #0xb0
	lsl	r3, #8
	lsl	r2, #2
	mov	r0, #9
	mov	r1, r8
	bl	OvlFunc_945_200c890
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r3, r6
	add	r3, #0x66
	ldr	r5, .L3428	@ 0
	strh	r7, [r3]
	sub	r3, #3
	strb	r5, [r3]
	mov	r1, r6
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #0x80
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, =OvlFunc_945_200812c
	mov	r0, #8
	str	r3, [r6, #0x6c]
	bl	__Func_8092054
	mov	r3, r0
	add	r3, #0x62
	strb	r5, [r3]
	ldr	r3, =OvlFunc_945_2008284
	str	r3, [r0, #0x6c]
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L34f2
	mov	r3, #0xa0
	ldr	r2, =0x29a
	lsl	r3, #8
	b	.L344c

	.align	2, 0
.L3428:
	.word	0
	.pool

.L344c:
	mov	r0, #0
	mov	r1, r8
	bl	OvlFunc_945_200c890
	b	.L34f2
.L3456:
	ldr	r0, =0x928
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L346e
	mov	r1, #0xde
	mov	r3, #0xd0
	lsl	r1, #1
	ldr	r2, =0x266
	mov	r0, #8
	lsl	r3, #8
	b	.L3484
.L346e:
	ldr	r0, =0x925
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3494
	mov	r1, #0xe4
	mov	r2, #0xa2
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #8
	mov	r3, #0
.L3484:
	bl	OvlFunc_945_200c890
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	b	.L34f2
.L3494:
	ldr	r0, =0x921
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L34f2
	mov	r3, #0x80
	ldr	r1, =0x1db
	ldr	r2, =0x256
	lsl	r3, #8
	mov	r0, #8
	mov	r5, #0xb0
	bl	OvlFunc_945_200c890
	lsl	r5, #8
	mov	r1, #0xe7
	lsl	r1, #1
	ldr	r2, =0x26a
	mov	r3, r5
	mov	r0, #9
	bl	OvlFunc_945_200c890
	mov	r0, #0xc
	bl	__Func_8092054
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r1, #0xdb
	mov	r3, #0xd0
	strh	r5, [r0, #6]
	lsl	r1, #1
	ldr	r2, =0x293
	lsl	r3, #8
	mov	r0, #0xd
	bl	OvlFunc_945_200c890
	mov	r1, #0xf4
	mov	r2, #0xac
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0xa
	mov	r3, r5
	bl	OvlFunc_945_200c890
.L34f2:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200b364

.thumb_func_start OvlFunc_945_200b51c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x93e
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3564
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
	mov	r0, #0xe
	b	.L360c
.L3564:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L35f0
	mov	r2, #0xde
	mov	r3, #0xc0
	lsl	r2, #1
	lsl	r3, #6
	mov	r0, #8
	mov	r1, #0x98
	bl	OvlFunc_945_200c890
	ldr	r1, =.L6958
	mov	r0, #8
	bl	__Func_809207c
	mov	r3, #0xf0
	lsl	r3, #1
	mov	r10, r3
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r5, #0xf4
	mov	r8, r3
	mov	r0, #0xa
	mov	r1, #0xb8
	mov	r2, r10
	lsl	r5, #1
	mov	r6, #0xd0
	bl	OvlFunc_945_200c890
	lsl	r6, #8
	mov	r0, #0xc
	mov	r1, #0xaa
	mov	r2, r5
	mov	r3, r8
	bl	OvlFunc_945_200c890
	mov	r0, #0xd
	mov	r1, #0x88
	mov	r2, r5
	mov	r3, r6
	bl	OvlFunc_945_200c890
	mov	r0, #0xf
	mov	r1, #0x78
	mov	r2, r10
	mov	r3, r6
	bl	OvlFunc_945_200c890
	ldr	r2, =0x20e
	mov	r0, #0xe
	mov	r1, #0xb8
	mov	r3, r8
	bl	OvlFunc_945_200c890
	mov	r2, #0x92
	mov	r3, #0x80
	mov	r0, #0xb
	mov	r1, #0x88
	lsl	r2, #2
	lsl	r3, #8
	bl	OvlFunc_945_200c890
	ldr	r1, =.L6840
	mov	r0, #0xb
	bl	__Func_809207c
	b	.L363e
.L35f0:
	ldr	r0, =0x928
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3600
	bl	OvlFunc_945_200d004
	b	.L363e
.L3600:
	ldr	r0, =0x925
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3616
	mov	r0, #0x12
.L360c:
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	b	.L363e
.L3616:
	ldr	r0, =0x911
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L363e
	ldr	r0, =0x922
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L363e
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L363e:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200b51c

.thumb_func_start OvlFunc_945_200b66c
	push	{lr}
	mov	r0, #1
	bl	__Func_80030f8
	bl	OvlFunc_945_200b7b4
	ldr	r0, =0x93e
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L36ae
	mov	r0, #4
	mov	r1, #4
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xce
	mov	r3, #0xc0
	lsl	r1, #1
	lsl	r3, #6
	mov	r0, #8
	mov	r2, #0xde
	bl	OvlFunc_945_200c890
	mov	r1, #0xe5
	mov	r3, #0x80
	lsl	r1, #1
	lsl	r3, #8
	mov	r0, #9
	mov	r2, #0xa1
	bl	OvlFunc_945_200c890
	b	.L3794
.L36ae:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L36dc
	mov	r1, #0xec
	mov	r2, #0x98
	lsl	r2, #16
	mov	r0, #8
	lsl	r1, #17
	bl	__Func_80923e4
	mov	r0, #9
	mov	r1, #5
	bl	__Func_80924d4
	mov	r0, #4
	mov	r1, #4
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	b	.L3794
.L36dc:
	ldr	r0, =0x92b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3702
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #4
	mov	r1, #4
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #3
	bl	OvlFunc_945_200c254
	b	.L3794
.L3702:
	ldr	r0, =0x92a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3728
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #4
	mov	r1, #3
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #2
	bl	OvlFunc_945_200c254
	b	.L3794
.L3728:
	ldr	r0, =0x929
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L374e
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #4
	mov	r1, #2
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #1
	bl	OvlFunc_945_200c254
	b	.L3794
.L374e:
	ldr	r0, =0x928
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3774
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0
	bl	OvlFunc_945_200c254
	b	.L3794
.L3774:
	mov	r0, #9
	mov	r1, #5
	bl	__Func_80924d4
	ldr	r0, =0x925
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L3794
	ldr	r0, =0x926
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L3794
	bl	OvlFunc_945_200b8ac
.L3794:
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200b66c

.thumb_func_start OvlFunc_945_200b7b4
	push	{r5, r6, r7, lr}
	mov	r5, #0x1c
	mov	r6, #8
	mov	r7, #0
.L37bc:
	mov	r0, r5
	bl	__Func_8092054
	add	r0, #0x59
	ldrb	r3, [r0]
	add	r5, #1
	orr	r3, r6
	strb	r3, [r0]
	cmp	r5, #0x23
	bls	.L37bc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200b7b4

.thumb_func_start OvlFunc_945_200b7d8
	push	{r5, lr}
	mov	r5, r0
	cmp	r5, #0
	beq	.L37ea
	ldr	r0, =0x929
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L389a
.L37ea:
	mov	r0, #0
	mov	r1, #0
	bl	OvlFunc_945_200cfa8
	cmp	r0, #0
	beq	.L380e
	mov	r1, #0xcd
	mov	r3, #0xd0
	lsl	r1, #1
	mov	r2, #0xac
	lsl	r3, #8
	bl	OvlFunc_945_200c890
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L380e:
	cmp	r5, #0
	beq	.L381c
	ldr	r0, =0x92a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L389a
.L381c:
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_945_200cfa8
	cmp	r0, #0
	beq	.L3840
	mov	r1, #0xeb
	mov	r3, #0xb0
	lsl	r1, #1
	mov	r2, #0xac
	lsl	r3, #8
	bl	OvlFunc_945_200c890
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L3840:
	cmp	r5, #0
	beq	.L384e
	ldr	r0, =0x92b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L389a
.L384e:
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_945_200cfa8
	cmp	r0, #0
	beq	.L3872
	mov	r1, #0xcd
	mov	r3, #0xd0
	lsl	r1, #1
	mov	r2, #0xcc
	lsl	r3, #8
	bl	OvlFunc_945_200c890
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L3872:
	cmp	r5, #0
	bne	.L389a
	mov	r0, #3
	mov	r1, #0
	bl	OvlFunc_945_200cfa8
	cmp	r0, #0
	beq	.L389a
	mov	r1, #0xeb
	mov	r3, #0xb0
	lsl	r1, #1
	mov	r2, #0xcc
	lsl	r3, #8
	bl	OvlFunc_945_200c890
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L389a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200b7d8

.thumb_func_start OvlFunc_945_200b8ac
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	bl	__Func_80916b0
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xdc
	mov	r1, #1
	mov	r2, #0xa8
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	ldr	r3, =0x1000001
	bl	OvlFunc_945_200c8ac
	mov	r2, #0xdc
	lsl	r2, #1
	mov	r8, r2
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r0, #0x1b
	mov	r1, r8
	mov	r2, #0xa4
	mov	r9, r3
	bl	OvlFunc_945_200c890
	mov	r2, #0xd0
	lsl	r2, #8
	mov	r10, r2
	mov	r1, #0xd6
	lsl	r1, #1
	mov	r0, #8
	mov	r2, #0xbe
	mov	r3, r10
	mov	r7, #0xb0
	bl	OvlFunc_945_200c890
	lsl	r7, #8
	mov	r1, #0xe2
	mov	r2, #0xbe
	mov	r3, r7
	lsl	r1, #1
	mov	r0, #9
	bl	OvlFunc_945_200c890
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80924d4
	mov	r3, #0x80
	lsl	r3, #8
	mov	r0, #0
	mov	r1, r8
	mov	r2, #0x86
	mov	r11, r3
	bl	OvlFunc_945_200c890
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	mov	r6, #0x80
	add	r3, r2
	lsl	r6, #1
	str	r6, [r3]
	bl	__Func_8091dc8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xcc
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x86
	bl	__Func_80921c4
	mov	r1, #0xcc
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x94
	bl	__Func_80921c4
	mov	r1, #0xd4
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x94
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	ldr	r0, =0x1e27
	bl	__Func_8092b94
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #0x1b
	bl	__Func_8092548
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, #0x1b
	mov	r1, r10
	bl	OvlFunc_945_200c880
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L39d2
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L39d2:
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0x94
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L3a06
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_80923e4
.L3a06:
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xe4
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x94
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L3a3c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_80923e4
.L3a3c:
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xec
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x94
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0x14
	mov	r5, #0x80
	bl	__Func_8092adc
	lsl	r5, #7
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x3c
	bl	OvlFunc_945_200c8e8
	mov	r1, r5
	mov	r0, #1
	mov	r2, #0x14
	bl	OvlFunc_945_200c8e8
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x14
	bl	OvlFunc_945_200c8e8
	mov	r1, r9
	mov	r2, #0x14
	mov	r0, #0x1b
	bl	__Func_8092adc
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, r6
	mov	r2, #0x28
	mov	r0, #9
	bl	__Func_80937b8
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_809259c
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #3
	mov	r0, #0x1b
	bl	__Func_8092548
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_80924d4
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #9
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x28
	bl	OvlFunc_945_200c8e8
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r2, #0x14
	mov	r1, r5
	mov	r0, #1
	bl	OvlFunc_945_200c8e8
	mov	r1, #4
	mov	r0, #0x1b
	bl	__Func_8092548
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #1
	mov	r0, #8
	bl	__Func_809259c
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #0x1b
	bl	__Func_8092548
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r11
	mov	r0, #9
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x1b
	mov	r1, #3
	bl	__Func_80924d4
	mov	r2, #0x14
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #9
	bl	__Func_80937b8
	mov	r1, r7
	mov	r0, #9
	bl	OvlFunc_945_200c880
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #0x1b
	bl	OvlFunc_945_200c880
	mov	r0, #0x1b
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8093040
	mov	r1, #0x83
	mov	r2, #0x14
	mov	r0, #0x1b
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, r7
	mov	r0, #0x1b
	bl	OvlFunc_945_200c880
	mov	r1, #3
	mov	r0, #0x1b
	bl	__Func_8092548
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r2, #0x50
	mov	r0, #3
	mov	r1, #2
	bl	OvlFunc_945_200c8e8
	mov	r1, r10
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #9
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #2
	mov	r0, #9
	bl	__Func_809259c
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, r9
	mov	r0, #0x1b
	bl	OvlFunc_945_200c880
	mov	r0, #0x1b
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, #0x1b
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x9e
	bl	__Func_80921c4
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x94
	bl	__Func_80921c4
	mov	r2, #0x14
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r1, r11
	mov	r0, #1
	mov	r2, #0x14
	bl	OvlFunc_945_200c8e8
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x86
	bl	__Func_80921c4
	mov	r1, r8
	mov	r2, #0x86
	mov	r0, #0x1b
	bl	__Func_809218c
	mov	r0, #0x28
	bl	__Func_809163c
	b	.L3cec

	.pool_aligned

.L3cec:
	mov	r0, #9
	mov	r1, #0xa
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x926
	bl	__Func_8079358
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200b8ac

.thumb_func_start OvlFunc_945_200bd10
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r2, #1
	mov	r0, #0xf
	mov	r1, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xea
	mov	r0, #8
	lsl	r1, #1
	ldr	r2, =0x266
	bl	__Func_80921c4
	mov	r1, #0xec
	mov	r2, #0x95
	mov	r0, #8
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r1, #4
	mov	r0, #8
	bl	__Func_8092560
	bl	OvlFunc_945_200c5d0
	mov	r5, r0
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xd6
	bl	__Func_80f9080
	ldr	r1, =.L6738
	mov	r0, r5
	bl	__Func_800c2d8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xe9
	mov	r2, #0x9c
	lsl	r2, #2
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	ldr	r0, =0x1e3b
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #0xb
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200bd10

.thumb_func_start OvlFunc_945_200bdec
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0xf
	mov	r1, #1
	mov	r2, #1
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	ldr	r0, =0x1e3d
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #0xb
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200bdec

.thumb_func_start OvlFunc_945_200be34
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0x96
	mov	r0, #0x10
	lsl	r1, #16
	ldr	r2, =0x24a0000
	bl	__Func_80923e4
	mov	r0, #0x9c
	mov	r1, #1
	mov	r2, #0x86
	ldr	r3, =0x1000001
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #18
	bl	OvlFunc_945_200c8ac
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x10
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0x10
	mov	r1, #0xa8
	ldr	r2, =0x242
	bl	__Func_80921c4
	mov	r0, #0x10
	mov	r1, #0xa8
	ldr	r2, =0x22a
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x10
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_809259c
	ldr	r0, =0x1e3c
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #0xc
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200be34

.thumb_func_start OvlFunc_945_200beec
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	bl	OvlFunc_945_200d004
	mov	r1, #0x96
	mov	r0, #0x12
	lsl	r1, #16
	ldr	r2, =0x24a0000
	bl	__Func_80923e4
	mov	r0, #0x9c
	mov	r1, #1
	mov	r2, #0x86
	ldr	r3, =0x1000001
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #18
	bl	OvlFunc_945_200c8ac
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x12
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0x12
	mov	r1, #0xa8
	ldr	r2, =0x242
	bl	__Func_80921c4
	mov	r0, #0x12
	mov	r1, #0xa8
	ldr	r2, =0x22a
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x12
	bl	__Func_809259c
	ldr	r0, =0x1e3c
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #0xc
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200beec

.thumb_func_start OvlFunc_945_200bf94
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #9
	mov	r1, #5
	bl	__Func_80924d4
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x11
	bl	OvlFunc_945_200c8e8
	mov	r0, #0
	bl	OvlFunc_945_200c670
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #1
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r2, #0xb0
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #7
	mov	r0, #9
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x10
	bl	OvlFunc_945_200c670
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0
	bl	OvlFunc_945_200c670
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #7
	mov	r0, #9
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x10
	bl	OvlFunc_945_200c670
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0
	bl	OvlFunc_945_200c670
	mov	r0, #0x5a
	bl	__Func_809163c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x43
	str	r2, [r3]
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x92b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L408a
	mov	r0, #0x14
	bl	__Func_8091e9c
	b	.L40c6
.L408a:
	ldr	r0, =0x92a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L409c
	mov	r0, #0x12
	bl	__Func_8091e9c
	b	.L40c6
.L409c:
	ldr	r0, =0x929
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L40ae
	mov	r0, #0x11
	bl	__Func_8091e9c
	b	.L40c6
.L40ae:
	ldr	r0, =0x928
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L40c0
	mov	r0, #0x10
	bl	__Func_8091e9c
	b	.L40c6
.L40c0:
	mov	r0, #0xd
	bl	__Func_8091e9c
.L40c6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200bf94

.thumb_func_start OvlFunc_945_200c0e8
	push	{lr}
	bl	__Func_80916b0
	mov	r2, #1
	mov	r0, #0xf
	mov	r1, #1
	bl	OvlFunc_945_200c8e8
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	ldr	r0, =0x1e40
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #0xe
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c0e8

.thumb_func_start OvlFunc_945_200c13c
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	mov	r2, #1
	mov	r0, #0xf
	mov	r1, #1
	bl	OvlFunc_945_200c8e8
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0x1e43
	bl	__Func_8092b94
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0xd0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0xf
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c13c

.thumb_func_start OvlFunc_945_200c198
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x19
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	bl	OvlFunc_945_200b7b4
	mov	r2, #0xc
	mov	r0, #0x13
	mov	r1, #0xb
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xa
	mov	r1, #6
	bl	__Func_80924d4
	ldr	r1, =.L6840
	mov	r0, #0xc
	bl	__Func_809207c
	ldr	r5, =.L68e4
	mov	r0, #0x24
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #0x25
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #0x26
	bl	__Func_809207c
	mov	r0, #0x24
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x25
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x26
	mov	r1, #3
	bl	__Func_8092950
	bl	OvlFunc_945_200d0e4
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c198

.thumb_func_start OvlFunc_945_200c218
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xb
	mov	r2, #0xc
	mov	r0, #0x13
	bl	OvlFunc_945_200c8e8
	bl	OvlFunc_945_200d2f4
	ldr	r0, =0x928
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c218

.thumb_func_start OvlFunc_945_200c254
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r3, #0xd8
	lsl	r3, #1
	mov	r6, #0x80
	mov	r8, r3
	lsl	r6, #8
	mov	r3, r6
	mov	r1, r8
	mov	r2, #0x86
	mov	r0, #0
	bl	OvlFunc_945_200c890
	mov	r0, #1
	bl	OvlFunc_945_200b7d8
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091dc8
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xcb
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x86
	bl	__Func_80921c4
	mov	r1, #0xcb
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x98
	bl	__Func_80921c4
	mov	r2, #0x98
	mov	r0, #0
	ldr	r1, =0x1a5
	bl	__Func_80921c4
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092848
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L42e2
	b	.L4516
.L42e2:
	mov	r0, r5
	mov	r1, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #1
	mov	r5, r0
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #0x1b
	bl	__Func_8092848
	ldr	r0, =0x1ebc
	bl	__Func_8092b94
	ldr	r0, =0xa01b
	bl	OvlFunc_945_200c86c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #9
	mov	r2, r6
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, r8
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r7, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L4350
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r5
	bl	__Func_80923e4
.L4350:
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #9
	mov	r2, r6
	bl	__Func_8092064
	mov	r1, #0xe0
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r0, r5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x1b
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x1b
	bl	__Func_80924d4
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, r5
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #0x1b
	bl	__Func_80924d4
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #3
	bl	__Func_8092548
	ldr	r0, =0x92b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L43e4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x1b
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xeb
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0xcc
	b	.L4456
.L43e4:
	ldr	r0, =0x92a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L442c
	mov	r1, #0xd3
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x9a
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x1b
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xcd
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0xcc
	bl	__Func_80921c4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, r5
	mov	r7, #1
	bl	OvlFunc_945_200c880
	b	.L44a2
.L442c:
	ldr	r0, =0x929
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4466
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x1b
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xeb
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0xac
.L4456:
	bl	__Func_80921c4
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r0, r5
	bl	OvlFunc_945_200c880
	b	.L44a2
.L4466:
	mov	r1, #0xd3
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x9a
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x1b
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xcd
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0xac
	bl	__Func_80921c4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, r5
	mov	r7, #1
	bl	OvlFunc_945_200c880
.L44a2:
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x1b
	bl	__Func_8092848
	ldr	r0, =0x201b
	bl	OvlFunc_945_200c86c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x1b
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1b
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	cmp	r7, #0
	beq	.L44ec
	mov	r1, #0xd6
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0xa4
	bl	__Func_80921c4
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0xa4
	bl	__Func_80921c4
.L44ec:
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x86
	bl	__Func_80921c4
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0x86
	mov	r0, #0x1b
	bl	__Func_809218c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #0xa
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	b	.L4592
.L4516:
	ldr	r0, =0x1eb7
	bl	__Func_8092b94
	ldr	r5, =0xa01b
	ldr	r0, =0xa01b
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #0x1b
	bl	__Func_80937b8
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r2, #0x28
	mov	r0, #0x1b
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #2
	mov	r0, #0x1b
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	ldr	r1, =0x105
	mov	r0, #0x1b
	bl	__Func_80937b8
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #4
	mov	r0, #0x1b
	bl	__Func_8092548
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #4
	bl	__Func_8091e9c
.L4592:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c254

.thumb_func_start OvlFunc_945_200c5d0
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079338
	mov	r5, r0
	cmp	r5, #0
	beq	.L45ea
	ldr	r3, =.L6968
	ldr	r0, [r3]
	b	.L465e
.L45ea:
	mov	r2, #0x80
	mov	r3, #0x88
	ldr	r1, =0x1c70000
	lsl	r2, #11
	lsl	r3, #18
	mov	r0, #0x16
	bl	__Func_800c150
	mov	r8, r0
	mov	r3, r8
	add	r3, #0x55
	mov	r2, r8
	strb	r5, [r3]
	add	r2, #0x5c
	mov	r3, #1
	strb	r3, [r2]
	mov	r2, r8
	ldr	r6, [r2, #0x50]
	mov	r3, r6
	add	r3, #0x27
	strb	r5, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r1, #0xc1
	strb	r3, [r6, #9]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_80048b0
	mov	r5, r0
	mov	r0, #0xe8
	bl	__Func_801a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__Func_8003fa4
	mov	r0, #0x11
	bl	__Func_8002dd8
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r3, =.L6968
	mov	r2, r8
	str	r2, [r3]
	mov	r0, r8
.L465e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_200c5d0

.thumb_func_start OvlFunc_945_200c670
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r0, =0x928
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L46aa
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0xcd
	mov	r2, #0xac
	mov	r5, r0
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r0, #7
	mov	r1, r5
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	b	.L46b4
.L46aa:
	mov	r0, #5
	mov	r1, #0xa
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
.L46b4:
	ldr	r0, =0x929
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L46f4
	mov	r1, #0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r1, #0xeb
	mov	r2, #0xac
	mov	r5, r0
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r0, r5
	bl	__Func_8092054
	ldr	r3, =0xffff0000
	mov	r1, r5
	str	r3, [r0, #0x18]
	mov	r2, r6
	mov	r0, #7
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	b	.L46fe
.L46f4:
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
.L46fe:
	ldr	r0, =0x92a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L4734
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_945_200cfa8
	mov	r1, #0xcd
	mov	r2, #0xcc
	mov	r5, r0
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r0, #7
	mov	r1, r5
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	b	.L473e
.L4734:
	mov	r0, #5
	mov	r1, #0xc
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
.L473e:
	ldr	r0, =0x92b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L477e
	mov	r1, #0
	mov	r0, #3
	bl	OvlFunc_945_200cfa8
	mov	r1, #0xeb
	mov	r2, #0xcc
	mov	r5, r0
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r0, r5
	bl	__Func_8092054
	ldr	r3, =0xffff0000
	mov	r1, r5
	str	r3, [r0, #0x18]
	mov	r2, r6
	mov	r0, #7
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	b	.L4788
.L477e:
	mov	r0, #6
	mov	r1, #0xd
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
.L4788:
	mov	r2, r6
	mov	r0, #5
	mov	r1, #0xe
	bl	OvlFunc_945_200c8e8
	mov	r2, r6
	mov	r0, #6
	mov	r1, #0xf
	bl	OvlFunc_945_200c8e8
	mov	r2, r6
	mov	r0, #5
	mov	r1, #0x10
	bl	OvlFunc_945_200c8e8
	mov	r0, #6
	mov	r1, #0x11
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c670

.thumb_func_start OvlFunc_945_200c7cc
	push	{r5, lr}
	mov	r5, r0
	mov	r3, r5
	sub	r3, #0x12
	cmp	r3, #8
	bhi	.L4862
	ldr	r2, =.L47e0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L47e0:
	.word	.L480a
	.word	.L4804
	.word	.L480a
	.word	.L4840
	.word	.L481c
	.word	.L481c
	.word	.L482e
	.word	.L4840
	.word	.L4852
.L4804:
	mov	r0, r5
	mov	r1, #6
	b	.L4832
.L480a:
	mov	r0, r5
	mov	r1, #5
	bl	__Func_80924d4
	mov	r0, r5
	mov	r1, #0x10
	bl	__Func_80924ec
	b	.L4862
.L481c:
	mov	r0, r5
	mov	r1, #5
	bl	__Func_80924d4
	mov	r0, r5
	mov	r1, #0x14
	bl	__Func_80924ec
	b	.L4862
.L482e:
	mov	r0, r5
	mov	r1, #0xa
.L4832:
	bl	__Func_80924d4
	mov	r0, r5
	mov	r1, #8
	bl	__Func_80924ec
	b	.L4862
.L4840:
	mov	r0, r5
	mov	r1, #5
	bl	__Func_80924d4
	mov	r0, r5
	mov	r1, #4
	bl	__Func_80924ec
	b	.L4862
.L4852:
	mov	r0, r5
	mov	r1, #9
	bl	__Func_80924d4
	mov	r0, r5
	mov	r1, #4
	bl	__Func_80924ec
.L4862:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c7cc

.thumb_func_start OvlFunc_945_200c86c
	push	{lr}
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c86c

.thumb_func_start OvlFunc_945_200c880
	push	{lr}
	lsl	r1, #16
	lsr	r1, #16
	mov	r2, #0xa
	bl	__Func_8092adc
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c880

.thumb_func_start OvlFunc_945_200c890
	push	{r5, r6, lr}
	mov	r5, r0
	lsl	r1, #16
	lsl	r2, #16
	mov	r6, r3
	bl	__Func_80923e4
	mov	r0, r5
	bl	__Func_8092054
	strh	r6, [r0, #6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c890

.thumb_func_start OvlFunc_945_200c8ac
	push	{r5, r6, lr}
	mov	r5, r3
	mov	r3, #1
	bic	r3, r5
	bl	__Func_80933f8
	mov	r3, #0x80
	ldr	r6, =0x1111
	lsl	r3, #21
	and	r3, r5
	and	r6, r5
	cmp	r3, #0
	beq	.L48ca
	bl	__Func_8093530
.L48ca:
	mov	r3, #0x80
	lsl	r3, #17
	and	r3, r5
	cmp	r3, #0
	beq	.L48d8
	bl	__Func_800fe9c
.L48d8:
	mov	r0, r6
	bl	__Func_809163c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c8ac

.thumb_func_start OvlFunc_945_200c8e8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r1
	mov	r6, r2
.L48f6:
	cmp	r0, #0x19
	bls	.L48fc
	b	.L4f5c
.L48fc:
	ldr	r2, =.L4904
	lsl	r3, r0, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L4904:
	.word	.L496c
	.word	.L4994
	.word	.L49be
	.word	.L49f0
	.word	.L4a20
	.word	.L4a3c
	.word	.L4a4c
	.word	.L4a6e
	.word	.L4a90
	.word	.L4ab2
	.word	.L4ac8
	.word	.L4b20
	.word	.L4c62
	.word	.L4c8a
	.word	.L4cc4
	.word	.L4cda
	.word	.L4d50
	.word	.L4d74
	.word	.L4d8a
	.word	.L4de0
	.word	.L4e86
	.word	.L4e9a
	.word	.L4ed0
	.word	.L4eea
	.word	.L4efe
	.word	.L4f26
.L496c:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	b	.L49b6
.L4994:
	mov	r0, #0
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, r7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #3
	mov	r1, r7
.L49b6:
	mov	r2, r6
	bl	__Func_8092adc
	b	.L4f5c
.L49be:
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_80924d4
	cmp	r7, #0
	beq	.L49e8
	mov	r0, #3
	bl	__Func_8092504
.L49e8:
	cmp	r6, #0
	bne	.L49ee
	b	.L4f5c
.L49ee:
	b	.L4a18
.L49f0:
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
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
.L4a18:
	mov	r0, r6
	bl	__Func_809163c
	b	.L4f5c
.L4a20:
	mov	r5, #0
	cmp	r5, r7
	bcc	.L4a28
	b	.L4f5c
.L4a28:
	mov	r0, r5
	add	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	add	r5, #1
	bl	__Func_80923e4
	cmp	r5, r7
	bcc	.L4a28
	b	.L4f5c
.L4a3c:
	mov	r0, r7
	bl	__Func_8092054
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r1, #5
	b	.L4a5e
.L4a4c:
	mov	r0, r7
	bl	__Func_8092054
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	ldr	r3, =0xffff0000
	mov	r1, #5
	str	r3, [r0, #0x18]
.L4a5e:
	mov	r0, r7
	bl	__Func_80924d4
	mov	r0, r7
	mov	r1, r6
	bl	__Func_80924ec
	b	.L4f5c
.L4a6e:
	mov	r0, r7
	bl	__Func_8092054
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, r7
	bl	OvlFunc_945_200c7cc
	cmp	r6, #0
	beq	.L4a86
	b	.L4f5c
.L4a86:
	mov	r0, r7
	mov	r1, #0
	bl	__Func_80924ec
	b	.L4f5c
.L4a90:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_8091dc8
	cmp	r7, #0
	beq	.L4aaa
	bl	__Func_8091e20
.L4aaa:
	mov	r0, #0
	bl	__Func_809163c
	b	.L4f5c
.L4ab2:
	bl	__Func_8091df4
	bl	__Func_8091e20
	cmp	r7, #0
	bne	.L4ac0
	b	.L4f5c
.L4ac0:
	mov	r0, r7
	bl	__Func_8091e9c
	b	.L4f5c
.L4ac8:
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x19
	bl	OvlFunc_945_200c8e8
	mov	r5, #0x80
	mov	r0, #0
	bl	OvlFunc_945_200b7d8
	lsl	r5, #7
	mov	r1, #0xd8
	lsl	r1, #1
	mov	r0, #0
	mov	r2, #0xa8
	mov	r3, r5
	bl	OvlFunc_945_200c890
	mov	r1, #0xe0
	lsl	r1, #1
	mov	r0, #1
	mov	r2, #0xa8
	mov	r3, r5
	bl	OvlFunc_945_200c890
	mov	r1, #0xd4
	lsl	r1, #1
	mov	r0, #2
	mov	r2, #0x98
	mov	r3, r5
	bl	OvlFunc_945_200c890
	mov	r1, #0xe5
	lsl	r1, #1
	mov	r0, #3
	mov	r2, #0x98
	mov	r3, r5
	bl	OvlFunc_945_200c890
	b	.L4f5c
.L4b20:
	cmp	r7, #0
	beq	.L4b44
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80924d4
	mov	r0, #0xd
	bl	__Func_8092054
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	mov	r0, #0xd
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
.L4b44:
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_80924d4
	mov	r0, #0xe
	bl	__Func_8092054
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r8, r3
	mov	r2, r8
	strh	r2, [r0, #6]
	mov	r1, #1
	mov	r0, #0xf
	bl	__Func_80924d4
	mov	r0, #0xf
	bl	__Func_8092054
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r10, r3
	mov	r2, r10
	strh	r2, [r0, #6]
	mov	r0, #0xf
	bl	__Func_8092054
	mov	r5, #0x80
	lsl	r5, #9
	mov	r1, #1
	str	r5, [r0, #0x18]
	mov	r0, #0x10
	bl	__Func_80924d4
	mov	r0, #0x10
	bl	__Func_8092054
	mov	r3, r8
	strh	r3, [r0, #6]
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80924d4
	mov	r0, #0x11
	bl	__Func_8092054
	mov	r2, r10
	strh	r2, [r0, #6]
	mov	r0, #0x11
	bl	__Func_8092054
	mov	r1, #0xcd
	mov	r2, #0xae
	str	r5, [r0, #0x18]
	lsl	r1, #17
	mov	r0, #0x1c
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xeb
	mov	r2, #0xae
	mov	r0, #0x1d
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xcd
	mov	r2, #0xce
	mov	r0, #0x1e
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xeb
	mov	r2, #0xce
	mov	r0, #0x1f
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xcd
	mov	r2, #0x8f
	mov	r0, #0x20
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xeb
	mov	r2, #0x8f
	mov	r0, #0x21
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xcd
	mov	r2, #0x9e
	mov	r0, #0x22
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0xeb
	mov	r2, #0x9e
	mov	r0, #0x23
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	cmp	r7, #0
	beq	.L4c32
	mov	r1, #0xb0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.L4c32:
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xf
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r0, #0x11
	bl	OvlFunc_945_200c880
	b	.L4f5c
.L4c62:
	mov	r0, r7
	bl	__Func_8092054
	mov	r1, #1
	mov	r5, r0
	mov	r0, r7
	bl	__Func_80924d4
	cmp	r6, #0
	beq	.L4c7c
	mov	r3, #0xc0
	lsl	r3, #6
	b	.L4c80
.L4c7c:
	mov	r3, #0xa0
	lsl	r3, #7
.L4c80:
	strh	r3, [r5, #6]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x18]
	b	.L4f5c
.L4c8a:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xa
	b	.L4cd0

	.pool_aligned

.L4cc4:
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xd
.L4cd0:
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	b	.L4f5c
.L4cda:
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0xde
	mov	r3, #0xd0
	lsl	r1, #1
	ldr	r2, =0x266
	mov	r0, #8
	lsl	r3, #8
	bl	OvlFunc_945_200c890
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	cmp	r7, #0
	beq	.L4d1a
	bl	OvlFunc_945_200c5d0
.L4d1a:
	mov	r0, #0xe0
	mov	r1, #0x80
	mov	r2, #0x9c
	lsl	r0, #17
	lsl	r1, #14
	lsl	r2, #18
	ldr	r3, =0x1000001
	bl	OvlFunc_945_200c8ac
	cmp	r6, #0
	bne	.L4d32
	b	.L4f5c
.L4d32:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_809163c
	b	.L4f5c
.L4d50:
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0xdb
	mov	r2, #0x98
	mov	r0, #0x1b
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	b	.L4f5c
.L4d74:
	mov	r5, #0
.L4d76:
	mov	r0, r5
	add	r0, #0x1c
	mov	r1, #0
	mov	r2, #0
	add	r5, #1
	bl	__Func_80923e4
	cmp	r5, #7
	bls	.L4d76
	b	.L4f5c
.L4d8a:
	mov	r2, #0x85
	mov	r3, #0xb0
	lsl	r2, #2
	lsl	r3, #8
	mov	r0, #0xc
	mov	r1, #0x98
	mov	r5, #0xf5
	bl	OvlFunc_945_200c890
	lsl	r5, #1
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r2, r5
	mov	r0, #8
	mov	r1, #0x86
	mov	r8, r3
	bl	OvlFunc_945_200c890
	mov	r3, #0xa0
	mov	r2, r5
	mov	r0, #9
	mov	r1, #0xa6
	lsl	r3, #7
	bl	OvlFunc_945_200c890
	add	r5, #0xe
	mov	r3, #0xa0
	mov	r0, #0xa
	mov	r1, #0xb6
	mov	r2, r5
	lsl	r3, #7
	bl	OvlFunc_945_200c890
	mov	r0, #0xb
	mov	r1, #0x76
	mov	r2, r5
	mov	r3, r8
	bl	OvlFunc_945_200c890
	mov	r7, #0
	mov	r0, #0xe
	mov	r6, #0
	b	.L48f6
.L4de0:
	mov	r1, #0xd0
	mov	r2, #0xa4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #8
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r2, #0xe0
	lsl	r2, #1
	mov	r10, r2
	mov	r3, #0xd0
	lsl	r3, #8
	sub	r2, #0x60
	mov	r0, #9
	mov	r1, r10
	mov	r9, r3
	bl	OvlFunc_945_200c890
	mov	r2, #0xc0
	lsl	r2, #6
	mov	r8, r2
	mov	r1, #0xe3
	lsl	r1, #1
	mov	r0, #0xa
	mov	r2, #0xf8
	mov	r3, r8
	mov	r5, #0xcc
	bl	OvlFunc_945_200c890
	lsl	r5, #1
	mov	r2, #0x91
	mov	r1, r5
	lsl	r2, #1
	mov	r0, r7
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r2, #0xab
	mov	r1, r5
	lsl	r2, #1
	mov	r0, r6
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r1, #0xd2
	mov	r2, #0xb2
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xd
	mov	r3, r9
	bl	OvlFunc_945_200c890
	mov	r2, #0x98
	mov	r1, r5
	lsl	r2, #1
	mov	r0, #0xe
	mov	r3, #0
	bl	OvlFunc_945_200c890
	sub	r5, #0x1e
	mov	r1, #0xd1
	lsl	r1, #1
	mov	r0, #0xf
	mov	r2, r5
	mov	r3, r9
	bl	OvlFunc_945_200c890
	mov	r1, #0xdc
	mov	r2, #0x83
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0x10
	mov	r3, r8
	bl	OvlFunc_945_200c890
	mov	r0, #0x11
	mov	r1, r10
	mov	r2, r5
	mov	r3, r9
	bl	OvlFunc_945_200c890
	b	.L4f5c
.L4e86:
	mov	r5, r7
	cmp	r7, r6
	bhi	.L4f5c
.L4e8c:
	mov	r0, r5
	add	r5, #1
	bl	__Func_8079374
	cmp	r5, r6
	bls	.L4e8c
	b	.L4f5c
.L4e9a:
	ldr	r1, =0x92c
	ldr	r2, =0x93d
	mov	r0, #0x14
	bl	OvlFunc_945_200c8e8
	ldr	r1, =0x917
	ldr	r2, =0x91f
	mov	r0, #0x14
	bl	OvlFunc_945_200c8e8
	mov	r1, #0x99
	lsl	r1, #4
	ldr	r2, =0x998
	mov	r0, #0x14
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x301
	bl	__Func_8079374
	ldr	r0, =0x302
	bl	__Func_8079374
	b	.L4f5c
.L4ed0:
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	ldr	r1, =.L6840
	mov	r0, #0xc
	bl	__Func_809207c
	b	.L4f5c
.L4eea:
	mov	r0, #1
	bl	__Func_8092924
	mov	r0, #2
	bl	__Func_8092924
	mov	r0, #3
	bl	__Func_8092924
	b	.L4f5c
.L4efe:
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	mov	r3, #0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__Func_80030f8
	cmp	r7, #0
	beq	.L4f5c
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	b	.L4f5c
.L4f26:
	ldr	r0, =.L72a0
	bl	__Func_80917ac
	mov	r0, #1
	bl	__Func_80030f8
	cmp	r7, #1
	bne	.L4f3a
	ldr	r0, =.L7300
	b	.L4f40
.L4f3a:
	cmp	r7, #2
	bne	.L4f4c
	ldr	r0, =.L7360
.L4f40:
	bl	__Func_80917ac
	mov	r0, #1
	bl	__Func_80030f8
	b	.L4f5c
.L4f4c:
	cmp	r7, #3
	bne	.L4f5c
	ldr	r0, =.L73c0
	bl	__Func_80917ac
	mov	r0, #1
	bl	__Func_80030f8
.L4f5c:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c8e8

.thumb_func_start OvlFunc_945_200cfa8
	push	{r5, r6, r7, lr}
	mov	r6, #0
	mov	r7, #8
	cmp	r1, #0
	bne	.L4fb4
	mov	r7, #0x12
.L4fb4:
	cmp	r0, #1
	beq	.L4fca
	cmp	r0, #1
	bcc	.L4fc6
	cmp	r0, #2
	beq	.L4fce
	cmp	r0, #3
	beq	.L4fd6
	b	.L4fda
.L4fc6:
	ldr	r6, =0x92c
	b	.L4fda
.L4fca:
	ldr	r6, =0x935
	b	.L4fda
.L4fce:
	ldr	r6, =0x917
	b	.L4fda
.L4fd2:
	mov	r0, r7
	b	.L4ff2
.L4fd6:
	mov	r6, #0x99
	lsl	r6, #4
.L4fda:
	mov	r5, #0
.L4fdc:
	mov	r0, r6
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4fd2
	add	r5, #1
	add	r6, #1
	add	r7, #1
	cmp	r5, #8
	bls	.L4fdc
	mov	r0, #0
.L4ff2:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_200cfa8

.thumb_func_start OvlFunc_945_200d004
	push	{lr}
	ldr	r1, =0x92c
	mov	r0, #8
	bl	OvlFunc_945_200d038
	ldr	r1, =0x935
	mov	r0, #8
	bl	OvlFunc_945_200d038
	ldr	r1, =0x917
	mov	r0, #8
	bl	OvlFunc_945_200d038
	mov	r1, #0x99
	lsl	r1, #4
	mov	r0, #8
	bl	OvlFunc_945_200d038
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d004

.thumb_func_start OvlFunc_945_200d038
	push	{r5, r6, r7, lr}
	mov	r6, r0
	mov	r5, r1
	mov	r7, #0
.L5040:
	mov	r0, r5
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5056
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	b	.L5060
.L5056:
	add	r7, #1
	add	r6, #1
	add	r5, #1
	cmp	r7, #8
	bls	.L5040
.L5060:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d038

.thumb_func_start OvlFunc_945_200d068
	push	{r5, r6, lr}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r6, r0
	bl	__Func_80916b0
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x19
	mov	r1, #2
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	bl	OvlFunc_945_200b7b4
	mov	r2, #0xc
	mov	r1, r6
	mov	r0, #0x13
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xa
	mov	r1, #6
	bl	__Func_80924d4
	ldr	r5, =.L6840
	mov	r0, r6
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0xb
	bl	__Func_8092924
	mov	r1, r5
	mov	r0, #0xc
	bl	__Func_809207c
	ldr	r5, =.L68e4
	mov	r0, #0x24
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x25
	mov	r1, r5
	bl	__Func_809207c
	bl	OvlFunc_945_200d0e4
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d068

.thumb_func_start OvlFunc_945_200d0e4
	push	{r5, r6, r7, lr}
	mov	r6, #0xdc
	mov	r7, #1
	lsl	r6, #17
	neg	r7, r7
	mov	r2, #0xb0
	ldr	r3, =0x1000001
	lsl	r2, #16
	mov	r0, r6
	mov	r1, r7
	bl	OvlFunc_945_200c8ac
	mov	r2, #0x86
	mov	r0, #0
	mov	r1, r6
	lsl	r2, #16
	bl	__Func_80923e4
	bl	__Func_8091dc8
	ldr	r2, =0xcccc
	mov	r0, #0
	ldr	r1, =0x19999
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #5
	bl	__Func_80924d4
	mov	r1, #0xcc
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x86
	bl	__Func_8092158
	mov	r1, #0xcc
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x98
	bl	__Func_8092158
	mov	r1, #0xd8
	mov	r2, #0xa6
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8092158
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L516a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__Func_80923e4
.L516a:
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L517e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L517e:
	mov	r0, #1
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L5192
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__Func_80923e4
.L5192:
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #2
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r1, #0xd4
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x98
	bl	__Func_809218c
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0xa8
	bl	__Func_809218c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0xe5
	mov	r2, #0x98
	mov	r0, #3
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80924d4
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
	lsl	r1, #7
	mov	r2, #0x28
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_8093304
	ldr	r5, =0x1e46
	mov	r1, #1
	mov	r0, r5
	mov	r2, #0xa
	bl	__Func_8019aa0
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x28
	bl	OvlFunc_945_200c8e8
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #1
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x39999
	ldr	r1, =0x7333
	bl	__Func_80933d4
	mov	r2, #0xa0
	ldr	r3, =0x10000014
	lsl	r2, #17
	mov	r0, r6
	mov	r1, r7
	bl	OvlFunc_945_200c8ac
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #8
	add	r5, #1
	bl	OvlFunc_945_200c880
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x86
	mov	r3, #0x80
	lsl	r3, #21
	lsl	r2, #16
	mov	r0, r6
	mov	r1, r7
	bl	OvlFunc_945_200c8ac
	ldr	r5, =.L67c8
	mov	r0, #1
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_80920fc
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =0x301
	bl	__Func_8079358
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x12f
	bl	__Func_8079374
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d0e4

.thumb_func_start OvlFunc_945_200d2f4
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r6, #0xde
	lsl	r6, #1
	mov	r2, #0x96
	mov	r1, r6
	lsl	r2, #1
	mov	r0, #0
	mov	r3, #0
	mov	r5, #0x9b
	bl	OvlFunc_945_200c890
	lsl	r5, #1
	mov	r1, #0xe5
	mov	r2, r5
	lsl	r1, #1
	mov	r0, #1
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r2, #0xa5
	mov	r1, r6
	lsl	r2, #1
	mov	r0, #2
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r2, #0xd8
	lsl	r2, #1
	mov	r9, r2
	mov	r0, #3
	mov	r2, r5
	mov	r1, r9
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r1, #0xdc
	mov	r3, #0x80
	lsl	r1, #1
	lsl	r3, #8
	mov	r0, #0x1b
	mov	r2, #0x86
	bl	OvlFunc_945_200c890
	mov	r1, #0xe3
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r2, #0xf8
	lsl	r1, #1
	mov	r0, #0xa
	mov	r8, r3
	mov	r5, #0xdc
	bl	OvlFunc_945_200c890
	mov	r6, #1
	mov	r0, #0xa
	mov	r1, #6
	bl	__Func_80924d4
	lsl	r5, #17
	neg	r6, r6
	mov	r2, #0x9a
	ldr	r3, =0x1000001
	lsl	r2, #17
	mov	r1, r6
	mov	r0, r5
	bl	OvlFunc_945_200c8ac
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
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
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #1
	mov	r2, #0x14
	mov	r0, #2
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x1e6e
	bl	__Func_8092b94
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r2, #0xc0
	lsl	r2, #8
	mov	r10, r2
	mov	r0, #1
	mov	r2, #0
	mov	r1, r10
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r2, #0xb0
	mov	r3, #1
	mov	r0, r5
	mov	r1, r6
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r0, #0x1b
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x86
	bl	__Func_80921c4
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x98
	bl	__Func_80921c4
	mov	r1, #0xd4
	mov	r2, #0xa4
	mov	r0, #0x1b
	lsl	r1, #1
	bl	__Func_80921c4
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r2, #0x96
	mov	r3, #1
	mov	r0, r5
	mov	r1, r6
	lsl	r2, #17
	bl	__Func_80933f8
	mov	r1, #0xd4
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0xde
	bl	__Func_80921c4
	mov	r1, #0xd4
	mov	r2, #0x83
	mov	r0, #0x1b
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0x14
	mov	r0, #0x1b
	mov	r1, r8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #1
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x1b
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0x3c
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r0, #1
	mov	r2, #0x3c
	bl	OvlFunc_945_200c8e8
	mov	r2, #0x28
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x1b
	mov	r1, #2
	bl	__Func_80924d4
	mov	r2, #0x86
	mov	r0, #0x1b
	mov	r1, r9
	lsl	r2, #1
	bl	__Func_8092158
	mov	r1, #0xe2
	mov	r2, #0x86
	lsl	r2, #1
	mov	r0, #0x1b
	lsl	r1, #1
	bl	__Func_8092158
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0x1b
	bl	OvlFunc_945_200c880
	mov	r0, #0x1b
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, r10
	bl	OvlFunc_945_200c8e8
	mov	r1, #4
	mov	r0, #0x1b
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x50
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x1b
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0x1b
	bl	OvlFunc_945_200c880
	mov	r1, #0
	mov	r0, #0x1b
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L556e
	mov	r0, #0x1b
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	b	.L55ac
.L556e:
	mov	r1, #4
	mov	r0, #0x1b
	bl	__Func_8092548
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r0, #3
	mov	r1, #2
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x1b
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
.L55ac:
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #1
	bl	OvlFunc_945_200c8e8
	ldr	r5, =.L67f0
	mov	r0, #1
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_80920fc
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r2, #0xb0
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xd4
	mov	r2, #0x88
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xd4
	lsl	r1, #1
	mov	r2, #0xa4
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x3c
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	mov	r1, #0
	mov	r2, #0
	mov	r0, #9
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x301
	bl	__Func_8079374
	ldr	r0, =0x927
	bl	__Func_8079374
	mov	r0, #4
	bl	__Func_8091e9c
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d2f4

.thumb_func_start OvlFunc_945_200d684
	push	{r5, lr}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x19
	bl	OvlFunc_945_200c8e8
	mov	r0, #0
	bl	OvlFunc_945_200b7d8
	mov	r1, r5
	mov	r0, #0x13
	mov	r2, #0xc
	bl	OvlFunc_945_200c8e8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_80923e4
	bl	OvlFunc_945_200d2f4
	ldr	r0, =0x929
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d684

.thumb_func_start OvlFunc_945_200d6dc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r6, r0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r8, r0
	bl	__Func_80916b0
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x19
	mov	r1, #3
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	bl	OvlFunc_945_200b7b4
	mov	r2, r8
	mov	r1, r6
	mov	r0, #0x13
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xa
	mov	r1, #6
	bl	__Func_80924d4
	ldr	r5, =.L6840
	mov	r0, r6
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0xb
	bl	__Func_8092924
	mov	r1, r5
	mov	r0, r8
	bl	__Func_809207c
	mov	r0, #0xc
	bl	__Func_8092924
	ldr	r5, =.L68e4
	mov	r0, #0x24
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #0x25
	bl	__Func_809207c
	mov	r0, #0x24
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x25
	mov	r1, #3
	bl	__Func_8092950
	bl	OvlFunc_945_200d0e4
	bl	__Func_8091750
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d6dc

.thumb_func_start OvlFunc_945_200d780
	push	{r5, r6, lr}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r6, r0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x19
	bl	OvlFunc_945_200c8e8
	mov	r0, #0
	bl	OvlFunc_945_200b7d8
	mov	r1, r6
	mov	r2, r5
	mov	r0, #0x13
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_80923e4
	bl	OvlFunc_945_200d2f4
	ldr	r0, =0x92a
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d780

.thumb_func_start OvlFunc_945_200d7ec
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r6, r0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r8, r0
	mov	r0, #2
	bl	OvlFunc_945_200cfa8
	mov	r10, r0
	bl	__Func_80916b0
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xec
	mov	r2, #0x98
	lsl	r2, #16
	mov	r0, #8
	lsl	r1, #17
	bl	__Func_80923e4
	mov	r0, #9
	mov	r1, #5
	bl	__Func_80924d4
	mov	r1, #0xdc
	mov	r2, #0x86
	lsl	r2, #16
	mov	r0, #0x1b
	lsl	r1, #17
	bl	__Func_80923e4
	mov	r1, #0xf
	mov	r0, #0x1b
	bl	__Func_8092950
	mov	r0, #0x1b
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r5, #1
	mov	r0, #0x10
	bl	OvlFunc_945_200c670
	neg	r5, r5
	mov	r0, #0xdb
	mov	r2, #0xae
	ldr	r3, =0x1000001
	mov	r1, r5
	lsl	r0, #17
	lsl	r2, #16
	bl	OvlFunc_945_200c8ac
	mov	r1, #1
	mov	r2, #0x14
	mov	r0, #8
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x13
	bl	__Func_80f9080
	mov	r0, #0xb5
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, r5
	ldr	r2, =0xe666
	mov	r0, r5
	bl	__Func_8012330
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0xb5
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r2, =0xe666
	mov	r1, r5
	mov	r0, r5
	bl	__Func_8012330
	mov	r0, #0x3f
	bl	__Func_80f9080
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__Func_8079358
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	mov	r5, #0xc0
	bl	__Func_8093874
	lsl	r5, #7
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, r5
	mov	r0, #3
	bl	OvlFunc_945_200c880
	ldr	r0, =0x1ec1
	bl	__Func_8092b94
	mov	r1, #0
	mov	r2, #0x28
	mov	r0, #3
	bl	__Func_8093040
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #2
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #2
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #2
	bl	OvlFunc_945_200c86c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0xa
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
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0x1b
	bl	__Func_8092950
	mov	r0, #0x1b
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1b
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xd7
	mov	r2, #0x86
	mov	r0, #0x1b
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #0x1b
	bl	OvlFunc_945_200c880
	mov	r1, #2
	mov	r0, #0x1b
	bl	__Func_809259c
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, r6
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, r8
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, r10
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x81
	mov	r0, r6
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, r8
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, r10
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, r6
	mov	r0, #0xc
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, r8
	mov	r0, #0xc
	mov	r2, #1
	bl	OvlFunc_945_200c8e8
	mov	r1, r10
	mov	r0, #0xc
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xb
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xd0
	mov	r0, r6
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, r8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x1b
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_8092f84
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
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xdc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x86
	mov	r5, #0x80
	bl	__Func_80921c4
	lsl	r5, #8
	mov	r2, #0
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_80923e4
	mov	r1, r5
	mov	r0, #1
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #1
	bl	OvlFunc_945_200c86c
	mov	r2, #0
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #3
	bl	OvlFunc_945_200c880
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #2
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #3
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #1
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #2
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #3
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r5, =.L6818
	mov	r0, #1
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_80920fc
	ldr	r0, =0x302
	bl	__Func_8079358
	ldr	r2, =.L7f84
	mov	r3, #0
	mov	r1, #0xc8
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_945_200dc48
	bl	__Func_80041d8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x17
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x1b
	bl	__Func_8092924
	ldr	r0, =0x12f
	bl	__Func_8079374
	ldr	r0, =0x927
	bl	__Func_8079374
	bl	__Func_8091750
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d7ec

.thumb_func_start OvlFunc_945_200dc48
	push	{r5, lr}
	ldr	r5, =.L7f84
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L5c6a
	sub	r3, #1
	str	r3, [r5]
	cmp	r3, #0x46
	bne	.L5c94
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	b	.L5c94
.L5c6a:
	bl	__Func_8004458
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #3
	lsr	r3, #16
	cmp	r3, #0
	bne	.L5c94
	mov	r0, #0xb5
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r3, #0x50
	str	r3, [r5]
.L5c94:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200dc48

.thumb_func_start OvlFunc_945_200dca4
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0xf
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xea
	mov	r2, #0x9a
	mov	r3, #0x80
	lsl	r3, #8
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #9
	bl	OvlFunc_945_200c890
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #1
	bl	OvlFunc_945_200c8e8
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xd0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #0x15
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200dca4

.thumb_func_start OvlFunc_945_200dd10
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r5, r0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r8, r0
	mov	r0, #2
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r10, r0
	mov	r0, #3
	bl	OvlFunc_945_200cfa8
	mov	r7, r0
	bl	__Func_80916b0
	bl	OvlFunc_945_200b7b4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xec
	mov	r2, #0x98
	mov	r0, #8
	lsl	r1, #17
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xdc
	mov	r2, #0x86
	lsl	r2, #16
	mov	r0, #0x1b
	lsl	r1, #17
	bl	__Func_80923e4
	mov	r1, #0xf
	mov	r0, #0x1b
	bl	__Func_8092950
	mov	r0, #0x1b
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0x10
	bl	OvlFunc_945_200c670
	mov	r0, #9
	mov	r1, #5
	bl	__Func_80924d4
	mov	r0, #0xdb
	mov	r1, #1
	mov	r2, #0xae
	ldr	r3, =0x1000001
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	bl	OvlFunc_945_200c8ac
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #1
	bl	OvlFunc_945_200c8e8
	mov	r1, #0
	mov	r0, #0x1b
	bl	__Func_8092950
	mov	r0, #0x1b
	bl	__Func_8092054
	mov	r1, #1
	bl	__Func_800c528
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1b
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x84
	bl	__Func_80921c4
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x8e
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x1b
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x1b
	bl	__Func_809259c
	ldr	r0, =0x1f29
	bl	__Func_8092b94
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, #0x78
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, r5
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, r8
	mov	r2, #1
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, r10
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, r7
	mov	r2, #1
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xd0
	mov	r0, r5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, r8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, r7
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_8092adc
	ldr	r0, =0x934
	mov	r6, #0
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5e88
	mov	r6, #2
	b	.L5e9e
.L5e88:
	ldr	r0, =0x933
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L5e9c
	ldr	r0, =0x92f
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5e9e
.L5e9c:
	mov	r6, #1
.L5e9e:
	mov	r0, r5
	mov	r1, #1
	bl	__Func_80925cc
	cmp	r6, #1
	bne	.L5eba
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	b	.L5ecc
.L5eba:
	cmp	r6, #2
	bne	.L5ece
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
.L5ecc:
	strh	r3, [r2]
.L5ece:
	mov	r1, #2
	mov	r0, r5
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	ldr	r0, =0x1f2d
	bl	__Func_8092b94
	mov	r1, #4
	mov	r0, #0x1b
	bl	__Func_8092548
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, r8
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, r10
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, r7
	bl	__Func_80937b8
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x84
	bl	__Func_80921c4
	mov	r1, #0xde
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x84
	bl	__Func_80921c4
	mov	r0, #0x1b
	bl	__Func_8092924
	mov	r0, #0x28
	bl	__Func_809163c
	cmp	r6, #0
	bne	.L5f78
	ldr	r0, =0x92c
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L5f62
	ldr	r0, =0x92d
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5f64
.L5f62:
	mov	r6, #3
.L5f64:
	cmp	r6, #0
	bne	.L5f78
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	b	.L5f9e
.L5f78:
	cmp	r6, #1
	bne	.L5f8c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	b	.L5f9e
.L5f8c:
	cmp	r6, #2
	bne	.L5fa0
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
.L5f9e:
	strh	r3, [r2]
.L5fa0:
	mov	r0, r5
	mov	r1, #0
	bl	OvlFunc_945_200c880
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r2, #8
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r6, =.L6904
	mov	r0, r5
	mov	r1, r6
	bl	__Func_80920fc
	mov	r1, #0xa0
	mov	r0, r8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, r10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, r7
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, r8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, r7
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r10
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, r7
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, r6
	mov	r0, r10
	bl	__Func_809207c
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r5, =.L6938
	mov	r0, r8
	mov	r1, r5
	bl	__Func_80920fc
	mov	r0, r8
	mov	r1, r6
	bl	__Func_809207c
	mov	r0, r7
	mov	r1, r5
	bl	__Func_80920fc
	mov	r0, r7
	mov	r1, r6
	bl	__Func_80920fc
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
	ldr	r5, =.L67c8
	mov	r0, #1
	mov	r1, r5
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #2
	bl	__Func_809207c
	mov	r1, r5
	mov	r0, #3
	bl	__Func_80920fc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x17
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x927
	bl	__Func_8079374
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__Func_8079358
	ldr	r0, =0x12f
	bl	__Func_8079374
	bl	__Func_8091750
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200dd10

.thumb_func_start OvlFunc_945_200e110
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r8, r0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r6, r0
	mov	r0, #2
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r5, r0
	mov	r0, #3
	bl	OvlFunc_945_200cfa8
	mov	r10, r0
	bl	__Func_80916b0
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xec
	mov	r3, #0xa0
	lsl	r1, #1
	lsl	r3, #7
	mov	r0, #8
	mov	r2, #0x90
	bl	OvlFunc_945_200c890
	mov	r3, #0xcc
	lsl	r3, #1
	mov	r9, r3
	mov	r3, #0xc0
	mov	r1, r9
	mov	r0, #0x1b
	lsl	r3, #6
	mov	r2, #0x8e
	bl	OvlFunc_945_200c890
	ldr	r3, =iwram_3001ebc
	mov	r7, #0xe0
	ldr	r2, [r3]
	mov	r11, r3
	ldr	r3, =0x201
	lsl	r7, #1
	str	r3, [r2, r7]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	ldr	r0, =0x1f78
	bl	__Func_8092b94
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, r8
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, r6
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, r10
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, r6
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r8
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r6
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r10
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xeb
	mov	r0, r8
	lsl	r1, #1
	mov	r2, #0xac
	bl	__Func_809218c
	mov	r1, #0xcd
	mov	r0, r6
	lsl	r1, #1
	mov	r2, #0xac
	bl	__Func_809218c
	mov	r1, #0xeb
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0xcc
	bl	__Func_809218c
	mov	r1, #0xcd
	mov	r2, #0xcc
	mov	r0, r10
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, r8
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, r6
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, r5
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0xd0
	mov	r0, r6
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, r8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, r5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, r8
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, r6
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, r5
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, r10
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, r8
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, r6
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, r5
	mov	r1, #3
	bl	__Func_80924d4
	mov	r5, #0x80
	mov	r0, r10
	mov	r1, #3
	bl	__Func_8092548
	lsl	r5, #8
	mov	r2, #0
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_945_200c880
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0x1b
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #0x1b
	lsl	r1, #9
	bl	__Func_8092064
	mov	r1, r9
	mov	r0, #0x1b
	mov	r2, #0x84
	bl	__Func_80921c4
	mov	r1, #0xde
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x84
	bl	__Func_80921c4
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r3, r11
	ldr	r2, [r3]
	ldr	r3, =0x202
	str	r3, [r2, r7]
	bl	__Func_8091df4
	bl	__Func_8091e20
	ldr	r0, =0x92c
	ldr	r1, =0x935
	bl	OvlFunc_945_200e3ac
	mov	r1, #0x99
	lsl	r1, #4
	ldr	r0, =0x917
	bl	OvlFunc_945_200e3ac
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__Func_8079374
	mov	r0, #0xa
	bl	__Func_8091e9c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200e110

.thumb_func_start OvlFunc_945_200e3ac
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r3, #0
	mov	r8, r0
	mov	r7, r1
	mov	r10, r3
	mov	r9, r3
	mov	r6, #0
	b	.L63ca
.L63c4:
	mov	r3, #1
	add	r10, r3
	add	r6, #1
.L63ca:
	cmp	r6, #8
	bhi	.L63e2
	mov	r3, r8
	add	r5, r3, r6
	mov	r0, r5
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L63c4
	mov	r0, r5
	bl	__Func_8079374
.L63e2:
	mov	r6, #0
	b	.L63ec
.L63e6:
	mov	r3, #1
	add	r9, r3
	add	r6, #1
.L63ec:
	cmp	r6, #8
	bhi	.L6402
	add	r5, r7, r6
	mov	r0, r5
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L63e6
	mov	r0, r5
	bl	__Func_8079374
.L6402:
	mov	r3, r10
	add	r0, r7, r3
	bl	__Func_8079358
	mov	r0, r8
	add	r0, r9
	bl	__Func_8079358
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200e3ac

	.section .data
	.global .L6668
	.global .L6be0
	.global .L6bf8
	.global .L6c58
	.global .L6d48
	.global .L6d78
	.global .L6da8
	.global .L6eb0
	.global .L6fe8
	.global .L7420
	.global .L7444
	.global .L7570
	.global .L76fc
	.global .L781c
	.global .L7930
	.global .L7984
	.global .L79c0
	.global .L7b58
	.global .L7d44
	.global .L7edc
	.global .L696c
	.global .L6984

.L6668:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6668, (0x66a8-0x6668)
.L66a8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x66a8, (0x66e4-0x66a8)
.L66e4:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x66e4, (0x6738-0x66e4)
.L6738:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6738, (0x67c8-0x6738)
.L67c8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x67c8, (0x67f0-0x67c8)
.L67f0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x67f0, (0x6818-0x67f0)
.L6818:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6818, (0x6840-0x6818)
.L6840:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6840, (0x68e4-0x6840)
.L68e4:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x68e4, (0x6904-0x68e4)
.L6904:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6904, (0x6938-0x6904)
.L6938:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6938, (0x6958-0x6938)
.L6958:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6958, (0x6968-0x6958)
.L6968:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6968, (0x696c-0x6968)
.L696c:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x696c, (0x6984-0x696c)
.L6984:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6984, (0x6b94-0x6984)
.L6b94:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6b94, (0x6be0-0x6b94)
.L6be0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6be0, (0x6bf8-0x6be0)
.L6bf8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6bf8, (0x6c58-0x6bf8)
.L6c58:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6c58, (0x6d48-0x6c58)
.L6d48:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6d48, (0x6d78-0x6d48)
.L6d78:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6d78, (0x6da8-0x6d78)
.L6da8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6da8, (0x6eb0-0x6da8)
.L6eb0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6eb0, (0x6fe8-0x6eb0)
.L6fe8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6fe8, (0x72a0-0x6fe8)
.L72a0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x72a0, (0x7300-0x72a0)
.L7300:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7300, (0x7360-0x7300)
.L7360:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7360, (0x73c0-0x7360)
.L73c0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x73c0, (0x7420-0x73c0)
.L7420:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7420, (0x7444-0x7420)
.L7444:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7444, (0x7570-0x7444)
.L7570:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7570, (0x76fc-0x7570)
.L76fc:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x76fc, (0x781c-0x76fc)
.L781c:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x781c, (0x7930-0x781c)
.L7930:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7930, (0x7984-0x7930)
.L7984:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7984, (0x79c0-0x7984)
.L79c0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x79c0, (0x7b58-0x79c0)
.L7b58:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7b58, (0x7d44-0x7b58)
.L7d44:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7d44, (0x7edc-0x7d44)
.L7edc:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7edc, (0x7f84-0x7edc)
.L7f84:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7f84

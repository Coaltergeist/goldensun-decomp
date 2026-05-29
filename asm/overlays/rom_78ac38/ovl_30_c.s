	.include "macros.inc"

.thumb_func_start OvlFunc_889_200803c
	ldr	r0, =.Ld38
	bx	lr
.func_end OvlFunc_889_200803c

.thumb_func_start OvlFunc_889_2008044
	ldr	r0, =.Ld44
	bx	lr
.func_end OvlFunc_889_2008044

.thumb_func_start OvlFunc_889_200804c
	ldr	r0, =.Le94
	bx	lr
.func_end OvlFunc_889_200804c

.thumb_func_start OvlFunc_889_2008054
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xf
	bne	.L6a
	bl	OvlFunc_889_2008074
.L6a:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_889_2008054

.thumb_func_start OvlFunc_889_2008074
	push	{r5, lr}
	bl	__Func_80916b0
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
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_80924d4
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_80924d4
	mov	r0, #0xb
	ldr	r1, =0x109
	ldr	r2, =0x1e7
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0xfa
	mov	r0, #0xc
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r1, =0x10006
	ldr	r0, =0x10003
	bl	__Func_8095290
	bl	__Func_8095240
	mov	r0, #0x3c
	bl	__Func_80030f8
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0x99
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #0
	bl	__Func_80933f8
	bl	__Func_8093530
	bl	__Func_800fe9c
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__Func_8091dc8
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #1
	mov	r2, #0xfa
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	bl	__Func_8095240
	mov	r0, #0x91
	bl	__Func_80f9080
	mov	r0, #0x1e
	bl	__Func_809163c
	bl	__Func_8095240
	mov	r0, #0x91
	bl	__Func_80f9080
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	bl	__Func_8095240
	mov	r0, #0x91
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0x3c
	bl	__Func_809163c
	ldr	r0, =0x1122
	bl	__Func_8092b94
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092f84
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xb
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #0xa
	mov	r0, #9
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #9
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_8092548
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092f84
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	bl	__Func_8095240
	mov	r0, #0x91
	bl	__Func_80f9080
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #9
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #0xa
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_8092848
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0xd
	bl	__Func_8092848
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
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
	mov	r1, #0xf0
	mov	r2, #0x81
	lsl	r2, #17
	mov	r0, #0
	lsl	r1, #15
	bl	__Func_80923e4
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xe0
	mov	r1, #1
	mov	r2, #0xa0
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	lsl	r0, #15
	bl	__Func_80933f8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r2, #0xa0
	mov	r0, #0
	mov	r1, #0x78
	lsl	r2, #1
	bl	__Func_8092128
	mov	r2, #0xa0
	lsl	r2, #1
	mov	r0, #1
	mov	r1, #0x68
	bl	__Func_8092158
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80924d4
	bl	__Func_8093530
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #8
	mov	r0, #1
	lsl	r1, #9
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r2, #0xab
	lsl	r2, #1
	mov	r0, #1
	mov	r1, #0x69
	bl	__Func_8092158
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L4a8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0xa0
	mov	r0, #1
	mov	r1, #0x67
	lsl	r2, #1
	bl	__Func_8092158
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	b	.L4ec

	.pool_aligned

.L4a8:
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80924d4
	mov	r2, #0xaa
	mov	r0, #0
	mov	r1, #0x78
	lsl	r2, #1
	bl	__Func_8092158
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
.L4ec:
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0xd
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092f84
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092f84
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xe0
	mov	r1, #1
	mov	r2, #0xa0
	lsl	r2, #17
	mov	r3, #1
	lsl	r0, #15
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_809259c
	mov	r0, #1
	bl	__Func_80920e8
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #1
	bl	__Func_80920e8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xd6
	mov	r1, #1
	mov	r2, #0xec
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #1
	lsl	r1, #9
	bl	__Func_8092064
	ldr	r1, =.Lc00
	mov	r0, #0
	bl	__Func_809207c
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r1, =.Lc64
	mov	r0, #1
	bl	__Func_809207c
	mov	r0, #1
	bl	__Func_80920e8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	bl	__Func_8093530
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r2, =0x6666
	mov	r0, #8
	ldr	r1, =0xcccc
	bl	__Func_8092064
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #8
	ldr	r1, =0x109
	ldr	r2, =0x1c7
	bl	__Func_8092158
	ldr	r2, =0x1c7
	mov	r0, #8
	mov	r1, #0xf6
	bl	__Func_8092158
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__Func_80937b8
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_80937b8
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #4
	bl	__Func_80924d4
	mov	r1, #4
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_80937b8
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L7f0
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #9
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092848
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L844

	.pool_aligned

.L7f0:
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #9
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092848
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #9
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
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
.L844:
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #4
	bl	__Func_80924d4
	mov	r1, #4
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0
	mov	r1, #9
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #8
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092548
	mov	r0, #0x32
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092f84
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #9
	mov	r0, #8
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #8
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xff
	ldr	r2, =0x1bd
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x2d
	mov	r2, #0xb
	ldr	r0, =.Lea0
	bl	__Func_8010560
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0xc3
	mov	r1, #0xff
	lsl	r2, #1
	mov	r0, #8
	bl	__Func_809218c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r2, #0xc3
	mov	r0, #9
	mov	r1, #0xff
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0xe6
	mov	r0, #0xa
	mov	r1, #0xff
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0xc3
	lsl	r2, #1
	mov	r0, #0xa
	mov	r1, #0xff
	bl	__Func_809218c
	ldr	r5, =.Lcb4
	mov	r0, #0
	mov	r1, r5
	bl	__Func_809207c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, r5
	mov	r0, #1
	bl	__Func_809207c
	mov	r0, #1
	bl	__Func_80920e8
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_80937b8
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	bl	__Func_8095240
	mov	r0, #0x91
	bl	__Func_80f9080
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x40
	str	r3, [r2]
	bl	__Func_8091df4
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	bl	__Func_8012350
	ldr	r0, =0x12f
	bl	__Func_8079374
	ldr	r0, =0x879
	bl	__Func_8079358
	mov	r0, #1
	bl	__Func_8091e9c
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_889_2008074

	.section .data
	.global .Lcf0

.Lc00:
	.incbin "overlays/rom_78ac38/orig.bin", 0xc00, (0xc64-0xc00)
.Lc64:
	.incbin "overlays/rom_78ac38/orig.bin", 0xc64, (0xcb4-0xc64)
.Lcb4:
	.incbin "overlays/rom_78ac38/orig.bin", 0xcb4, (0xcf0-0xcb4)
.Lcf0:
	.incbin "overlays/rom_78ac38/orig.bin", 0xcf0, (0xd38-0xcf0)
.Ld38:
	.incbin "overlays/rom_78ac38/orig.bin", 0xd38, (0xd44-0xd38)
.Ld44:
	.incbin "overlays/rom_78ac38/orig.bin", 0xd44, (0xe94-0xd44)
.Le94:
	.incbin "overlays/rom_78ac38/orig.bin", 0xe94, (0xea0-0xe94)
.Lea0:
	.incbin "overlays/rom_78ac38/orig.bin", 0xea0

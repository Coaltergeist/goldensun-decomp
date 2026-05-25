	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_791794_30
	ldr	r0, =.L36d4
	bx	lr
.func_end OvlFunc_791794_30

.thumb_func_start OvlFunc_791794_38
	mov	r0, #0
	bx	lr
.func_end OvlFunc_791794_38

.thumb_func_start OvlFunc_791794_3c
	ldr	r0, =.L3704
	bx	lr
.func_end OvlFunc_791794_3c

.thumb_func_start OvlFunc_791794_44
	ldr	r0, =.L3710
	bx	lr
.func_end OvlFunc_791794_44

.thumb_func_start OvlFunc_791794_4c
	ldr	r0, =.L3998
	bx	lr
.func_end OvlFunc_791794_4c

.thumb_func_start OvlFunc_791794_54
	push	{r5, r6, r7, lr}
	ldr	r5, =iwram_3001ec4
	ldr	r7, [r5]
	bl	__Func_80916b0
	ldr	r2, =0x40c
	mov	r3, #0
	add	r6, r7, r2
	str	r3, [r6]
	mov	r0, #0x8d
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	mov	r1, #0xe8
	mov	r2, #0x9c
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xda
	mov	r2, #0xac
	mov	r0, #1
	lsl	r1, #16
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0xa6
	mov	r0, #5
	ldr	r1, =0x1db0000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0xa6
	mov	r0, #9
	ldr	r1, =0x1eb0000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0xae
	mov	r0, #0xb
	ldr	r1, =0x1cb0000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0xae
	mov	r0, #0xa
	ldr	r1, =0x1fb0000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0x99
	mov	r0, #0xd
	ldr	r1, =0x1d70000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0xb5
	lsl	r2, #17
	mov	r0, #0xe
	ldr	r1, =0x1df0000
	bl	__Func_80923e4
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0xe8
	mov	r1, #1
	mov	r2, #0x9c
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #0
	sub	r5, #8
	bl	__Func_80933f8
	bl	__Func_800fe9c
	ldr	r3, [r5]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r3, r2
	mov	r2, #8
	str	r2, [r3]
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #4
	bl	__Func_8091254
	mov	r0, #4
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #4
	bl	__Func_8091254
	mov	r0, #4
	bl	__Func_809163c
	bl	OvlFunc_791794_f64
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #4
	bl	__Func_8091254
	mov	r0, #0x10
	bl	__Func_809163c
	mov	r0, #0x90
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #4
	bl	__Func_8091254
	mov	r0, #4
	bl	__Func_809163c
	mov	r1, #0
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #4
	bl	__Func_8091254
	mov	r0, #4
	bl	__Func_809163c
	mov	r0, #0x90
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x30
	bl	__Func_8091254
	mov	r0, #0x30
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0x14
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #0x14
	mov	r2, #0x14
	bl	OvlFunc_791794_2d48
	mov	r1, #0x14
	mov	r2, #0x28
	mov	r0, #0
	bl	OvlFunc_791794_2d48
	ldr	r0, =0x10cd
	bl	__Func_8092b94
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #1
	mov	r1, #0x14
	mov	r2, #0
	bl	OvlFunc_791794_2d48
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0
	bl	OvlFunc_791794_2d48
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_791794_2d48
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r1, #0x14
	mov	r0, #0
	bl	OvlFunc_791794_2d48
	mov	r0, #0xf
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r2, #0x97
	ldr	r1, =0x1450000
	lsl	r2, #17
	mov	r0, #0xf
	bl	__Func_80923e4
	mov	r0, #0xf
	bl	__Func_8092054
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #5
	strb	r3, [r2]
	mov	r3, #1
	str	r3, [r6]
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0x96
	bl	__Func_809163c
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x14
	bl	__Func_8092848
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0xa6
	mov	r0, #5
	ldr	r1, =0x1db0000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0xa6
	mov	r0, #9
	ldr	r1, =0x1eb0000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0xae
	mov	r0, #0xb
	ldr	r1, =0x1cb0000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0xae
	mov	r0, #0xa
	ldr	r1, =0x1fb0000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0x99
	mov	r0, #0xd
	ldr	r1, =0x1d70000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0xb5
	lsl	r2, #17
	mov	r0, #0xe
	ldr	r1, =0x1df0000
	bl	__Func_80923e4
	ldr	r0, =0x66666
	ldr	r1, =0xcccc
	bl	__Func_80933d4
	mov	r0, #0xa4
	mov	r1, #1
	ldr	r2, =0x12b0000
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xa7
	bl	__Func_80f9080
	mov	r1, #2
	ldr	r0, =0x205294
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0x14
	bl	__Func_80030f8
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x14
	bl	__Func_8091254
	mov	r0, #0xc8
	bl	__Func_809163c
	mov	r1, #0
	ldr	r0, =0x1001
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L418
	ldr	r0, =0x10d6
	bl	__Func_8092b94
	b	.L41e

	.pool_aligned

.L418:
	ldr	r0, =0x10d7
	bl	__Func_8092b94
.L41e:
	mov	r1, #0
	mov	r2, #0x50
	ldr	r0, =0x1001
	bl	__Func_8093040
	ldr	r0, =0x10d8
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x14
	mov	r2, #0
	mov	r0, #1
	bl	OvlFunc_791794_2d48
	ldr	r3, =0x40c
	add	r5, r7, r3
	mov	r3, #0
	str	r3, [r5]
	mov	r0, #0x8d
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r3, #1
	str	r3, [r5]
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0x3c
	bl	OvlFunc_791794_2d48
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0x14
	mov	r2, #0x14
	bl	OvlFunc_791794_2d48
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0x14
	bl	OvlFunc_791794_2d48
	ldr	r0, =0x1001
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #5
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0x14
	mov	r2, #0x14
	bl	OvlFunc_791794_2d48
	mov	r0, #0
	mov	r1, #0x14
	mov	r2, #0x14
	bl	OvlFunc_791794_2d48
	mov	r2, #0x1e
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8093040
	bl	OvlFunc_791794_1084
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_791794_10c4
	bl	__Func_80041d8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_791794_135c
	bl	__Func_80041d8
	mov	r0, #0xf0
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8093040
	mov	r2, #0xa6
	mov	r0, #5
	ldr	r1, =0x1db0000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0xa6
	mov	r0, #9
	ldr	r1, =0x1eb0000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0xae
	mov	r0, #0xb
	ldr	r1, =0x1cb0000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0xae
	mov	r0, #0xa
	ldr	r1, =0x1fb0000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0x99
	mov	r0, #0xd
	ldr	r1, =0x1d70000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0xb5
	mov	r0, #0xe
	ldr	r1, =0x1df0000
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #5
	bl	__Func_8092054
	mov	r2, r0
	mov	r3, #0xa
	ldrsh	r0, [r2, r3]
	mov	r3, #0x12
	ldrsh	r2, [r2, r3]
	mov	r1, #1
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x28
	mov	r0, #0xa
	mov	r1, #0xb
	bl	__Func_8092848
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_8092adc
	ldr	r0, =0x4005
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #0xb
	mov	r2, #0x28
	bl	__Func_8092848
	mov	r0, #0xa
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0xb0
	mov	r2, #0x3c
	mov	r0, #0xe
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0xe
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xd
	ldr	r1, =0x103
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0x9d
	lsl	r2, #1
	mov	r0, #0xd
	ldr	r1, =0x1d7
	bl	__Func_80921c4
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0xe
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_80924d4
	mov	r2, #0xa
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_809259c
	mov	r2, #0xa
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x4009
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xd0
	mov	r2, #0x1e
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0xd
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	b	.L860

	.pool_aligned

.L860:
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0xa
	bl	__Func_8092848
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_80937b8
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xe
	mov	r1, #4
	bl	__Func_8092548
	ldr	r0, =0x200e
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8093040
	mov	r1, #0xb0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	ldr	r0, =0x2005
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r2, #0x3c
	mov	r0, #0xd
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xa
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x3c
	mov	r0, #0xb
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x3c
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0xb
	bl	__Func_8092848
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	mov	r0, #0xb
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__Func_8092064
	mov	r2, #0xae
	mov	r0, #0xb
	ldr	r1, =0x1db
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0xae
	lsl	r2, #1
	ldr	r1, =0x1eb
	mov	r0, #0xa
	bl	__Func_809218c
	mov	r0, #0xb
	bl	__Func_80923c4
	mov	r0, #0xa
	bl	__Func_80923c4
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #0xb
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xb
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r0, #5
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r2, #0xa9
	ldr	r1, =0x1db
	lsl	r2, #1
	mov	r0, #0xb
	bl	__Func_80921c4
	mov	r0, #0xb
	bl	__Func_8092054
	mov	r2, r0
	mov	r5, r2
	add	r5, #0x5a
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0xae
	strb	r3, [r5]
	lsl	r2, #1
	mov	r0, #0xb
	ldr	r1, =0x1db
	bl	__Func_80921c4
	mov	r0, #5
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #5
	mov	r1, #4
	mov	r2, #0
	bl	__Func_8092560
	mov	r2, #0x9e
	mov	r0, #5
	ldr	r1, =0x1cb
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r2, #0
	mov	r0, #0xd
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_809259c
	mov	r2, #0x1e
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldrb	r2, [r5]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r5]
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0xa6
	mov	r0, #0xb
	ldr	r1, =0x1db
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0x200b
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xb0
	mov	r2, #0
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x14
	bl	__Func_80937b8
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092548
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xd8
	mov	r2, #0x9e
	mov	r0, #5
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xd3
	ldr	r2, =0x137
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #5
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0xd
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x28
	ldr	r0, =0x100a
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xb0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r2, #0x94
	mov	r0, #9
	ldr	r1, =0x1eb
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xa
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xe
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r2, #0x9a
	mov	r0, #0xa
	ldr	r1, =0x1d7
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x9a
	mov	r0, #0xb
	ldr	r1, =0x1c7
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x9a
	mov	r0, #0xe
	ldr	r1, =0x1e7
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0
	mov	r0, #0xd
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r0, #0xec
	mov	r1, #1
	mov	r2, #0x96
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	b	.Ld38

	.pool_aligned

.Ld38:
	bl	__Func_809163c
	ldr	r0, =0x246
	bl	__Func_8079358
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0xe
	lsl	r1, #8
	bl	__Func_8092064
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0xa
	bl	OvlFunc_791794_e30
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #9
	bl	OvlFunc_791794_e30
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0xb
	bl	OvlFunc_791794_e30
	mov	r1, #0x90
	mov	r2, #0x28
	mov	r0, #5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x2005
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #5
	bl	OvlFunc_791794_e30
	mov	r0, #0xd
	bl	OvlFunc_791794_e30
	mov	r1, #0xe0
	mov	r0, #0xe
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x1e
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r2, #0x1e
	mov	r0, #0xe
	bl	__Func_8093040
	mov	r0, #0xe
	bl	OvlFunc_791794_e30
	bl	OvlFunc_791794_1410
	mov	r0, #5
	bl	__Func_8091890
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_791794_54

.thumb_func_start OvlFunc_791794_e30
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r10, r0
	mov	r0, #8
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, #0x91
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	ldr	r1, =0x1d7
	lsl	r2, #1
	mov	r8, r0
	mov	r0, r10
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, r10
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0x91
	lsl	r2, #17
	ldr	r1, =0x1d70000
	mov	r0, #8
	bl	__Func_80923e4
	mov	r0, r10
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, r10
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0x80
	mov	r0, r10
	lsl	r1, #1
	bl	__Func_8092950
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, #0xc9
	bl	__Func_80f9080
	mov	r6, #0
.Lea2:
	ldr	r3, [r5, #0xc]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r2
	str	r3, [r5, #0xc]
	mov	r0, #1
	bl	__Func_809163c
	add	r3, r6, #1
	lsl	r3, #24
	lsr	r6, r3, #24
	cmp	r6, #0x3c
	bne	.Lea2
	mov	r0, #0xbe
	bl	__Func_80f9080
	ldr	r7, =0xfffffd71
	mov	r6, #0
.Lec6:
	ldr	r3, [r5, #0xc]
	ldr	r2, =0x1999
	add	r3, r2
	str	r3, [r5, #0xc]
	ldr	r3, [r5, #0x18]
	add	r3, r7
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r7
	str	r3, [r5, #0x1c]
	mov	r2, r8
	ldr	r3, [r2, #0x18]
	add	r3, r7
	str	r3, [r2, #0x18]
	ldr	r3, [r2, #0x1c]
	add	r3, r7
	str	r3, [r2, #0x1c]
	mov	r0, #1
	bl	__Func_809163c
	add	r3, r6, #1
	lsl	r3, #24
	lsr	r6, r3, #24
	cmp	r6, #0x5a
	bne	.Lec6
	mov	r0, r10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_791794_e30


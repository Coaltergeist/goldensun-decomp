	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_896_2008390
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r0, #0x8d
	bl	__Func_80f9080
	mov	r5, #0
.L3aa:
	mov	r1, #1
	ldr	r0, =0x403a52
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	mov	r0, #8
	bl	__Func_809163c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	mov	r0, #8
	bl	__Func_809163c
	cmp	r5, #1
	bne	.L3e8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
.L3e8:
	add	r5, #1
	cmp	r5, #6
	bne	.L3aa
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #10
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r0, #0xa6
	mov	r1, #1
	mov	r3, #1
	neg	r1, r1
	ldr	r2, =0x1f10000
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x90
	bl	__Func_80f9080
	ldr	r2, =.L5088
	mov	r8, r2
	mov	r0, r8
	mov	r1, #0x60
	mov	r2, #0x1d
	bl	__Func_8010560
	mov	r3, #0x29
	mov	r2, #0x1d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r9, r3
	mov	r10, r2
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r5, #1
	mov	r3, #0x1f
	mov	r6, #2
	mov	r1, #0x2a
	mov	r2, #0x29
	mov	r0, #0x57
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8012330
	ldr	r0, =0x66666
	ldr	r1, =0xcccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1370000
	neg	r1, r1
	ldr	r2, =0x1f10000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x90
	bl	__Func_80f9080
	mov	r0, r8
	mov	r1, #0x4a
	mov	r2, #0x1d
	bl	__Func_8010560
	mov	r3, #0x13
	str	r3, [sp]
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #0x1f
	mov	r1, #0x2a
	mov	r2, #0x13
	mov	r0, #0x57
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8012330
	mov	r1, #1
	mov	r2, #0xc0
	mov	r3, #1
	ldr	r0, =0x2970000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x90
	bl	__Func_80f9080
	mov	r0, r8
	mov	r1, #0x60
	mov	r2, #0xa
	bl	__Func_8010560
	mov	r2, r9
	mov	r3, #0xa
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r1, #0x2a
	mov	r2, #0x29
	mov	r3, #0xc
	mov	r0, #0x57
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r1, #1
	mov	r2, #0xed
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #17
	ldr	r0, =0x2c60000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x28
	mov	r2, #0x2b
	mov	r3, #0x42
	mov	r0, #0
	bl	__Func_8010424
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xb2
	mov	r2, #0x80
	mov	r3, #0xe8
	lsl	r3, #17
	lsl	r2, #13
	lsl	r1, #18
	mov	r0, #0xdc
	bl	OvlFunc_896_200c260
	mov	r5, r0
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_8019908
	ldr	r5, =0x1075
	mov	r1, #1
	mov	r0, r5
	bl	__Func_801776c
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #0xe7
	mov	r1, #1
	mov	r2, #0xaf
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__Func_809163c
	sub	r5, #1
	mov	r2, #0x1e
	mov	r1, #4
	mov	r0, #9
	bl	__Func_8092560
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r1, #1
	mov	r2, #0xed
	neg	r1, r1
	lsl	r2, #17
	mov	r3, #0
	ldr	r0, =0x2c60000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091dc8
	bl	__Func_8091e20
	ldr	r0, =0x83c
	bl	__Func_8079358
	bl	__Func_8091750
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_2008390

.thumb_func_start OvlFunc_896_20086f4
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r0, #0x8d
	bl	__Func_80f9080
	mov	r5, #0
.L70e:
	mov	r1, #1
	ldr	r0, =0x404a4e
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	mov	r0, #8
	bl	__Func_809163c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	mov	r0, #8
	bl	__Func_809163c
	cmp	r5, #1
	bne	.L74c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
.L74c:
	add	r5, #1
	cmp	r5, #6
	bne	.L70e
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8012330
	ldr	r0, =0x59999
	ldr	r1, =0xb333
	bl	__Func_80933d4
	mov	r0, #0xec
	mov	r1, #1
	mov	r2, #0xc4
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x90
	bl	__Func_80f9080
	ldr	r2, =.L5088
	mov	r10, r2
	mov	r0, r10
	mov	r1, #0x54
	mov	r2, #4
	bl	__Func_8010560
	mov	r3, #0x1d
	mov	r9, r3
	mov	r2, r9
	mov	r3, #4
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
	mov	r1, #0x2a
	mov	r3, #6
	mov	r2, #0x1d
	mov	r0, #0x57
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8012330
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1570000
	neg	r1, r1
	ldr	r2, =0x1710000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x90
	bl	__Func_80f9080
	mov	r0, r10
	mov	r1, #0x4c
	mov	r2, #0x15
	bl	__Func_8010560
	mov	r5, #0x15
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r3, #0x17
	mov	r1, #0x2a
	mov	r2, #0x15
	mov	r0, #0x57
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8012330
	ldr	r0, =0x33333
	ldr	r1, =0x6666
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1570000
	neg	r1, r1
	ldr	r2, =0x1f10000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x90
	bl	__Func_80f9080
	mov	r0, r10
	mov	r1, #0x4c
	mov	r2, #0x1d
	bl	__Func_8010560
	mov	r3, r9
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r1, #0x2a
	mov	r2, #0x15
	mov	r3, #0x1f
	mov	r0, #0x57
	str	r6, [sp]
	bl	__Func_8010424
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #0xb2
	mov	r1, #1
	mov	r2, #0x98
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x28
	mov	r2, #0x2b
	mov	r3, #0x2e
	mov	r0, #0
	bl	__Func_8010424
	mov	r6, #0xb2
	mov	r0, #0x14
	bl	__Func_809163c
	lsl	r6, #18
	mov	r2, #0x80
	mov	r3, #0x90
	lsl	r3, #16
	lsl	r2, #13
	mov	r1, r6
	mov	r0, #0xdd
	bl	OvlFunc_896_200c260
	mov	r5, r0
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_8019908
	ldr	r5, =0x1076
	mov	r1, #1
	mov	r0, r5
	bl	__Func_801776c
	mov	r1, #0xe0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #0xe7
	mov	r1, #1
	mov	r2, #0xaf
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__Func_809163c
	sub	r5, #2
	mov	r2, #0x1e
	mov	r1, #4
	mov	r0, #9
	bl	__Func_8092560
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r1, #1
	mov	r2, #0x98
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #0
	mov	r0, r6
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091dc8
	bl	__Func_8091e20
	ldr	r0, =0x83d
	bl	__Func_8079358
	bl	__Func_8091750
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_20086f4

.thumb_func_start OvlFunc_896_2008a64
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_896_2008a98
	bl	OvlFunc_896_2008d5c
	bl	OvlFunc_896_2008f8c
	bl	OvlFunc_896_2009450
	bl	OvlFunc_896_200978c
	bl	OvlFunc_896_2009d04
	ldr	r0, =0x83e
	bl	__Func_8079358
	bl	__Func_8091750
	bl	OvlFunc_896_200a27c
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_2008a64

.thumb_func_start OvlFunc_896_2008a98
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r0, #0x8d
	sub	sp, #8
	bl	__Func_80f9080
	mov	r5, #0
.Laaa:
	mov	r1, #1
	ldr	r0, =0x4049d2
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	mov	r0, #8
	bl	__Func_809163c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	mov	r0, #8
	bl	__Func_809163c
	cmp	r5, #1
	bne	.Lae8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
.Lae8:
	add	r5, #1
	cmp	r5, #6
	bne	.Laaa
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r1, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r0, #0xa7
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	ldr	r2, =0x2110000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x90
	bl	__Func_80f9080
	ldr	r2, =.L5088
	mov	r8, r2
	mov	r0, r8
	mov	r1, #0x41
	mov	r2, #0x1f
	bl	__Func_8010560
	mov	r3, #0xa
	mov	r10, r3
	mov	r2, r10
	mov	r3, #0x1f
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r5, #1
	mov	r3, #0x21
	mov	r6, #2
	mov	r1, #0x2a
	mov	r2, #0xa
	mov	r0, #0x57
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8012330
	ldr	r0, =0x66666
	ldr	r1, =0xcccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xb1
	mov	r3, #1
	ldr	r0, =0x1870000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x90
	bl	__Func_80f9080
	mov	r0, r8
	mov	r1, #0x4f
	mov	r2, #9
	bl	__Func_8010560
	mov	r3, #0x18
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #0xb
	mov	r1, #0x2a
	mov	r2, #0x18
	mov	r0, #0x57
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8012330
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xc1
	mov	r3, #1
	ldr	r0, =0x2470000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x90
	bl	__Func_80f9080
	mov	r0, r8
	mov	r1, #0x5b
	mov	r2, #0xa
	bl	__Func_8010560
	mov	r3, #0x24
	str	r3, [sp]
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r1, #0x2a
	mov	r2, #0x24
	mov	r3, #0xc
	mov	r0, #0x57
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010424
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #0xe8
	mov	r1, #1
	mov	r3, #0
	neg	r1, r1
	ldr	r2, =0x1dd0000
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x28
	mov	r2, #0xd
	mov	r3, #0x42
	mov	r0, #0
	bl	__Func_8010424
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xe8
	mov	r2, #0x80
	mov	r3, #0xe8
	lsl	r2, #13
	lsl	r3, #17
	lsl	r1, #16
	mov	r0, #0xdf
	bl	OvlFunc_896_200c260
	mov	r5, r0
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_8019908
	ldr	r0, =0x1077
	mov	r1, #1
	bl	__Func_801776c
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_2008a98

.thumb_func_start OvlFunc_896_2008d5c
	push	{lr}
	mov	r0, #0x11
	bl	__Func_80f9080
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r2, #0xf5
	mov	r0, #0
	mov	r1, #0xe7
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0xb4
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #0xf6
	ldr	r2, =0x1df
	bl	__Func_80921c4
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lde8
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.Lde8:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0x101
	ldr	r2, =0x1eb
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__Func_80937b8
	mov	r2, #0x50
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r0, #0
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #1
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #0
	ldr	r1, =0x109
	ldr	r2, =0x1c5
	bl	__Func_809218c
	mov	r1, #0x8d
	ldr	r2, =0x1d5
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
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
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0x3c
	bl	__Func_8092560
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
	lsl	r2, #17
	mov	r0, #0xa
	ldr	r1, =0x1fb0000
	bl	__Func_80923e4
	ldr	r0, =0x73333
	ldr	r1, =0xe666
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x1e50000
	neg	r1, r1
	ldr	r2, =0x1590000
	bl	__Func_80933f8
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__Func_809163c
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_2008d5c

.thumb_func_start OvlFunc_896_2008f8c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0x3d
	bl	__Func_80f9080
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_80924d4
	ldr	r0, =0x107d
	bl	__Func_8092b94
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0xb
	mov	r1, #4
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0xa
	bl	__Func_8092560
	mov	r2, #0x1e
	mov	r0, #9
	mov	r1, #6
	bl	__Func_8092560
	mov	r0, #9
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xb0
	mov	r2, #0xa
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #4
	bl	__Func_80924d4
	mov	r1, #0xa
	mov	r0, #9
	bl	OvlFunc_896_200c248
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r6, #0x50]
	mov	r5, #0
	add	r3, #0x26
	strb	r5, [r3]
	mov	r9, r3
	ldr	r3, =0x1999
	mov	r1, #0x80
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	lsl	r1, #1
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r8, r0
	mov	r0, #0xc
	bl	__Func_8092950
	mov	r2, #0x91
	ldr	r1, =0x1d70000
	mov	r0, #0xc
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0x55
	mov	r3, #0xa0
	lsl	r3, #14
	add	r2, r6
	strb	r5, [r2]
	mov	r0, #1
	str	r3, [r6, #0xc]
	mov	r10, r2
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #1
	mov	r2, #0
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x1e
	bl	__Func_80937b8
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0
	mov	r0, #0xa
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
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_8092b08
	ldr	r7, =0x28f
.L1148:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffffe667
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r6, #0x18]
	add	r3, r7
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r7
	str	r3, [r6, #0x1c]
	mov	r2, r8
	ldr	r3, [r2, #0x18]
	add	r3, r7
	str	r3, [r2, #0x18]
	ldr	r3, [r2, #0x1c]
	add	r3, r7
	str	r3, [r2, #0x1c]
	mov	r0, #1
	add	r5, #1
	bl	__Func_809163c
	cmp	r5, #0x5a
	bne	.L1148
	mov	r3, #5
	mov	r2, r10
	strb	r3, [r2]
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r5, #0
.L1184:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffff8000
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #1
	add	r5, #1
	bl	__Func_809163c
	cmp	r5, #0x3c
	bne	.L1184
	mov	r3, #3
	mov	r2, r10
	strb	r3, [r2]
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r3, #1
	mov	r2, r9
	strb	r3, [r2]
	mov	r0, #8
	mov	r2, #0
	mov	r1, #0
	bl	__Func_80923e4
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_8092b08
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092950
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r2, #0x99
	lsl	r2, #1
	ldr	r1, =0x1d7
	mov	r0, #0xc
	bl	__Func_80921c4
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x400c
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r2, #0
	mov	r1, #9
	mov	r0, #5
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_8092548
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xb
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xb
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r1, #0xd0
	mov	r2, #0x1e
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xb
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #5
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #0x84
	mov	r1, #1
	mov	r2, #0xe6
	lsl	r2, #17
	mov	r3, #0
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0x28
	bl	OvlFunc_896_200c248
	mov	r0, #0
	mov	r1, #3
	bl	__Func_809259c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L1364
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L1364:
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r1, #1
	mov	r2, #0xa7
	mov	r3, #0
	lsl	r2, #17
	neg	r1, r1
	ldr	r0, =0x1dd0000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	b	.L13c0

	.pool_aligned

.L13c0:
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xb0
	mov	r2, #0xa
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_8092adc
	ldr	r0, =0x108d
	bl	__Func_8092b94
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #4
	bl	__Func_80924d4
	ldr	r0, =0x5009
	mov	r1, #0x28
	bl	OvlFunc_896_200c248
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xb
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #5
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_2008f8c

.thumb_func_start OvlFunc_896_2009450
	push	{lr}
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x28
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	bl	__Func_8093874
	mov	r0, #0x3c
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0xa
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #5
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #9
	bl	__Func_809280c
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r2, #0xa
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0xb
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x28
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #5
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #0x81
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xad
	mov	r2, #0xdc
	lsl	r2, #17
	lsl	r1, #17
	mov	r0, #1
	bl	__Func_80923e4
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r1, #0x8c
	mov	r2, #0xeb
	mov	r0, #1
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r1, #1
	mov	r2, #0xe9
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #17
	ldr	r0, =0x1050000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8093054
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8093054
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x109b
	bl	__Func_8092b94
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #0xb
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r1, #1
	mov	r2, #0xa7
	mov	r3, #0
	lsl	r2, #17
	neg	r1, r1
	ldr	r0, =0x1dd0000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r2, #0x28
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xc0
	mov	r0, #5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #5
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0xb0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_2009450

.thumb_func_start OvlFunc_896_200978c
	push	{r5, r6, r7, lr}
	mov	r0, #0xa1
	bl	__Func_80f9080
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #0xc
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L17b6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xd
	bl	__Func_80923e4
.L17b6:
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_80923e4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0xd
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #5
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #3
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #9
	mov	r1, #0x28
	bl	OvlFunc_896_200c248
	mov	r1, #3
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xb0
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r1, #1
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xd
	mov	r1, #0x28
	bl	OvlFunc_896_200c248
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #3
	mov	r0, #0xa
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #0x50
	bl	OvlFunc_896_200c248
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0x28
	bl	OvlFunc_896_200c248
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #5
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #0x50
	bl	OvlFunc_896_200c248
	mov	r0, #0xd
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0xd
	mov	r1, #0x50
	bl	OvlFunc_896_200c248
	mov	r1, #2
	mov	r0, #5
	bl	__Func_80925cc
	mov	r0, #4
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xb
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r2, #0x50
	mov	r0, #9
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r2, #0x28
	mov	r0, #0xb
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r1, #1
	mov	r2, #0xe9
	mov	r3, #0
	neg	r1, r1
	lsl	r2, #17
	ldr	r0, =0x1050000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
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
	mov	r2, #0xef
	mov	r0, #0
	mov	r1, #0xf4
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0x82
	mov	r2, #0xf5
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #4
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	bl	__Func_8077394
	ldr	r4, =0x1ff
	mov	r5, #0
	add	r0, #0xd8
	mov	r1, #0xe
.L1a70:
	ldrh	r3, [r0]
	mov	r2, r4
	and	r2, r3
	mov	r3, r2
	sub	r3, #0xdc
	add	r0, #2
	cmp	r3, #1
	bls	.L1a84
	cmp	r2, #0xdf
	bne	.L1a86
.L1a84:
	add	r5, #1
.L1a86:
	sub	r1, #1
	cmp	r1, #0
	bge	.L1a70
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1af8
	ldr	r6, =0x10b0
	mov	r0, r6
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	cmp	r5, #2
	bgt	.L1ae8
	mov	r0, #1
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r2, #0xf3
	lsl	r2, #1
	mov	r0, #1
	mov	r1, #0xfc
	bl	__Func_80921c4
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	add	r0, r6, #1
	mov	r1, #1
	mov	r2, #0
	bl	__Func_8019aa0
	b	.L1bdc
.L1ae8:
	ldr	r0, =0x10b4
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	b	.L1bdc
.L1af8:
	cmp	r5, #2
	bgt	.L1baa
	ldr	r6, =0x10b2
	mov	r0, r6
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #1
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	mov	r0, #1
	bl	__Func_8092064
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r5, r7
	add	r5, #0x5a
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0xef
	strb	r3, [r5]
	mov	r0, #1
	mov	r1, #0xf4
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #0xda
	ldr	r2, =0x1d7
	mov	r0, #0
	bl	__Func_8092128
	add	r6, #1
	mov	r0, #0
	bl	__Func_80923c4
	mov	r2, #0
	mov	r0, r6
	mov	r1, #1
	bl	__Func_8019aa0
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	ldrb	r2, [r5]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r5]
	b	.L1bdc
.L1baa:
	ldr	r0, =0x10b5
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #1
	mov	r1, #4
	bl	__Func_8092548
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x1e
	bl	__Func_8092adc
.L1bdc:
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809335c
	bl	__Func_8093530
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	lsl	r2, #7
	mov	r0, #1
	bl	__Func_8092064
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r5, r7
	add	r5, #0x5a
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0x84
	mov	r2, #0xf1
	strb	r3, [r5]
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	ldrb	r2, [r5]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0x8b
	mov	r2, #0xf0
	lsl	r2, #1
	strb	r3, [r5]
	lsl	r1, #1
	mov	r0, #1
	bl	__Func_80921c4
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r7, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	mov	r5, #0xc0
	str	r3, [r7, #0x34]
	lsl	r5, #11
	mov	r0, #0x99
	bl	__Func_80f9080
	str	r5, [r7, #0x28]
	mov	r0, #1
	mov	r1, #7
	bl	__Func_80924d4
	mov	r1, #0x9c
	mov	r2, #0xeb
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_8092158
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x99
	bl	__Func_80f9080
	str	r5, [r7, #0x28]
	mov	r0, #1
	mov	r1, #7
	bl	__Func_80924d4
	mov	r1, #0xab
	mov	r2, #0xeb
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_8092158
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x99
	bl	__Func_80f9080
	str	r5, [r7, #0x28]
	mov	r0, #1
	mov	r1, #7
	bl	__Func_80924d4
	mov	r1, #0xbc
	mov	r2, #0xeb
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_8092158
	mov	r0, #1
	mov	r1, #1
	bl	__Func_80924d4
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200978c

.thumb_func_start OvlFunc_896_2009d04
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xe
	mov	r1, #0xf
	bl	__Func_8092950
	mov	r1, #0xc4
	mov	r2, #0xe3
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	bl	OvlFunc_896_200c3bc
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xe
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r6, =0x10b6
	mov	r0, r6
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0xae
	lsl	r2, #17
	ldr	r1, =0x1d50000
	ldr	r5, =0x200a
	mov	r0, #0xa
	bl	__Func_80923e4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, r5
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, r5
	mov	r1, #0x28
	bl	OvlFunc_896_200c248
	mov	r2, #0xae
	lsl	r2, #17
	mov	r0, #0xa
	ldr	r1, =0x1fb0000
	bl	__Func_80923e4
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #1
	bl	__Func_8092548
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #8
	lsl	r2, #7
	bl	__Func_8092064
	mov	r2, #0xea
	mov	r0, #1
	ldr	r1, =0x185
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	add	r0, r6, #4
	mov	r1, #1
	mov	r2, #0xa
	bl	__Func_8019aa0
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	lsl	r2, #7
	mov	r0, #1
	bl	__Func_8092064
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r5, r7
	add	r5, #0x5a
	ldrb	r2, [r5]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0
	mov	r8, r2
	mov	r1, #0xbc
	mov	r2, #0xeb
	strb	r3, [r5]
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #0x1e
	bl	__Func_809163c
	ldrb	r2, [r5]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r5]
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_8092548
	add	r6, #5
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, r6
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r0, #0xe
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xe
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0xe
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0xe
	bl	__Func_8092950
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r6, r7
	mov	r3, r8
	add	r6, #0x55
	strb	r3, [r6]
	mov	r0, #0xdc
	bl	__Func_80f9080
	mov	r5, #0
.L1ee6:
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r7, #0xc]
	mov	r0, #1
	add	r5, #1
	bl	__Func_809163c
	cmp	r5, #0x1e
	bne	.L1ee6
	mov	r3, #5
	strb	r3, [r6]
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r0, #0xe
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0xe
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xe
	mov	r1, #0x14
	bl	OvlFunc_896_200c248
	mov	r2, #0x14
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r0, #1
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r0, #0xe
	ldr	r1, =0x105
	mov	r2, #0x50
	bl	__Func_80937b8
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r1, #1
	mov	r2, #0xa7
	lsl	r2, #17
	mov	r3, #0
	neg	r1, r1
	ldr	r0, =0x1dd0000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__Func_80030f8
	bl	__Func_8091dc8
	bl	__Func_8091e20
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0xa
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0xa
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092c40
	ldr	r0, =0x66666
	ldr	r1, =0xcccc
	bl	__Func_80933d4
	mov	r0, #0xbb
	mov	r1, #1
	mov	r2, #0xeb
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0xa0
	mov	r0, #0xe
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L2076
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_8092548
	ldr	r0, =0x10c3
	b	.L205e

	.pool_aligned

.L2048:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x10c6
.L205e:
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092c40
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L2048
.L2076:
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x10c4
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_8092548
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xe
	mov	r1, #0x1e
	bl	OvlFunc_896_200c248
	mov	r3, #0
	strb	r3, [r6]
	mov	r0, #0xe
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__Func_8092064
	mov	r1, #0xe6
	mov	r3, #0xb4
	lsl	r3, #17
	mov	r2, #0
	mov	r0, r7
	lsl	r1, #17
	bl	__Func_800d14c
	mov	r0, #0xe
	bl	__Func_80923c4
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092950
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Func_800c528
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_809335c
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r2, #0x28
	mov	r0, #1
	ldr	r1, =0x103
	bl	__Func_80937b8
	mov	r1, #3
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r1, r7
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r7, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	mov	r5, #0xc0
	str	r3, [r7, #0x34]
	lsl	r5, #11
	mov	r0, #0x99
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #7
	str	r5, [r7, #0x28]
	bl	__Func_80924d4
	mov	r1, #0xab
	mov	r2, #0xeb
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_8092158
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x99
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #7
	str	r5, [r7, #0x28]
	bl	__Func_80924d4
	mov	r1, #0x9c
	mov	r2, #0xeb
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_8092158
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x99
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #7
	str	r5, [r7, #0x28]
	bl	__Func_80924d4
	mov	r1, #0x8b
	mov	r2, #0xf0
	lsl	r2, #1
	mov	r0, #1
	lsl	r1, #1
	bl	__Func_8092158
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80924d4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #8
	lsl	r1, #5
	bl	__Func_80933d4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809335c
	mov	r0, #1
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #0
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2232
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.L2232:
	mov	r0, #1
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_80923e4
	mov	r0, #0xdc
	bl	__Func_8078a08
	mov	r0, #0xdd
	bl	__Func_8078a08
	mov	r0, #0xdf
	bl	__Func_8078a08
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_2009d04

.thumb_func_start OvlFunc_896_200a27c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r10, r0
	bl	__Func_80916b0
	mov	r0, #5
	mov	r1, #1
	bl	__Func_809207c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809207c
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809207c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_809207c
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_809207c
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_809207c
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
	mov	r1, #0xe6
	mov	r2, #0xb4
	mov	r0, #0xe
	lsl	r1, #17
	lsl	r2, #17
	bl	__Func_80923e4
	mov	r2, #0x99
	ldr	r1, =0x1d70000
	lsl	r2, #17
	mov	r0, #0xd
	bl	__Func_80923e4
	mov	r0, #5
	bl	__MapActor_GetActor
	mov	r1, r10
	str	r1, [r0, #0x68]
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r2]
	ldr	r3, =.L4bd0
	mov	r1, #0
	mov	r8, r3
	mov	r9, r1
	mov	r1, r8
	bl	__Func_800c2d8
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, r10
	str	r1, [r0, #0x68]
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r3, r6
	strb	r3, [r2]
	mov	r1, r8
	bl	__Func_800c2d8
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, r10
	str	r3, [r0, #0x68]
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r3, r6
	strb	r3, [r2]
	mov	r1, r8
	bl	__Func_800c2d8
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, r10
	str	r1, [r0, #0x68]
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r3, r6
	mov	r1, r8
	strb	r3, [r2]
	bl	__Func_800c2d8
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, r10
	mov	r5, r0
	str	r3, [r5, #0x68]
	mov	r2, r5
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r3, r6
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x55
	ldrb	r3, [r0]
	mov	r2, r5
	add	r2, #0x55
	mov	r1, r9
	strb	r3, [r2]
	mov	r0, r5
	str	r1, [r5, #0xc]
	mov	r1, r8
	bl	__Func_800c2d8
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r3, r10
	str	r3, [r0, #0x68]
	mov	r2, r0
	add	r2, #0x5a
	ldrb	r3, [r2]
	orr	r6, r3
	strb	r6, [r2]
	mov	r1, r8
	bl	__Func_800c2d8
	bl	__Func_8091750
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200a27c

.thumb_func_start OvlFunc_896_200a400
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r0, #0x8d
	bl	__Func_80f9080
	mov	r5, #0
.L2410:
	mov	r1, #1
	ldr	r0, =0x4039d2
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	mov	r0, #8
	bl	__Func_809163c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #8
	bl	__Func_8091254
	mov	r0, #8
	bl	__Func_809163c
	cmp	r5, #1
	bne	.L244e
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
.L244e:
	add	r3, r5, #1
	lsl	r3, #24
	lsr	r5, r3, #24
	cmp	r5, #6
	bne	.L2410
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x28
	mov	r2, #0xd
	mov	r3, #0x2e
	mov	r0, #0
	bl	__Func_8010424
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0xe8
	mov	r2, #0x80
	mov	r3, #0x90
	lsl	r3, #16
	lsl	r2, #13
	lsl	r1, #16
	mov	r0, #0xde
	bl	OvlFunc_896_200c260
	mov	r5, r0
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r0, r5
	mov	r1, #1
	bl	__Func_8019908
	ldr	r0, =0x1078
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #5
	ldr	r1, =0x1330000
	ldr	r2, =0x1150000
	bl	__Func_80923e4
	mov	r0, #9
	ldr	r1, =0x1330000
	ldr	r2, =0x1150000
	bl	__Func_80923e4
	mov	r0, #0xb
	ldr	r1, =0x1330000
	ldr	r2, =0x1150000
	bl	__Func_80923e4
	mov	r0, #0xa
	ldr	r1, =0x1330000
	ldr	r2, =0x1150000
	bl	__Func_80923e4
	mov	r0, #0xe
	ldr	r1, =0x1330000
	ldr	r2, =0x1150000
	bl	__Func_80923e4
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #0
	mov	r1, #0xe8
	mov	r2, #0x9c
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L250e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__Func_80923e4
.L250e:
	mov	r0, #1
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__Func_8092064
	mov	r0, #1
	mov	r1, #0xda
	mov	r2, #0xac
	bl	__Func_80921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x91
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__Func_809163c
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0x32
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x90
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
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x32
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x32
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x90
	bl	__Func_80f9080
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_8092560
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x14
	bl	__Func_8092560
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092560
	mov	r1, #6
	mov	r0, #1
	mov	r2, #0x28
	bl	__Func_8092560
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #2
	bl	__Func_8091e9c
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200a400

.thumb_func_start OvlFunc_896_200a674
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x83e
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2694
	ldr	r0, =0x10cb
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
	b	.L26c4
.L2694:
	ldr	r0, =0x83c
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L26a6
	ldr	r0, =0x1079
	bl	__Func_8092b94
	b	.L26ac
.L26a6:
	ldr	r0, =0x107b
	bl	__Func_8092b94
.L26ac:
	mov	r1, #0
	mov	r0, #9
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092f84
.L26c4:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200a674

.thumb_func_start OvlFunc_896_200a6e0
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x83e
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L2700
	ldr	r0, =0x10c9
	bl	__Func_8092b94
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8092f84
	b	.L2730
.L2700:
	ldr	r0, =0x83c
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L2712
	ldr	r0, =0x107a
	bl	__Func_8092b94
	b	.L2718
.L2712:
	ldr	r0, =0x107c
	bl	__Func_8092b94
.L2718:
	mov	r1, #0
	mov	r0, #5
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #5
	mov	r1, #0
	bl	__Func_8092f84
.L2730:
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200a6e0

.thumb_func_start OvlFunc_896_200a74c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x10ca
	bl	__Func_8092b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200a74c

.thumb_func_start OvlFunc_896_200a76c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x10c7
	bl	__Func_8092b94
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200a76c

.thumb_func_start OvlFunc_896_200a78c
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x10c8
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200a78c

.thumb_func_start OvlFunc_896_200a7ac
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x10cc
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200a7ac

.thumb_func_start OvlFunc_896_200a7cc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1072
	bl	__Func_8092b94
	mov	r0, #9
	mov	r1, #0xa
	bl	OvlFunc_896_200c248
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200a7cc


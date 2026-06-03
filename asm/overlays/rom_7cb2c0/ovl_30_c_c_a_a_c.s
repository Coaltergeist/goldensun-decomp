	.include "macros.inc"

.thumb_func_start OvlFunc_945_20088ec
	push	{r5, lr}
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L94c
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, r5
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1e9e
	bl	__Func_8092b94
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L936
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__Func_8092128
.L936:
	mov	r0, r5
	bl	__Func_80923c4
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	bl	__Func_8091750
	b	.L98e
.L94c:
	ldr	r0, =0x92b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L95e
	mov	r2, #0x99
	ldr	r1, =0x1e78
	lsl	r2, #4
	b	.L97c
.L95e:
	ldr	r0, =0x92a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L96e
	ldr	r1, =0x1e78
	ldr	r2, =0x917
	b	.L97c
.L96e:
	ldr	r0, =0x929
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L984
	ldr	r1, =0x1e78
	ldr	r2, =0x935
.L97c:
	mov	r0, #8
	bl	OvlFunc_945_2009804
	b	.L98e
.L984:
	ldr	r1, =0x1e78
	ldr	r2, =0x92c
	mov	r0, #8
	bl	OvlFunc_945_2009804
.L98e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_20088ec

.thumb_func_start OvlFunc_945_20089b4
	push	{r5, lr}
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.La14
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, r5
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1e9f
	bl	__Func_8092b94
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L9fe
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__Func_8092128
.L9fe:
	mov	r0, r5
	bl	__Func_80923c4
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	bl	__Func_8091750
	b	.La54
.La14:
	ldr	r0, =0x92b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.La24
	ldr	r1, =0x1e7b
	ldr	r2, =0x992
	b	.La42
.La24:
	ldr	r0, =0x92a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.La34
	ldr	r1, =0x1e7b
	ldr	r2, =0x919
	b	.La42
.La34:
	ldr	r0, =0x929
	bl	__Func_8079338
	cmp	r0, #0
	beq	.La4a
	ldr	r1, =0x1e7b
	ldr	r2, =0x937
.La42:
	mov	r0, #0xa
	bl	OvlFunc_945_2009804
	b	.La54
.La4a:
	ldr	r1, =0x1e7b
	ldr	r2, =0x92e
	mov	r0, #0xa
	bl	OvlFunc_945_2009804
.La54:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_20089b4

.thumb_func_start OvlFunc_945_2008a80
	push	{r5, lr}
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lab6
	bl	__Func_80916b0
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xb
	bl	__Func_8093874
	mov	r0, #0x28
	bl	__Func_809163c
	ldr	r0, =0x1f47
	bl	__Func_8092b94
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	b	.Lb54
.Lab6:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb14
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, r5
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1ea0
	bl	__Func_8092b94
	mov	r0, #0xb
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.Lafe
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__Func_8092128
.Lafe:
	mov	r0, r5
	bl	__Func_80923c4
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	bl	__Func_8091750
	b	.Lb54
.Lb14:
	ldr	r0, =0x92b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb24
	ldr	r1, =0x1e7e
	ldr	r2, =0x993
	b	.Lb42
.Lb24:
	ldr	r0, =0x92a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb34
	ldr	r1, =0x1e7e
	ldr	r2, =0x91a
	b	.Lb42
.Lb34:
	ldr	r0, =0x929
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb4a
	ldr	r1, =0x1e7e
	ldr	r2, =0x938
.Lb42:
	mov	r0, #0xb
	bl	OvlFunc_945_2009804
	b	.Lb54
.Lb4a:
	ldr	r1, =0x1e7e
	ldr	r2, =0x92f
	mov	r0, #0xb
	bl	OvlFunc_945_2009804
.Lb54:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008a80

.thumb_func_start OvlFunc_945_2008b84
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lbde
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1ea1
	bl	__Func_8092b94
	mov	r0, #0xc
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.Lbcc
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__Func_8092128
.Lbcc:
	mov	r0, r5
	bl	__Func_80923c4
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	b	.Lc9a
.Lbde:
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r0, =0x1e81
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lc84
	mov	r0, #0xc
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.Lc2c
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xc
	bl	__Func_8092128
.Lc2c:
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x92b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lc56
	ldr	r0, =0x994
	bl	__Func_8079358
	b	.Lc9a
.Lc56:
	ldr	r0, =0x92a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lc68
	ldr	r0, =0x91b
	bl	__Func_8079358
	b	.Lc9a
.Lc68:
	ldr	r0, =0x929
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lc7a
	ldr	r0, =0x939
	bl	__Func_8079358
	b	.Lc9a
.Lc7a:
	mov	r0, #0x93
	lsl	r0, #4
	bl	__Func_8079358
	b	.Lc9a
.Lc84:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xc
	bl	OvlFunc_945_200c86c
.Lc9a:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008b84

.thumb_func_start OvlFunc_945_2008cc8
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ld22
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1ea2
	bl	__Func_8092b94
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.Ld10
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__Func_8092128
.Ld10:
	mov	r0, r5
	bl	__Func_80923c4
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	b	.Lde0
.Ld22:
	ldr	r0, =0x1e84
	bl	__Func_8092b94
	mov	r2, #0x3c
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Ldca
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.Ld74
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #9
	bl	__Func_8092128
.Ld74:
	mov	r0, #9
	bl	__Func_80923c4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x92b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ld9e
	ldr	r0, =0x991
	bl	__Func_8079358
	b	.Lde0
.Ld9e:
	ldr	r0, =0x92a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ldb0
	ldr	r0, =0x918
	bl	__Func_8079358
	b	.Lde0
.Ldb0:
	ldr	r0, =0x929
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ldc2
	ldr	r0, =0x936
	bl	__Func_8079358
	b	.Lde0
.Ldc2:
	ldr	r0, =0x92d
	bl	__Func_8079358
	b	.Lde0
.Ldca:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #9
	bl	OvlFunc_945_200c86c
.Lde0:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008cc8

.thumb_func_start OvlFunc_945_2008e14
	push	{r5, lr}
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Le74
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, r5
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1ea3
	bl	__Func_8092b94
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.Le5e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__Func_8092128
.Le5e:
	mov	r0, r5
	bl	__Func_80923c4
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	bl	__Func_8091750
	b	.Leb4
.Le74:
	ldr	r0, =0x92b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Le84
	ldr	r1, =0x1e88
	ldr	r2, =0x995
	b	.Lea2
.Le84:
	ldr	r0, =0x92a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Le94
	ldr	r1, =0x1e88
	ldr	r2, =0x91c
	b	.Lea2
.Le94:
	ldr	r0, =0x929
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Leaa
	ldr	r1, =0x1e88
	ldr	r2, =0x93a
.Lea2:
	mov	r0, #0xd
	bl	OvlFunc_945_2009804
	b	.Leb4
.Leaa:
	ldr	r1, =0x1e88
	ldr	r2, =0x931
	mov	r0, #0xd
	bl	OvlFunc_945_2009804
.Leb4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008e14

.thumb_func_start OvlFunc_945_2008ee0
	push	{r5, lr}
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lf40
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, r5
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1ea4
	bl	__Func_8092b94
	mov	r0, #0xe
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.Lf2a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__Func_8092128
.Lf2a:
	mov	r0, r5
	bl	__Func_80923c4
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	bl	__Func_8091750
	b	.Lf80
.Lf40:
	ldr	r0, =0x92b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lf50
	ldr	r1, =0x1e8b
	ldr	r2, =0x996
	b	.Lf6e
.Lf50:
	ldr	r0, =0x92a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lf60
	ldr	r1, =0x1e8b
	ldr	r2, =0x91d
	b	.Lf6e
.Lf60:
	ldr	r0, =0x929
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lf76
	ldr	r1, =0x1e8b
	ldr	r2, =0x93b
.Lf6e:
	mov	r0, #0xe
	bl	OvlFunc_945_2009804
	b	.Lf80
.Lf76:
	ldr	r1, =0x1e8b
	ldr	r2, =0x932
	mov	r0, #0xe
	bl	OvlFunc_945_2009804
.Lf80:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008ee0

.thumb_func_start OvlFunc_945_2008fac
	push	{r5, lr}
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L100c
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, r5
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1ea5
	bl	__Func_8092b94
	mov	r0, #0xf
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.Lff6
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__Func_8092128
.Lff6:
	mov	r0, r5
	bl	__Func_80923c4
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	bl	__Func_8091750
	b	.L104c
.L100c:
	ldr	r0, =0x92b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L101c
	ldr	r1, =0x1e8e
	ldr	r2, =0x997
	b	.L103a
.L101c:
	ldr	r0, =0x92a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L102c
	ldr	r1, =0x1e8e
	ldr	r2, =0x91e
	b	.L103a
.L102c:
	ldr	r0, =0x929
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1042
	ldr	r1, =0x1e8e
	ldr	r2, =0x93c
.L103a:
	mov	r0, #0xf
	bl	OvlFunc_945_2009804
	b	.L104c
.L1042:
	ldr	r1, =0x1e8e
	ldr	r2, =0x933
	mov	r0, #0xf
	bl	OvlFunc_945_2009804
.L104c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008fac

.thumb_func_start OvlFunc_945_2009078
	push	{r5, lr}
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L10d8
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	__Func_80916b0
	mov	r0, r5
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1ea6
	bl	__Func_8092b94
	mov	r0, #0x10
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L10c2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__Func_8092128
.L10c2:
	mov	r0, r5
	bl	__Func_80923c4
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	bl	__Func_8091750
	b	.L1118
.L10d8:
	ldr	r0, =0x92b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L10e8
	ldr	r1, =0x1e91
	ldr	r2, =0x998
	b	.L1106
.L10e8:
	ldr	r0, =0x92a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L10f8
	ldr	r1, =0x1e91
	ldr	r2, =0x91f
	b	.L1106
.L10f8:
	ldr	r0, =0x929
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L110e
	ldr	r1, =0x1e91
	ldr	r2, =0x93d
.L1106:
	mov	r0, #0x10
	bl	OvlFunc_945_2009804
	b	.L1118
.L110e:
	ldr	r1, =0x1e91
	ldr	r2, =0x934
	mov	r0, #0x10
	bl	OvlFunc_945_2009804
.L1118:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009078

.thumb_func_start OvlFunc_945_2009144
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xc
	mov	r4, #0xc
	ldr	r3, [r3]
	neg	r2, r2
	neg	r4, r4
	add	r4, r1
	add	r2, r0
	mov	r6, r0
	mov	r5, #8
	mov	r14, r2
	add	r6, #0xc
	mov	r12, r4
	add	r1, #0xc
	add	r3, #0x34
.L1164:
	ldmia	r3!, {r0}
	mov	r7, #0xa
	ldrsh	r2, [r0, r7]
	mov	r7, #0x12
	ldrsh	r4, [r0, r7]
	cmp	r14, r2
	bge	.L117e
	cmp	r6, r2
	ble	.L117e
	cmp	r12, r4
	bge	.L117e
	cmp	r1, r4
	bgt	.L1186
.L117e:
	add	r5, #1
	cmp	r5, #0x41
	bls	.L1164
	mov	r0, #0
.L1186:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_2009144

.thumb_func_start OvlFunc_945_2009190
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_8092054
	mov	r2, #1
	mov	r10, r0
	mov	r1, #2
	mov	r0, r5
	mov	r8, r2
	bl	__Func_8092b08
	mov	r0, r5
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r2, r10
	ldrh	r3, [r2, #6]
	mov	r2, #0x80
	lsl	r2, #7
	mov	r7, #0xf0
	add	r3, r2
	lsl	r7, #8
	and	r3, r7
	asr	r6, r3, #12
	mov	r0, r6
	bl	OvlFunc_945_2009280
	cmp	r0, #0
	beq	.L11de
	mov	r3, #0
	mov	r8, r3
.L11de:
	mov	r2, r8
	cmp	r2, #0
	beq	.L1212
	mov	r2, r10
	ldrh	r3, [r2, #6]
	ldr	r2, =0xffffc000
	add	r3, r2
	and	r3, r7
	asr	r6, r3, #12
	mov	r0, r6
	bl	OvlFunc_945_2009280
	cmp	r0, #0
	beq	.L11fe
	mov	r3, #0
	mov	r8, r3
.L11fe:
	mov	r2, r8
	cmp	r2, #0
	beq	.L1212
	mov	r2, r10
	ldrh	r3, [r2, #6]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r2
	and	r3, r7
	asr	r6, r3, #12
.L1212:
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L1226
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r5
	bl	__Func_80923e4
.L1226:
	mov	r0, r5
	ldr	r2, =0xcccc
	ldr	r1, =0x19999
	bl	__Func_8092064
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80924d4
	ldr	r2, =.L6668
	lsl	r3, r6, #2
	ldr	r2, [r2, r3]
	asr	r1, r2, #16
	lsl	r2, #16
	asr	r2, #16
	mov	r0, r5
	bl	__Func_809228c
	mov	r0, r5
	bl	__Func_80923c4
	mov	r0, r5
	mov	r1, #1
	bl	__Func_80924d4
	mov	r3, r10
	ldrh	r1, [r3, #6]
	mov	r0, r5
	bl	OvlFunc_945_200c880
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009190

.thumb_func_start OvlFunc_945_2009280
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r0, #0
	sub	sp, #0xc
	bl	__Func_8092054
	ldr	r3, =.L6668
	lsl	r5, #2
	mov	r6, r0
	ldr	r3, [r3, r5]
	mov	r2, #0xa
	ldrsh	r1, [r6, r2]
	asr	r2, r3, #16
	add	r5, r1, r2
	lsl	r3, #16
	mov	r1, #0x12
	ldrsh	r2, [r6, r1]
	asr	r3, #16
	add	r7, r2, r3
	mov	r0, r5
	mov	r1, r7
	bl	OvlFunc_945_2009144
	cmp	r0, #0
	bne	.L12ca
	mov	r1, sp
	lsl	r3, r5, #16
	str	r3, [r1]
	ldr	r3, [r6, #0xc]
	str	r3, [r1, #4]
	lsl	r3, r7, #16
	str	r3, [r1, #8]
	mov	r0, r6
	bl	__Func_80120dc
	cmp	r0, #0
	beq	.L12ce
.L12ca:
	mov	r0, #0
	b	.L12d0
.L12ce:
	mov	r0, #1
.L12d0:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_2009280

.thumb_func_start OvlFunc_945_20092dc
	push	{r5, lr}
	ldr	r0, =0x92b
	mov	r5, #0
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L12ee
	mov	r5, #3
	b	.L1308
.L12ee:
	ldr	r0, =0x92a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L12fc
	mov	r5, #2
	b	.L1308
.L12fc:
	ldr	r0, =0x929
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1308
	mov	r5, #1
.L1308:
	mov	r0, r5
	mov	r1, #1
	bl	OvlFunc_945_200cfa8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_20092dc


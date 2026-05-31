	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2008aa8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_8092054
	mov	r2, r0
	ldr	r3, [r5, #0x10]
	ldr	r0, [r2, #0x10]
	ldr	r1, [r2, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	__Func_80044d0
	strh	r0, [r5, #6]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_948_2008aa8

.thumb_func_start OvlFunc_948_2008ad0
	push	{lr}
	ldr	r0, =0x9c8
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lb5e
	ldr	r0, =0x9c8
	bl	__Func_8079358
	bl	__Func_80916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xf
	bl	__Func_8092064
	mov	r0, #0x98
	bl	__Func_80f9080
	mov	r0, #0xf
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #12
	mov	r1, #0x92
	mov	r2, #0xaa
	str	r3, [r0, #0x28]
	lsl	r1, #2
	mov	r0, #0xf
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	bl	__Func_8091750
.Lb5e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008ad0

.thumb_func_start OvlFunc_948_2008b68
	push	{r5, r6, lr}
	ldr	r0, =0x9c8
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lb76
	b	.Lcb4
.Lb76:
	ldr	r0, =0x9c9
	bl	__Func_8079338
	mov	r6, r0
	cmp	r6, #0
	beq	.Lb84
	b	.Lcb4
.Lb84:
	ldr	r0, =0x9c9
	bl	__Func_8079358
	bl	__Func_80916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xf
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xf
	bl	__Func_8092064
	mov	r0, #0x98
	bl	__Func_80f9080
	mov	r0, #0xf
	bl	__Func_8092054
	mov	r3, #0xa0
	lsl	r3, #12
	mov	r1, #0x92
	mov	r2, #0xa6
	str	r3, [r0, #0x28]
	lsl	r1, #2
	mov	r0, #0xf
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xf
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xf
	bl	__Func_8093874
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xf
	lsl	r1, #12
	lsl	r2, #7
	bl	__Func_8092064
	mov	r1, #0xa6
	mov	r2, #0xa6
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xba
	mov	r2, #0xa6
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xce
	mov	r2, #0xa6
	lsl	r1, #2
	lsl	r2, #2
	mov	r0, #0xf
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xd0
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0xde
	mov	r2, #0xa6
	lsl	r1, #18
	lsl	r2, #18
	mov	r0, #0xf
	bl	__Func_80923e4
	mov	r0, #0xf
	bl	__Func_8092054
	mov	r5, r0
	ldr	r2, [r5, #0x50]
	mov	r3, #0xf8
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r1, #0
	strh	r6, [r5, #6]
	bl	__Func_800c344
	ldr	r1, =.L26fc
	mov	r0, r5
	bl	__Func_800c2d8
	bl	__Func_8091750
.Lcb4:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008b68

.thumb_func_start OvlFunc_948_2008ccc
	push	{r5, lr}
	ldr	r0, =0x9c9
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lcda
	b	.Le30
.Lcda:
	ldr	r0, =0x9ca
	bl	__Func_8079338
	mov	r5, r0
	cmp	r5, #0
	beq	.Lce8
	b	.Le30
.Lce8:
	ldr	r0, =0x9ca
	bl	__Func_8079358
	bl	__Func_80916b0
	mov	r0, #0xf
	bl	__Func_8092054
	ldr	r3, [r0, #0x50]
	mov	r1, #0x10
	strh	r5, [r3, #0x1e]
	bl	__Func_800c344
	mov	r0, #0x98
	bl	__Func_80f9080
	mov	r0, #0xf
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #12
	mov	r1, #0x80
	str	r3, [r0, #0x28]
	mov	r2, #0x1e
	mov	r0, #0xf
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xf
	bl	__Func_8092064
	mov	r0, #0x98
	bl	__Func_80f9080
	mov	r0, #0xf
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #11
	mov	r1, #0xdc
	mov	r2, #0xaa
	str	r3, [r0, #0x28]
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #0xf
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r0, #0xf
	ldr	r1, =0x101
	bl	__Func_8093874
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xf
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8092064
	mov	r1, #0xdc
	mov	r2, #0xae
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xb0
	mov	r0, #0xf
	ldr	r1, =0x372
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xdc
	mov	r2, #0xb2
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xb4
	mov	r0, #0xf
	ldr	r1, =0x36e
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xdc
	mov	r2, #0xb6
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xb8
	mov	r0, #0xf
	ldr	r1, =0x372
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xdc
	mov	r2, #0xba
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xbc
	mov	r0, #0xf
	ldr	r1, =0x36e
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xdc
	mov	r2, #0xbe
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xd6
	mov	r2, #0xce
	lsl	r1, #18
	lsl	r2, #18
	mov	r0, #0xf
	bl	__Func_80923e4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0xf
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #1
	bl	__Func_8093874
	mov	r0, #0xf
	bl	__Func_8092054
	ldr	r3, =OvlFunc_948_2008aa8
	str	r3, [r0, #0x6c]
	bl	__Func_8091750
.Le30:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008ccc

.thumb_func_start OvlFunc_948_2008e50
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r0, =0x9ca
	ldr	r5, [r3]
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Leae
	ldr	r2, =0x24a
	ldr	r3, =ewram_2000240
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xf
	beq	.Leae
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r0, #0xf
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #0x30]
	mov	r0, #0xf
	str	r3, [r6, #0x30]
	bl	__Func_8092054
	mov	r6, r0
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #0x30]
	sub	r5, #0x1e
	str	r3, [r6, #0x34]
	ldr	r2, =.L2808
	lsl	r5, #3
	add	r3, r5, #4
	ldr	r1, [r2, r5]
	mov	r0, #0xf
	ldr	r2, [r2, r3]
	bl	__Func_809218c
.Leae:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008e50

.thumb_func_start OvlFunc_948_2008ec8
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_80924d4
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008ec8

.thumb_func_start OvlFunc_948_2008ee0
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x75
	cmp	r2, r3
	bne	.Lef8
	ldr	r0, =.L2bb4
	b	.Lf0e
.Lef8:
	ldr	r3, =0x76
	cmp	r2, r3
	bne	.Lf02
	ldr	r0, =.L2cb0
	b	.Lf0e
.Lf02:
	ldr	r3, =0x78
	cmp	r2, r3
	bne	.Lf0c
	ldr	r0, =.L2dac
	b	.Lf0e
.Lf0c:
	ldr	r0, =.L2ba8
.Lf0e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_948_2008ee0

.thumb_func_start OvlFunc_948_2008f34
	push	{lr}
	bl	__Func_8093c00
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008f34

.thumb_func_start OvlFunc_948_2008f40
	push	{r5, r6, lr}
	mov	r3, #0xff
	and	r3, r0
	lsl	r3, #2
	mov	r6, r3
	mov	r5, r3
	mov	r3, #0x80
	lsl	r3, #1
	and	r3, r0
	sub	sp, #8
	add	r6, #0x4d
	add	r5, #0xd
	cmp	r3, #0
	beq	.Lf98
	mov	r0, #0x9d
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r3, #0x28
	str	r3, [sp, #4]
	mov	r0, #0x4f
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0x28
	bl	__Func_80030f8
.Lf98:
	mov	r3, #0x28
	str	r3, [sp, #4]
	mov	r0, #0x50
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r3, #0x29
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, #0x28
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x2a
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, #0x28
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008f40

.thumb_func_start OvlFunc_948_2008fdc
	push	{r5, lr}
	mov	r3, #0x80
	lsl	r3, #1
	and	r0, r3
	sub	sp, #8
	cmp	r0, #0
	beq	.L1028
	mov	r0, #0x9d
	bl	__Func_80f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r3, #0x46
	mov	r2, #0x31
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x54
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	bl	__Func_80105d4
	mov	r0, #0x3c
	bl	__Func_80030f8
.L1028:
	mov	r3, #0x46
	mov	r2, #0x31
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x55
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	bl	__Func_80105d4
	mov	r3, #0x32
	str	r3, [sp, #4]
	mov	r5, #6
	mov	r0, #6
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x33
	str	r3, [sp, #4]
	mov	r0, #6
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008fdc

.thumb_func_start OvlFunc_948_2009070
	push	{lr}
	mov	r0, #0
	bl	__Func_8092054
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bne	.L10ae
	ldr	r0, =0x9c4
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L10ae
	mov	r0, #0xf3
	bl	__Func_8078698
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L10ae
	ldr	r0, =0x9c4
	bl	__Func_8079358
	mov	r0, #0x80
	lsl	r0, #1
	bl	OvlFunc_948_2008fdc
	mov	r0, #0xf3
	bl	__Func_80789dc
.L10ae:
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009070

.thumb_func_start OvlFunc_948_20090b8
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r0, #0
	bl	__Func_8092054
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bne	.L1100
	mov	r3, #0x9c
	lsl	r3, #4
	add	r5, r6, r3
	mov	r0, r5
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1100
	mov	r0, #0xf4
	bl	__Func_8078698
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.L1100
	mov	r0, r5
	bl	__Func_8079358
	mov	r0, #0x80
	lsl	r0, #1
	orr	r0, r6
	bl	OvlFunc_948_2008f40
	mov	r0, #0xf4
	bl	__Func_80789dc
.L1100:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20090b8

.thumb_func_start OvlFunc_948_2009108
	push	{lr}
	mov	r0, #0
	bl	OvlFunc_948_20090b8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009108

.thumb_func_start OvlFunc_948_2009114
	push	{lr}
	mov	r0, #1
	bl	OvlFunc_948_20090b8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009114

.thumb_func_start OvlFunc_948_2009120
	push	{r5, lr}
	mov	r0, #2
	bl	OvlFunc_948_20090b8
	mov	r0, #0
	bl	__Func_8092054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #7
	cmp	r3, r2
	bne	.L1152
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xce
	ldr	r3, [r3]
	lsl	r2, #1
	add	r5, r3, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xc
	ble	.L1152
	bl	__Func_8093c00
	mov	r3, #0
	strh	r3, [r5]
.L1152:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009120

.thumb_func_start OvlFunc_948_200915c
	push	{r5, lr}
	mov	r0, #3
	bl	OvlFunc_948_20090b8
	mov	r0, #0
	bl	__Func_8092054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #7
	cmp	r3, r2
	bne	.L118e
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xce
	ldr	r3, [r3]
	lsl	r2, #1
	add	r5, r3, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xc
	ble	.L118e
	bl	__Func_8093c00
	mov	r3, #0
	strh	r3, [r5]
.L118e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200915c

.thumb_func_start OvlFunc_948_2009198
	push	{lr}
	sub	sp, #8
	mov	r3, #0x19
	mov	r2, #0x30
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x19
	mov	r1, #0x2d
	mov	r2, #1
	mov	r3, #2
	bl	__Func_80105d4
	ldr	r0, =0xeeb
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L11c8
	mov	r1, #0xcc
	mov	r2, #0xc2
	mov	r0, #0xc
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_80923e4
.L11c8:
	mov	r0, #1
	bl	__Func_809163c
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009198

.thumb_func_start OvlFunc_948_20091d8
	push	{lr}
	sub	sp, #8
	mov	r3, #0x19
	mov	r2, #0x30
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #2
	mov	r0, #0x18
	mov	r1, #0x30
	mov	r2, #1
	bl	__Func_80105d4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #12
	lsl	r2, #12
	bl	__Func_80923e4
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20091d8

.thumb_func_start OvlFunc_948_2009204
	push	{lr}
	mov	r0, #0xf4
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0xf4
	bl	__Func_8091a58
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	ldr	r0, =0xee7
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009204

.thumb_func_start OvlFunc_948_2009238
	push	{lr}
	mov	r0, #0xf4
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0xf4
	bl	__Func_8091a58
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	ldr	r0, =0xee8
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009238

.thumb_func_start OvlFunc_948_200926c
	push	{lr}
	mov	r0, #0xf4
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0xf4
	bl	__Func_8091a58
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	ldr	r0, =0xee9
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200926c

.thumb_func_start OvlFunc_948_20092a0
	push	{lr}
	mov	r0, #0xf4
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0xf4
	bl	__Func_8091a58
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	ldr	r0, =0xeea
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20092a0

.thumb_func_start OvlFunc_948_20092d4
	push	{lr}
	mov	r0, #0xf3
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0xf3
	bl	__Func_8091a58
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	ldr	r0, =0xeeb
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20092d4

.thumb_func_start OvlFunc_948_2009308
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L131a
	ldr	r1, =0xfffff
	add	r3, r1
.L131a:
	ldr	r0, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.L1326
	ldr	r2, =0xfffff
	add	r0, r2
.L1326:
	asr	r5, r0, #20
	ldr	r3, =iwram_3001ebc
	mov	r0, #0x88
	lsl	r0, #2
	ldr	r7, [r3]
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1376
	ldr	r2, =ewram_2000240
	mov	r1, #0x93
	lsl	r1, #2
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L1376
	ldr	r1, =0x24a
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	beq	.L1376
	mov	r3, r6
	sub	r3, #0x15
	cmp	r3, #2
	bhi	.L1376
	cmp	r5, #9
	ble	.L1376
	cmp	r5, #0xb
	bgt	.L1376
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_8079358
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0x5b
	strh	r3, [r2]
.L1376:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009308

.thumb_func_start OvlFunc_948_200938c
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	ldr	r1, =0x1e666
	ldr	r2, =0xf333
	bl	__Func_8092064
	mov	r0, #8
	ldr	r1, =0x1e666
	ldr	r2, =0xf333
	bl	__Func_8092064
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L13c4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #8
	bl	__Func_8092128
.L13c4:
	mov	r0, #8
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #4
	bl	__Func_809163c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #8
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0xb4
	lsl	r1, #1
	mov	r2, #0x98
	mov	r0, #8
	bl	__Func_8092128
	mov	r0, #8
	bl	__Func_80923c4
	bl	__Func_8091750
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_8079374
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200938c

.thumb_func_start OvlFunc_948_200941c
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L142e
	ldr	r1, =0xfffff
	add	r3, r1
.L142e:
	ldr	r0, [r0, #0x10]
	asr	r7, r3, #20
	cmp	r0, #0
	bge	.L143a
	ldr	r2, =0xfffff
	add	r0, r2
.L143a:
	asr	r5, r0, #20
	ldr	r3, =iwram_3001ebc
	mov	r0, #0x88
	lsl	r0, #2
	ldr	r6, [r3]
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L1486
	ldr	r2, =ewram_2000240
	mov	r1, #0x93
	lsl	r1, #2
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L1486
	ldr	r1, =0x24a
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #9
	beq	.L1486
	cmp	r7, #0xa
	bne	.L1486
	mov	r3, r5
	sub	r3, #0x10
	cmp	r3, #2
	bhi	.L1486
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_8079358
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0x5c
	strh	r3, [r2]
.L1486:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200941c

.thumb_func_start OvlFunc_948_200949c
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_8092064
	mov	r0, #9
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_8092064
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L14d4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #9
	bl	__Func_8092128
.L14d4:
	mov	r0, #9
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #4
	bl	__Func_809163c
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #9
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r2, #0x84
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #9
	bl	__Func_8092128
	mov	r0, #9
	bl	__Func_80923c4
	bl	__Func_8091750
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_8079374
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200949c

.thumb_func_start OvlFunc_948_200952c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r0, #0
	bl	__Func_8092054
	ldr	r1, [r0, #8]
	cmp	r1, #0
	bge	.L1546
	ldr	r2, =0xfffff
	add	r1, r2
.L1546:
	ldr	r0, [r0, #0x10]
	asr	r6, r1, #20
	cmp	r0, #0
	bge	.L1552
	ldr	r3, =0xfffff
	add	r0, r3
.L1552:
	ldr	r2, =0x24a
	ldr	r3, =ewram_2000240
	add	r3, r2
	mov	r5, r7
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	asr	r0, #20
	add	r5, #0xa
	mov	r10, r0
	cmp	r3, r5
	beq	.L15b0
	ldr	r3, =.L2f74
	lsl	r7, #2
	mov	r8, r3
	ldr	r3, [r3, r7]
	cmp	r6, r3
	beq	.L15b0
	mov	r1, #0x90
	mov	r2, #0x90
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, r5
	bl	__Func_8092064
	mov	r0, #0xbc
	bl	__Func_80f9080
	lsl	r1, r6, #4
	mov	r2, #0xb4
	lsl	r2, #1
	add	r1, #8
	mov	r0, r5
	bl	__Func_8092128
	mov	r2, r8
	mov	r3, r10
	str	r6, [r2, r7]
	cmp	r3, #0x16
	bgt	.L15aa
	mov	r0, #0
	mov	r1, #0
	mov	r2, #8
	bl	__Func_809228c
.L15aa:
	mov	r0, #0
	bl	__Func_80923c4
.L15b0:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200952c

.thumb_func_start OvlFunc_948_20095cc
	push	{lr}
	mov	r0, #0
	bl	OvlFunc_948_200952c
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20095cc

.thumb_func_start OvlFunc_948_20095d8
	push	{lr}
	mov	r0, #1
	bl	OvlFunc_948_200952c
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20095d8

.thumb_func_start OvlFunc_948_20095e4
	push	{lr}
	mov	r0, #2
	bl	OvlFunc_948_200952c
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20095e4

.thumb_func_start OvlFunc_948_20095f0
	push	{lr}
	ldr	r2, =0x24a
	ldr	r3, =ewram_2000240
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	beq	.L1680
	bl	__Func_80916b0
	mov	r0, #0
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_8092064
	mov	r0, #0xa
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_8092064
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L1636
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xa
	bl	__Func_8092128
.L1636:
	mov	r0, #0xa
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #4
	bl	__Func_809163c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xa
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0x84
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xa
	bl	__Func_8092128
	mov	r0, #0xa
	bl	__Func_80923c4
	mov	r0, #0xa
	bl	__Func_809163c
	bl	__Func_8091750
.L1680:
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20095f0

.thumb_func_start OvlFunc_948_2009694
	push	{r5, lr}
	ldr	r2, =0x24a
	ldr	r3, =ewram_2000240
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	beq	.L1790
	bl	__Func_80916b0
	mov	r0, #0
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_8092064
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	mov	r0, #0xb
	bl	__Func_8092064
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L16d2
	ldr	r2, =0xfffff
	add	r3, r2
.L16d2:
	mov	r0, #0xb
	asr	r5, r3, #20
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L16e4
	ldr	r2, =0xfffff
	add	r3, r2
.L16e4:
	asr	r3, #20
	cmp	r5, r3
	ble	.L16f4
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809228c
.L16f4:
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L1704
	ldr	r2, =0xfffff
	add	r3, r2
.L1704:
	mov	r0, #0xb
	asr	r5, r3, #20
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L1716
	ldr	r2, =0xfffff
	add	r3, r2
.L1716:
	asr	r3, #20
	cmp	r5, r3
	bge	.L1728
	mov	r1, #8
	mov	r0, #0xb
	neg	r1, r1
	mov	r2, #0
	bl	__Func_809228c
.L1728:
	mov	r0, #0xb
	bl	__Func_80923c4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L1746
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__Func_8092128
.L1746:
	mov	r0, #0xb
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #4
	bl	__Func_809163c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xb
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0xac
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xb
	bl	__Func_8092128
	mov	r0, #0xb
	bl	__Func_80923c4
	mov	r0, #0xa
	bl	__Func_809163c
	bl	__Func_8091750
.L1790:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009694

.thumb_func_start OvlFunc_948_20097ac
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L17c2
	ldr	r2, =0xfffff
	add	r3, r2
.L17c2:
	ldr	r0, [r0, #0x10]
	asr	r3, #20
	mov	r8, r3
	cmp	r0, #0
	bge	.L17d0
	ldr	r3, =0xfffff
	add	r0, r3
.L17d0:
	ldr	r3, =iwram_3001ebc
	ldr	r2, =0x24a
	ldr	r5, =ewram_2000240
	ldr	r7, [r3]
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	asr	r6, r0, #20
	cmp	r3, #0xc
	beq	.L181e
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L181e
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L181e
	mov	r3, r8
	cmp	r3, #0x13
	bne	.L181e
	mov	r3, r6
	sub	r3, #0xf
	cmp	r3, #1
	bhi	.L181e
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_8079358
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0x60
	strh	r3, [r2]
.L181e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20097ac

.thumb_func_start OvlFunc_948_2009838
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_8092064
	mov	r0, #0xc
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_8092064
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L1870
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xc
	bl	__Func_8092128
.L1870:
	mov	r0, #0xc
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0xbc
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xc
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r1, #0x9c
	lsl	r1, #1
	mov	r2, #0xe8
	mov	r0, #0xc
	bl	__Func_8092128
	mov	r0, #0xc
	bl	__Func_80923c4
	bl	__Func_8091750
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_8079374
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009838

.thumb_func_start OvlFunc_948_20098c0
	ldr	r3, =REG_BLDALPHA
	mov	r2, #0xd0
	lsl	r2, #4
	strh	r2, [r3]
	bx	lr
.func_end OvlFunc_948_20098c0

.thumb_func_start OvlFunc_948_20098d0
	ldr	r2, =0x607
	ldr	r3, =REG_BLDALPHA
	strh	r2, [r3]
	bx	lr
.func_end OvlFunc_948_20098d0

.thumb_func_start OvlFunc_948_20098e0
	push	{lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_8092054
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bne	.L191e
	ldr	r0, =0x206
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1912
	mov	r3, #0x2d
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x2b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L1912:
	ldr	r0, =0x207
	bl	__Func_8079374
	bl	__Func_8093fa0
	b	.L1972
.L191e:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r3, r2
	bne	.L192c
	bl	__Func_8093e28
	b	.L1972
.L192c:
	cmp	r3, #0
	bne	.L195a
	ldr	r0, =0x206
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L194e
	mov	r3, #0x2d
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L194e:
	ldr	r0, =0x207
	bl	__Func_8079358
	bl	__Func_8093c00
	b	.L1972
.L195a:
	mov	r2, #0x80
	lsl	r2, #8
	cmp	r3, r2
	bne	.L1972
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.L196e
	bl	OvlFunc_948_2009b60
	b	.L1972
.L196e:
	bl	__Func_8093c00
.L1972:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20098e0


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_a48
	ldr	r0, =.L2970
	bx	lr
.func_end OvlFunc_a48

.thumb_func_start OvlFunc_a50
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x75
	cmp	r2, r3
	bne	.La68
	ldr	r0, =.L29b0
	b	.La7e
.La68:
	ldr	r3, =0x76
	cmp	r2, r3
	bne	.La72
	ldr	r0, =.L2a40
	b	.La7e
.La72:
	ldr	r3, =0x78
	cmp	r2, r3
	bne	.La7c
	ldr	r0, =.L2ad0
	b	.La7e
.La7c:
	ldr	r0, =.L2998
.La7e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_a50

.thumb_func_start OvlFunc_aa4
	bx	lr
.func_end OvlFunc_aa4

.thumb_func_start OvlFunc_aa8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, r0
	ldr	r3, [r5, #0x10]
	ldr	r0, [r2, #0x10]
	ldr	r1, [r2, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	__Func_44d0
	strh	r0, [r5, #6]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_aa8

.thumb_func_start OvlFunc_ad0
	push	{lr}
	ldr	r0, =0x9c8
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lb5e
	ldr	r0, =0x9c8
	bl	__Func_79358
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_93500
	bl	__Func_93530
	mov	r2, #0x14
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xf
	bl	__Func_92064
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #0xf
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #12
	mov	r1, #0x92
	mov	r2, #0xaa
	str	r3, [r0, #0x28]
	lsl	r1, #2
	mov	r0, #0xf
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_92adc
	bl	__Func_91750
.Lb5e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_ad0

.thumb_func_start OvlFunc_b68
	push	{r5, r6, lr}
	ldr	r0, =0x9c8
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lb76
	b	.Lcb4
.Lb76:
	ldr	r0, =0x9c9
	bl	__Func_79338
	mov	r6, r0
	cmp	r6, #0
	beq	.Lb84
	b	.Lcb4
.Lb84:
	ldr	r0, =0x9c9
	bl	__Func_79358
	bl	__Func_916b0
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_933d4
	mov	r0, #0xf
	mov	r1, #1
	bl	__Func_93500
	bl	__Func_93530
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xf
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xf
	bl	__Func_92064
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #0xf
	bl	__Func_92054
	mov	r3, #0xa0
	lsl	r3, #12
	mov	r1, #0x92
	mov	r2, #0xa6
	str	r3, [r0, #0x28]
	lsl	r1, #2
	mov	r0, #0xf
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xf
	lsl	r1, #7
	bl	__Func_92adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xf
	bl	__Func_93874
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xf
	lsl	r1, #12
	lsl	r2, #7
	bl	__Func_92064
	mov	r1, #0xa6
	mov	r2, #0xa6
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xba
	mov	r2, #0xa6
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xce
	mov	r2, #0xa6
	lsl	r1, #2
	lsl	r2, #2
	mov	r0, #0xf
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xd0
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_12330
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_12330
	mov	r0, #0x1e
	bl	__Func_9163c
	mov	r1, #0xde
	mov	r2, #0xa6
	lsl	r1, #18
	lsl	r2, #18
	mov	r0, #0xf
	bl	__Func_923e4
	mov	r0, #0xf
	bl	__Func_92054
	mov	r5, r0
	ldr	r2, [r5, #0x50]
	mov	r3, #0xf8
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r1, #0
	strh	r6, [r5, #6]
	bl	__Func_c344
	ldr	r1, =.L26fc
	mov	r0, r5
	bl	__Func_c2d8
	bl	__Func_91750
.Lcb4:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_b68

.thumb_func_start OvlFunc_ccc
	push	{r5, lr}
	ldr	r0, =0x9c9
	bl	__Func_79338
	cmp	r0, #0
	bne	.Lcda
	b	.Le30
.Lcda:
	ldr	r0, =0x9ca
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.Lce8
	b	.Le30
.Lce8:
	ldr	r0, =0x9ca
	bl	__Func_79358
	bl	__Func_916b0
	mov	r0, #0xf
	bl	__Func_92054
	ldr	r3, [r0, #0x50]
	mov	r1, #0x10
	strh	r5, [r3, #0x1e]
	bl	__Func_c344
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #0xf
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #12
	mov	r1, #0x80
	str	r3, [r0, #0x28]
	mov	r2, #0x1e
	mov	r0, #0xf
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__Func_93874
	mov	r1, #2
	mov	r0, #0xf
	bl	__Func_925cc
	mov	r0, #0x14
	bl	__Func_9163c
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xf
	bl	__Func_92064
	mov	r0, #0x98
	bl	__Func_f9080
	mov	r0, #0xf
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #11
	mov	r1, #0xdc
	mov	r2, #0xaa
	str	r3, [r0, #0x28]
	lsl	r2, #2
	lsl	r1, #2
	mov	r0, #0xf
	bl	__Func_921c4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r0, #0xf
	ldr	r1, =0x101
	bl	__Func_93874
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xf
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_92064
	mov	r1, #0xdc
	mov	r2, #0xae
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0xb0
	mov	r0, #0xf
	ldr	r1, =0x372
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xdc
	mov	r2, #0xb2
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0xb4
	mov	r0, #0xf
	ldr	r1, =0x36e
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xdc
	mov	r2, #0xb6
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0xb8
	mov	r0, #0xf
	ldr	r1, =0x372
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xdc
	mov	r2, #0xba
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r2, #0xbc
	mov	r0, #0xf
	ldr	r1, =0x36e
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xdc
	mov	r2, #0xbe
	mov	r0, #0xf
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_921c4
	mov	r1, #0xd6
	mov	r2, #0xce
	lsl	r1, #18
	lsl	r2, #18
	mov	r0, #0xf
	bl	__Func_923e4
	mov	r0, #0xa
	bl	__Func_9163c
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0xf
	lsl	r1, #8
	bl	__Func_92adc
	mov	r1, #0x80
	mov	r0, #0xf
	lsl	r1, #1
	bl	__Func_93874
	mov	r0, #0xf
	bl	__Func_92054
	ldr	r3, =OvlFunc_aa8
	str	r3, [r0, #0x6c]
	bl	__Func_91750
.Le30:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_ccc

.thumb_func_start OvlFunc_e50
	push	{r5, r6, lr}
	ldr	r3, =iwram_1ebc
	ldr	r0, =0x9ca
	ldr	r5, [r3]
	bl	__Func_79338
	cmp	r0, #0
	beq	.Leae
	ldr	r2, =0x24a
	ldr	r3, =ewram_240
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
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x30]
	mov	r0, #0xf
	str	r3, [r6, #0x30]
	bl	__Func_92054
	mov	r6, r0
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x30]
	sub	r5, #0x1e
	str	r3, [r6, #0x34]
	ldr	r2, =.L2808
	lsl	r5, #3
	add	r3, r5, #4
	ldr	r1, [r2, r5]
	mov	r0, #0xf
	ldr	r2, [r2, r3]
	bl	__Func_9218c
.Leae:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_e50

.thumb_func_start OvlFunc_ec8
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_924d4
	bl	__Func_91750
	pop	{r0}
	bx	r0
.func_end OvlFunc_ec8

.thumb_func_start OvlFunc_ee0
	push	{lr}
	ldr	r3, =ewram_240
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
.func_end OvlFunc_ee0

.thumb_func_start OvlFunc_f34
	push	{lr}
	bl	__Func_93c00
	pop	{r0}
	bx	r0
.func_end OvlFunc_f34

.thumb_func_start OvlFunc_f40
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
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	mov	r3, #0x28
	str	r3, [sp, #4]
	mov	r0, #0x4f
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_105d4
	mov	r0, #0x28
	bl	__Func_30f8
.Lf98:
	mov	r3, #0x28
	str	r3, [sp, #4]
	mov	r0, #0x50
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_105d4
	mov	r3, #0x29
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, #0x28
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x2a
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, #0x28
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_f40

.thumb_func_start OvlFunc_fdc
	push	{r5, lr}
	mov	r3, #0x80
	lsl	r3, #1
	and	r0, r3
	sub	sp, #8
	cmp	r0, #0
	beq	.L1028
	mov	r0, #0x9d
	bl	__Func_f9080
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_12330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_12330
	mov	r3, #0x46
	mov	r2, #0x31
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x54
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	bl	__Func_105d4
	mov	r0, #0x3c
	bl	__Func_30f8
.L1028:
	mov	r3, #0x46
	mov	r2, #0x31
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x55
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	bl	__Func_105d4
	mov	r3, #0x32
	str	r3, [sp, #4]
	mov	r5, #6
	mov	r0, #6
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	mov	r3, #0x33
	str	r3, [sp, #4]
	mov	r0, #6
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_fdc

.thumb_func_start OvlFunc_1070
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bne	.L10ae
	ldr	r0, =0x9c4
	bl	__Func_79338
	cmp	r0, #0
	bne	.L10ae
	mov	r0, #0xf3
	bl	__Func_78698
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L10ae
	ldr	r0, =0x9c4
	bl	__Func_79358
	mov	r0, #0x80
	lsl	r0, #1
	bl	OvlFunc_fdc
	mov	r0, #0xf3
	bl	__Func_789dc
.L10ae:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1070

.thumb_func_start OvlFunc_10b8
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bne	.L1100
	mov	r3, #0x9c
	lsl	r3, #4
	add	r5, r6, r3
	mov	r0, r5
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1100
	mov	r0, #0xf4
	bl	__Func_78698
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.L1100
	mov	r0, r5
	bl	__Func_79358
	mov	r0, #0x80
	lsl	r0, #1
	orr	r0, r6
	bl	OvlFunc_f40
	mov	r0, #0xf4
	bl	__Func_789dc
.L1100:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_10b8

.thumb_func_start OvlFunc_1108
	push	{lr}
	mov	r0, #0
	bl	OvlFunc_10b8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1108

.thumb_func_start OvlFunc_1114
	push	{lr}
	mov	r0, #1
	bl	OvlFunc_10b8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1114

.thumb_func_start OvlFunc_1120
	push	{r5, lr}
	mov	r0, #2
	bl	OvlFunc_10b8
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #7
	cmp	r3, r2
	bne	.L1152
	ldr	r3, =iwram_1ebc
	mov	r2, #0xce
	ldr	r3, [r3]
	lsl	r2, #1
	add	r5, r3, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xc
	ble	.L1152
	bl	__Func_93c00
	mov	r3, #0
	strh	r3, [r5]
.L1152:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1120

.thumb_func_start OvlFunc_115c
	push	{r5, lr}
	mov	r0, #3
	bl	OvlFunc_10b8
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #7
	cmp	r3, r2
	bne	.L118e
	ldr	r3, =iwram_1ebc
	mov	r2, #0xce
	ldr	r3, [r3]
	lsl	r2, #1
	add	r5, r3, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0xc
	ble	.L118e
	bl	__Func_93c00
	mov	r3, #0
	strh	r3, [r5]
.L118e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_115c

.thumb_func_start OvlFunc_1198
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
	bl	__Func_105d4
	ldr	r0, =0xeeb
	bl	__Func_79338
	cmp	r0, #0
	bne	.L11c8
	mov	r1, #0xcc
	mov	r2, #0xc2
	mov	r0, #0xc
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_923e4
.L11c8:
	mov	r0, #1
	bl	__Func_9163c
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1198

.thumb_func_start OvlFunc_11d8
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
	bl	__Func_105d4
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #12
	lsl	r2, #12
	bl	__Func_923e4
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_11d8

.thumb_func_start OvlFunc_1204
	push	{lr}
	mov	r0, #0xf4
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #0xf4
	bl	__Func_91a58
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r0, =0xee7
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_1204

.thumb_func_start OvlFunc_1238
	push	{lr}
	mov	r0, #0xf4
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #0xf4
	bl	__Func_91a58
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r0, =0xee8
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_1238

.thumb_func_start OvlFunc_126c
	push	{lr}
	mov	r0, #0xf4
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #0xf4
	bl	__Func_91a58
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r0, =0xee9
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_126c

.thumb_func_start OvlFunc_12a0
	push	{lr}
	mov	r0, #0xf4
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #0xf4
	bl	__Func_91a58
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r0, =0xeea
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_12a0

.thumb_func_start OvlFunc_12d4
	push	{lr}
	mov	r0, #0xf3
	mov	r1, #3
	bl	__Func_8f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_924d4
	mov	r1, #0
	mov	r0, #0xf3
	bl	__Func_91a58
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r0, =0xeeb
	bl	__Func_79358
	pop	{r0}
	bx	r0
.func_end OvlFunc_12d4

.thumb_func_start OvlFunc_1308
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__Func_92054
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
	ldr	r3, =iwram_1ebc
	mov	r0, #0x88
	lsl	r0, #2
	ldr	r7, [r3]
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1376
	ldr	r2, =ewram_240
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
	bl	__Func_79358
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0x5b
	strh	r3, [r2]
.L1376:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1308

.thumb_func_start OvlFunc_138c
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	ldr	r1, =0x1e666
	ldr	r2, =0xf333
	bl	__Func_92064
	mov	r0, #8
	ldr	r1, =0x1e666
	ldr	r2, =0xf333
	bl	__Func_92064
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L13c4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #8
	bl	__Func_92128
.L13c4:
	mov	r0, #8
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #8
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0xb4
	lsl	r1, #1
	mov	r2, #0x98
	mov	r0, #8
	bl	__Func_92128
	mov	r0, #8
	bl	__Func_923c4
	bl	__Func_91750
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_79374
	pop	{r0}
	bx	r0
.func_end OvlFunc_138c

.thumb_func_start OvlFunc_141c
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__Func_92054
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
	ldr	r3, =iwram_1ebc
	mov	r0, #0x88
	lsl	r0, #2
	ldr	r6, [r3]
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1486
	ldr	r2, =ewram_240
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
	bl	__Func_79358
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0x5c
	strh	r3, [r2]
.L1486:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_141c

.thumb_func_start OvlFunc_149c
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_92064
	mov	r0, #9
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_92064
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L14d4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #9
	bl	__Func_92128
.L14d4:
	mov	r0, #9
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #4
	bl	__Func_9163c
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #9
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r2, #0x84
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #9
	bl	__Func_92128
	mov	r0, #9
	bl	__Func_923c4
	bl	__Func_91750
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_79374
	pop	{r0}
	bx	r0
.func_end OvlFunc_149c

.thumb_func_start OvlFunc_152c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r0, #0
	bl	__Func_92054
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
	ldr	r3, =ewram_240
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
	bl	__Func_92064
	mov	r0, #0xbc
	bl	__Func_f9080
	lsl	r1, r6, #4
	mov	r2, #0xb4
	lsl	r2, #1
	add	r1, #8
	mov	r0, r5
	bl	__Func_92128
	mov	r2, r8
	mov	r3, r10
	str	r6, [r2, r7]
	cmp	r3, #0x16
	bgt	.L15aa
	mov	r0, #0
	mov	r1, #0
	mov	r2, #8
	bl	__Func_9228c
.L15aa:
	mov	r0, #0
	bl	__Func_923c4
.L15b0:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_152c

.thumb_func_start OvlFunc_15cc
	push	{lr}
	mov	r0, #0
	bl	OvlFunc_152c
	pop	{r0}
	bx	r0
.func_end OvlFunc_15cc

.thumb_func_start OvlFunc_15d8
	push	{lr}
	mov	r0, #1
	bl	OvlFunc_152c
	pop	{r0}
	bx	r0
.func_end OvlFunc_15d8

.thumb_func_start OvlFunc_15e4
	push	{lr}
	mov	r0, #2
	bl	OvlFunc_152c
	pop	{r0}
	bx	r0
.func_end OvlFunc_15e4

.thumb_func_start OvlFunc_15f0
	push	{lr}
	ldr	r2, =0x24a
	ldr	r3, =ewram_240
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	beq	.L1680
	bl	__Func_916b0
	mov	r0, #0
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_92064
	mov	r0, #0xa
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_92064
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1636
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xa
	bl	__Func_92128
.L1636:
	mov	r0, #0xa
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xa
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0x84
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xa
	bl	__Func_92128
	mov	r0, #0xa
	bl	__Func_923c4
	mov	r0, #0xa
	bl	__Func_9163c
	bl	__Func_91750
.L1680:
	pop	{r0}
	bx	r0
.func_end OvlFunc_15f0

.thumb_func_start OvlFunc_1694
	push	{r5, lr}
	ldr	r2, =0x24a
	ldr	r3, =ewram_240
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	beq	.L1790
	bl	__Func_916b0
	mov	r0, #0
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_92064
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	mov	r0, #0xb
	bl	__Func_92064
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L16d2
	ldr	r2, =0xfffff
	add	r3, r2
.L16d2:
	mov	r0, #0xb
	asr	r5, r3, #20
	bl	__Func_92054
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
	bl	__Func_9228c
.L16f4:
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L1704
	ldr	r2, =0xfffff
	add	r3, r2
.L1704:
	mov	r0, #0xb
	asr	r5, r3, #20
	bl	__Func_92054
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
	bl	__Func_9228c
.L1728:
	mov	r0, #0xb
	bl	__Func_923c4
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1746
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__Func_92128
.L1746:
	mov	r0, #0xb
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #4
	bl	__Func_9163c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xb
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0xac
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xb
	bl	__Func_92128
	mov	r0, #0xb
	bl	__Func_923c4
	mov	r0, #0xa
	bl	__Func_9163c
	bl	__Func_91750
.L1790:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1694

.thumb_func_start OvlFunc_17ac
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	bl	__Func_92054
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
	ldr	r3, =iwram_1ebc
	ldr	r2, =0x24a
	ldr	r5, =ewram_240
	ldr	r7, [r3]
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	asr	r6, r0, #20
	cmp	r3, #0xc
	beq	.L181e
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_79338
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
	bl	__Func_79358
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
.func_end OvlFunc_17ac

.thumb_func_start OvlFunc_1838
	push	{lr}
	bl	__Func_916b0
	mov	r0, #0
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_92064
	mov	r0, #0xc
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__Func_92064
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r0, #0
	bl	__Func_92054
	cmp	r0, #0
	beq	.L1870
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xc
	bl	__Func_92128
.L1870:
	mov	r0, #0xc
	bl	__Func_923c4
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__Func_9228c
	mov	r0, #0xbc
	bl	__Func_f9080
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xc
	bl	__Func_9228c
	mov	r0, #0
	bl	__Func_923c4
	mov	r1, #0x9c
	lsl	r1, #1
	mov	r2, #0xe8
	mov	r0, #0xc
	bl	__Func_92128
	mov	r0, #0xc
	bl	__Func_923c4
	bl	__Func_91750
	mov	r0, #0x88
	lsl	r0, #2
	bl	__Func_79374
	pop	{r0}
	bx	r0
.func_end OvlFunc_1838

.thumb_func_start OvlFunc_18c0
	ldr	r3, =REG_BLDALPHA
	mov	r2, #0xd0
	lsl	r2, #4
	strh	r2, [r3]
	bx	lr
.func_end OvlFunc_18c0

.thumb_func_start OvlFunc_18d0
	ldr	r2, =0x607
	ldr	r3, =REG_BLDALPHA
	strh	r2, [r3]
	bx	lr
.func_end OvlFunc_18d0

.thumb_func_start OvlFunc_18e0
	push	{lr}
	mov	r0, #0
	sub	sp, #8
	bl	__Func_92054
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bne	.L191e
	ldr	r0, =0x206
	bl	__Func_79338
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
	bl	__Func_10704
.L1912:
	ldr	r0, =0x207
	bl	__Func_79374
	bl	__Func_93fa0
	b	.L1972
.L191e:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r3, r2
	bne	.L192c
	bl	__Func_93e28
	b	.L1972
.L192c:
	cmp	r3, #0
	bne	.L195a
	ldr	r0, =0x206
	bl	__Func_79338
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
	bl	__Func_10704
.L194e:
	ldr	r0, =0x207
	bl	__Func_79358
	bl	__Func_93c00
	b	.L1972
.L195a:
	mov	r2, #0x80
	lsl	r2, #8
	cmp	r3, r2
	bne	.L1972
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.L196e
	bl	OvlFunc_1b60
	b	.L1972
.L196e:
	bl	__Func_93c00
.L1972:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_18e0

.thumb_func_start OvlFunc_1980
	bx	lr
.func_end OvlFunc_1980

.thumb_func_start OvlFunc_1984
	push	{r5, lr}
	mov	r0, #0xd
	sub	sp, #8
	bl	__Func_92054
	mov	r3, #0x28
	mov	r2, #0x37
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x36
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	cmp	r5, #0
	beq	.L19bc
	mov	r0, #0xd
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	mov	r2, r5
	strb	r3, [r0]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L19bc:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1984

.thumb_func_start OvlFunc_19cc
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	ldrh	r3, [r0, #6]
	cmp	r3, #0
	bne	.L19e0
	bl	__Func_93c00
	b	.L19e4
.L19e0:
	bl	OvlFunc_1b60
.L19e4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_19cc

.thumb_func_start OvlFunc_19e8
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x28
	str	r3, [sp]
	mov	r5, #0x2a
	mov	r0, #0x39
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x29
	str	r3, [sp]
	mov	r0, #0x39
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0x3a
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x25
	str	r3, [sp]
	mov	r1, #0x25
	mov	r2, #3
	mov	r3, #1
	mov	r0, #0x3e
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x55
	strb	r3, [r0]
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_19e8

.thumb_func_start OvlFunc_1a48
	push	{lr}
	sub	sp, #8
	mov	r3, #0x2a
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x29
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x3a
	bl	__Func_10704
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a48

.thumb_func_start OvlFunc_1a70
	push	{lr}
	sub	sp, #8
	mov	r3, #0x29
	mov	r2, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x2c
	bl	__Func_10704
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a70

.thumb_func_start OvlFunc_1a9c
	push	{lr}
	sub	sp, #8
	mov	r3, #0x28
	mov	r2, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x27
	bl	__Func_10704
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1a9c

.thumb_func_start OvlFunc_1ac8
	push	{r5, r6, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__Func_92054
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0xc]
	cmp	r3, #0
	bge	.L1ade
	ldr	r1, =0xfffff
	add	r3, r1
.L1ade:
	asr	r5, r3, #20
	cmp	r2, #0
	bne	.L1af0
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
.L1af0:
	bl	OvlFunc_19e8
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #3
	add	r0, #0x55
	mov	r6, #0
	strb	r3, [r0]
	cmp	r5, #0x28
	bne	.L1b0c
	bl	OvlFunc_1a9c
	b	.L1b54
.L1b0c:
	cmp	r5, #0x2a
	bne	.L1b16
	bl	OvlFunc_1a48
	b	.L1b54
.L1b16:
	cmp	r5, #0x29
	bne	.L1b20
	bl	OvlFunc_1a70
	b	.L1b54
.L1b20:
	cmp	r5, #0x27
	beq	.L1b2c
	cmp	r5, #0x26
	beq	.L1b2c
	cmp	r5, #0x25
	bne	.L1b54
.L1b2c:
	mov	r3, #0x2a
	str	r3, [sp, #4]
	mov	r1, #0x24
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x3d
	str	r5, [sp]
	bl	__Func_10704
	mov	r0, #8
	bl	__Func_92054
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #8
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
.L1b54:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ac8

.thumb_func_start OvlFunc_1b60
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #8
	bl	__Func_92054
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L1b7a
	ldr	r2, =0xfffff
	add	r3, r2
.L1b7a:
	ldr	r0, [r0, #8]
	asr	r3, #20
	cmp	r0, #0
	bge	.L1b86
	ldr	r2, =0xfffff
	add	r0, r2
.L1b86:
	asr	r0, #20
	cmp	r3, #0x26
	bne	.L1bae
	cmp	r0, #0x26
	beq	.L1bae
	mov	r3, #0xc0
	ldrh	r0, [r5, #6]
	lsl	r3, #8
	cmp	r0, r3
	bne	.L1ba0
	bl	__Func_93fa0
	b	.L1bba
.L1ba0:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r0, r2
	bne	.L1bae
	bl	__Func_93e28
	b	.L1bba
.L1bae:
	bl	OvlFunc_19e8
	bl	OvlFunc_c4
	bl	OvlFunc_1ac8
.L1bba:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1b60

.thumb_func_start OvlFunc_1bc4
	push	{lr}
	ldr	r0, =OvlFunc_1e94
	sub	sp, #8
	bl	__Func_4278
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_923e4
	ldr	r0, =0x207
	bl	__Func_79338
	cmp	r0, #0
	beq	.L1bf8
	mov	r3, #0x2d
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
	b	.L1c0c
.L1bf8:
	mov	r3, #0x2d
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x2b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_10704
.L1c0c:
	bl	OvlFunc_1ec0
	ldr	r0, =0x206
	bl	__Func_79358
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1bc4

.thumb_func_start OvlFunc_1c28
	push	{lr}
	mov	r0, #9
	bl	__Func_92054
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L1c3a
	ldr	r2, =0xfffff
	add	r3, r2
.L1c3a:
	ldr	r0, [r0, #0x10]
	asr	r3, #20
	cmp	r0, #0
	bge	.L1c46
	ldr	r2, =0xfffff
	add	r0, r2
.L1c46:
	asr	r0, #20
	cmp	r3, #0x2d
	bne	.L1c54
	cmp	r0, #0x2b
	bne	.L1c54
	bl	OvlFunc_1bc4
.L1c54:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c28

.thumb_func_start OvlFunc_1c5c
	push	{lr}
	bl	OvlFunc_c4
	bl	OvlFunc_1c28
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c5c

.thumb_func_start OvlFunc_1c6c
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x26
	str	r3, [sp]
	mov	r5, #0x37
	mov	r0, #0x26
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x2a
	str	r3, [sp]
	mov	r0, #0x2a
	mov	r1, #0x38
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1c6c

.thumb_func_start OvlFunc_1ca0
	push	{lr}
	sub	sp, #8
	mov	r3, #0x26
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x36
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x28
	bl	__Func_10704
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ca0

.thumb_func_start OvlFunc_1ccc
	push	{lr}
	sub	sp, #8
	mov	r3, #0x2a
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x36
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x28
	bl	__Func_10704
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ccc

.thumb_func_start OvlFunc_1cf8
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bge	.L1d0a
	ldr	r2, =0xfffff
	add	r3, r2
.L1d0a:
	asr	r7, r3, #20
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L1d16
	ldr	r2, =0xfffff
	add	r3, r2
.L1d16:
	ldr	r0, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.L1d22
	ldr	r3, =0xfffff
	add	r0, r3
.L1d22:
	asr	r5, r0, #20
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	bne	.L1d40
	cmp	r7, #2
	bgt	.L1d40
	bl	OvlFunc_1ca0
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__Func_79358
.L1d40:
	cmp	r5, #0x37
	bne	.L1d56
	cmp	r6, #0x2a
	bne	.L1d4c
	bl	OvlFunc_1ccc
.L1d4c:
	cmp	r6, #0x26
	bne	.L1d5a
	bl	OvlFunc_1ca0
	b	.L1d5a
.L1d56:
	bl	OvlFunc_1c6c
.L1d5a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1cf8

.thumb_func_start OvlFunc_1d64
	push	{lr}
	bl	OvlFunc_1c6c
	bl	OvlFunc_c4
	bl	OvlFunc_1cf8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d64

.thumb_func_start OvlFunc_1d78
	push	{lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #7
	cmp	r3, r2
	bne	.L1d96
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_92708
	b	.L1d9a
.L1d96:
	bl	OvlFunc_1d64
.L1d9a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1d78

.thumb_func_start OvlFunc_1da0
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x31
	str	r3, [sp]
	mov	r5, #0x37
	mov	r0, #0x30
	mov	r1, #0x37
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x32
	str	r3, [sp]
	mov	r0, #0x30
	mov	r1, #0x37
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x33
	str	r3, [sp]
	mov	r0, #0x30
	mov	r1, #0x37
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r3, #0x34
	str	r3, [sp]
	mov	r0, #0x30
	mov	r1, #0x37
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1da0

.thumb_func_start OvlFunc_1df8
	push	{r5, lr}
	sub	sp, #8
	bl	OvlFunc_1da0
	mov	r0, #0xb
	bl	__Func_92054
	ldr	r0, [r0, #8]
	cmp	r0, #0
	bge	.L1e10
	ldr	r3, =0xfffff
	add	r0, r3
.L1e10:
	asr	r0, #20
	str	r0, [sp]
	mov	r1, #0x37
	mov	r0, #0x35
	mov	r2, #1
	mov	r3, #1
	mov	r5, #0x37
	str	r5, [sp, #4]
	bl	__Func_10704
	mov	r0, #0xc
	bl	__Func_92054
	ldr	r0, [r0, #8]
	cmp	r0, #0
	bge	.L1e34
	ldr	r3, =0xfffff
	add	r0, r3
.L1e34:
	asr	r0, #20
	str	r0, [sp]
	mov	r1, #0x37
	mov	r0, #0x35
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1df8

.thumb_func_start OvlFunc_1e54
	push	{lr}
	bl	OvlFunc_1df8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e54

.thumb_func_start OvlFunc_1e60
	push	{lr}
	bl	OvlFunc_1da0
	bl	OvlFunc_c4
	bl	OvlFunc_1e54
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e60

.thumb_func_start OvlFunc_1e74
	push	{lr}
	bl	OvlFunc_1df8
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e74

.thumb_func_start OvlFunc_1e80
	push	{lr}
	bl	OvlFunc_1da0
	bl	OvlFunc_c4
	bl	OvlFunc_1e74
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e80

.thumb_func_start OvlFunc_1e94
	push	{r5, lr}
	mov	r0, #0xe
	bl	__Func_92054
	mov	r5, r0
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r5, #0xc]
	ldr	r3, [r0, #8]
	str	r3, [r5, #8]
	mov	r2, #0x80
	ldr	r3, [r0, #0x10]
	lsl	r2, #9
	add	r3, r2
	str	r3, [r5, #0x10]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1e94

.thumb_func_start OvlFunc_1ec0
	push	{lr}
	mov	r0, #9
	bl	__Func_92054
	mov	r3, #0x80
	ldr	r2, [r0, #0x10]
	lsl	r3, #9
	ldr	r1, [r0, #8]
	add	r2, r3
	mov	r0, #0x6b
	bl	__Func_8edac
	pop	{r0}
	bx	r0
.func_end OvlFunc_1ec0

.thumb_func_start OvlFunc_1edc
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_92054
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	cmp	r3, r2
	ble	.L1f18
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #2
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.L1f10
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x23
	strb	r5, [r0]
.L1f10:
	mov	r0, #0xb
	bl	__Func_92054
	b	.L1f60
.L1f18:
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.L1f44
	mov	r0, #0
	bl	__Func_92054
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.L1f34
	ldr	r2, =0xfffff
	add	r3, r2
.L1f34:
	asr	r3, #20
	cmp	r3, #0x38
	ble	.L1f44
	mov	r0, #0xa
	mov	r1, #3
	bl	__Func_92b08
	b	.L1f58
.L1f44:
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_92b08
	mov	r0, #0xa
	bl	__Func_92054
	mov	r3, #1
	add	r0, #0x23
	strb	r3, [r0]
.L1f58:
	mov	r0, #0xb
	bl	__Func_92054
	mov	r5, #0
.L1f60:
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #0xc
	bl	__Func_92054
	add	r0, #0x23
	strb	r5, [r0]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_1edc

.thumb_func_start OvlFunc_1f78
	push	{r5, lr}
	ldr	r3, =iwram_1ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r3, =ewram_240
	add	r5, r3, r2
	mov	r3, #0
	ldrsh	r2, [r5, r3]
	ldr	r3, =0x75
	ldrh	r1, [r5]
	cmp	r2, r3
	bne	.L1f9e
	bl	OvlFunc_2188
	ldrh	r1, [r5]
.L1f9e:
	lsl	r3, r1, #16
	ldr	r2, =0x76
	asr	r3, #16
	cmp	r3, r2
	bne	.L1fae
	bl	OvlFunc_2290
	ldrh	r1, [r5]
.L1fae:
	lsl	r3, r1, #16
	ldr	r2, =0x78
	asr	r3, #16
	cmp	r3, r2
	bne	.L1fbc
	bl	OvlFunc_2334
.L1fbc:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_1f78

.thumb_func_start OvlFunc_1fd8
	push	{lr}
	ldr	r2, =.L2f80
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0x10
	ble	.L1fea
	mov	r3, #0
	str	r3, [r2]
.L1fea:
	ldr	r3, [r2]
	sub	r3, #2
	cmp	r3, #0xa
	bhi	.L20a8
	ldr	r2, =.L1ffc
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L1ffc:
	.word	.L20a0
	.word	.L20a8
	.word	.L2096
	.word	.L20a8
	.word	.L2092
	.word	.L20a8
	.word	.L208e
	.word	.L20a8
	.word	.L208a
	.word	.L20a8
	.word	.L2028
.L2028:
	ldr	r0, =0xee7
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2040
	mov	r1, #0xe8
	mov	r2, #0xda
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
.L2040:
	ldr	r0, =0xee8
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2058
	mov	r1, #0x94
	mov	r2, #0xce
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_923e4
.L2058:
	ldr	r0, =0xee9
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2070
	mov	r1, #0xa4
	mov	r2, #0xbe
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_923e4
.L2070:
	ldr	r0, =0xeea
	bl	__Func_79338
	cmp	r0, #0
	bne	.L20a8
	mov	r1, #0xb4
	mov	r2, #0xda
	mov	r0, #0xb
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_923e4
	b	.L20a8
.L208a:
	mov	r0, #8
	b	.L2098
.L208e:
	mov	r0, #9
	b	.L2098
.L2092:
	mov	r0, #0xa
	b	.L2098
.L2096:
	mov	r0, #0xb
.L2098:
	mov	r1, #0
	bl	OvlFunc_20c4
	b	.L20a8
.L20a0:
	mov	r0, #0xc
	mov	r1, #1
	bl	OvlFunc_20c4
.L20a8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_1fd8

.thumb_func_start OvlFunc_20c4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	mov	r9, r1
	bl	__Func_92054
	mov	r6, r0
	cmp	r6, #0
	beq	.L2178
	mov	r3, r6
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r10, r3
	cmp	r3, #1
	bne	.L2178
	mov	r1, #0xc1
	lsl	r1, #3
	mov	r0, #0x11
	ldr	r7, [r6, #0x50]
	bl	__Func_48b0
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #3
	mov	r2, #0
	add	r5, r3
	mov	r0, sp
	mov	r8, r2
	str	r2, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000020
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r9
	bl	__Func_1a370
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r7, #0x1c]
	bl	__Func_3fa4
	mov	r5, r0
	mov	r0, #0x11
	bl	__Func_2dd8
	mov	r3, r6
	add	r3, #0x5c
	mov	r2, r10
	strb	r2, [r3]
	ldr	r0, [r7, #0x28]
	bl	__Func_bc48
	mov	r3, r8
	str	r3, [r7, #0x28]
	mov	r3, r7
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r2, [r7, #5]
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r2
	strb	r3, [r7, #5]
	ldr	r3, .L2168	@ 0x3ff
	ldrh	r2, [r7, #8]
	and	r5, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r5
	strh	r3, [r7, #8]
	mov	r3, r7
	add	r3, #0x25
	mov	r2, r8
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	b	.L2178

	.align	2, 0
.L2168:
	.word	0x3ff
	.pool

.L2178:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_20c4

.thumb_func_start OvlFunc_2188
	push	{lr}
	mov	r0, #1
	bl	__Func_30f8
	mov	r0, #0xc
	mov	r1, #0xf3
	bl	OvlFunc_20c4
	mov	r0, #0xb
	mov	r1, #0xf4
	bl	OvlFunc_20c4
	mov	r0, #0xa
	mov	r1, #0xf4
	bl	OvlFunc_20c4
	mov	r0, #9
	mov	r1, #0xf4
	bl	OvlFunc_20c4
	mov	r0, #8
	mov	r1, #0xf4
	bl	OvlFunc_20c4
	ldr	r0, =0xee7
	bl	__Func_79338
	cmp	r0, #0
	bne	.L21d0
	mov	r1, #0xe8
	mov	r2, #0xda
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #18
	bl	__Func_923e4
.L21d0:
	ldr	r0, =0xee8
	bl	__Func_79338
	cmp	r0, #0
	bne	.L21e8
	mov	r1, #0x94
	mov	r2, #0xce
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_923e4
.L21e8:
	ldr	r0, =0xee9
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2200
	mov	r1, #0xa4
	mov	r2, #0xbe
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_923e4
.L2200:
	ldr	r0, =0xeea
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2218
	mov	r1, #0xb4
	mov	r2, #0xda
	mov	r0, #0xb
	lsl	r1, #17
	lsl	r2, #18
	bl	__Func_923e4
.L2218:
	mov	r0, #0x9c
	lsl	r0, #4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L222a
	mov	r0, #0
	bl	OvlFunc_f40
.L222a:
	ldr	r0, =0x9c1
	bl	__Func_79338
	cmp	r0, #0
	beq	.L223a
	mov	r0, #1
	bl	OvlFunc_f40
.L223a:
	ldr	r0, =0x9c2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L224a
	mov	r0, #2
	bl	OvlFunc_f40
.L224a:
	ldr	r0, =0x9c3
	bl	__Func_79338
	cmp	r0, #0
	beq	.L225a
	mov	r0, #3
	bl	OvlFunc_f40
.L225a:
	ldr	r0, =0x9c4
	bl	__Func_79338
	cmp	r0, #0
	beq	.L226a
	mov	r0, #0
	bl	OvlFunc_fdc
.L226a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_2188

.thumb_func_start OvlFunc_2290
	push	{r5, lr}
	mov	r0, #8
	bl	__Func_92054
	mov	r5, #1
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #9
	bl	__Func_92054
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__Func_92054
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #8
	bl	__Func_92054
	ldr	r5, =0xb333
	str	r5, [r0, #0x18]
	mov	r0, #9
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #0xa
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #0xb
	bl	__Func_92054
	str	r5, [r0, #0x18]
	mov	r0, #0xc
	bl	__Func_92054
	mov	r1, #0xc8
	str	r5, [r0, #0x18]
	lsl	r1, #4
	ldr	r0, =OvlFunc_17ac
	bl	__Func_41d8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_141c
	bl	__Func_41d8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_1308
	bl	__Func_41d8
	ldr	r2, =0x3f42
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	ldr	r2, =0x607
	add	r3, #2
	strh	r2, [r3]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2290

.thumb_func_start OvlFunc_2334
	push	{r5, lr}
	mov	r0, #0xe
	bl	__Func_92054
	mov	r5, #0
	add	r0, #0x55
	mov	r1, #0xc8
	strb	r5, [r0]
	lsl	r1, #4
	ldr	r0, =OvlFunc_1e94
	bl	__Func_41d8
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_1edc
	bl	__Func_41d8
	mov	r0, #0x6b
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8edac
	ldr	r0, =0xed9
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2372
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_924d4
.L2372:
	bl	OvlFunc_1ac8
	bl	OvlFunc_1c28
	bl	OvlFunc_1cf8
	bl	OvlFunc_1e54
	bl	OvlFunc_1e74
	mov	r1, #3
	mov	r0, #8
	bl	__Func_92b08
	mov	r0, #0xb
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xc
	bl	__Func_92054
	add	r0, #0x55
	strb	r5, [r0]
	bl	OvlFunc_1df8
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_79338
	cmp	r0, #0
	beq	.L23be
	bl	OvlFunc_1984
	mov	r0, #0xd
	mov	r1, #5
	bl	__Func_924d4
.L23be:
	ldr	r0, =0x109
	bl	__Func_79338
	cmp	r0, #0
	bne	.L2440
	ldr	r0, =0x9ca
	bl	__Func_79338
	mov	r5, r0
	cmp	r5, #0
	beq	.L23ee
	mov	r1, #0xd6
	mov	r2, #0xce
	mov	r0, #0xf
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #0xf
	bl	__Func_92054
	ldr	r3, =OvlFunc_aa8
	str	r3, [r0, #0x6c]
	b	.L2440
.L23ee:
	ldr	r0, =0x9c9
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2418
	mov	r1, #0xde
	mov	r2, #0xa6
	lsl	r1, #18
	mov	r0, #0xf
	lsl	r2, #18
	bl	__Func_923e4
	mov	r0, #0xf
	bl	__Func_92054
	ldr	r3, [r0, #0x50]
	mov	r1, #0x10
	strh	r5, [r3, #0x1e]
	bl	__Func_c344
	b	.L2440
.L2418:
	ldr	r0, =0x9c8
	bl	__Func_79338
	cmp	r0, #0
	beq	.L2432
	mov	r1, #0x92
	mov	r2, #0xaa
	mov	r0, #0xf
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
	b	.L2440
.L2432:
	mov	r1, #0x92
	mov	r2, #0xa6
	mov	r0, #0xf
	lsl	r1, #18
	lsl	r2, #18
	bl	__Func_923e4
.L2440:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_2334

	.section .data
	.global .L2644
	.global .L2684
	.global .L269c
	.global .L2868
	.global .L2898
	.global .L28e0
	.global .L2928

.L2644:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2644, (0x2684-0x2644)
.L2684:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2684, (0x269c-0x2684)
.L269c:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x269c, (0x26fc-0x269c)
.L26fc:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x26fc, (0x2808-0x26fc)
.L2808:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2808, (0x2868-0x2808)
.L2868:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2868, (0x2898-0x2868)
.L2898:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2898, (0x28e0-0x2898)
.L28e0:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x28e0, (0x2928-0x28e0)
.L2928:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2928, (0x2970-0x2928)
.L2970:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2970, (0x2998-0x2970)
.L2998:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2998, (0x29b0-0x2998)
.L29b0:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x29b0, (0x2a40-0x29b0)
.L2a40:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2a40, (0x2ad0-0x2a40)
.L2ad0:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2ad0, (0x2ba8-0x2ad0)
.L2ba8:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2ba8, (0x2bb4-0x2ba8)
.L2bb4:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2bb4, (0x2cb0-0x2bb4)
.L2cb0:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2cb0, (0x2dac-0x2cb0)
.L2dac:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2dac, (0x2f74-0x2dac)
.L2f74:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2f74, (0x2f80-0x2f74)
.L2f80:
	.incbin "overlays/rom_7d30e0/orig.bin", 0x2f80

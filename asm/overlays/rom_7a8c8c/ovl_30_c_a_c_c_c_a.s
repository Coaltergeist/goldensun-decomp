	.include "macros.inc"

.thumb_func_start OvlFunc_922_20086c0
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x309
	bl	__Func_8079374
	mov	r1, #0x60
	mov	r2, #0
	mov	r0, #8
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20086c0

.thumb_func_start OvlFunc_922_20086fc
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0x20
	neg	r1, r1
	mov	r2, #0
	mov	r0, #9
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x30a
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20086fc

.thumb_func_start OvlFunc_922_2008734
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0x20
	mov	r2, #0
	mov	r0, #9
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x30a
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008734

.thumb_func_start OvlFunc_922_2008768
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L7a4
	mov	r2, #0x40
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x30d
	bl	__Func_8079374
	ldr	r0, =0x30e
	bl	__Func_8079374
	b	.L7ca
.L7a4:
	mov	r2, #0x80
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079358
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079374
	ldr	r0, =0x30e
	bl	__Func_8079374
.L7ca:
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008768

.thumb_func_start OvlFunc_922_20087f0
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L824
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x30d
	bl	__Func_8079374
	b	.L878
.L824:
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L850
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x30d
	bl	__Func_8079374
	b	.L878
.L850:
	ldr	r0, =0x311
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L880
	mov	r1, #0
	mov	r2, #0x40
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079358
.L878:
	ldr	r0, =0x30e
	bl	__Func_8079374
	b	.L8a4
.L880:
	mov	r1, #0
	mov	r2, #0x80
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079374
	ldr	r0, =0x30e
	bl	__Func_8079374
.L8a4:
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20087f0

.thumb_func_start OvlFunc_922_20088cc
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x30b
	bl	__Func_8079358
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079374
	ldr	r0, =0x30e
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20088cc

.thumb_func_start OvlFunc_922_2008920
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	ldr	r0, =0x311
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L952
	mov	r1, #0
	mov	r2, #0x30
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079358
	b	.L97c
.L952:
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L984
	mov	r1, #0
	mov	r2, #0x20
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x30d
	bl	__Func_8079374
.L97c:
	ldr	r0, =0x30e
	bl	__Func_8079374
	b	.L9a8
.L984:
	mov	r1, #0
	mov	r2, #0x70
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079374
	ldr	r0, =0x30e
	bl	__Func_8079374
.L9a8:
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008920

.thumb_func_start OvlFunc_922_20089d0
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r2, #0x40
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x30b
	bl	__Func_8079358
	ldr	r0, =0x30d
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20089d0

.thumb_func_start OvlFunc_922_2008a10
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x40
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079374
	ldr	r0, =0x30e
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008a10

.thumb_func_start OvlFunc_922_2008a60
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r2, #0x50
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x30b
	bl	__Func_8079358
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079374
	ldr	r0, =0x30e
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008a60

.thumb_func_start OvlFunc_922_2008ab4
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x40
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x30b
	bl	__Func_8079374
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x30d
	bl	__Func_8079374
	ldr	r0, =0x30e
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008ab4

.thumb_func_start OvlFunc_922_2008b04
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lb22
	ldr	r0, =0x30d
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb44
.Lb22:
	mov	r2, #0x40
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30f
	bl	__Func_8079374
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x311
	bl	__Func_8079358
	b	.Lb70
.Lb44:
	mov	r0, #0xc3
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb78
	mov	r2, #0x70
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30f
	bl	__Func_8079374
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x311
	bl	__Func_8079374
.Lb70:
	ldr	r0, =0x312
	bl	__Func_8079374
	b	.Lb9e
.Lb78:
	mov	r2, #0x80
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	ldr	r0, =0x30f
	bl	__Func_8079358
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x311
	bl	__Func_8079374
	ldr	r0, =0x312
	bl	__Func_8079374
.Lb9e:
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008b04

.thumb_func_start OvlFunc_922_2008bc8
	push	{lr}
	ldr	r0, =0x30f
	bl	__Func_8079374
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x311
	bl	__Func_8079374
	ldr	r0, =0x312
	bl	__Func_8079374
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008bc8

.thumb_func_start OvlFunc_922_2008bf4
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x80
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	bl	OvlFunc_922_2008bc8
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008bf4

.thumb_func_start OvlFunc_922_2008c24
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x30f
	bl	__Func_8079358
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x311
	bl	__Func_8079374
	ldr	r0, =0x312
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008c24

.thumb_func_start OvlFunc_922_2008c78
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x70
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	bl	OvlFunc_922_2008bc8
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008c78

.thumb_func_start OvlFunc_922_2008ca8
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x40
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	bl	OvlFunc_922_2008bc8
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008ca8

.thumb_func_start OvlFunc_922_2008cd8
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x50
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	bl	OvlFunc_922_2008bc8
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008cd8

.thumb_func_start OvlFunc_922_2008d08
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x30
	mov	r0, #0xb
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	bl	OvlFunc_922_2008bc8
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008d08

.thumb_func_start OvlFunc_922_2008d38
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x70
	mov	r0, #8
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x313
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20095dc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008d38

.thumb_func_start OvlFunc_922_2008d6c
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r2, #0x70
	neg	r2, r2
	mov	r1, #0
	mov	r0, #8
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x313
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20095dc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008d6c

.thumb_func_start OvlFunc_922_2008da4
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0x80
	neg	r1, r1
	mov	r2, #0
	mov	r0, #9
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20095dc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008da4

.thumb_func_start OvlFunc_922_2008dd8
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #9
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20095dc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008dd8

.thumb_func_start OvlFunc_922_2008e0c
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x315
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20095dc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008e0c

.thumb_func_start OvlFunc_922_2008e40
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0xa0
	neg	r1, r1
	mov	r2, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x315
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20095dc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008e40

.thumb_func_start OvlFunc_922_2008e78
	push	{lr}
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80924d4
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008e78

.thumb_func_start OvlFunc_922_2008e90
	push	{lr}
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80924d4
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008e90

.thumb_func_start OvlFunc_922_2008ea8
	push	{lr}
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_80924d4
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008ea8

.thumb_func_start OvlFunc_922_2008ec0
	push	{lr}
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80924d4
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008ec0

.thumb_func_start OvlFunc_922_2008ed8
	push	{r5, r6, lr}
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	mov	r0, r3
	mov	r2, r5
	mov	r1, r4
	mov	r3, r6
	bl	__Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.Lf28
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r2, r5
	add	r2, #0x55
	strb	r3, [r1, #9]
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, r5
	mov	r1, #0xf
	bl	__Func_80929d8
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r0, r5
	b	.Lf2a
.Lf28:
	mov	r0, #0
.Lf2a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_922_2008ed8

.thumb_func_start OvlFunc_922_2008f30
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x34
	cmp	r2, r3
	bne	.Lf48
	ldr	r0, =.L2bd8
	b	.Lf86
.Lf48:
	ldr	r3, =0x3e
	cmp	r2, r3
	bne	.Lf52
	ldr	r0, =.L2c08
	b	.Lf86
.Lf52:
	ldr	r3, =0x3f
	cmp	r2, r3
	bne	.Lf5c
	ldr	r0, =.L2d1c
	b	.Lf86
.Lf5c:
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.Lf66
	ldr	r0, =.L2e24
	b	.Lf86
.Lf66:
	ldr	r3, =0x41
	cmp	r2, r3
	bne	.Lf70
	ldr	r0,=.L3058
	b	.Lf86
.Lf70:
	ldr	r3, =0x42
	cmp	r2, r3
	bne	.Lf7a
	ldr	r0, =.L3130
	b	.Lf86
.Lf7a:
	ldr	r3, =0x43
	cmp	r2, r3
	bne	.Lf84
	ldr	r0, =.L3184
	b	.Lf86
.Lf84:
	ldr	r0, =.L2bcc
.Lf86:
	pop	{r1}
	bx	r1
.func_end OvlFunc_922_2008f30

.thumb_func_start OvlFunc_922_2008fcc
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, #0x7b
	bl	__Func_80f9080
	bl	__Func_8091df4
	bl	__Func_8091e20
	mov	r0, #1
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008fcc


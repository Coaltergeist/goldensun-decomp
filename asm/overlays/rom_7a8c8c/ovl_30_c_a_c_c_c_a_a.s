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


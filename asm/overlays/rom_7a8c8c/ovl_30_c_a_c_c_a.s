	.include "macros.inc"

.thumb_func_start OvlFunc_922_20084bc
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r1, #0
	mov	r2, #0x40
	mov	r0, #9
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x306
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009154
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20084bc

.thumb_func_start OvlFunc_922_20084f0
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r2, #0x40
	neg	r2, r2
	mov	r1, #0
	mov	r0, #9
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x306
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009154
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20084f0

.thumb_func_start OvlFunc_922_2008528
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x90
	bl	OvlFunc_922_2008180
	mov	r1, #0
	mov	r2, #0x80
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x307
	bl	__Func_8079374
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009154
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008528

.thumb_func_start OvlFunc_922_2008568
	push	{r5, lr}
	mov	r5, #0x60
	neg	r5, r5
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r2, r5
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_922_2008180
	mov	r2, r5
	mov	r0, #0xa
	mov	r1, #0
	bl	OvlFunc_922_2008180
	mov	r2, #0x50
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_922_2008180
	ldr	r0, =0x121
	bl	__Func_80f9080
	ldr	r0, =0x307
	bl	__Func_8079358
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_2009154
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2008568

.thumb_func_start OvlFunc_922_20085b8
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L5d6
	ldr	r0, =0x30d
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L5f2
.L5d6:
	mov	r1, #0x30
	neg	r1, r1
	mov	r0, #8
	mov	r2, #0
	bl	OvlFunc_922_2008180
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x309
	bl	__Func_8079358
	b	.L60c
.L5f2:
	mov	r1, #0x60
	neg	r1, r1
	mov	r0, #8
	mov	r2, #0
	bl	OvlFunc_922_2008180
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079358
	ldr	r0, =0x309
	bl	__Func_8079374
.L60c:
	ldr	r0, =0x121
	bl	__Func_80f9080
	mov	r0, #2
	bl	__Func_80030f8
	bl	OvlFunc_922_20092cc
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20085b8

.thumb_func_start OvlFunc_922_200862c
	push	{lr}
	mov	r0, #0xf1
	bl	__Func_80f9080
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__Func_8079374
	ldr	r0, =0x309
	bl	__Func_8079374
	mov	r1, #0x30
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
.func_end OvlFunc_922_200862c


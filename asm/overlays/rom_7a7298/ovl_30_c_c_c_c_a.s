	.include "macros.inc"

.thumb_func_start OvlFunc_921_20085dc
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x156d
	bl	__Func_8092b94
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_20085dc

.thumb_func_start OvlFunc_921_2008608
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x82b
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L620
	ldr	r0, =0x156f
	bl	__Func_8092b94
	b	.L638
.L620:
	ldr	r0, =0x82c
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L632
	ldr	r0, =0x153b
	bl	__Func_8092b94
	b	.L638
.L632:
	ldr	r0, =0x1533
	bl	__Func_8092b94
.L638:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2008608

.thumb_func_start OvlFunc_921_200865c
	push	{lr}
	bl	OvlFunc_921_2008384
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_200865c

.thumb_func_start OvlFunc_921_2008668
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x156e
	bl	__Func_8092b94
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2008668


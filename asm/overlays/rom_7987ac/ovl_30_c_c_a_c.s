	.include "macros.inc"

.thumb_func_start OvlFunc_902_20083c8
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L3ea
	mov	r0, #5
	mov	r1, #0x14
	bl	__Func_80b0278
	b	.L3f8
.L3ea:
	ldr	r0, =0x1ce4
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092f84
.L3f8:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20083c8

.thumb_func_start OvlFunc_902_2008410
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L432
	mov	r0, #6
	mov	r1, #0x15
	bl	__Func_80b0278
	b	.L440
.L432:
	ldr	r0, =0x1ce6
	bl	__Func_8092b94
	mov	r0, #0x15
	mov	r1, #0
	bl	__Func_8092f84
.L440:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_2008410

.thumb_func_start OvlFunc_902_2008458
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L47a
	mov	r0, #1
	mov	r1, #0x16
	bl	__Func_80b3284
	b	.L488
.L47a:
	ldr	r0, =0x1cec
	bl	__Func_8092b94
	mov	r0, #0x16
	mov	r1, #0
	bl	__Func_8092f84
.L488:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_2008458

.thumb_func_start OvlFunc_902_20084a0
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x85b
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L4b8
	ldr	r0, =0x1382
	bl	__Func_8092b94
	b	.L4be
.L4b8:
	ldr	r0, =0x1cf4
	bl	__Func_8092b94
.L4be:
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20084a0


	.include "macros.inc"

.thumb_func_start OvlFunc_77dd1c_30
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, r6
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r0, r3
	cmp	r3, #0
	bne	.L56
	bl	__Func_8004458
	strh	r0, [r6, #6]
	bl	__Func_8004458
	mov	r1, #0x14
	bl	_Func_8000b50
	add	r0, #0x14
	strh	r0, [r5]
.L56:
	sub	r3, r0, #1
	strh	r3, [r5]
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_77dd1c_30

.thumb_func_start OvlFunc_77dd1c_64
	push	{r5, lr}
	mov	r5, r0
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	beq	.La2
	cmp	r3, #2
	bgt	.L7c
	cmp	r3, #0
	beq	.Lb6
	b	.Lcc
.L7c:
	cmp	r3, #4
	beq	.L94
	cmp	r3, #6
	bne	.Lcc
	ldr	r3, [r0, #0x18]
	ldr	r2, =0xffffc000
	add	r3, r2
	str	r3, [r0, #0x18]
	mov	r2, #0x80
	ldr	r3, [r0, #0x1c]
	lsl	r2, #6
	b	.Lb0
.L94:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #6
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffff000
	b	.Lae
.La2:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffff800
.Lae:
	ldr	r3, [r0, #0x1c]
.Lb0:
	add	r3, r2
	str	r3, [r0, #0x1c]
	b	.Lcc
.Lb6:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	bl	__Func_8004458
	mov	r1, #0x5a
	bl	_Func_8000b50
	add	r0, #0x3c
	strh	r0, [r5]
.Lcc:
	ldrh	r3, [r5]
	sub	r3, #1
	strh	r3, [r5]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_77dd1c_64

.thumb_func_start OvlFunc_77dd1c_e8
	ldr	r0, =.L50e4
	bx	lr
.func_end OvlFunc_77dd1c_e8


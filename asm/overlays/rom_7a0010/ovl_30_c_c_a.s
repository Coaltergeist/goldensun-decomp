	.include "macros.inc"

.thumb_func_start OvlFunc_912_2008070
	push	{r5, lr}
	ldr	r0, =0x845
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L82
	ldr	r0, =.L4d8
	bl	OvlFunc_912_2008030
.L82:
	ldr	r5, =.L4d8
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_912_2008070

.thumb_func_start OvlFunc_912_200809c
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.Lbe
	mov	r0, #0xd
	mov	r1, #0x10
	bl	__Func_80b0278
	b	.Lcc
.Lbe:
	ldr	r0, =0x16ad
	bl	__Func_8092b94
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092f84
.Lcc:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_912_200809c

.thumb_func_start OvlFunc_912_20080e4
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L106
	mov	r0, #0xe
	mov	r1, #0x11
	bl	__Func_80b0278
	b	.L114
.L106:
	ldr	r0, =0x16af
	bl	__Func_8092b94
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_8092f84
.L114:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_912_20080e4

.thumb_func_start OvlFunc_912_200812c
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L14e
	mov	r0, #0xf
	mov	r1, #0x12
	bl	__Func_80b0278
	b	.L15c
.L14e:
	ldr	r0, =0x16b1
	bl	__Func_8092b94
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
.L15c:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_912_200812c

.thumb_func_start OvlFunc_912_2008174
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L196
	mov	r0, #3
	mov	r1, #0x13
	bl	__Func_80b3284
	b	.L1a4
.L196:
	ldr	r0, =0x16b7
	bl	__Func_8092b94
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8092f84
.L1a4:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_912_2008174


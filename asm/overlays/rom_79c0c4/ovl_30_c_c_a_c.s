	.include "macros.inc"

.thumb_func_start OvlFunc_908_200805c
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.L7e
	mov	r0, #7
	mov	r1, #0x10
	bl	__Func_80b0278
	b	.L9e
.L7e:
	ldr	r0, =0x845
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L90
	ldr	r0, =0x13e3
	bl	__Func_8092b94
	b	.L96
.L90:
	ldr	r0, =0x16f5
	bl	__Func_8092b94
.L96:
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8092f84
.L9e:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_908_200805c

.thumb_func_start OvlFunc_908_20080bc
	push	{r5, lr}
	mov	r0, #0
	bl	__Func_8092054
	ldrh	r5, [r0, #6]
	bl	__Func_80916b0
	ldr	r3, =0xffff5fff
	add	r5, r3
	ldr	r3, =0x3ffe
	cmp	r5, r3
	bhi	.Lde
	mov	r0, #9
	mov	r1, #0x12
	bl	__Func_80b0278
	b	.Lfe
.Lde:
	ldr	r0, =0x845
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lf0
	ldr	r0, =0x13e9
	bl	__Func_8092b94
	b	.Lf6
.Lf0:
	ldr	r0, =0x16f9
	bl	__Func_8092b94
.Lf6:
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092f84
.Lfe:
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_908_20080bc


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_951_2008044
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xbd
	cmp	r2, r3
	bne	.L5c
	ldr	r0, =.L1aec
	b	.L5e
.L5c:
	ldr	r0, =.L1cfc
.L5e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_951_2008044

.thumb_func_start OvlFunc_951_2008074
	push	{r5, r6, lr}
	ldr	r5, =0xe39
	mov	r6, r0
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.La2
	mov	r0, #0xa
	bl	__Func_809163c
	add	r0, r5, #1
	bl	__Func_8092b94
	b	.La8
.La2:
	add	r0, r5, #2
	bl	__Func_8092b94
.La8:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_2008074

.thumb_func_start OvlFunc_951_20080bc
	push	{r5, r6, lr}
	ldr	r5, =0xe19
	mov	r6, r0
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lea
	mov	r0, #0xa
	bl	__Func_809163c
	add	r0, r5, #1
	bl	__Func_8092b94
	b	.Lf0
.Lea:
	add	r0, r5, #2
	bl	__Func_8092b94
.Lf0:
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8092f84
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_20080bc

.thumb_func_start OvlFunc_951_2008104
	push	{r5, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	mov	r0, #0x80
	add	r3, r2
	lsl	r0, #2
	ldr	r5, [r3]
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L128
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079358
	bl	OvlFunc_951_2008880
.L128:
	bl	__Func_80916b0
	mov	r0, r5
	mov	r1, #0x78
	mov	r2, #0x98
	bl	__Func_80921c4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, r5
	bl	__Func_8092adc
	bl	OvlFunc_951_2008ac8
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_2008104

.thumb_func_start OvlFunc_951_2008154
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0xe34
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	neg	r0, r0
	bl	__Func_8092c40
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_2008154

.thumb_func_start OvlFunc_951_2008178
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0xe35
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	neg	r0, r0
	bl	__Func_8092c40
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_2008178


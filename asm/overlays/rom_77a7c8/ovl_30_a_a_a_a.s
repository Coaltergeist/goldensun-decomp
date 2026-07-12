	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_2008030
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0x8e
	ldr	r6, [r3]
	ldr	r3, =gState
	lsl	r2, #2
	add	r7, r3, r2
	mov	r3, #0xd6
	lsl	r3, #1
	add	r5, r6, r3
	ldr	r3, [r5]
	lsl	r0, r3, #3
	add	r0, r3
	mov	r1, #0xa
	bl	_divsi3_RAM
	ldr	r3, [r7]
	cmp	r3, r0
	blt	.L7a
	bl	__Random
	mov	r2, #0x80
	lsl	r2, #8
	cmp	r0, r2
	bcs	.L76
	ldr	r0, =0x808
	mov	r1, #3
	bl	__Func_8091f14
	mov	r3, #0xd4
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0
	str	r3, [r2]
	b	.L7a
.L76:
	ldr	r3, [r5]
	str	r3, [r7]
.L7a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2008030

.thumb_func_start OvlFunc_881_200808c
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r5, =gState
	mov	r2, #0x8e
	lsl	r2, #2
	ldr	r6, [r3]
	add	r5, r2
	sub	r2, #0x8c
	add	r3, r6, r2
	ldr	r3, [r3]
	lsl	r0, r3, #3
	add	r0, r3
	mov	r1, #0xa
	bl	_divsi3_RAM
	ldr	r3, [r5]
	cmp	r3, r0
	blt	.Lc2
	ldr	r0, =0x809
	mov	r1, #0x2a
	bl	__Func_8091f14
	mov	r3, #0xd4
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0
	str	r3, [r2]
.Lc2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200808c

.thumb_func_start OvlFunc_881_20080d4
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r5, =gState
	mov	r2, #0x8e
	lsl	r2, #2
	ldr	r6, [r3]
	add	r5, r2
	sub	r2, #0x8c
	add	r3, r6, r2
	ldr	r3, [r3]
	lsl	r0, r3, #3
	add	r0, r3
	mov	r1, #0xa
	bl	_divsi3_RAM
	ldr	r3, [r5]
	cmp	r3, r0
	blt	.L10a
	ldr	r0, =0x80a
	mov	r1, #0x18
	bl	__Func_8091f14
	mov	r3, #0xd4
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0
	str	r3, [r2]
.L10a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_20080d4

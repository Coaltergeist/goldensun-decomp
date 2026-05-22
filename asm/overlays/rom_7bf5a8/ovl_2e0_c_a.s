	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_410
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x50
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5a
	mov	r1, #9
	mov	r2, #2
	mov	r3, #3
	bl	__Func_105d4
	mov	r3, #0xa
	str	r3, [sp, #4]
	mov	r5, #0x11
	mov	r0, #0x1b
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_105d4
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0xa
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_10704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_410

.thumb_func_start OvlFunc_458
	push	{lr}
	mov	r0, #0xa
	bl	__Func_92054
	ldr	r2, [r0, #0x10]
	cmp	r2, #0
	bge	.L46a
	ldr	r3, =0xfffff
	add	r2, r3
.L46a:
	ldr	r0, [r0, #8]
	asr	r2, #20
	cmp	r0, #0
	bge	.L476
	ldr	r3, =0xfffff
	add	r0, r3
.L476:
	asr	r3, r0, #20
	cmp	r3, #0x10
	bne	.L482
	mov	r0, #1
	cmp	r2, #0xc
	beq	.L484
.L482:
	mov	r0, #0
.L484:
	pop	{r1}
	bx	r1
.func_end OvlFunc_458

.thumb_func_start OvlFunc_48c
	push	{lr}
	bl	OvlFunc_170
	ldr	r0, =0x9aa
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4be
	bl	OvlFunc_458
	cmp	r0, #0
	beq	.L4be
	ldr	r0, =0x207
	bl	__Func_79338
	cmp	r0, #0
	bne	.L4be
	mov	r0, #0x50
	bl	__Func_f9080
	bl	OvlFunc_410
	ldr	r0, =0x9aa
	bl	__Func_79358
.L4be:
	pop	{r0}
	bx	r0
.func_end OvlFunc_48c


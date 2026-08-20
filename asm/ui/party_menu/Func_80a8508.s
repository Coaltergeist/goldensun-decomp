	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a8508  @ 0x080a8508
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r0
	mov	r9, r1
	mov	r10, r2
	mov	r7, #0
	mov	r6, #0
.La851c:
	mov	r2, r10
	ldrb	r3, [r2, r6]
	cmp	r3, #0
	beq	.La854c
	cmp	r9, r7
	bne	.La854a
	ldr	r3, =0xbdc
	lsl	r5, r6, #1
	add	r5, r3
	mov	r3, #1
	mov	r0, r5
	mov	r1, r8
	mov	r2, #0
	neg	r3, r3
	add	r5, #1
	bl	_DrawSmallText
	mov	r0, r5
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0xf
	bl	_DrawSmallText
.La854a:
	add	r7, #1
.La854c:
	add	r6, #1
	cmp	r6, #4
	ble	.La851c
	cmp	r7, #0
	bne	.La8562
	ldr	r0, =0xbda
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0
	bl	_DrawSmallText
.La8562:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a8508


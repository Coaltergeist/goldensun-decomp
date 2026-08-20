	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_951_2008d70
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r0, #0
	cmp	r7, #0
	blt	.Lm951_dbe
	cmp	r7, #5
	bne	.Lm951_d8c
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r7, r3, #16
.Lm951_d8c:
	ldr	r3, =gState
	mov	r8, r3
	mov	r3, #0x9a
	lsl	r3, #1
	add	r6, r7, r3
	mov	r3, r8
	ldrsb	r5, [r3, r6]
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	add	r5, r0
	add	r5, #4
	mov	r0, r5
	mov	r1, #3
	bl	_modsi3_RAM
	mov	r3, r8
	strb	r0, [r3, r6]
	lsl	r3, r7, #1
	add	r3, r7
	add	r3, r0
	ldr	r2, =.Lm951_2018
	lsl	r3, #2
	ldr	r0, [r2, r3]
.Lm951_dbe:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_951_2008d70


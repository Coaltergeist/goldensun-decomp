	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_917_200972c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r8, r1
	bl	__CheckPartyItem
	mov	r7, #1
	mov	r5, r0
	neg	r7, r7
	cmp	r5, r7
	beq	.Lm917_175e
	mov	r1, r6
	bl	__CheckItem
	mov	r6, r0
	cmp	r6, r7
	beq	.Lm917_175e
	mov	r0, r5
	bl	__GetUnit
	lsl	r3, r6, #1
	add	r3, #0xd8
	mov	r2, r8
	strh	r2, [r0, r3]
.Lm917_175e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_200972c


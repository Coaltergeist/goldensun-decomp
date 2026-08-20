	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b196c  @ 0x080b196c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r6, r1
	bl	_GetUnit
	mov	r3, #1
	neg	r3, r3
	mov	r8, r3
	cmp	r6, r8
	bne	.Lb1988
	mov	r0, #0
	b	.Lb19be
.Lb1988:
	lsl	r3, r6, #1
	add	r3, #0xd8
	ldrh	r3, [r0, r3]
	ldr	r5, =0x1ff
	and	r5, r3
	mov	r0, r5
	bl	_GetItemInfo
	ldrb	r3, [r0, #2]
	mov	r0, #0
	cmp	r3, #6
	beq	.Lb19be
	mov	r0, r5
	bl	_GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #8
	and	r3, r2
	mov	r0, #0
	cmp	r3, #0
	bne	.Lb19be
	mov	r0, r7
	mov	r1, r6
	mov	r2, r8
	bl	Func_80b1f4c
	mov	r0, #1
.Lb19be:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b196c


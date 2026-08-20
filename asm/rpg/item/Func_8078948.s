	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8078948  @ 0x08078948
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r1
	bl	GetUnit
	lsl	r3, r6, #1
	add	r3, #0xd8
	ldrh	r7, [r0, r3]
	mov	r1, r6
	mov	r0, r5
	bl	Func_80788c4
	mov	r3, #1
	mov	r5, r0
	neg	r3, r3
	cmp	r5, r3
	beq	.L78976
	mov	r1, #1
	mov	r0, r7
	bl	Func_8078ad0
	bl	_Func_8091858
.L78976:
	mov	r0, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8078948


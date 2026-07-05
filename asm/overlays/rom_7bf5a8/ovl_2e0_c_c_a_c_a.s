	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_935_2008704
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	mov	r6, #0x10
	mov	r7, #2
	mov	r5, #5
	mov	r8, r3
.L714:
	mov	r0, r6
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	sub	r5, #1
	orr	r3, r7
	strb	r3, [r0]
	add	r6, #1
	cmp	r5, #0
	bge	.L714
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_2008704


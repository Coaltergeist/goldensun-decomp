	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_20098b0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm946_18f6
	mov	r0, r6
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, [r5, #0x10]
	ldr	r2, [r5, #8]
	asr	r3, #20
	asr	r2, #20
	sub	r3, #1
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, r7
	mov	r1, r8
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
.Lm946_18f6:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_20098b0


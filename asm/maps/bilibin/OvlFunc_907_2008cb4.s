	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_907_2008cb4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	mov	r8, r3
	ldr	r3, [r0, #0x10]
	ldr	r5, =.Lm907_1d28
	asr	r7, r3, #20
	mov	r6, #0
.Lm907_cd0:
	ldrb	r3, [r5]
	ldrb	r2, [r5, #1]
	mov	r0, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	add	r6, #2
	bl	__Func_8010704
	add	r5, #2
	cmp	r6, #0x13
	bls	.Lm907_cd0
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp, #4]
	bl	__Func_8010704
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008cb4


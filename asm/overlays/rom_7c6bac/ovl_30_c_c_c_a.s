	.include "macros.inc"

.thumb_func_start OvlFunc_942_2008af8
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0xe
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r0, [r0, #8]
	mov	r8, r0
	mov	r3, r8
	asr	r3, #20
	mov	r0, #0xf
	mov	r8, r3
	bl	__MapActor_GetActor
	mov	r3, #5
	ldr	r5, [r0, #8]
	mov	r6, #0xb
	str	r3, [sp]
	mov	r0, #5
	mov	r1, #0xc
	mov	r2, #5
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_8010704
	asr	r5, #20
	mov	r0, #1
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	mov	r0, #1
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xe
	bl	OvlFunc_942_2008b68
	mov	r0, #0xf
	bl	OvlFunc_942_2008b68
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_2008af8

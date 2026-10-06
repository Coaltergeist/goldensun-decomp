	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_965_200a820
	push	{r5, r6, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r1, #1
	mov	r6, r0
	mov	r0, #8
	bl	__Func_8092b08
	mov	r0, #9
	mov	r1, #1
	bl	__Func_8092b08
	mov	r3, #5
	str	r3, [sp]
	mov	r5, #0x13
	mov	r0, #0x45
	mov	r1, #0x13
	mov	r2, #3
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x11
	str	r3, [sp]
	mov	r0, #0x45
	mov	r1, #0x13
	mov	r2, #3
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r1, #3
	mov	r2, #1
	mov	r3, #1
	mov	r0, #3
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #3
	mov	r1, #3
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a820


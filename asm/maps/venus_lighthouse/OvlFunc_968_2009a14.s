	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_2009a14
	push	{lr}
	mov	r2, #0x23
	add	r2, r0
	mov	r12, r2
	ldrb	r2, [r2]
	mov	r3, #2
	orr	r3, r2
	mov	r2, r12
	strb	r3, [r2]
	mov	r3, r0
	mov	r1, #0
	add	r3, #0x55
	strb	r1, [r3]
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #0x10]
	sub	sp, #8
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #9
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009a14


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_954_200842c
	push	{r5, r6, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r6, #0x30
	asr	r0, r3, #20
	neg	r6, r6
	cmp	r0, #8
	bgt	.Lm954_44c
	mov	r6, #0x30
.Lm954_44c:
	str	r0, [sp, #4]
	mov	r3, #1
	mov	r5, #0x40
	mov	r0, #0x43
	mov	r1, #8
	mov	r2, #3
	str	r5, [sp]
	bl	__Func_8010704
	mov	r2, r6
	mov	r1, #0
	mov	r0, #0x11
	bl	OvlFunc_954_200833c
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r0, r3, #20
	str	r0, [sp, #4]
	mov	r1, #0x18
	mov	r0, #0x40
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_200842c


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_903_2008d04
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r6, r3, #20
	cmp	r6, #0xb
	bne	.Lm903_d5c
	mov	r0, #8
	bl	OvlFunc_903_2008dd8
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r3, #8
	str	r3, [sp]
	mov	r5, #0xc
	mov	r0, #0x27
	mov	r1, #0xc
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x2b
	mov	r1, #0xb
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x86
	lsl	r0, #4
	bl	__SetFlag
.Lm903_d5c:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_903_2008d04


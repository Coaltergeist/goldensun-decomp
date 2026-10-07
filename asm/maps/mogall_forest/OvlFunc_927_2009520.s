	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_927_2009520
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r5, #20
	asr	r7, r3, #20
	mov	r3, #0xff
	mov	r6, #1
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r2, r7
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_927_2008244
	mov	r2, #0
	mov	r8, r2
	str	r2, [sp, #4]
	add	r1, r5, #1
	mov	r2, r7
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_927_2008244
	mov	r3, r8
	str	r3, [sp, #4]
	sub	r1, r5, #1
	mov	r2, r7
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_927_2008244
	mov	r3, r8
	add	r2, r7, #1
	str	r3, [sp, #4]
	mov	r1, r5
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	bl	OvlFunc_927_2008244
	mov	r3, r8
	str	r3, [sp, #4]
	sub	r2, r7, #1
	mov	r0, #2
	mov	r1, r5
	mov	r3, #1
	str	r6, [sp]
	bl	OvlFunc_927_2008244
	cmp	r5, #0x24
	bne	.Lm927_15ba
	cmp	r7, #0x18
	bne	.Lm927_15ba
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x55
	mov	r2, r8
	strb	r2, [r3]
	ldr	r3, =0xfffe0000
	str	r3, [r0, #0x14]
	str	r3, [r0, #0xc]
.Lm927_15ba:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009520


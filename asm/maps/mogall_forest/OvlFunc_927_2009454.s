	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_927_2009454
	push	{r5, lr}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_927_2008474
	cmp	r0, #0
	beq	.Lm927_1510
	mov	r3, sp
	add	r2, sp, #0x18
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	ldr	r3, [r5, #0xc]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	bl	OvlFunc_927_2008608
	ldr	r3, [r5, #4]
	cmp	r3, #8
	bne	.Lm927_14a0
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x17
	bne	.Lm927_14a0
	mov	r3, #0x23
	mov	r2, #0x44
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x23
	mov	r1, #0x43
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm927_1510
.Lm927_14a0:
	ldr	r3, [r5, #4]
	cmp	r3, #0xa
	bne	.Lm927_1510
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x23
	bne	.Lm927_1510
	ldr	r0, =0x311
	bl	__SetFlag
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #0x10
	mov	r2, #6
	neg	r1, r1
	mov	r0, #0xa
	bl	__MapActor_TravelBy
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #8
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xf0
	bl	__PlaySound
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x1e
	mov	r3, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x1e
	mov	r2, #2
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #4
	mov	r5, #0
	str	r3, [sp]
	mov	r0, #2
	mov	r1, #0x23
	mov	r2, #0x1e
	mov	r3, #1
	str	r5, [sp, #4]
	bl	OvlFunc_927_2008244
.Lm927_1510:
	bl	__CutsceneEnd
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009454


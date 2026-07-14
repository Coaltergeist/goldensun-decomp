	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_915_20089f8
	push	{r5, lr}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_915_2008474
	cmp	r0, #0
	beq	.La9c
	mov	r3, sp
	add	r2, sp, #0x18
	ldmia	r2!, {r0, r1}
	stmia	r3!, {r0, r1}
	ldr	r3, [r5, #0xc]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	bl	OvlFunc_915_2008608
	ldr	r3, [r5, #4]
	cmp	r3, #0xa
	bne	.La9c
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0xc
	bne	.La9c
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #0x12
	mov	r2, #6
	neg	r1, r1
	mov	r0, #0xa
	bl	__Func_809228c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xf0
	bl	__PlaySound
	mov	r1, #8
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x10
	mov	r3, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x20
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #4
	bl	__Func_8010704
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #0xc
	mov	r2, #0x10
	mov	r3, #1
	mov	r5, #0
	mov	r0, #2
	str	r5, [sp, #4]
	bl	OvlFunc_915_2008244
	ldr	r0, =0x201
	bl	__SetFlag
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.La9c:
	bl	__CutsceneEnd
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_915_20089f8

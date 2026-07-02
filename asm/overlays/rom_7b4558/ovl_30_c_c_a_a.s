	.include "macros.inc"

.thumb_func_start OvlFunc_927_2008f40
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x44
	cmp	r2, r3
	bne	.Lf58
	ldr	r0, =.L36a0
	b	.Lf6e
.Lf58:
	ldr	r3, =0x45
	cmp	r2, r3
	bne	.Lf62
	ldr	r0, =.L3790
	b	.Lf6e
.Lf62:
	ldr	r3, =0x46
	cmp	r2, r3
	bne	.Lf6c
	ldr	r0, =.L38b0
	b	.Lf6e
.Lf6c:
	ldr	r0, =.L3a30
.Lf6e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_927_2008f40

.thumb_func_start OvlFunc_927_2008f94
	push	{r5, lr}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r5, sp, #8
	mov	r0, r5
	bl	OvlFunc_927_2008474
	cmp	r0, #0
	beq	.L1030
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
	cmp	r3, #9
	bne	.L1030
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x1a
	bne	.L1030
	mov	r0, #0xc4
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #7
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x10
	neg	r2, r2
	mov	r1, #0
	mov	r0, #9
	bl	__Func_809228c
	mov	r0, #0x2d
	bl	__CutsceneWait
	mov	r1, #8
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #0xf0
	bl	__PlaySound
	mov	r1, #1
	mov	r0, #9
	bl	__Func_8092b08
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r2, #0x19
	mov	r3, #0x1f
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x26
	mov	r1, #0x1b
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
.L1030:
	bl	__CutsceneEnd
	add	sp, #0x20
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2008f94


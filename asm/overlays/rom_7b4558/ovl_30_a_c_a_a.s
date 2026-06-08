	.include "macros.inc"

.thumb_func_start OvlFunc_927_2008cd0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x55
	ldrb	r3, [r6]
	mov	r1, r7
	mov	r8, r3
	bl	__TestCollision
	cmp	r0, #0
	bne	.Ld5e
	bl	__CutsceneStart
	mov	r1, #6
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, r5
	mov	r1, #7
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldrb	r2, [r6]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r6]
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c528
	mov	r3, #0xa
	ldrsh	r2, [r7, r3]
	mov	r3, #2
	ldrsh	r1, [r7, r3]
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, r5
	mov	r1, #6
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c528
	mov	r3, r8
	strb	r3, [r6]
	bl	__Func_8091750
	mov	r0, #1
	b	.Ld60
.Ld5e:
	mov	r0, #0
.Ld60:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_927_2008cd0


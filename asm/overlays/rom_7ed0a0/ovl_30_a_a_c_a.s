	.include "macros.inc"

.thumb_func_start OvlFunc_964_2008cd0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r8, r0
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x55
	ldrb	r3, [r7]
	ldr	r1, =0xfff00000
	mov	r10, r3
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	mov	r5, sp
	add	r3, r2
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	and	r3, r1
	add	r3, r2
	str	r3, [r5, #8]
	mov	r3, #0x80
	ldrh	r1, [r6, #6]
	lsl	r3, #6
	add	r1, r3
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r0, #0x80
	and	r1, r3
	lsl	r0, #13
	mov	r2, r5
	bl	__vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	__TestCollision
	cmp	r0, #1
	beq	.Ldb4
	mov	r0, r6
	mov	r1, r8
	bl	__TestCollision
	cmp	r0, #0
	bne	.Ldb4
	bl	__CutsceneStart
	mov	r1, #6
	mov	r0, r6
	bl	__Actor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, r6
	mov	r1, #7
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r6, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r6, #0x28]
	ldrb	r2, [r7]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r7]
	mov	r0, r6
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, r8
	ldr	r1, [r3]
	ldr	r2, [r3, #8]
	asr	r1, #20
	asr	r2, #20
	lsl	r1, #4
	lsl	r2, #4
	add	r2, #8
	add	r1, #8
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, r6
	mov	r1, #6
	bl	__Actor_SetAnim
	mov	r1, #1
	mov	r0, r6
	bl	__Actor_SetSpriteFlags
	mov	r0, #6
	bl	__WaitFrames
	mov	r3, r10
	strb	r3, [r7]
	bl	__CutsceneEnd
	mov	r0, #0
	b	.Ldb6
.Ldb4:
	mov	r0, #1
.Ldb6:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_964_2008cd0

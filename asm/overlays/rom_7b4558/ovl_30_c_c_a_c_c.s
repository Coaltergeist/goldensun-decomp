	.include "macros.inc"

	.section .text.after_9454, "ax", %progbits

	.section .text.after_9520, "ax", %progbits

	.section .text.after_95d0, "ax", %progbits

	.section .text.after, "ax", %progbits

	.section .text.after_9880, "ax", %progbits

.thumb_func_start OvlFunc_927_20099b8
	push	{r5, r6, lr}
	sub	sp, #0x20
	bl	__CutsceneStart
	add	r5, sp, #8
	mov	r0, r5
	mov	r6, #0
	bl	OvlFunc_927_2008474
	cmp	r0, #0
	beq	.L1ab2
	mov	r2, sp
	add	r3, sp, #0x18
	ldmia	r3!, {r0, r1}
	stmia	r2!, {r0, r1}
	ldr	r3, [r5, #0xc]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	bl	OvlFunc_927_2008608
	ldr	r3, [r5, #4]
	cmp	r3, #9
	beq	.L19ee
	cmp	r3, #0xb
	bne	.L1a98
	b	.L1a30
.L19ee:
	ldr	r3, [r5, #8]
	mov	r2, #0x44
	asr	r3, #20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #4
	mov	r2, #1
	mov	r0, #0x26
	mov	r1, #0x44
	bl	__Func_8010704
	ldr	r3, [r5, #8]
	asr	r2, r3, #20
	cmp	r2, #0x2a
	bne	.L1a5a
	mov	r3, #0x17
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #4
	bl	__Func_8010704
	mov	r0, #9
	mov	r1, #1
	bl	__Func_8092b08
	ldr	r0, =0x312
	mov	r6, #1
	bl	__SetFlag
	b	.L1a5a
.L1a30:
	ldr	r3, [r5, #8]
	asr	r2, r3, #20
	cmp	r2, #0x28
	bne	.L1a5a
	mov	r3, #0x20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x1a
	mov	r1, #0x14
	mov	r2, #2
	mov	r3, #4
	bl	__Func_8010704
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_8092b08
	ldr	r0, =0x313
	mov	r6, #1
	bl	__SetFlag
.L1a5a:
	cmp	r6, #0
	bne	.L1a64
	bl	__CutsceneEnd
	b	.L1ab6
.L1a64:
	ldr	r0, [r5, #4]
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #6
	mov	r1, #0x12
	ldr	r0, [r5, #4]
	bl	__Func_809228c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #8
	ldr	r0, [r5, #4]
	bl	__MapActor_SetAnim
	mov	r0, #0xf0
	bl	__PlaySound
	ldr	r0, [r5, #4]
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	b	.L1ab2
.L1a98:
	cmp	r3, #8
	bne	.L1ab2
	ldr	r3, [r5, #8]
	mov	r2, #0x31
	asr	r3, #20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #4
	bl	__Func_8010704
.L1ab2:
	bl	__CutsceneEnd
.L1ab6:
	add	sp, #0x20
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_20099b8


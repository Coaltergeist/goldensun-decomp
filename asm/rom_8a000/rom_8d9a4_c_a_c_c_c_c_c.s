	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_8f0d8, "ax", %progbits

	.section .text.after_8f140, "ax", %progbits

.thumb_func_start Func_808f1c0  @ 0x0808f1c0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r9, r0
	ldr	r0, [r3]
	mov	r10, r1
	bl	GetFieldActor
	mov	r1, #0xc1
	mov	r7, r0
	lsl	r1, #3
	mov	r0, #0x11
	bl	galloc_iwram
	ldr	r2, [r7, #0xc]
	mov	r3, #0x90
	lsl	r3, #14
	add	r2, r3
	mov	r8, r0
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x16
	bl	_CreateActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L8f276
	ldr	r5, [r6, #0x50]
	mov	r2, r5
	mov	r3, #0
	add	r2, #0x26
	strb	r3, [r2]
	add	r2, #1
	strb	r3, [r2]
	ldrb	r2, [r5, #5]
	sub	r3, #0x21
	and	r3, r2
	ldrb	r2, [r5, #9]
	strb	r3, [r5, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r2, #0xd
	neg	r2, r2
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r5, #9]
	mov	r0, r9
	bl	_LoadItemIcon
	mov	r2, #0x80
	lsl	r2, #3
	add	r2, r8
	mov	r1, #0x80
	ldrb	r0, [r5, #0x1c]
	bl	UploadSpriteGFX
	mov	r0, #0x11
	bl	gfree
	mov	r3, #1
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L8f252
	ldr	r3, =Func_808eee4
	str	r3, [r6, #0x6c]
.L8f252:
	mov	r3, #2
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	beq	.L8f262
	mov	r0, r6
	bl	Func_808f0d8
.L8f262:
	mov	r0, #0x50
	bl	WaitFrames
	mov	r0, r7
	mov	r1, #1
	bl	_Actor_SetAnim
	mov	r0, r6
	bl	_DeleteActor
.L8f276:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808f1c0

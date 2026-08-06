	.include "macros.inc"

.thumb_func_start OvlFunc_926_2008afc
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x5b
	strb	r3, [r0]
	b	.Lm926_b16
.Lm926_b10:
	mov	r0, #1
	bl	__WaitFrames
.Lm926_b16:
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bgt	.Lm926_b10
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r5, #0
	str	r5, [r0, #0xc]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x3c]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	str	r5, [r0, #0x28]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, #0xc
	mov	r2, #0
	bl	__MapActor_Face
	ldr	r0, =0x895
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm926_b68
	ldr	r0, =0x1a5b
	bl	__MessageID
	b	.Lm926_b92
.Lm926_b68:
	ldr	r0, =0x89b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm926_b8c
	ldr	r0, =0x189e
	bl	__MessageID
	b	.Lm926_b92

	.pool_aligned

.Lm926_b8c:
	ldr	r0, =0x182a
	bl	__MessageID
.Lm926_b92:
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r5, .Lm926_bc0	@ 0
	add	r0, #0x5b
	strb	r5, [r0]
	ldr	r1, =gScript_926__0200c638
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	b	.Lm926_bcc

	.align	2, 0
.Lm926_bc0:
	.word	0
	.pool

.Lm926_bcc:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_2008afc


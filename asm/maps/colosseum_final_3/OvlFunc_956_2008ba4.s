	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_2008ba4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =gState
	ldr	r3, [r3]
	mov	r1, #0xfa
	lsl	r1, #1
	mov	r10, r3
	add	r3, r2, r1
	ldr	r3, [r3]
	sub	r1, #0x32
	mov	r8, r3
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r6, r0
	cmp	r3, #2
	bne	.Lm956_c42
	bl	__CutsceneStart
	lsl	r3, r6, #1
	ldr	r7, =0x2073
	add	r5, r3, r6
	add	r0, r5, r7
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__ShowActorMessage_NoWait
	mov	r0, r8
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm956_c2e
	add	r0, r7, #1
	add	r0, r5, r0
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__ActorMessage
	mov	r2, #0xe0
	lsl	r2, #1
	mov	r3, #0x80
	add	r2, r10
	lsl	r3, #2
	str	r3, [r2]
	mov	r2, #0xe4
	lsl	r2, #1
	add	r2, r10
	mov	r3, #0xf
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, r6
	bl	OvlFunc_common1_78
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	b	.Lm956_c3e
.Lm956_c2e:
	add	r0, r7, #2
	add	r0, r5, r0
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
.Lm956_c3e:
	bl	__CutsceneEnd
.Lm956_c42:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008ba4


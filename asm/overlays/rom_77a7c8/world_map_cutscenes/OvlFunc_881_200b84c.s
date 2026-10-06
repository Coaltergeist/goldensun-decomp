	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200b84c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x36
	bl	__MapActor_GetActor
	mov	r8, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #0xdb
	bl	__PlaySound
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, r8
	mov	r3, #0
	add	r2, #0x55
	strb	r3, [r2]
	mov	r2, r5
	add	r2, #0x55
	strb	r3, [r2]
	str	r3, [r5, #0x28]
	add	r2, #0xc
	mov	r3, #1
	strb	r3, [r2]
	mov	r2, r8
	add	r2, #0x61
	strb	r3, [r2]
	ldr	r7, =0x3333
	mov	r6, #0x3b
.Lm881_38ae:
	ldr	r3, [r5, #0x28]
	add	r3, r7
	str	r3, [r5, #0x28]
	mov	r2, r8
	ldr	r3, [r2, #0x28]
	add	r3, r7
	str	r3, [r2, #0x28]
	mov	r0, #1
	sub	r6, #1
	bl	__WaitFrames
	cmp	r6, #0
	bge	.Lm881_38ae
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	bl	__CutsceneEnd
	mov	r0, #0x91
	lsl	r0, #1
	bl	__SetFlag
	ldr	r0, =2
	mov	r1, #0x1b
	bl	__SetDestMap
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b84c


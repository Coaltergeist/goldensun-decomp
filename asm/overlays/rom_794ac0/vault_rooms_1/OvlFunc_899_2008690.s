	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_899_2008690
	push	{r5, r6, r7, lr}
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r7, #0xf0
	ldrh	r3, [r0, #6]
	mov	r5, r0
	add	r5, #0x64
	lsl	r7, #8
	and	r7, r3
	ldrh	r3, [r5]
	lsl	r3, #16
	asr	r6, r3, #17
	bl	__CutsceneStart
	mov	r1, #2
	mov	r0, #0x19
	bl	__Func_80925cc
	ldr	r0, =0x12ad
	bl	__MessageID
	mov	r0, #0x19
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe0
	mov	r2, #0xe0
	mov	r0, #0x19
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldrsh	r3, [r5, r0]
	cmp	r3, #4
	bhi	.Lm899_78e
	ldr	r2, =.Lm899_6e4
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm899_6e4:
	.word	.Lm899_71a
	.word	.Lm899_742
	.word	.Lm899_71a
	.word	.Lm899_742
	.word	.Lm899_6f8
.Lm899_6f8:
	ldr	r2, =0xffffdfff
	ldr	r0, =0x7ffe
	add	r3, r7, r2
	cmp	r3, r0
	bhi	.Lm899_70e
	ldr	r1, =gScript_899__0200d8bc
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	mov	r3, #2
	b	.Lm899_78c
.Lm899_70e:
	ldr	r1, =gScript_899__0200d858
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	mov	r3, #3
	b	.Lm899_78c
.Lm899_71a:
	ldr	r2, =0xffffdfff
	ldr	r0, =0x7ffe
	add	r3, r7, r2
	cmp	r3, r0
	bhi	.Lm899_76a
	mov	r0, #0
	ldrsh	r2, [r5, r0]
	lsl	r3, r6, #2
	add	r3, r2
	ldr	r1, =.Lm899_64d8
	lsl	r3, #2
	ldr	r1, [r1, r3]
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	ldrh	r3, [r5]
	lsl	r2, r6, #1
	sub	r3, r2
	add	r3, #1
	b	.Lm899_78c
.Lm899_742:
	ldr	r0, =0xffff9fff
	ldr	r2, =0x7ffe
	add	r3, r7, r0
	cmp	r3, r2
	bhi	.Lm899_76a
	mov	r0, #0
	ldrsh	r2, [r5, r0]
	lsl	r3, r6, #2
	add	r3, r2
	ldr	r1, =.Lm899_64d8
	lsl	r3, #2
	ldr	r1, [r1, r3]
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	ldrh	r3, [r5]
	lsl	r2, r6, #1
	sub	r3, r2
	add	r3, #1
	b	.Lm899_78c
.Lm899_76a:
	mov	r3, #1
	mov	r0, #0
	ldrsh	r2, [r5, r0]
	eor	r3, r6
	lsl	r3, #2
	add	r3, r2
	ldr	r1, =.Lm899_64d8
	lsl	r3, #2
	ldr	r1, [r1, r3]
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	ldrh	r3, [r5]
	lsl	r2, r6, #1
	sub	r3, r2
	ldr	r2, =0xffff
	add	r3, r2
.Lm899_78c:
	strh	r3, [r5]
.Lm899_78e:
	ldrh	r2, [r5]
	mov	r3, #3
	and	r3, r2
	strh	r3, [r5]
	mov	r0, #0x19
	bl	__MapActor_WaitScript
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008690


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_963_2008730
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x89f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm963_748
	ldr	r0, =0x2668
	bl	__MessageID
	b	.Lm963_772
.Lm963_748:
	ldr	r0, =0x264e
	bl	__MessageID
	mov	r1, #0
	mov	r0, #9
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm963_77c
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #9
	mov	r1, #4
	bl	__MapActor_DoAnim
.Lm963_772:
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm963_794
.Lm963_77c:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
.Lm963_794:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_963_2008730


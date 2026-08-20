	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_950_20086ec
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__CutsceneStart
	ldr	r5, =0x239e
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm950_71e
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	b	.Lm950_724
.Lm950_71e:
	add	r0, r5, #2
	bl	__MessageID
.Lm950_724:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_950_20086ec


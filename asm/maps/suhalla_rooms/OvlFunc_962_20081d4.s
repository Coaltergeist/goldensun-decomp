	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_962_20081d4
	push	{r5, r6, lr}
	ldr	r5, =0x2624
	mov	r6, r0
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm962_202
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	b	.Lm962_208
.Lm962_202:
	add	r0, r5, #2
	bl	__MessageID
.Lm962_208:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_962_20081d4


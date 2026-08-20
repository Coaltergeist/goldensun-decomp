	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_961_20080b0
	push	{r5, r6, lr}
	ldr	r5, =0x25dc
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
	bne	.Lm961_de
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	b	.Lm961_e4
.Lm961_de:
	add	r0, r5, #2
	bl	__MessageID
.Lm961_e4:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_961_20080b0


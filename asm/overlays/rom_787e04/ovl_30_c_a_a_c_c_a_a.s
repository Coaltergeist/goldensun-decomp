	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_887_2008118
	push	{r5, r6, lr}
	ldr	r5, =0x22b9
	mov	r6, r0
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L146
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	b	.L14c
.L146:
	add	r0, r5, #2
	bl	__MessageID
.L14c:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008118


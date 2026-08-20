	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_933_2008c6c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	mov	r7, #0
	b	.Lm933_c7a
.Lm933_c78:
	add	r7, #1
.Lm933_c7a:
	cmp	r7, #2
	bgt	.Lm933_c9c
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsr	r6, r3, #16
	ldr	r3, =0x303
	add	r5, r6, r3
	mov	r0, r5
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm933_c78
	mov	r0, r5
	bl	__SetFlag
.Lm933_c9c:
	bl	__CutsceneStart
	mov	r3, r8
	lsl	r0, r3, #1
	add	r0, r8
	ldr	r3, =0x1a10
	add	r0, r6
	add	r0, r3
	bl	__MessageID
	add	r0, r6, #1
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_933_2008c6c


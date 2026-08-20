	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_887_200933c
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x203
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm887_136e
	mov	r1, #0x80
	lsl	r1, #9
	ldr	r2, =gScript_887__02009e6c
	mov	r0, #8
	bl	__Func_8092a1c
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1c77
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm887_1398
.Lm887_136e:
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r5, =0x1c79
	mov	r0, r5
	bl	__MessageID
	add	r5, #1
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	mov	r0, r5
	mov	r1, #1
	bl	__Func_801776c
.Lm887_1398:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_200933c


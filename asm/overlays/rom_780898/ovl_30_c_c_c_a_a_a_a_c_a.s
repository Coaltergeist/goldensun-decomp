	.include "macros.inc"

.thumb_func_start OvlFunc_883_2008cd0
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	ldr	r0, =0x1c9a
	bl	__MessageID
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x14
	mov	r0, #0x11
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008cd0


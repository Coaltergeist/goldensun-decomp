	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_954_2008974
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0x18
	bl	__DeleteFieldActor
	mov	r0, #0x19
	bl	__DeleteFieldActor
	mov	r0, #1
	bl	__Func_807808c
	bl	__CutsceneStart
	mov	r1, #0xa5
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #19
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xa1
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #19
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_809280c
	cmp	r5, #0
	bge	.L9d8
	mov	r0, #8
	mov	r1, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #0x23
	bl	__MapActor_SetAnim
	b	.L9e8
.L9d8:
	mov	r0, #8
	mov	r1, #8
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #0x1c
	bl	__MapActor_SetAnim
.L9e8:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xa3
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #16
	mov	r3, #0
	lsl	r0, #19
	bl	__Func_80933f8
	mov	r0, r5
	bl	OvlFunc_common1_fac
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008974


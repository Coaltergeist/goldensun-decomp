	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_2008b38
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0x28
	bl	__DeleteFieldActor
	mov	r0, #0x29
	bl	__DeleteFieldActor
	mov	r0, #1
	bl	__Func_807808c
	bl	__CutsceneStart
	mov	r1, #0xb0
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #15
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xf0
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #15
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__MapActor_Face
	cmp	r5, #0
	bge	.Lm955_b9c
	mov	r0, #8
	mov	r1, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #0x23
	bl	__MapActor_SetAnim
	b	.Lm955_bac
.Lm955_b9c:
	mov	r0, #8
	mov	r1, #8
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #0x1c
	bl	__MapActor_SetAnim
.Lm955_bac:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xd0
	mov	r2, #0xc0
	mov	r1, #0
	lsl	r2, #16
	mov	r3, #0
	lsl	r0, #15
	bl	__Func_80933f8
	mov	r0, r5
	bl	OvlFunc_common1_fac
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008b38


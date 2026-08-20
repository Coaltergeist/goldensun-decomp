	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_884_2008444
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x1a
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0x14
	bl	__MapActor_Face
	mov	r2, #0x28
	mov	r1, #0x15
	mov	r0, #0x1a
	bl	__MapActor_Face
	ldr	r0, =0x11c7
	bl	__MessageID
	mov	r0, #0x1a
	mov	r1, #0x14
	bl	OvlFunc_884_200a2c8
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0x88
	mov	r3, #1
	lsl	r2, #17
	neg	r1, r1
	ldr	r0, =0x1510000
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x1a
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #0x1a
	mov	r1, #0
	bl	__MapActor_Face
	mov	r0, #0x1a
	mov	r1, #0x28
	bl	OvlFunc_884_200a2c8
	mov	r0, #0x1a
	mov	r1, #2
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2008444


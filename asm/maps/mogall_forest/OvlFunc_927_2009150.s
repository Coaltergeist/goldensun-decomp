	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_927_2009150
	push	{r5, lr}
	mov	r0, #0xa
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xa
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	mov	r3, #0xc0
	lsl	r3, #11
	mov	r0, #0xa
	mov	r1, #0x58
	mov	r2, #0x78
	bl	OvlFunc_927_2008d90
	ldr	r2, [r5, #0x10]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	mov	r3, #1
	mov	r4, #0
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	str	r3, [sp, #8]
	mov	r3, #0
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #0xc]
	bl	OvlFunc_927_2008ae8
	mov	r0, #0xa
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xa
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	mov	r5, #0xc0
	bl	__MapActor_Surprise
	lsl	r5, #10
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r3, r5
	mov	r0, #0xa
	mov	r1, #0x58
	mov	r2, #0x98
	bl	OvlFunc_927_2008d90
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, r5
	mov	r0, #0xa
	mov	r1, #0x78
	mov	r2, #0xc0
	bl	OvlFunc_927_2008d90
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, r5
	mov	r0, #0xa
	mov	r1, #0x78
	mov	r2, #0xf0
	bl	OvlFunc_927_2008d90
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Face
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	add	sp, #0x10
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009150


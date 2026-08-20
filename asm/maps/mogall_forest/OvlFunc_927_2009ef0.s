	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_927_2009ef0
	push	{r5, r6, lr}
	mov	r0, #0x11
	sub	sp, #0x10
	bl	__MapActor_GetActor
	mov	r6, #0xc0
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0x11
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	lsl	r6, #11
	mov	r1, #0xc4
	mov	r3, r6
	lsl	r1, #1
	mov	r2, #0x68
	mov	r0, #0x11
	bl	OvlFunc_927_2008d90
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, [r5, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
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
	mov	r0, #0x11
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x11
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x11
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x11
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xbc
	mov	r3, r6
	lsl	r1, #1
	mov	r0, #0x11
	mov	r2, #0x98
	bl	OvlFunc_927_2008d90
	mov	r1, #0x11
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Face
	mov	r5, #0xc0
	mov	r0, #0xa
	bl	__CutsceneWait
	lsl	r5, #10
	mov	r1, #0xa4
	mov	r3, r5
	lsl	r1, #1
	mov	r0, #0x11
	mov	r2, #0xa0
	bl	OvlFunc_927_2008d90
	mov	r1, #0x11
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Face
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0x94
	mov	r3, r5
	lsl	r1, #1
	mov	r0, #0x11
	mov	r2, #0xa0
	bl	OvlFunc_927_2008d90
	mov	r2, #0
	mov	r1, #0x11
	mov	r0, #0
	bl	__MapActor_Face
	mov	r0, #6
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x11
	bl	__MapActor_SetPos
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x309
	bl	__SetFlag
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009ef0


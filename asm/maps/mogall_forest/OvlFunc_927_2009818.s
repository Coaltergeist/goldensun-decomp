	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_927_2009818
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0xe
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	mov	r1, #0xd4
	mov	r2, #0xf0
	ldr	r3, =0x79999
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #0xe
	bl	OvlFunc_927_2008d90
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #0xe
	bl	OvlFunc_927_2008e18
	mov	r1, #0xf
	mov	r0, #0xe
	bl	__Func_8092950
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x305
	bl	__SetFlag
	mov	r1, #0xd4
	mov	r2, #0xf0
	mov	r0, #0x11
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_2009818


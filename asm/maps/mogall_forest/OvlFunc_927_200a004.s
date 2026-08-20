	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_927_200a004
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x12
	mov	r1, #1
	bl	OvlFunc_927_2008ea8
	mov	r0, #0xba
	mov	r1, #1
	mov	r2, #0xfc
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #17
	mov	r3, #1
	bl	__Func_80933f8
	mov	r1, #0xba
	mov	r2, #0xfc
	mov	r3, #0x90
	lsl	r3, #12
	lsl	r2, #1
	lsl	r1, #2
	mov	r0, #0x12
	bl	OvlFunc_927_2008d90
	mov	r0, #0x12
	bl	OvlFunc_927_2008e18
	mov	r1, #0xf
	mov	r0, #0x12
	bl	__Func_8092950
	mov	r0, #0x12
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x30a
	bl	__SetFlag
	mov	r1, #0xba
	mov	r2, #0xfc
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_927_200a004


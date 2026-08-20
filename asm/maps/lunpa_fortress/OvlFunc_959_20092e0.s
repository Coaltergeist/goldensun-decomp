	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_20092e0
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #9
	bl	__MapActor_SetIdle
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0
	bl	__MapActor_TravelBy
	mov	r0, #9
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #9
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	OvlFunc_959_2009b24
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_20092e0


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_944_2008468
	push	{lr}
	bl	__CutsceneStart
	mov	r1, #0xa4
	ldr	r2, =0x1410000
	mov	r0, #0
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #1
	bl	__WaitFrames
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	OvlFunc_944_20084b0
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_944_2008468


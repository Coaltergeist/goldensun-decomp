	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_891_200901c
	push	{lr}
	ldr	r0, =0x80b
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm891_104c
	bl	__CutsceneStart
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r0, #9
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__MapActor_SetSpeed
	mov	r1, #0xfc
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0x98
	bl	__MapActor_TravelToAnimWait
	bl	__CutsceneEnd
.Lm891_104c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_200901c


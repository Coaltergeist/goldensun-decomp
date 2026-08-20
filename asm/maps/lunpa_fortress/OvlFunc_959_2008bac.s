	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_2008bac
	push	{lr}
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xc
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0xbc
	mov	r1, #0xf8
	lsl	r2, #1
	mov	r0, #0xc
	bl	__MapActor_TravelTo
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r0, #0xd7
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	OvlFunc_959_2008b4c
	ldr	r0, =0x943
	bl	__SetFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008bac


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_923_2008f48
	push	{r5, lr}
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xe4
	bl	__PlaySound
	ldr	r2, =0x3333
	mov	r0, #0
	ldr	r1, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #2
	bl	__Func_8092b08
	mov	r2, #8
	neg	r2, r2
	mov	r1, #0
	mov	r0, #0
	bl	__MapActor_TravelBy
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, #0x80
	lsl	r3, #12
	lsl	r5, #19
	add	r5, r3
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x1e
	bl	__CutsceneWait
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_923_2008f48


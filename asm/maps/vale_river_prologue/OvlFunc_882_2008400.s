	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_2008400
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.Lm882_57a0
	mov	r1, #0x26
	mov	r2, #0x48
	bl	__Func_8010560
	mov	r1, #0x92
	ldr	r2, =0x49e
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #3
	bl	__CutsceneWait
	mov	r0, #0xd
	bl	OvlFunc_882_200815c
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2008400


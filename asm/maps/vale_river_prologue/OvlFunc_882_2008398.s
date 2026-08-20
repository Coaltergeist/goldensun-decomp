	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_2008398
	push	{lr}
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.Lm882_578a
	mov	r1, #0x23
	mov	r2, #0x4a
	bl	__Func_8010560
	mov	r1, #0x66
	ldr	r2, =0x4b6
	mov	r0, #0
	bl	__MapActor_TravelToAnim
	mov	r0, #3
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	OvlFunc_882_200815c
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2008398


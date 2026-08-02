	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_2009050
	push	{lr}
	bl	__Func_8006358
	mov	r0, #2
	bl	__SetSoundFXMode
	ldr	r0, =1
	mov	r1, #1
	bl	__SetDestMap
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2009050

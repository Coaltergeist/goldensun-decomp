	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_933_2008498
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x8b2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm933_4be
	ldr	r0, =0x8b3
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm933_4be
	ldr	r0, =0x8b3
	bl	__SetFlag
	ldr	r0, =0x8b2
	bl	__SetFlag
.Lm933_4be:
	mov	r0, #0x7b
	bl	__PlaySound
	mov	r0, #3
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_933_2008498


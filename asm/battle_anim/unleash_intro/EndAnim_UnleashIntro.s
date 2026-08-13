	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start EndAnim_UnleashIntro  @ 0x080ccbdc
	push	{lr}
	ldr	r0, =Task_Anim_UnleashIntro
	bl	StopTask
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r1, #0x80
	ldr	r3, =Func_80008d4
	lsl	r1, #7
	ldr	r0, =0x6004000
	bl	_call_via_r3
	ldr	r0, =Func_80cd4b4
	bl	StopTask
	mov	r0, #0x28
	bl	gfree
	mov	r0, #0x27
	bl	gfree
	pop	{r0}
	bx	r0
.func_end EndAnim_UnleashIntro

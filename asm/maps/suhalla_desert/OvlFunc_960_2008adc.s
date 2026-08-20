	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_960_2008adc
	push	{lr}
	ldr	r0, =0x9b7
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm960_b04
	ldr	r0, =0x20e
	bl	__SetFlag
	mov	r1, #0xf0
	mov	r2, #0xce
	mov	r0, #0xc
	lsl	r1, #15
	lsl	r2, #18
	bl	__MapActor_SetPos
	ldr	r1, =gScript_960__020097a8
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
.Lm960_b04:
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008adc


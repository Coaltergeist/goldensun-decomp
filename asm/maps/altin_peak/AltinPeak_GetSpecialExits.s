	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AltinPeak_GetSpecialExits
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.Lm932_1e0
	ldr	r0, =gScript_943__0200c80c
	b	.Lm932_1ea
.Lm932_1e0:
	ldr	r3, =0x56
	mov	r0, #0
	cmp	r2, r3
	bne	.Lm932_1ea
	ldr	r0, =gOvl_0200c83c
.Lm932_1ea:
	pop	{r1}
	bx	r1
.func_end AltinPeak_GetSpecialExits


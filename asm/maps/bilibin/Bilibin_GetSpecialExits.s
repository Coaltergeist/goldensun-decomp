	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Bilibin_GetSpecialExits
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x20
	mov	r0, #0
	cmp	r2, r3
	bne	.Lm907_f4
	ldr	r0, =gOvl_020093fc
.Lm907_f4:
	pop	{r1}
	bx	r1
.func_end Bilibin_GetSpecialExits


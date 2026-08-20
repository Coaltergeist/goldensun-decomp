	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Kolima_GetSpecialExits
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x26
	mov	r0, #0
	cmp	r2, r3
	bne	.Lm911_1c4
	ldr	r0, =.Lm911_3010
.Lm911_1c4:
	pop	{r1}
	bx	r1
.func_end Kolima_GetSpecialExits


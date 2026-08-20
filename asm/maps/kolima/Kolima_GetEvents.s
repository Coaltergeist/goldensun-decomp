	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Kolima_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x27
	cmp	r2, r3
	bne	.Lm911_29c
	ldr	r0, =.Lm911_3590
	b	.Lm911_29e
.Lm911_29c:
	ldr	r0, =.Lm911_33b0
.Lm911_29e:
	pop	{r1}
	bx	r1
.func_end Kolima_GetEvents


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MogallForest_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x44
	cmp	r2, r3
	bne	.Lm927_24c4
	ldr	r0, =.Lm927_3a48
	b	.Lm927_24da
.Lm927_24c4:
	ldr	r3, =0x45
	cmp	r2, r3
	bne	.Lm927_24ce
	ldr	r0, =.Lm927_3b20
	b	.Lm927_24da
.Lm927_24ce:
	ldr	r3, =0x46
	cmp	r2, r3
	bne	.Lm927_24d8
	ldr	r0, =.Lm927_3c1c
	b	.Lm927_24da
.Lm927_24d8:
	ldr	r0, =.Lm927_3d54
.Lm927_24da:
	pop	{r1}
	bx	r1
.func_end MogallForest_GetEvents


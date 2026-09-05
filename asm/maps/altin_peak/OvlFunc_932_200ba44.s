	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200ba44
	push	{lr}
	ldr	r2, =0
	ldr	r3, =.Lm932_5260
	strh	r2, [r3]
	ldr	r3, =.Lm932_525c
	mov	r1, #0xc8
	strh	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_932_200b9c8
	bl	__StartTask
	b	.Lm932_3a6c

	.pool_aligned

.Lm932_3a6c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200ba44


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LuckyFountain_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xbd
	cmp	r2, r3
	bne	.Lm951_1c0
	ldr	r0, =Events_TolbiSpring
	b	.Lm951_1c2
.Lm951_1c0:
	ldr	r0, =Events_GameBuildings
.Lm951_1c2:
	pop	{r1}
	bx	r1
.func_end LuckyFountain_GetEvents


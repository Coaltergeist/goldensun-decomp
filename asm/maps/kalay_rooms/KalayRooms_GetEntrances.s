	.include "macros.inc"

.thumb_func_start KalayRooms_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x64
	cmp	r2, r3
	bne	.Lm937_48
	ldr	r0, =.Lm937_4d0
	b	.Lm937_54
.Lm937_48:
	ldr	r3, =0x65
	cmp	r2, r3
	bne	.Lm937_52
	ldr	r0, =.Lm937_6c8
	b	.Lm937_54
.Lm937_52:
	ldr	r0, =MapEntrance_ARRAY_937__020084a0
.Lm937_54:
	pop	{r1}
	bx	r1
.func_end KalayRooms_GetEntrances


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ValeCave_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5d
	cmp	r2, r3
	bne	.Lm934_16b4
	ldr	r0, =.Lm934_2420
	b	.Lm934_16ca
.Lm934_16b4:
	ldr	r3, =0x5e
	cmp	r2, r3
	bne	.Lm934_16be
	ldr	r0, =.Lm934_2450
	b	.Lm934_16ca
.Lm934_16be:
	ldr	r3, =0x5f
	cmp	r2, r3
	bne	.Lm934_16c8
	ldr	r0, =.Lm934_2624
	b	.Lm934_16ca
.Lm934_16c8:
	ldr	r0, =.Lm934_2414
.Lm934_16ca:
	pop	{r1}
	bx	r1
.func_end ValeCave_GetEvents


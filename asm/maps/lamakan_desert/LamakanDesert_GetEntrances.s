	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LamakanDesert_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.Lm933_3c4
	ldr	r0, =.Lm933_2174
	b	.Lm933_3e4
.Lm933_3c4:
	ldr	r3, =0x5a
	cmp	r2, r3
	bne	.Lm933_3ce
	ldr	r0, =.Lm933_21d4
	b	.Lm933_3e4
.Lm933_3ce:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.Lm933_3d8
	ldr	r0, =.Lm933_2234
	b	.Lm933_3e4
.Lm933_3d8:
	ldr	r3, =0x5c
	cmp	r2, r3
	bne	.Lm933_3e2
	ldr	r0, =.Lm933_22dc
	b	.Lm933_3e4
.Lm933_3e2:
	ldr	r0, =.Lm933_212c
.Lm933_3e4:
	pop	{r1}
	bx	r1
.func_end LamakanDesert_GetEntrances


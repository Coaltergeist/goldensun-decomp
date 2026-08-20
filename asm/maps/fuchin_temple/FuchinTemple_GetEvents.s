	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start FuchinTemple_GetEvents
	push	{lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x3c
	cmp	r2, r3
	bne	.Lm926_258c
	ldr	r0, =.Lm926_4b90
	b	.Lm926_25a0
.Lm926_258c:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.Lm926_259e
	ldr	r0, =.Lm926_5184
	b	.Lm926_25a0
.Lm926_259e:
	ldr	r0, =.Lm926_4d40
.Lm926_25a0:
	pop	{r1}
	bx	r1
.func_end FuchinTemple_GetEvents


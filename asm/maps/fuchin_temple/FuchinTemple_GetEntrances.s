	.include "macros.inc"

.thumb_func_start FuchinTemple_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x3c
	cmp	r2, r3
	bne	.Lm926_364
	ldr	r0, =gScript_943__0200c7a8
	b	.Lm926_366
.Lm926_364:
	ldr	r0, =.Lm926_4838
.Lm926_366:
	pop	{r1}
	bx	r1
.func_end FuchinTemple_GetEntrances


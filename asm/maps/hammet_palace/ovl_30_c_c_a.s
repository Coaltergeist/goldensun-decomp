	.include "macros.inc"

.thumb_func_start HammetPalace_GetActors
	push	{r5, lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x67
	cmp	r2, r3
	bne	.Lm938_8c
	ldr	r5, =.Lm938_1df4
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	b	.Lm938_8e
.Lm938_8c:
	ldr	r0, =gScript_918__02009ddc
.Lm938_8e:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end HammetPalace_GetActors

.thumb_func_start HammetPalace_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x67
	cmp	r2, r3
	bne	.Lm938_bc
	ldr	r0, =.Lm938_1f38
	b	.Lm938_be
.Lm938_bc:
	ldr	r0, =.Lm938_1f2c
.Lm938_be:
	pop	{r1}
	bx	r1
.func_end HammetPalace_GetEvents


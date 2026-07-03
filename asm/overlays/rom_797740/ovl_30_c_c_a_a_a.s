	.include "macros.inc"

.thumb_func_start OvlFunc_900_2008044
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.L5a
	ldr	r0, =.L3bc
	b	.L5c
.L5a:
	ldr	r0, =gOvl_0200835c
.L5c:
	pop	{r1}
	bx	r1
.func_end OvlFunc_900_2008044


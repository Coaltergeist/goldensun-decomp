	.include "macros.inc"

.thumb_func_start OvlFunc_941_2008044
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6a
	cmp	r2, r3
	bne	.L5c
	ldr	r0, =.L1cd8
	b	.L5e
.L5c:
	ldr	r0, =.L1cc0
.L5e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_941_2008044


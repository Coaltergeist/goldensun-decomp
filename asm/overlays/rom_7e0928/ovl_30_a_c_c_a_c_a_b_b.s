.include "macros.inc"
.include "gba.inc"
.thumb_func_start OvlFunc_956_2008204
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xfa
	ldr	r2, [r3]
	ldr	r3, =gState
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	mov	r3, #0xf0
	lsl	r3, #1
	add	r2, r3
	ldr	r5, [r2]
	bl	__MapActor_GetActor
	mov	r1, #0x12
	ldrsh	r3, [r0, r1]
	sub	r3, #0xb7
	cmp	r3, #3
	bhi	.L238
	ldr	r3, [r5, #8]
	ldr	r2, =0xffff3334
	add	r3, r2
	str	r3, [r5, #8]
	ldr	r3, [r0, #8]
	add	r3, r2
	str	r3, [r0, #8]
.L238:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008204

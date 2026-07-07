	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_20088c8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x23
	add	r2, r5
	mov	r12, r2
	mov	r3, #2
	ldrb	r2, [r2]
	mov	r1, r3
	orr	r1, r2
	mov	r3, r12
	strb	r1, [r3]
	ldr	r2, [r0, #0x10]
	ldr	r3, [r5, #0x10]
	cmp	r2, r3
	bge	.L906
	sub	r3, r2
	mov	r2, #0x80
	lsl	r2, #11
	add	r3, r2
	ldr	r2, [r5, #0xc]
	add	r2, r3
	ldr	r3, [r0, #0xc]
	cmp	r3, r2
	bgt	.L906
	mov	r3, #0xfd
	and	r1, r3
	mov	r3, r12
	strb	r1, [r3]
.L906:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_20088c8


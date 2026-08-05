	.include "macros.inc"

.thumb_func_start OvlFunc_882_200c5b8
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r6, [r0, #0x50]
	mov	r0, #0x16
	bl	__MapActor_GetActor
	ldr	r0, [r0, #0x50]
	ldrb	r3, [r6, #9]
	mov	r5, #0xd
	ldrb	r1, [r0, #9]
	neg	r5, r5
	mov	r2, #0xc
	and	r2, r3
	mov	r3, r5
	and	r3, r1
	orr	r3, r2
	strb	r3, [r0, #9]
	mov	r0, #8
	bl	__MapActor_GetActor
	ldrb	r2, [r6, #9]
	ldr	r1, [r0, #0x50]
	mov	r3, #0xc
	and	r3, r2
	ldrb	r2, [r1, #9]
	and	r5, r2
	orr	r5, r3
	strb	r5, [r1, #9]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200c5b8


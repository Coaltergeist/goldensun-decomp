	.include "macros.inc"

.thumb_func_start MapActor_SetIdle  @ 0x080920a0
	push	{lr}
	bl	GetFieldActor
	cmp	r0, #0
	beq	.L920ba
	mov	r1, r0
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	bl	_Actor_Stop
.L920ba:
	pop	{r0}
	bx	r0
.func_end MapActor_SetIdle


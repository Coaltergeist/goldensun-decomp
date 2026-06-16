	.include "macros.inc"

.thumb_func_start MapActor_RunScript  @ 0x080920fc
	push	{r5, r6, lr}
	mov	r6, r1
	bl	GetFieldActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L92122
	mov	r1, r5
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	mov	r1, r6
	bl	Actor_SetBehavior
	mov	r0, r5
	bl	_Actor_WaitScript
.L92122:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end MapActor_RunScript


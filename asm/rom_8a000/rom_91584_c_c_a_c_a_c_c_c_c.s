	.include "macros.inc"

.thumb_func_start MapActor_SetBehavior
	push	{r5, lr}
	mov	r5, r1
	bl	GetFieldActor
	cmp	r0, #0
	beq	.L9209a
	mov	r1, r0
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r1]
	mov	r1, r5
	bl	Actor_SetBehavior
.L9209a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end MapActor_SetBehavior

.thumb_func_start MapActor_SetIdle
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

.thumb_func_start MapActor_SetExtra
	push	{r5, r6, lr}
	mov	r6, r1
	bl	GetFieldActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L920de
	mov	r0, r6
	bl	MapActor_GetActor
	ldr	r1, =Data_9ff40
	str	r0, [r5, #0x68]
	mov	r0, r5
	bl	Actor_SetBehavior
.L920de:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end MapActor_SetExtra

.thumb_func_start MapActor_WaitScript
	push	{lr}
	bl	GetFieldActor
	cmp	r0, #0
	beq	.L920f6
	bl	_Actor_WaitScript
.L920f6:
	pop	{r0}
	bx	r0
.func_end MapActor_WaitScript

.thumb_func_start MapActor_RunScript
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


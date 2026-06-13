	.include "macros.inc"

.thumb_func_start OvlFunc_965_200910c
	push	{r5, lr}
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0xc
	bgt	.L1136
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #6
	bne	.L114c
	b	.L113e
.L1136:
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x12
	bne	.L114c
.L113e:
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x14
	bne	.L114c
	bl	OvlFunc_965_20090f4
	b	.L1150
.L114c:
	bl	__Func_8093e28
.L1150:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200910c

.thumb_func_start OvlFunc_965_2009158
	push	{lr}
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_80933f8
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__Func_8092708
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_2009158


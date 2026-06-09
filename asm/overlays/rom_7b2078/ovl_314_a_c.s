	.include "macros.inc"

.thumb_func_start OvlFunc_926_2008324
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, r0
	ldr	r3, [r5, #0x10]
	ldr	r0, [r2, #0x10]
	ldr	r1, [r2, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	__atan2
	strh	r0, [r5, #6]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_926_2008324

.thumb_func_start OvlFunc_926_200834c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x3c
	cmp	r2, r3
	bne	.L364
	ldr	r0, =gScript_943__0200c7a8
	b	.L366
.L364:
	ldr	r0, =.L4838
.L366:
	pop	{r1}
	bx	r1
.func_end OvlFunc_926_200834c


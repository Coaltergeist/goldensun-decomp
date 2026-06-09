	.include "macros.inc"

.thumb_func_start Func_8091780  @ 0x08091780
	push	{r5, lr}
	mov	r5, r0
	bl	Func_809177c
	mov	r0, r5
	bl	InitMapActors
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	GetFieldActor
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8091780


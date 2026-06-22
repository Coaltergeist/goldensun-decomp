	.include "macros.inc"

.thumb_func_start ActorCmd_FaceTarget  @ 0x0800da78
	push	{r5, lr}
	mov	r5, r0
	ldr	r2, [r5, #0x68]
	ldr	r3, [r5, #0x10]
	ldr	r0, [r2, #0x10]
	ldr	r1, [r2, #8]
	sub	r0, r3
	ldr	r3, [r5, #8]
	sub	r1, r3
	bl	atan2
	ldrh	r3, [r5, #4]
	add	r3, #1
	strh	r0, [r5, #6]
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end ActorCmd_FaceTarget


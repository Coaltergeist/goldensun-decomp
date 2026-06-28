	.include "macros.inc"

.thumb_func_start ActorCmd_ClearFlag  @ 0x0800d850
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, #4
	ldrsh	r3, [r5, r2]
	ldr	r2, [r5]
	lsl	r3, #2
	add	r3, r2
	ldr	r6, [r3, #4]
	mov	r0, r6
	bl	_GetFlag
	mov	r3, r5
	add	r3, #0x57
	strb	r0, [r3]
	mov	r0, r6
	bl	_ClearFlag
	ldrh	r3, [r5, #4]
	add	r3, #2
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end ActorCmd_ClearFlag


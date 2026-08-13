	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ActorCmd_SetAttr  @ 0x0800e9a0
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	add	r1, r3, #4
	ldr	r3, [r1]
	ldr	r2, =Data_80136e0
	lsl	r3, #2
	ldr	r3, [r2, r3]
	ldrh	r0, [r5, #4]
	cmp	r3, #0
	beq	.Le9ca
	ldr	r2, [r1, #4]
	mov	r0, r5
	mov	r1, #0
	bl	_call_via_r3
	ldrh	r0, [r5, #4]
.Le9ca:
	add	r3, r0, #3
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end ActorCmd_SetAttr

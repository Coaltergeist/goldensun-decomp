	.include "macros.inc"

.thumb_func_start ActorCmd_Travel  @ 0x0800da40
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	add	r3, #4
	ldmia	r3!, {r2}
	ldr	r1, [r5, #8]
	ldmia	r3!, {r0}
	add	r1, r2
	ldr	r4, [r3]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	add	r2, r0
	add	r3, r4
	mov	r0, r5
	bl	Actor_TravelTo
	ldrh	r3, [r5, #4]
	add	r3, #4
	strh	r3, [r5, #4]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end ActorCmd_Travel

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


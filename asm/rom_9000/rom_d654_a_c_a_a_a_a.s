	.include "macros.inc"

.thumb_func_start ActorCmd_CallNative  @ 0x0800d6a4
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r1, #4
	ldrsh	r6, [r5, r1]
	ldr	r2, [r5]
	lsl	r3, r6, #2
	add	r3, r2
	ldr	r3, [r3, #4]
	bl	_call_via_r3
	cmp	r0, #0
	beq	.Ld6c0
	mov	r0, #0
	b	.Ld6d0
.Ld6c0:
	mov	r1, #4
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5, #4]
	cmp	r3, r6
	bne	.Ld6ce
	add	r3, r2, #2
	strh	r3, [r5, #4]
.Ld6ce:
	mov	r0, #1
.Ld6d0:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end ActorCmd_CallNative


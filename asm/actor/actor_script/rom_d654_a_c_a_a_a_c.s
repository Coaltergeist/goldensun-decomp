	.include "macros.inc"

.thumb_func_start ActorCmd_Loop  @ 0x0800d710
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #4
	ldrsh	r2, [r5, r3]
	ldr	r3, [r5]
	lsl	r2, #2
	add	r3, r2
	add	r3, #4
	ldmia	r3!, {r4}
	ldr	r1, [r3]
	ldr	r3, =0xffff
	cmp	r4, r3
	beq	.Ld742
	mov	r0, r5
	add	r0, #0x5d
	ldrb	r2, [r0]
	add	r2, #1
	strb	r2, [r0]
	lsl	r3, r4, #16
	lsl	r2, #24
	lsr	r2, #24
	asr	r3, #16
	cmp	r2, r3
	bge	.Ld74a
	mov	r0, r5
.Ld742:
	bl	Actor_FindScriptMarker
	strh	r0, [r5, #4]
	b	.Ld754
.Ld74a:
	mov	r3, #0
	strb	r3, [r0]
	ldrh	r3, [r5, #4]
	add	r3, #3
	strh	r3, [r5, #4]
.Ld754:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end ActorCmd_Loop


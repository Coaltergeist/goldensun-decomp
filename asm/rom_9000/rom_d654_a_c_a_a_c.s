	.include "macros.inc"

.thumb_func_start ActorCmd_GotoIfNZ
	push	{r5, lr}
	mov	r5, r0
	mov	r2, #4
	ldrsh	r3, [r5, r2]
	ldr	r2, [r5]
	lsl	r3, #2
	add	r3, r2
	ldr	r1, [r3, #4]
	mov	r3, r5
	add	r3, #0x57
	ldrb	r3, [r3]
	ldrh	r0, [r5, #4]
	cmp	r3, #0
	beq	.Ld7a6
	mov	r0, r5
	bl	Actor_FindScriptMarker
	strh	r0, [r5, #4]
	b	.Ld7aa
.Ld7a6:
	add	r3, r0, #2
	strh	r3, [r5, #4]
.Ld7aa:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end ActorCmd_GotoIfNZ

.thumb_func_start ActorCmd_GotoIfZ
	push	{r5, lr}
	mov	r5, r0
	mov	r2, #4
	ldrsh	r3, [r5, r2]
	ldr	r2, [r5]
	lsl	r3, #2
	add	r3, r2
	ldr	r1, [r3, #4]
	mov	r3, r5
	add	r3, #0x57
	ldrb	r3, [r3]
	ldrh	r0, [r5, #4]
	cmp	r3, #0
	bne	.Ld7da
	mov	r0, r5
	bl	Actor_FindScriptMarker
	strh	r0, [r5, #4]
	b	.Ld7de
.Ld7da:
	add	r3, r0, #2
	strh	r3, [r5, #4]
.Ld7de:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end ActorCmd_GotoIfZ


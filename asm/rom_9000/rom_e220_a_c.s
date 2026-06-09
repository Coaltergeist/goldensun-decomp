	.include "macros.inc"

.thumb_func_start ActorAttrOp_width  @ 0x0800e334
	push	{lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le340
	strh	r4, [r0, #0x20]
	b	.Le360
.Le340:
	cmp	r1, #1
	bne	.Le34c
	ldrh	r3, [r0, #0x20]
	add	r3, r4
	strh	r3, [r0, #0x20]
	b	.Le360
.Le34c:
	lsl	r3, r4, #16
	ldrh	r2, [r0, #0x20]
	asr	r3, #16
	mov	r1, #0
	cmp	r2, r3
	bne	.Le35a
	mov	r1, #1
.Le35a:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le360:
	pop	{r0}
	bx	r0
.func_end ActorAttrOp_width


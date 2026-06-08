	.include "macros.inc"

.thumb_func_start ActorAttrOp_waitTimer
	push	{r5, lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le820
	mov	r3, r0
	add	r3, #0x5e
	strh	r4, [r3]
	b	.Le84a
.Le820:
	cmp	r1, #1
	bne	.Le830
	mov	r2, r0
	add	r2, #0x5e
	ldrh	r3, [r2]
	add	r3, r4
	strh	r3, [r2]
	b	.Le84a
.Le830:
	mov	r3, r0
	add	r3, #0x5e
	mov	r5, #0
	ldrsh	r2, [r3, r5]
	lsl	r3, r4, #16
	asr	r3, #16
	mov	r1, #0
	cmp	r2, r3
	bne	.Le844
	mov	r1, #1
.Le844:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le84a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end ActorAttrOp_waitTimer

.thumb_func_start ActorAttrOp_unk64
	push	{r5, lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le860
	mov	r3, r0
	add	r3, #0x64
	strh	r4, [r3]
	b	.Le88a
.Le860:
	cmp	r1, #1
	bne	.Le870
	mov	r2, r0
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, r4
	strh	r3, [r2]
	b	.Le88a
.Le870:
	mov	r3, r0
	add	r3, #0x64
	mov	r5, #0
	ldrsh	r2, [r3, r5]
	lsl	r3, r4, #16
	asr	r3, #16
	mov	r1, #0
	cmp	r2, r3
	bne	.Le884
	mov	r1, #1
.Le884:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le88a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end ActorAttrOp_unk64

.thumb_func_start ActorAttrOp_unk66
	push	{r5, lr}
	mov	r4, r2
	cmp	r1, #0
	bne	.Le8a0
	mov	r3, r0
	add	r3, #0x66
	strh	r4, [r3]
	b	.Le8ca
.Le8a0:
	cmp	r1, #1
	bne	.Le8b0
	mov	r2, r0
	add	r2, #0x66
	ldrh	r3, [r2]
	add	r3, r4
	strh	r3, [r2]
	b	.Le8ca
.Le8b0:
	mov	r3, r0
	add	r3, #0x66
	mov	r5, #0
	ldrsh	r2, [r3, r5]
	lsl	r3, r4, #16
	asr	r3, #16
	mov	r1, #0
	cmp	r2, r3
	bne	.Le8c4
	mov	r1, #1
.Le8c4:
	mov	r3, r0
	add	r3, #0x57
	strb	r1, [r3]
.Le8ca:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end ActorAttrOp_unk66


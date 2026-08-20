	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start UpdateRespawnMap  @ 0x0808b1d8
	push	{r5, r6, r7, lr}
	ldr	r0, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r0, r1
	mov	r4, #0xe1
	lsl	r4, #1
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	ldr	r2, =.L9e1d8
	add	r3, r0, r4
	mov	r7, #0
	ldrsh	r5, [r3, r7]
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	mov	r4, #1
	neg	r4, r4
	ldrh	r1, [r2]
	cmp	r3, r4
	beq	.L8b238
	mov	r7, #0xe2
	mov	r3, #0xe3
	lsl	r7, #1
	lsl	r3, #1
	mov	r12, r4
	add	r4, r0, r7
	add	r0, r3
.L8b20e:
	lsl	r3, r1, #16
	asr	r3, #16
	cmp	r3, r6
	bne	.L8b22c
	mov	r7, #2
	ldrsh	r3, [r2, r7]
	cmp	r3, r12
	beq	.L8b222
	cmp	r3, r5
	bne	.L8b22c
.L8b222:
	ldrh	r3, [r2, #4]
	strh	r3, [r4]
	ldrh	r3, [r2, #6]
	strh	r3, [r0]
	b	.L8b238
.L8b22c:
	add	r2, #8
	mov	r7, #0
	ldrsh	r3, [r2, r7]
	ldrh	r1, [r2]
	cmp	r3, r12
	bne	.L8b20e
.L8b238:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end UpdateRespawnMap


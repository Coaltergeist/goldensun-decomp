	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GetLocationName  @ 0x0808b158
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	mov	r6, r1
	ldr	r5, =.L9ddd8
	mov	r8, r3
	mov	r7, r0
	bl	GetMapArea
	ldrh	r4, [r5]
	mov	r1, r4
	lsl	r3, r1, #16
	mov	r2, #1
	asr	r3, #16
	neg	r2, r2
	mov	r12, r0
	cmp	r3, r2
	beq	.L8b1c4
	ldr	r0, =0x7fff
	mov	r14, r2
.L8b182:
	ldrb	r2, [r5, #3]
	mov	r3, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L8b196
	lsl	r3, r1, #16
	asr	r3, #16
	cmp	r3, r7
	bne	.L8b1b6
	b	.L8b19e
.L8b196:
	lsl	r3, r4, #16
	asr	r3, #16
	cmp	r3, r12
	bne	.L8b1b6
.L8b19e:
	ldrh	r2, [r5, #2]
	mov	r3, r0
	and	r3, r2
	cmp	r3, r0
	beq	.L8b1b0
	lsl	r3, r2, #17
	asr	r3, #17
	cmp	r3, r6
	bne	.L8b1b6
.L8b1b0:
	ldr	r5, [r5, #4]
	mov	r8, r5
	b	.L8b1c4
.L8b1b6:
	add	r5, #8
	ldrh	r1, [r5]
	lsl	r3, r1, #16
	asr	r3, #16
	mov	r4, r1
	cmp	r3, r14
	bne	.L8b182
.L8b1c4:
	mov	r0, r8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end GetLocationName


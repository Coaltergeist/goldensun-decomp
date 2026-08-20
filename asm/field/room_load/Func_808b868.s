	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808b868  @ 0x0808b868
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e70
	mov	r5, r0
	ldr	r7, =0x165
	mov	r0, #0xb2
	lsl	r0, #1
	ldr	r6, [r3]
	bl	_ClearFlag
	mov	r0, r7
	bl	_SetFlag
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	mov	r2, #1
	neg	r2, r2
	cmp	r3, r2
	beq	.L8b8d8
	mov	r4, r6
	mov	r0, r7
	mov	r12, r2
	add	r4, #0xec
.L8b894:
	mov	r2, #2
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.L8b8ce
	ldr	r2, [r5, #8]
	ldr	r3, [r4]
	ldr	r1, [r5, #0x10]
	cmp	r3, r2
	bgt	.L8b8cc
	mov	r3, r6
	add	r3, #0xf4
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L8b8cc
	mov	r3, r6
	add	r3, #0xf0
	ldr	r3, [r3]
	cmp	r3, r1
	bgt	.L8b8cc
	mov	r3, r6
	add	r3, #0xf8
	ldr	r3, [r3]
	cmp	r1, r3
	bgt	.L8b8cc
	mov	r3, #0xb2
	lsl	r3, #1
	strh	r3, [r5, #2]
	b	.L8b8ce
.L8b8cc:
	strh	r0, [r5, #2]
.L8b8ce:
	add	r5, #0x18
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, r12
	bne	.L8b894
.L8b8d8:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808b868


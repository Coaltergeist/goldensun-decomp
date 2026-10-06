	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808b98c  @ 0x0808b98c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001ebc
	ldr	r5, [r3]
	mov	r3, #2
	mov	r1, #0
	neg	r3, r3
	mov	r10, r1
	mov	r6, #0x34
	mov	r8, r3
	mov	r7, #0x39
.L8b9a6:
	ldr	r0, [r6, r5]
	cmp	r0, #0
	beq	.L8b9c6
	mov	r2, r0
	add	r2, #0x54
	mov	r3, #1
	strb	r3, [r2]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #0x1d]
	mov	r1, r8
	and	r3, r1
	strb	r3, [r2, #0x1d]
	bl	_DeleteActor
	mov	r3, r10
	str	r3, [r6, r5]
.L8b9c6:
	sub	r7, #1
	add	r6, #4
	cmp	r7, #0
	bge	.L8b9a6
	ldr	r6, [r5, #4]
	mov	r3, #0
	str	r3, [r5, #4]
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	cmp	r6, #0
	beq	.L8b9e8
	bl	FindMapActorSlot
	mov	r1, r0
	mov	r0, r6
	bl	LoadMapActors
.L8b9e8:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808b98c


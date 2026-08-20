	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GiveItem  @ 0x08078618
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x18
	add	r5, sp, #4
	mov	r8, r0
	mov	r0, r5
	bl	Func_80796c4
	mov	r6, #0
	mov	r7, r0
	mov	r3, r5
	cmp	r6, r7
	bge	.L78654
.L78634:
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	mov	r1, r8
	add	r3, #2
	mov	r0, r5
	str	r3, [sp]
	bl	GiveItemTo
	ldr	r3, [sp]
	cmp	r0, #0
	blt	.L7864e
	mov	r0, r5
	b	.L78658
.L7864e:
	add	r6, #1
	cmp	r6, r7
	blt	.L78634
.L78654:
	mov	r0, #1
	neg	r0, r0
.L78658:
	add	sp, #0x18
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end GiveItem


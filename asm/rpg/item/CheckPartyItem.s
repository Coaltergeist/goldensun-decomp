	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CheckPartyItem  @ 0x08078698
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r5, r3, r2
	mov	r8, r0
	mov	r1, r8
	ldr	r0, [r5]
	sub	sp, #0x18
	bl	CheckItem
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L786c2
	ldr	r0, [r5]
	b	.L786f8
.L786be:
	mov	r0, r5
	b	.L786f8
.L786c2:
	add	r5, sp, #4
	mov	r0, r5
	bl	Func_80796c4
	mov	r6, #0
	mov	r7, r0
	mov	r3, r5
	cmp	r6, r7
	bge	.L786f4
.L786d4:
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	mov	r1, r8
	add	r3, #2
	mov	r0, r5
	str	r3, [sp]
	bl	CheckItem
	mov	r2, #1
	neg	r2, r2
	ldr	r3, [sp]
	cmp	r0, r2
	bne	.L786be
	add	r6, #1
	cmp	r6, r7
	blt	.L786d4
.L786f4:
	mov	r0, #1
	neg	r0, r0
.L786f8:
	add	sp, #0x18
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end CheckPartyItem


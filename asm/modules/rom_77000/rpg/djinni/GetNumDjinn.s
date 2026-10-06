	.include "macros.inc"

.thumb_func_start GetNumDjinn  @ 0x0807a5bc
	push	{r5, r6, r7, lr}
	sub	sp, #0x24
	add	r6, sp, #4
	mov	r7, r0
	mov	r0, r6
	mov	r5, #0
	bl	Func_80796c4
	cmp	r5, r0
	bge	.L7a61c
	mov	r1, r6
	mov	r6, r0
.L7a5d4:
	ldrh	r0, [r1]
	add	r1, #2
	str	r1, [sp]
	bl	GetUnit
	mov	r2, r0
	mov	r0, #1
	neg	r0, r0
	ldr	r1, [sp]
	cmp	r7, r0
	bne	.L7a60c
	mov	r0, #0x8c
	lsl	r0, #1
	add	r3, r2, r0
	ldrb	r3, [r3]
	add	r0, #1
	add	r5, r3
	add	r3, r2, r0
	ldrb	r3, [r3]
	add	r0, #1
	add	r5, r3
	add	r3, r2, r0
	ldrb	r3, [r3]
	add	r0, #1
	add	r5, r3
	add	r3, r2, r0
	ldrb	r3, [r3]
	b	.L7a614
.L7a60c:
	mov	r0, #0x8c
	lsl	r0, #1
	add	r3, r7, r0
	ldrb	r3, [r2, r3]
.L7a614:
	add	r5, r3
	sub	r6, #1
	cmp	r6, #0
	bne	.L7a5d4
.L7a61c:
	mov	r0, r5
	add	sp, #0x24
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end GetNumDjinn


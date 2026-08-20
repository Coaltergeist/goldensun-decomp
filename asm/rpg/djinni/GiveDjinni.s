	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GiveDjinni  @ 0x0807a1b4
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r7, r2
	bl	GetUnit
	mov	r3, #0x8c
	lsl	r3, #1
	add	r6, r5, r3
	ldrb	r4, [r0, r6]
	mov	r3, r4
	cmp	r3, #9
	bhi	.L7a1de
	lsl	r3, r5, #2
	mov	r1, r3
	add	r1, #0xf8
	mov	r2, #1
	ldr	r3, [r0, r1]
	lsl	r2, r7
	and	r3, r2
	cmp	r3, #0
	beq	.L7a1e4
.L7a1de:
	mov	r0, #1
	neg	r0, r0
	b	.L7a1f0
.L7a1e4:
	add	r3, r4, #1
	strb	r3, [r0, r6]
	ldr	r3, [r0, r1]
	orr	r3, r2
	str	r3, [r0, r1]
	mov	r0, #0
.L7a1f0:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end GiveDjinni


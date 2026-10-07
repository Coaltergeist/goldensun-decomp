	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801eea0  @ 0x0801eea0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e90
	ldr	r5, [r3]
	sub	r3, #4
	ldr	r3, [r3]
	ldr	r2, =0xea5
	add	r3, r2
	ldrb	r3, [r3]
	mov	r6, r0
	mov	r7, #4
	cmp	r3, #0
	beq	.L1eec2
	mov	r0, #0
	bl	_Func_80b6a60
	mov	r7, #3
	b	.L1eec6
.L1eec2:
	bl	_GetPartySize
.L1eec6:
	mov	r3, #1
	and	r3, r6
	cmp	r3, #0
	beq	.L1eed2
	add	r7, #1
	b	.L1eed8
.L1eed2:
	mov	r3, #3
	neg	r3, r3
	and	r6, r3
.L1eed8:
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r0, r3, #1
	mov	r3, #2
	and	r3, r6
	add	r1, r0, #1
	cmp	r3, #0
	beq	.L1eeea
	add	r1, r0, #6
.L1eeea:
	mov	r3, #0x1e
	sub	r3, r1
	mov	r2, #0
	strh	r3, [r5, #4]
	strh	r2, [r5, #6]
	strh	r1, [r5, #8]
	strh	r7, [r5, #0xa]
	strh	r6, [r5, #0xc]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801eea0


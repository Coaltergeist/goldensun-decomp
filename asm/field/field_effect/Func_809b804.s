	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809b804  @ 0x0809b804
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x45
	mov	r3, #0
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	beq	.L9b866
	ldrh	r3, [r5, #0x38]
	add	r3, #1
	strh	r3, [r5, #0x38]
	mov	r1, #0x3a
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5, #0x3a]
	cmp	r3, #0
	beq	.L9b82a
	sub	r3, r2, #1
	strh	r3, [r5, #0x3a]
	b	.L9b836
.L9b82a:
	ldr	r3, [r5, #0x34]
	cmp	r3, #0
	beq	.L9b836
	mov	r0, r5
	bl	_call_via_r3
.L9b836:
	mov	r3, #0
	ldrsb	r3, [r6, r3]
	cmp	r3, #0
	beq	.L9b866
	mov	r3, r5
	add	r3, #0x43
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L9b852
	mov	r0, r5
	bl	Func_809b8f4
.L9b852:
	mov	r3, r5
	add	r3, #0x44
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L9b866
	mov	r0, r5
	bl	Func_809b86c
.L9b866:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_809b804

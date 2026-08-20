	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808e0b0  @ 0x0808e0b0
	push	{lr}
	mov	r3, r0
	add	r3, #0x54
	ldrb	r2, [r3]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #1
	bne	.L8e10a
	ldr	r0, [r0, #0x50]
	sub	r4, r1, #1
	mov	r12, r0
	cmp	r1, #0
	bne	.L8e0d8
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	ldr	r1, =gFieldMoveRanges + 0x32
	lsr	r3, #1
	mov	r2, #7
	and	r3, r2
	ldrb	r4, [r1, r3]
.L8e0d8:
	mov	r3, r12
	add	r3, #0x27
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L8e102
	mov	r0, r12
	add	r0, #0x28
	mov	r1, r3
.L8e0e8:
	ldmia	r0!, {r2}
	cmp	r2, #0
	beq	.L8e0fc
	ldr	r3, [r2, #0x10]
	cmp	r3, #0
	beq	.L8e0fc
	ldrb	r3, [r2, #5]
	cmp	r3, #0xf
	beq	.L8e0fc
	strb	r4, [r2, #5]
.L8e0fc:
	sub	r1, #1
	cmp	r1, #0
	bne	.L8e0e8
.L8e102:
	mov	r2, r12
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
.L8e10a:
	pop	{r0}
	bx	r0
.func_end Func_808e0b0


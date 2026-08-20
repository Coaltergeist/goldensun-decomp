	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GetFieldMoveRange  @ 0x0808ddb8
	push	{lr}
	ldr	r2, =gFieldMoveRanges
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	mov	r4, #1
	neg	r4, r4
	mov	r1, #0x10
	b	.L8ddd2
.L8ddc8:
	add	r2, #2
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	mov	r4, #1
	neg	r4, r4
.L8ddd2:
	cmp	r3, r4
	beq	.L8dde0
	add	r2, #2
	cmp	r0, r3
	bne	.L8ddc8
	mov	r3, #0
	ldrsh	r1, [r2, r3]
.L8dde0:
	mov	r0, r1
	pop	{r1}
	bx	r1
.func_end GetFieldMoveRange


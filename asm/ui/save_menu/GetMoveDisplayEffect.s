	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GetMoveDisplayEffect  @ 0x0802706c
	push	{r5, lr}
	ldrb	r3, [r0, #1]
	mov	r2, #0xf
	and	r2, r3
	mov	r5, #0
	cmp	r2, #1
	bne	.L2707c
	mov	r5, #1
.L2707c:
	cmp	r2, #0xb
	bne	.L27082
	mov	r5, #2
.L27082:
	ldrb	r3, [r0, #3]
	cmp	r3, #3
	bne	.L2708a
	mov	r5, #3
.L2708a:
	cmp	r3, #4
	bne	.L27090
	mov	r5, #4
.L27090:
	cmp	r3, #0x40
	bne	.L27096
	mov	r5, #6
.L27096:
	ldrb	r0, [r0, #3]
	bl	_Func_8079ef8
	cmp	r0, #0
	beq	.L270a2
	mov	r5, #5
.L270a2:
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end GetMoveDisplayEffect

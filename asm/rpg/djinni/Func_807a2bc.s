	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_807a2bc  @ 0x0807a2bc
	push	{r5, r6, lr}
	mov	r6, r2
	mov	r5, r1
	bl	GetUnit
	mov	r3, #0x84
	lsl	r3, #1
	lsl	r5, #2
	add	r5, r3
	ldr	r3, [r0, r5]
	mov	r2, #1
	lsl	r2, r6
	and	r3, r2
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_807a2bc


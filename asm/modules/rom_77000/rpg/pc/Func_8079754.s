	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8079754  @ 0x08079754
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	add	r2, r0
	cmp	r2, #0x1c
	ble	.L7976a
	mov	r2, #0x1c
.L7976a:
	cmp	r2, #0
	bge	.L79770
	mov	r2, #0
.L79770:
	strb	r2, [r3]
	mov	r0, r2
	pop	{r1}
	bx	r1
.func_end Func_8079754


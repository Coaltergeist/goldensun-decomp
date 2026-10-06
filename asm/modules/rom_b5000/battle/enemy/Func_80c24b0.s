	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c24b0  @ 0x080c24b0
	push	{lr}
	ldr	r3, =iwram_3001e74
	mov	r2, #0xa6
	ldr	r0, [r3]
	lsl	r2, #3
	add	r1, r0, r2
	ldr	r3, =gState
	mov	r2, #0x8f
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	strh	r2, [r3]
	str	r2, [r1]
	str	r2, [r1, #4]
	str	r2, [r1, #8]
	ldr	r1, =0x542
	mov	r3, #3
	add	r0, r1
.Lc24d4:
	sub	r3, #1
	strh	r2, [r0]
	sub	r0, #2
	cmp	r3, #0
	bge	.Lc24d4
	pop	{r0}
	bx	r0
.func_end Func_80c24b0


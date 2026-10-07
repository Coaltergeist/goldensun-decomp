	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80198dc  @ 0x080198dc
	push	{lr}
	ldr	r3, =iwram_3001e8c
	ldr	r4, =0x12dc
	ldr	r3, [r3]
	add	r2, r3, r4
	sub	r4, #0x20
	mov	r1, #0
	mov	r0, #0
	add	r3, r4
.L198ee:
	add	r1, #1
	stmia	r3!, {r0}
	strh	r0, [r2]
	add	r2, #2
	cmp	r1, #8
	bne	.L198ee
	pop	{r0}
	bx	r0
.func_end Func_80198dc


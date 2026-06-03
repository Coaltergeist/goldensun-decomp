	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808ed4c
	push	{lr}
	bl	Func_808ec14
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.L8ed5e
	mov	r0, #0
	b	.L8ed6e
.L8ed5e:
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	lsl	r2, r0, #3
	add	r3, r2
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
.L8ed6e:
	pop	{r1}
	bx	r1
.func_end Func_808ed4c


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80cd508  @ 0x080cd508
	push	{lr}
	ldr	r3, =iwram_3001eec
	ldr	r0, [r3]
	ldr	r3, =0x7818
	mov	r1, #8
	add	r0, r3
	ldr	r3, =Func_80008d4
	bl	_call_via_r3
	pop	{r0}
	bx	r0
.func_end Func_80cd508


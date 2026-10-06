	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f7e34  @ 0x080f7e34
	push	{lr}
	ldr	r3, =ewram_2004c00
	ldr	r1, [r3]
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #2
	add	r4, r3, #4
	ldr	r0, [r1, r4]
	cmp	r0, #0
	beq	.Lf7e56
	ldr	r2, [r1, r3]
	cmp	r2, #0
	beq	.Lf7e50
	str	r0, [r2, #4]
.Lf7e50:
	ldr	r2, [r1, r4]
	ldr	r3, [r1, r3]
	str	r3, [r2]
.Lf7e56:
	pop	{r0}
	bx	r0
.func_end Func_80f7e34


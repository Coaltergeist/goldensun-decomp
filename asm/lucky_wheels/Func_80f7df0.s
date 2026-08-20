	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f7df0  @ 0x080f7df0
	push	{r5, lr}
	ldr	r3, =ewram_2004c00
	lsl	r1, r0, #1
	ldr	r4, [r3]
	ldr	r3, =0x3404
	add	r1, r0
	lsl	r0, #2
	add	r0, r3
	ldr	r2, [r4, r0]
	mov	r0, #0xc0
	lsl	r2, #2
	lsl	r1, #2
	add	r3, r4, r2
	lsl	r0, #6
	add	r3, r0
	add	r5, r1, #4
	str	r3, [r4, r5]
	add	r2, r0
	ldr	r3, [r4, r2]
	str	r3, [r4, r1]
	add	r3, r4, r1
	str	r3, [r4, r2]
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.Lf7e24
	str	r3, [r2, #4]
.Lf7e24:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80f7df0


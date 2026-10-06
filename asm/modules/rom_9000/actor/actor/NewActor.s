	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start NewActor  @ 0x0800c0cc
	push	{lr}
	ldr	r3, =iwram_3001e64
	ldr	r2, [r3]
	ldr	r3, [r2]
	mov	r0, #0
	mov	r1, #0
	b	.Lc0e4
.Lc0da:
	add	r1, #1
	add	r2, #0x70
	cmp	r1, #0x3f
	bgt	.Lc0ea
	ldr	r3, [r2]
.Lc0e4:
	cmp	r3, #0
	bne	.Lc0da
	mov	r0, r2
.Lc0ea:
	pop	{r1}
	bx	r1
.func_end NewActor


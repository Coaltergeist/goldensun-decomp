	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b2884  @ 0x080b2884
	push	{lr}
	ldr	r3, =iwram_3001f2c
	ldr	r2, =0x3aa
	ldr	r3, [r3]
	add	r3, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	cmp	r1, #1
	bne	.Lb289e
	ldr	r3, =0xd2e
	ldr	r2, =0xd24
	sub	r3, r2
	add	r0, r3
.Lb289e:
	cmp	r1, #2
	bne	.Lb28aa
	ldr	r3, =0xd38
	ldr	r2, =0xd24
	sub	r3, r2
	add	r0, r3
.Lb28aa:
	cmp	r1, #3
	bne	.Lb28b6
	ldr	r3, =0xd42
	ldr	r2, =0xd24
	sub	r3, r2
	add	r0, r3
.Lb28b6:
	pop	{r1}
	bx	r1
.func_end Func_80b2884


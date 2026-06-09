	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8015e8c  @ 0x08015e8c
	push	{lr}
	ldr	r3, =iwram_3001e8c
	ldr	r2, =0xd98
	ldr	r3, [r3]
	add	r1, r3, r2
	ldr	r0, [r1]
	cmp	r0, #0
	beq	.L15eae
	ldr	r2, [r0]
	cmp	r2, #0
	bne	.L15ea8
	ldr	r4, =0xd9c
	add	r3, r4
	str	r1, [r3]
.L15ea8:
	mov	r3, #0
	str	r2, [r1]
	str	r3, [r0]
.L15eae:
	pop	{r1}
	bx	r1
.func_end Func_8015e8c


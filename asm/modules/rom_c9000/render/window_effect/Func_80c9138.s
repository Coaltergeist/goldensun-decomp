	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c9138  @ 0x080c9138
	push	{r5, lr}
	ldr	r3, =iwram_3001eec
	ldr	r1, =0x7790
	ldr	r4, [r3]
	add	r5, r4, r1
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	add	r1, #4
	add	r2, r4, r1
	ldr	r2, [r2]
	cmp	r3, r2
	bne	.Lc9182
	ldr	r3, =0x77d0
	add	r1, r4, r3
	ldr	r3, [r1]
	ldr	r2, =REG_BG2X
	str	r3, [r2]
	ldr	r3, =0x77d4
	add	r0, r4, r3
	ldr	r3, [r0]
	add	r2, #4
	str	r3, [r2]
	ldr	r3, =0x7798
	add	r2, r4, r3
	ldr	r2, [r2]
	ldr	r3, [r1]
	add	r3, r2
	str	r3, [r1]
	ldr	r1, =0x779c
	add	r2, r4, r1
	ldr	r3, [r0]
	ldr	r2, [r2]
	add	r3, r2
	str	r3, [r0]
	mov	r3, #0
	str	r3, [r5]
.Lc9182:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80c9138


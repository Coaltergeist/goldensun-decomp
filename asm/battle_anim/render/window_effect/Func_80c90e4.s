	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c90e4  @ 0x080c90e4
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
	bne	.Lc911c
	ldr	r2, =0x7798
	ldr	r1, =iwram_3001ad0
	add	r3, r4, r2
	ldr	r2, [r3]
	ldrh	r3, [r1, #4]
	add	r3, r2
	ldr	r2, =0x779c
	strh	r3, [r1, #4]
	add	r3, r4, r2
	ldr	r2, [r3]
	ldrh	r3, [r1, #6]
	mov	r0, #0
	add	r3, r2
	strh	r3, [r1, #6]
	str	r0, [r5]
.Lc911c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80c90e4


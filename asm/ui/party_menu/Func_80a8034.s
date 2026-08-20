	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a8034  @ 0x080a8034
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r6, [r3]
	mov	r0, r6
	sub	sp, #4
	bl	Func_80a1814
	mov	r5, #0
	mov	r1, #2
	mov	r2, #2
	mov	r3, #8
	str	r5, [sp]
	bl	Func_80a1870
	mov	r2, #0x88
	lsl	r2, #1
	add	r3, r6, r2
	add	r2, #1
	str	r5, [r6, #0x28]
	str	r5, [r6, #0x24]
	str	r5, [r6, #0x2c]
	str	r5, [r6, #0x20]
	strb	r5, [r3]
	add	r3, r6, r2
	strb	r5, [r3]
	mov	r3, #0x89
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #8
	strb	r3, [r2]
	ldr	r3, =0x113
	add	r2, r6, r3
	mov	r3, #2
	strb	r3, [r2]
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80a8034


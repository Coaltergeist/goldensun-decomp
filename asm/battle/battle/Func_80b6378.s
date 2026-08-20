	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b6378  @ 0x080b6378
	push	{r5, r6, lr}
	sub	sp, #0x10
	ldr	r3, =iwram_3001e74
	mov	r5, sp
	mov	r0, r5
	ldr	r6, [r3]
	bl	Func_80b6a60
	mov	r1, #0
	mov	r4, r0
	cmp	r1, r4
	bge	.Lb63a4
	mov	r0, r5
.Lb6392:
	ldrh	r2, [r0]
	mov	r3, r1
	add	r2, #0x48
	sub	r3, #0x80
	add	r1, #1
	add	r0, #2
	strb	r3, [r6, r2]
	cmp	r1, r4
	blt	.Lb6392
.Lb63a4:
	add	sp, #0x10
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80b6378


	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80be02c  @ 0x080be02c
	push	{r5, lr}
	ldr	r3, =iwram_3001e74
	ldr	r1, [r3]
	mov	r3, #0x80
	lsl	r3, #4
	add	r2, r1, r3
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.Lbe042
	mov	r3, #1
	str	r3, [r2]
.Lbe042:
	cmp	r3, #4
	beq	.Lbe058
	mov	r3, #0x80
	lsl	r3, #4
	add	r5, r1, r3
.Lbe04c:
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r5]
	cmp	r3, #4
	bne	.Lbe04c
.Lbe058:
	ldr	r0, =Func_80bd898
	bl	StopTask
	bl	Func_80bdfec
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80be02c

	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80064b8
	push	{r5, lr}
	ldr	r3, =ewram_2002080
	ldr	r3, [r3]
	mov	r5, #0
	b	.L64d4
.L64c2:
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, =0x927bf
	add	r5, #1
	cmp	r5, r3
	bhi	.L64e0
	ldr	r3, =ewram_2002080
	ldr	r3, [r3]
.L64d4:
	cmp	r3, #0
	bne	.L64c2
	ldr	r3, =ewram_20023ac
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L64c2
.L64e0:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80064b8


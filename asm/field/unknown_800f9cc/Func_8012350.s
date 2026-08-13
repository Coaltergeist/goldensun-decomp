	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8012350  @ 0x08012350
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e70
	ldr	r5, [r3]
	ldr	r3, [r5, #4]
	mov	r6, #0
	b	.L1236e
.L1235c:
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #0x96
	add	r6, #1
	lsl	r3, #1
	cmp	r6, r3
	bge	.L12378
	ldr	r3, [r5, #4]
.L1236e:
	cmp	r3, #0xff
	bgt	.L1235c
	ldr	r3, [r5, #8]
	cmp	r3, #0xff
	bgt	.L1235c
.L12378:
	mov	r3, #0
	str	r3, [r5, #0xc]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8012350

	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c0e38  @ 0x080c0e38
	push	{r5, r6, r7, lr}
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lc0e48	@ 0x2044
	ldr	r7, =REG_BLDALPHA
	strh	r3, [r2]
	ldr	r6, .Lc0e4c	@ 0x1010
	mov	r5, #1
	b	.Lc0e58

	.align	2, 0
.Lc0e48:
	.word	0x2044
.Lc0e4c:
	.word	0x1010
	.pool

.Lc0e58:
	sub	r3, r6, r5
	strh	r3, [r7]
	mov	r0, #1
	add	r5, #2
	bl	WaitFrames
	cmp	r5, #0x10
	ble	.Lc0e58
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80c0e38

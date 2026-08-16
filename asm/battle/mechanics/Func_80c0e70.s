	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c0e70  @ 0x080c0e70
	push	{r5, r6, r7, lr}
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lc0e80	@ 0x2044
	ldr	r7, =REG_BLDALPHA
	strh	r3, [r2]
	ldr	r6, .Lc0e84	@ 0x1000
	mov	r5, #1
	b	.Lc0e90

	.align	2, 0
.Lc0e80:
	.word	0x2044
.Lc0e84:
	.word	0x1000
	.pool

.Lc0e90:
	add	r3, r5, r6
	strh	r3, [r7]
	mov	r0, #1
	add	r5, #2
	bl	WaitFrames
	cmp	r5, #0x10
	ble	.Lc0e90
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80c0e70

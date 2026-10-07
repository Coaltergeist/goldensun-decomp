	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80170c4  @ 0x080170c4
	push	{r5, lr}
	mov	r4, r2
	sub	sp, #4
	mov	r5, r0
	cmp	r4, #0
	ble	.L170e8
	mov	r0, sp
	mov	r2, #0x81
	add	r0, #2
	lsl	r2, #24
	strh	r1, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	orr	r2, r4
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	lsl	r3, r4, #1
	add	r5, r3
.L170e8:
	mov	r0, r5
	add	sp, #4
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80170c4


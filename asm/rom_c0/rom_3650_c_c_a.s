	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SetRegAnimDest  @ 0x0800387c
	push	{r5, r6, lr}
	ldr	r4, =gDMATaskCount
	mov	r6, r0
	mov	r0, r1
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r5, r3
	strh	r1, [r1]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L38aa
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r4
	add	r3, #4
	stmia	r3!, {r0}
	add	r2, #1
	strh	r2, [r4]
	stmia	r3!, {r6}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L38aa:
	strh	r5, [r1]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end SetRegAnimDest


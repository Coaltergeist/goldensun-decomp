	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8021360  @ 0x08021360
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #8
	bhi	.L21382
	mov	r0, #0x20
	bl	_GetFlag
	cmp	r0, #0
	bne	.L2137c
	ldr	r3, =.L37206
	lsl	r2, r5, #1
	ldrsh	r0, [r3, r2]
	b	.L21382
.L2137c:
	ldr	r3, =.L37216
	lsl	r2, r5, #1
	ldrsh	r0, [r3, r2]
.L21382:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_8021360

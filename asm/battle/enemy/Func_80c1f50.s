	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c1f50  @ 0x080c1f50
	push	{r5, r6, r7, lr}
	mov	r6, r0
	mov	r5, #0
	mov	r7, #0x31
.Lc1f58:
	mov	r0, r5
	add	r0, #0x80
	bl	_GetUnit
	mov	r2, r0
	mov	r0, #0x95
	lsl	r0, #1
	add	r3, r2, r0
	ldrb	r1, [r3]
	cmp	r1, #1
	bne	.Lc1f9a
	sub	r0, #2
	add	r3, r2, r0
	ldrb	r3, [r3]
	cmp	r3, r6
	bne	.Lc1f9a
	ldrb	r3, [r2]
	mov	r0, #0
	cmp	r3, #0
	bne	.Lc1f86
	strb	r7, [r2]
	strb	r0, [r2, r1]
	b	.Lc1fa0
.Lc1f86:
	add	r0, #1
	cmp	r0, #0xd
	bgt	.Lc1fa0
	ldrb	r1, [r2, r0]
	cmp	r1, #0
	bne	.Lc1f86
	add	r3, r0, #1
	strb	r7, [r2, r0]
	strb	r1, [r2, r3]
	b	.Lc1fa0
.Lc1f9a:
	add	r5, #1
	cmp	r5, #5
	ble	.Lc1f58
.Lc1fa0:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80c1f50


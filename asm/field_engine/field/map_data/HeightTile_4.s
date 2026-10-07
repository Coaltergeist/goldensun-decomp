	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start HeightTile_4  @ 0x08011d60
	push	{r5, lr}
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	lsl	r4, r3, #19
	mov	r3, #1
	ldrsb	r3, [r0, r3]
	lsl	r0, r3, #19
	mov	r5, r2
	mov	r2, r4
	cmp	r0, r4
	ble	.L11d78
	mov	r2, r0
.L11d78:
	sub	r3, r5, r1
	mov	r1, r3
	add	r1, #0xf
	cmp	r1, #0xf
	bne	.L11d86
	mov	r0, r2
	b	.L11d8c
.L11d86:
	cmp	r1, #0xe
	bhi	.L11d8c
	mov	r0, r4
.L11d8c:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end HeightTile_4

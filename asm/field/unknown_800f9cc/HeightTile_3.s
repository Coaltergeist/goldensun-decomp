	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start HeightTile_3  @ 0x08011d34
	push	{lr}
	mov	r3, #0
	ldrsb	r3, [r0, r3]
	lsl	r4, r3, #19
	mov	r3, #1
	ldrsb	r3, [r0, r3]
	lsl	r0, r3, #19
	mov	r3, r4
	cmp	r0, r4
	ble	.L11d4a
	mov	r3, r0
.L11d4a:
	add	r1, r2
	cmp	r1, #0xf
	bne	.L11d54
	mov	r0, r3
	b	.L11d5a
.L11d54:
	cmp	r1, #0xe
	bhi	.L11d5a
	mov	r0, r4
.L11d5a:
	pop	{r1}
	bx	r1
.func_end HeightTile_3

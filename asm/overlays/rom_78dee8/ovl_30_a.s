	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x13
	cmp	r2, r3
	bne	.L48
	ldr	r0, =.L1d04
	b	.L54
.L48:
	ldr	r3, =0x10
	cmp	r2, r3
	bne	.L52
	ldr	r0, =.L1d64
	b	.L54
.L52:
	ldr	r0, =.L1cd4
.L54:
	pop	{r1}
	bx	r1
.func_end OvlFunc_30


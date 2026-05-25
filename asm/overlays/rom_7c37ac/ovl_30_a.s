	.include "macros.inc"

.thumb_func_start OvlFunc_7c37ac_30
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x67
	cmp	r2, r3
	bne	.L48
	ldr	r0, =.L1c04
	b	.L4a
.L48:
	ldr	r0, =.L1bd4
.L4a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_7c37ac_30


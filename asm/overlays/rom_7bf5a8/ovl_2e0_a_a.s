	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_935_20082e0
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x60
	cmp	r2, r3
	bne	.L2f8
	ldr	r0, =.L1f98
	b	.L30e
.L2f8:
	ldr	r3, =0x61
	cmp	r2, r3
	bne	.L302
	ldr	r0, =.L2064
	b	.L30e
.L302:
	ldr	r3, =0x62
	cmp	r2, r3
	bne	.L30c
	ldr	r0, =.L2190
	b	.L30e
.L30c:
	ldr	r0, =.L1f8c
.L30e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_935_20082e0


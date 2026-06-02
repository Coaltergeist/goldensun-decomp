	.include "macros.inc"

.thumb_func_start OvlFunc_935_2008030
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x60
	cmp	r2, r3
	bne	.L48
	ldr	r0, =.L18cc
	b	.L5e
.L48:
	ldr	r3, =0x61
	cmp	r2, r3
	bne	.L52
	ldr	r0, =.L1a34
	b	.L5e
.L52:
	ldr	r3, =0x62
	cmp	r2, r3
	bne	.L5c
	ldr	r0, =.L1b9c
	b	.L5e
.L5c:
	ldr	r0, =.L189c
.L5e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_935_2008030


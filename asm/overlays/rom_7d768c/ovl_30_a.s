	.include "macros.inc"

.thumb_func_start OvlFunc_952_2008030
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8b
	cmp	r2, r3
	bne	.L48
	ldr	r0, =.L4a1c
	b	.L4a
.L48:
	ldr	r0, =.L4614
.L4a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_952_2008030


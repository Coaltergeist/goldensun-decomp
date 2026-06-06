	.include "macros.inc"

.thumb_func_start OvlFunc_942_2008040
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.L58
	ldr	r0, =.L1738
	b	.L6e
.L58:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.L62
	ldr	r0, =.L17c8
	b	.L6e
.L62:
	ldr	r3, =0x6c
	cmp	r2, r3
	bne	.L6c
	ldr	r0, =.L1840
	b	.L6e
.L6c:
	ldr	r0, =.L1708
.L6e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_942_2008040


	.include "macros.inc"

.thumb_func_start OvlFunc_7c3044_30
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x64
	cmp	r2, r3
	bne	.L48
	ldr	r0, =.L4d0
	b	.L54
.L48:
	ldr	r3, =0x65
	cmp	r2, r3
	bne	.L52
	ldr	r0, =.L6c8
	b	.L54
.L52:
	ldr	r0, =.L4a0
.L54:
	pop	{r1}
	bx	r1
.func_end OvlFunc_7c3044_30


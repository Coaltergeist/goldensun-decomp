	.include "macros.inc"

.thumb_func_start OvlFunc_931_2008030
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4b
	cmp	r2, r3
	bne	.L48
	ldr	r0, =.L1120
	b	.L54
.L48:
	ldr	r3, =0x4c
	cmp	r2, r3
	bne	.L52
	ldr	r0, =.L1288
	b	.L54
.L52:
	ldr	r0, =.L10f0
.L54:
	pop	{r1}
	bx	r1
.func_end OvlFunc_931_2008030


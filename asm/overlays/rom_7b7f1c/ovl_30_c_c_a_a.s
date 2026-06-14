	.include "macros.inc"

.thumb_func_start OvlFunc_930_20080b8
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4a
	cmp	r2, r3
	bne	.Ld0
	ldr	r0, =.L1a38
	b	.Ld2
.Ld0:
	ldr	r0, =.L1918
.Ld2:
	pop	{r1}
	bx	r1
.func_end OvlFunc_930_20080b8


	.include "macros.inc"

.thumb_func_start OvlFunc_930_200807c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4a
	cmp	r2, r3
	bne	.L94
	ldr	r0, =.L1844
	b	.L96
.L94:
	ldr	r0, =.L17b4
.L96:
	pop	{r1}
	bx	r1
.func_end OvlFunc_930_200807c


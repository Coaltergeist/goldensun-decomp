	.include "macros.inc"

.thumb_func_start OvlFunc_921_20081ec
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x33
	cmp	r2, r3
	bne	.L204
	ldr	r0, =.L2db8
	b	.L206
.L204:
	ldr	r0, =.L2c80
.L206:
	pop	{r1}
	bx	r1
.func_end OvlFunc_921_20081ec


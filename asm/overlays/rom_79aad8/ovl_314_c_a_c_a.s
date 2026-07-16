	.include "macros.inc"

.thumb_func_start OvlFunc_906_2008350
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1d
	cmp	r2, r3
	bne	.L368
	ldr	r0, =.L978
	b	.L36a
.L368:
	ldr	r0, =.L948
.L36a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_906_2008350


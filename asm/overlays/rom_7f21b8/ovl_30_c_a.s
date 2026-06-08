	.include "macros.inc"

.thumb_func_start OvlFunc_967_200804c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb3
	cmp	r2, r3
	bne	.L64
	ldr	r0, =gOvl_02009690
	b	.L66
.L64:
	ldr	r0, =.L16b0
.L66:
	pop	{r1}
	bx	r1
.func_end OvlFunc_967_200804c


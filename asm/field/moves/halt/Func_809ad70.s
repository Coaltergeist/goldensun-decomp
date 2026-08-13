	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809ad70  @ 0x0809ad70
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r5, =.L9f160
	bl	Random
	lsl	r0, #3
	lsr	r0, #16
	ldrsb	r1, [r5, r0]
	mov	r0, r6
	bl	_Actor_SetColorswap
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_809ad70

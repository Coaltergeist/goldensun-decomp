	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80d896c
	push	{lr}
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	bne	.Ld897c
	mov	r1, #3
	bl	Func_80d89ac
	b	.Ld8982
.Ld897c:
	mov	r1, #4
	bl	Func_80d89ac
.Ld8982:
	pop	{r0}
	bx	r0
.func_end Func_80d896c


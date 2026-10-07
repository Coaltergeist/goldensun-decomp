	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8091858  @ 0x08091858
	push	{r5, r6, lr}
	ldr	r6, =gState
	mov	r3, #0x88
	lsl	r3, #2
	add	r5, r6, r3
	ldrh	r0, [r5]
	bl	Func_8091814
	cmp	r0, #0
	beq	.L91870
	mov	r3, #0
	strh	r3, [r5]
.L91870:
	ldr	r3, =0x222
	add	r5, r6, r3
	ldrh	r0, [r5]
	bl	Func_8091814
	cmp	r0, #0
	beq	.L91882
	mov	r3, #0
	strh	r3, [r5]
.L91882:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8091858

